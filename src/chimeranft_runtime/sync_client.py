"""Chimera NFT — sync client.

Talks to the VPS sync server (see ../vps-server/server.py).

Design goals
------------
* Зеро-вторжение в основной runtime: модуль самодостаточен, поднимается
  отдельным фоновым потоком и общается с плагином через колбэки.
* Никаких блокировок UI: все сетевые вызовы — в daemon-thread.
* Если сервер недоступен — плагин продолжает работать локально как
  обычно, ошибки только логируются.

Wire format
-----------
GET  /api/v1/users/<user_key>/state    -> JSON record (см. server.py)
PUT  /api/v1/users/<user_key>/state    -> сохранить запись
GET  /health                           -> { ok, version, users }

user_key = строка вида "tg-main:<user_id>" — публичный TG user id.
"""

import json
import threading
import time
import traceback
from urllib.error import HTTPError, URLError
from urllib.request import Request, urlopen


DEFAULT_SERVER_URL = "http://127.0.0.1:9"
# Tighter intervals so remote NFTs/wear actually feel "live".
# push: my snapshot uploaded every 12s (was 30)
# pull: per-uid cache considered stale after 6s (was 25) — triggers async refetch
# STALE_CACHE_SEC: get_cached_fresh() returns None if older than 4s (was 15)
DEFAULT_PUSH_INTERVAL_SEC = 12
DEFAULT_PULL_INTERVAL_SEC = 6
DEFAULT_TIMEOUT_SEC = 6
STALE_CACHE_SEC = 4
USER_KEY_PREFIX = "tg-main:"


# Silenced for now so only [NFT_PERF] profiling lines remain in logcat.
# Flip to True to restore the [NFT_SYNC] stream.
_VERBOSE_LOG = False

def _log(msg):
    if not _VERBOSE_LOG:
        return
    try:
        print(f"[NFT_SYNC] {msg}")
    except Exception:
        pass


def make_user_key(user_id):
    try:
        uid = int(user_id)
    except Exception:
        return ""
    if uid <= 0:
        return ""
    return f"{USER_KEY_PREFIX}{uid}"


class SyncClient(object):
    """Background HTTP client. Safe to instantiate even without network."""

    def __init__(self, server_url=DEFAULT_SERVER_URL, plugin_key="",
                 push_interval=DEFAULT_PUSH_INTERVAL_SEC,
                 pull_interval=DEFAULT_PULL_INTERVAL_SEC,
                 timeout=DEFAULT_TIMEOUT_SEC,
                 collect_local_state=None,
                 on_remote_state=None,
                 get_my_user_id=None):
        self.server_url = (server_url or DEFAULT_SERVER_URL).rstrip("/")
        self.plugin_key = plugin_key or ""
        self.push_interval = max(8, int(push_interval or DEFAULT_PUSH_INTERVAL_SEC))
        self.pull_interval = max(3, int(pull_interval or DEFAULT_PULL_INTERVAL_SEC))
        self.timeout = max(2, int(timeout or DEFAULT_TIMEOUT_SEC))
        self.collect_local_state = collect_local_state
        self.on_remote_state = on_remote_state
        self.get_my_user_id = get_my_user_id

        self._stop = threading.Event()
        self._push_thread = None
        self._pull_thread = None
        self._lock = threading.Lock()
        self._pull_queue = []
        self._cache = {}
        self._cache_ts = {}
        self._last_push_payload_hash = None
        self._enabled = True

    # -------------- lifecycle --------------

    def start(self):
        if self._push_thread is not None:
            return
        # A FRESH event per generation. Reusing one event and clearing it here
        # meant a stop() immediately followed by start() could be invisible to a
        # thread parked in Event.wait(): it returned False, re-tested the
        # now-cleared flag and kept running beside the new pair, pushing the same
        # snapshot twice per interval. A retired generation watches a retired
        # event that nothing ever clears, so it can only exit.
        self._stop = threading.Event()
        stop = self._stop
        self._push_thread = threading.Thread(
            target=self._push_loop, args=(stop,), daemon=True)
        self._pull_thread = threading.Thread(
            target=self._pull_loop, args=(stop,), daemon=True)
        self._push_thread.start()
        self._pull_thread.start()
        _log(f"sync client started ({self.server_url})")

    def stop(self):
        # Not joined on purpose: this is called from the UI thread and a join
        # would block for up to push_interval. The threads are daemons watching
        # an event that will never be cleared again.
        self._stop.set()
        self._push_thread = None
        self._pull_thread = None
        _log("sync client stopped")

    def set_enabled(self, flag):
        self._enabled = bool(flag)

    def is_enabled(self):
        return bool(self._enabled)

    def update_endpoint(self, server_url=None, plugin_key=None):
        if server_url is not None:
            self.server_url = (server_url or "").rstrip("/")
        if plugin_key is not None:
            self.plugin_key = plugin_key or ""
        with self._lock:
            self._cache.clear()
            self._cache_ts.clear()
            self._last_push_payload_hash = None

    # -------------- HTTP --------------

    def _build_request(self, url, method, body=None):
        data = None
        headers = {"Accept": "application/json"}
        if body is not None:
            data = json.dumps(body, ensure_ascii=False, separators=(",", ":")).encode("utf-8")
            headers["Content-Type"] = "application/json; charset=utf-8"
        if self.plugin_key:
            headers["X-Plugin-Key"] = self.plugin_key
        req = Request(url, data=data, method=method, headers=headers)
        return req

    def _do_http(self, method, path, body=None, timeout=None):
        """Single HTTP round trip. Returns the parsed JSON object, or None.

        `timeout` overrides self.timeout for this call only. It is a parameter
        rather than a temporarily-reassigned attribute because the push and pull
        daemons read self.timeout concurrently: a UI-thread blocking fetch used
        to shorten *their* socket timeout for the duration of its own request.
        """
        if not self._enabled:
            return None
        url = f"{self.server_url}{path}"
        try:
            req = self._build_request(url, method, body=body)
            with urlopen(req, timeout=(timeout if timeout else self.timeout)) as resp:
                raw = resp.read()
            if not raw:
                # An empty 200 is not an empty record. Returning {} here made
                # _fetch_one cache it as a real state and hand it to the plugin,
                # which reads "no gifts, no NFT username" and visibly empties the
                # remote profile. Every real response in this API is an object
                # with fields, so "no body" can only mean "no answer".
                _log(f"empty body on {method} {path}")
                return None
            try:
                return json.loads(raw.decode("utf-8"))
            except Exception:
                return None
        except HTTPError as e:
            _log(f"HTTP {e.code} on {method} {path}")
            return None
        except URLError as e:
            _log(f"net error on {method} {path}: {e}")
            return None
        except Exception as e:
            _log(f"req error on {method} {path}: {e}")
            return None

    def health(self):
        return self._do_http("GET", "/health")

    @staticmethod
    def _is_usable_record(record):
        """A remote state we are willing to cache and show.

        Rejects an empty object as well as None: every record the server stores
        was written by push_my_state_now, which always stamps plugin_id and
        updated_at, so {} cannot be a real state. Accepting it wipes the remote
        profile the plugin is currently displaying.
        """
        return isinstance(record, dict) and bool(record)

    # -------------- push (my state -> server) --------------

    def _build_my_payload(self):
        if self.collect_local_state is None:
            return None
        try:
            payload = self.collect_local_state()
        except Exception as e:
            _log(f"collect_local_state error: {e}")
            return None
        if not isinstance(payload, dict):
            return None
        payload.setdefault("plugin_id", "eblannft")
        payload.setdefault("updated_at", int(time.time()))
        return payload

    def push_my_state_now(self, force=False):
        if self.get_my_user_id is None:
            return False
        try:
            uid = self.get_my_user_id()
        except Exception:
            return False
        user_key = make_user_key(uid)
        if not user_key:
            return False
        payload = self._build_my_payload()
        if payload is None:
            return False
        # Always push the current snapshot — skipping by hash makes the server
        # diverge whenever a delete-then-add yields the same hash, or when the
        # server got rolled back / wiped while we still hold a stale hash.
        result = self._do_http("PUT", f"/api/v1/users/{user_key}/state", body=payload)
        return isinstance(result, dict) and bool(result.get("ok"))

    def _push_loop(self, stop):
        # The event is passed in, not read off self: self._stop is replaced on
        # every start(), and this generation must keep watching its own.
        # initial delay so plugin has time to fully boot
        if stop.wait(8):
            return
        while not stop.is_set():
            try:
                self.push_my_state_now()
            except Exception:
                _log("push loop error:\n" + traceback.format_exc())
            if stop.wait(self.push_interval):
                return

    # -------------- pull (other users -> local) --------------

    def request_remote_state(self, user_id, force=False):
        """Schedule async fetch of another user's state.

        Returns cached record immediately (or None) — the result is also
        delivered via on_remote_state callback when fresh data arrives.
        """
        user_key = make_user_key(user_id)
        if not user_key:
            return None
        with self._lock:
            cached = self._cache.get(user_key)
            cached_ts = self._cache_ts.get(user_key, 0)
            if user_key not in self._pull_queue:
                if force or (time.time() - cached_ts) > self.pull_interval:
                    self._pull_queue.append(user_key)
        return cached

    def _pull_loop(self, stop):
        if stop.wait(4):
            return
        while not stop.is_set():
            try:
                user_key = None
                with self._lock:
                    if self._pull_queue:
                        user_key = self._pull_queue.pop(0)
                if user_key:
                    self._fetch_one(user_key)
            except Exception:
                _log("pull loop error:\n" + traceback.format_exc())
            if stop.wait(1.0):
                return

    def _fetch_one(self, user_key):
        record = self._do_http("GET", f"/api/v1/users/{user_key}/state")
        if not self._is_usable_record(record):
            return
        with self._lock:
            self._cache[user_key] = record
            self._cache_ts[user_key] = time.time()
        if self.on_remote_state is not None:
            try:
                self.on_remote_state(user_key, record)
            except Exception:
                _log("on_remote_state error:\n" + traceback.format_exc())

    def get_cached(self, user_id):
        user_key = make_user_key(user_id)
        if not user_key:
            return None
        with self._lock:
            return self._cache.get(user_key)

    def get_cached_fresh(self, user_id, max_age_sec=STALE_CACHE_SEC):
        """Returns cached record only if it is younger than max_age_sec, else None."""
        user_key = make_user_key(user_id)
        if not user_key:
            return None
        with self._lock:
            ts = self._cache_ts.get(user_key, 0)
            if (time.time() - ts) <= max_age_sec:
                return self._cache.get(user_key)
        return None

    def fetch_remote_state_blocking(self, user_id, max_timeout=1.5):
        """Blocking GET with a short timeout. Returns record or None."""
        user_key = make_user_key(user_id)
        if not user_key:
            return None
        # Truncating to int is deliberate: this call blocks a UI path, so the
        # effective ceiling stays 1s for the default max_timeout of 1.5 rather
        # than being rounded up. Passed per-call so the background daemons keep
        # their own self.timeout.
        call_timeout = max(1, min(int(self.timeout or max_timeout), int(max_timeout)))
        try:
            record = self._do_http(
                "GET", f"/api/v1/users/{user_key}/state", timeout=call_timeout
            )
        except Exception:
            record = None
        if self._is_usable_record(record):
            with self._lock:
                self._cache[user_key] = record
                self._cache_ts[user_key] = time.time()
            if self.on_remote_state is not None:
                try:
                    self.on_remote_state(user_key, record)
                except Exception:
                    pass
            return record
        with self._lock:
            return self._cache.get(user_key)
