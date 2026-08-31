# Runtime auto-update module for Chimera NFT.
# Kept outside the tiny .plugin bootstrap so the installed wrapper stays small.

import json
import os
import re
import sys
import threading
import time
import shutil

try:
    from . import __version__
except Exception:
    __version__ = "1.0.0"

_UPDATE_CHANNEL_USERNAME = ""
_UPDATE_BASE_URL_DEFAULT = "http://127.0.0.1:9"
_UPDATE_BASE_URL_LEGACY = "http://127.0.0.1:9"
_RUNTIME_PACKAGE_NAME = "chimeranft_runtime"
_RUNTIME_FILES = (
    f"{_RUNTIME_PACKAGE_NAME}/__init__.py",
    f"{_RUNTIME_PACKAGE_NAME}/plugin.py",
    f"{_RUNTIME_PACKAGE_NAME}/sync_client.py",
    f"{_RUNTIME_PACKAGE_NAME}/legacy_gifts.py",
    f"{_RUNTIME_PACKAGE_NAME}/updater.py",
)
_DOWNLOAD_TIMEOUT_SEC = 35
_UPDATE_CHECK_RESUME_THROTTLE_SEC = 1
_UPDATE_LIVE_POLL_INTERVAL_SEC = 3
_UPDATE_LIVE_ERROR_BACKOFF_SEC = 15
_UPDATE_LIVE_REQUEST_TIMEOUT_SEC = 5
_UPDATE_INTERVAL_OPTIONS = (
    (5 * 60 * 60, "5 hours"),
    (24 * 60 * 60, "1 day"),
    (7 * 24 * 60 * 60, "1 week"),
    (30 * 24 * 60 * 60, "1 month"),
)
_UPDATE_INTERVAL_DEFAULT_IDX = 0
_UPDATE_CHECK_INTERVAL_SEC = _UPDATE_INTERVAL_OPTIONS[_UPDATE_INTERVAL_DEFAULT_IDX][0]
_UPDATE_CHECK_DELAY_MS = 500
_UPDATE_POPUP_RETRY_DELAY_MS = 2000
_UPDATE_POPUP_MAX_RETRIES = 8
_UPDATE_TIMESTAMP_FILE = ".chimeranft_last_update_check"

_plugin_instance = None
_RUNTIME_INSTALL_ROOT = None
_BOOTSTRAP_PLUGIN_PATH = ""
_LOAD_ERROR = None
_update_live_lock = threading.RLock()
_update_live_started = False
_update_live_stop = threading.Event()
_update_check_inflight = False
_update_popup_keys_shown = set()
_update_popup_keys_active = set()
_update_channel_peer_cache = None
_update_resume_hook_installed = False

try:
    from java import dynamic_proxy, jclass
    from org.telegram.tgnet import RequestDelegate
    from client_utils import get_user_config, get_connections_manager
    from org.telegram.messenger import FileLoader
except Exception:
    dynamic_proxy = None
    jclass = None
    RequestDelegate = None
    get_user_config = None
    get_connections_manager = None
    FileLoader = None

def _gen_delegate():
    if dynamic_proxy is None or RequestDelegate is None:
        return None
    def _run(instance, *java_args):
        try:
            return instance._fn(*java_args)
        except Exception as e:
            _bootstrap_log(f"telegram delegate error: {e}")
    def __init__(self, fn, *args, **kwargs):
        self._fn = fn
        super(type(self), self).__init__()
    return type(
        "EblanNftUpdateRequestDelegate",
        (dynamic_proxy(RequestDelegate),),
        {"__init__": __init__, "run": _run},
    )

JRequestDelegate = _gen_delegate()

_VERBOSE_LOG = False

def _bootstrap_log(msg):
    if not _VERBOSE_LOG:
        return
    try:
        from android_utils import log as _log
        _log(f"[chimeranft-updater] {msg}")
    except Exception:
        pass

def _normalize_base_url(url):
    url = str(url or "").strip().rstrip("/")
    if url == _UPDATE_BASE_URL_LEGACY:
        return _UPDATE_BASE_URL_DEFAULT.rstrip("/")
    return url

def _update_base_url():
    url = _UPDATE_BASE_URL_DEFAULT
    try:
        inst = globals().get("_plugin_instance")
        if inst is not None:
            override = inst.get_setting("chimeranft_update_base_url", "") or ""
            override = str(override).strip()
            if override:
                url = override
    except Exception:
        pass
    return _normalize_base_url(url)

def _raw_url(rel_path):
    rel = str(rel_path or "").replace("\\", "/").lstrip("/")
    bust = int(time.time())
    from urllib.parse import quote as _q
    return f"{_update_base_url()}/updates/files/{_q(rel, safe='/')}?_={bust}"

def _http_get(url, timeout=None, progress_cb=None):
    from urllib.request import Request, urlopen
    req = Request(url, headers={
        "User-Agent": f"chimeranft-updater/{__version__}",
        "Accept": "*/*",
        "Cache-Control": "no-cache",
    })
    timeout = float(timeout) if timeout else _DOWNLOAD_TIMEOUT_SEC
    chunk_size = 4096
    with urlopen(req, timeout=timeout) as resp:
        try:
            total = int(resp.headers.get("Content-Length", "0") or 0)
        except Exception:
            total = 0
        chunks = []
        loaded = 0
        while True:
            chunk = resp.read(chunk_size)
            if not chunk:
                break
            chunks.append(chunk)
            loaded += len(chunk)
            if callable(progress_cb):
                try:
                    progress_cb(loaded, total)
                except Exception:
                    pass
    data = b"".join(chunks)
    return data, (total or len(data))

def _http_head_size(url, timeout=None):
    try:
        from urllib.request import Request, urlopen
        req = Request(url, method="HEAD", headers={
            "User-Agent": f"chimeranft-updater/{__version__}",
            "Accept": "*/*",
            "Cache-Control": "no-cache",
        })
        timeout = float(timeout) if timeout else min(8.0, float(_DOWNLOAD_TIMEOUT_SEC))
        with urlopen(req, timeout=timeout) as resp:
            try:
                return max(0, int(resp.headers.get("Content-Length", "0") or 0))
            except Exception:
                return 0
    except Exception:
        return 0

def _existing_runtime_root():
    return _RUNTIME_INSTALL_ROOT or ""

def _pick_writable_install_root():
    if _RUNTIME_INSTALL_ROOT:
        return _RUNTIME_INSTALL_ROOT
    raise RuntimeError("Runtime install root is unknown")

# Auto-update section: poll the Telegram update channel, present an MD3 BottomSheet
# with change notes + a real progress bar, then restart the app.
# ---------------------------------------------------------------------------


def _version_tuple(version_str):
    parts = re.findall(r"\d+", str(version_str or ""))
    if not parts:
        return (0,)
    nums = tuple(int(p) for p in parts[:4])
    while len(nums) < 4:
        nums = nums + (0,)
    return nums


def _is_remote_different(remote_version):
    """Treat any non-empty manifest version that doesn't match local as an
    actionable update — including rollbacks. Lets the maintainer ship a
    lower version (e.g. yank v1.0.19 back to v1.0.18) and have every
    install pick it up automatically."""
    try:
        rv = str(remote_version or "").strip()
    except Exception:
        rv = ""
    if not rv:
        return False
    return _version_tuple(rv) != _version_tuple(__version__)


def _is_remote_upgrade(remote_version):
    return _version_tuple(remote_version) > _version_tuple(__version__)


def _local_update_mtime():
    newest = 0.0
    try:
        wrapper = _wrapper_file_path()
        if wrapper and os.path.isfile(wrapper):
            newest = max(newest, float(os.path.getmtime(wrapper) or 0.0))
    except Exception:
        pass
    try:
        root = _RUNTIME_INSTALL_ROOT or _existing_runtime_root()
        if root:
            for rel in _RUNTIME_FILES:
                path = os.path.join(root, rel.replace("/", os.sep))
                if os.path.isfile(path):
                    newest = max(newest, float(os.path.getmtime(path) or 0.0))
    except Exception:
        pass
    return newest


def _is_manifest_actionable(manifest):
    remote_v = str((manifest or {}).get("version") or "").strip()
    if _is_remote_different(remote_v):
        return True
    try:
        remote_ts = float((manifest or {}).get("updated_at") or 0.0)
    except Exception:
        remote_ts = 0.0
    if remote_ts <= 0:
        return False
    try:
        return remote_ts > (_local_update_mtime() + 5.0)
    except Exception:
        return False


def _wrapper_file_path():
    try:
        if _BOOTSTRAP_PLUGIN_PATH:
            return os.path.abspath(_BOOTSTRAP_PLUGIN_PATH)
    except Exception:
        pass
    try:
        return os.path.abspath(os.path.join(_RUNTIME_INSTALL_ROOT or os.getcwd(), "eblannft.plugin"))
    except Exception:
        return ""


def _resolve_dest_for_manifest_entry(rel_path):
    """Map a manifest path to an absolute on-disk destination."""
    rel = str(rel_path or "").replace("\\", "/").strip().lstrip("/")
    if not rel:
        return None
    if rel == "eblannft.plugin":
        wrapper = _wrapper_file_path()
        if wrapper:
            return wrapper
        return None
    if rel.startswith(f"{_RUNTIME_PACKAGE_NAME}/"):
        root = _RUNTIME_INSTALL_ROOT or _existing_runtime_root() or _pick_writable_install_root()
        return os.path.abspath(os.path.join(root, rel.replace("/", os.sep)))
    # Anything else lands next to the runtime, in a sibling path mirroring repo layout.
    root = _RUNTIME_INSTALL_ROOT or _existing_runtime_root()
    if root:
        return os.path.abspath(os.path.join(root, rel.replace("/", os.sep)))
    return None

def _java_list(obj):
    if obj is None:
        return []
    try:
        return [obj.get(i) for i in range(int(obj.size()))]
    except Exception:
        try:
            return list(obj)
        except Exception:
            return []

def _send_request_blocking(req, timeout=10):
    if JRequestDelegate is None or get_connections_manager is None:
        raise RuntimeError("Telegram request bridge is unavailable")
    done = threading.Event()
    box = {"response": None, "error": None}

    def _on_done(response, error):
        box["response"] = response
        box["error"] = error
        done.set()

    delegate = JRequestDelegate(_on_done)
    get_connections_manager().sendRequest(req, delegate)
    if not done.wait(float(timeout or 10)):
        raise RuntimeError("Telegram request timeout")
    if box.get("error") is not None:
        try:
            text = str(box["error"].text)
        except Exception:
            text = str(box["error"])
        raise RuntimeError(text or "Telegram request failed")
    return box.get("response")

def _resolve_update_channel(timeout=10):
    global _update_channel_peer_cache
    if _update_channel_peer_cache is not None:
        return _update_channel_peer_cache
    if jclass is None:
        raise RuntimeError("jclass unavailable")
    Req = jclass("org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername")
    req = Req()
    req.username = _UPDATE_CHANNEL_USERNAME
    req.flags = 0
    resolved = _send_request_blocking(req, timeout=timeout)
    chats = _java_list(getattr(resolved, "chats", None))
    if not chats:
        raise RuntimeError(f"@{_UPDATE_CHANNEL_USERNAME} not resolved")
    channel = chats[0]
    InputPeerChannel = jclass("org.telegram.tgnet.TLRPC$TL_inputPeerChannel")
    peer = InputPeerChannel()
    peer.channel_id = int(getattr(channel, "id", 0) or 0)
    peer.access_hash = int(getattr(channel, "access_hash", 0) or 0)
    if int(peer.channel_id or 0) <= 0:
        raise RuntimeError("resolved channel has no id")
    _update_channel_peer_cache = peer
    return peer

def _message_document(message):
    try:
        media = getattr(message, "media", None)
        if media is not None:
            doc = getattr(media, "document", None)
            if doc is not None:
                return doc
    except Exception:
        pass
    return None

def _document_file_name(document):
    if document is None:
        return ""
    try:
        name = str(getattr(document, "file_name", "") or "").strip()
        if name:
            return name
    except Exception:
        pass
    for attr in _java_list(getattr(document, "attributes", None)):
        try:
            name = str(getattr(attr, "file_name", "") or "").strip()
            if name:
                return name
        except Exception:
            continue
    return ""

def _clone_entity_for_range(entity, base_start, body_len):
    try:
        offset = int(getattr(entity, "offset", 0) or 0)
        length = int(getattr(entity, "length", 0) or 0)
    except Exception:
        return None
    if length <= 0:
        return None
    start = max(offset, int(base_start or 0))
    end = min(offset + length, int(base_start or 0) + int(body_len or 0))
    if end <= start:
        return None
    try:
        cls = entity.getClass()
        cloned = cls.newInstance()
    except Exception:
        try:
            cloned = entity.__class__()
        except Exception:
            return None
    try:
        cloned.offset = int(start - int(base_start or 0))
        cloned.length = int(end - start)
    except Exception:
        return None
    for name in ("document_id", "document", "url", "user_id", "language", "collapsed", "local"):
        try:
            if hasattr(entity, name):
                setattr(cloned, name, getattr(entity, name))
        except Exception:
            pass
    return cloned


def _slice_entities_for_body(entities, base_start, body_len):
    try:
        ArrayList = jclass("java.util.ArrayList") if jclass is not None else None
        out = ArrayList() if ArrayList is not None else []
    except Exception:
        out = []
    for entity in _java_list(entities):
        cloned = _clone_entity_for_range(entity, base_start, body_len)
        if cloned is None:
            continue
        try:
            out.add(cloned)
        except Exception:
            try:
                out.append(cloned)
            except Exception:
                pass
    return out


def _parse_channel_update_text(text, entities=None, fallback_version=""):
    raw = str(text or "")
    marker_ok = ("#chimeranft_update" in raw) or ("CHIMERANFT_UPDATE" in raw)
    version = str(fallback_version or "").strip()
    m = re.search(r"(?im)^\s*(?:version|версия)\s*[:=]\s*v?([0-9][0-9A-Za-z._-]*)\s*$", raw)
    if m:
        version = m.group(1).strip()
    if not version:
        m = re.search(r"\bv([0-9]+(?:\.[0-9A-Za-z_-]+)+)\b", raw)
        if m:
            version = m.group(1).strip()
    notes = ""
    notes_entities = None
    m = re.search(r"(?im)^.*(?:changelog|change\s*log|что нового|изменения).*?$", raw)
    if m:
        base_start = m.end()
        while base_start < len(raw) and raw[base_start] in "\r\n \t":
            base_start += 1
        body = raw[base_start:]
        stripped = body.strip()
        leading_trim = len(body) - len(body.lstrip())
        notes = stripped
        notes_entities = _slice_entities_for_body(entities, base_start + leading_trim, len(notes))
    else:
        m = re.search(r"(?is)(?:changelog|change\s*log|что нового|изменения)\s*[:：]\s*(.+)$", raw)
        if m:
            notes = m.group(1).strip()
            raw_body = m.group(1)
            leading_trim = len(raw_body) - len(raw_body.lstrip())
            notes_entities = _slice_entities_for_body(entities, m.start(1) + leading_trim, len(notes))
    if notes:
        pass
    elif raw:
        lines = [ln.strip() for ln in raw.splitlines()]
        notes = "\n".join(
            ln for ln in lines
            if ln
            and not ln.startswith("#")
            and not re.match(r"(?i)^(version|версия)\s*[:=]", ln)
            and not re.search(r"(?i)(changelog|change\s*log|что нового|изменения)", ln)
            and "eblannft" not in ln.lower()
        ).strip()
        notes_entities = _slice_entities_for_body(entities, raw.find(notes), len(notes)) if notes else None
    return marker_ok, version, notes, notes_entities

def _fetch_channel_manifest(timeout=12):
    peer = _resolve_update_channel(timeout=min(float(timeout or 12), 10.0))
    Req = jclass("org.telegram.tgnet.TLRPC$TL_messages_getHistory")
    req = Req()
    req.peer = peer
    req.offset_id = 0
    req.offset_date = 0
    req.add_offset = 0
    req.limit = 12
    req.max_id = 0
    req.min_id = 0
    req.hash = 0
    response = _send_request_blocking(req, timeout=timeout)
    messages = _java_list(getattr(response, "messages", None))
    best = None
    for msg in messages:
        doc = _message_document(msg)
        if doc is None:
            continue
        name = _document_file_name(doc)
        if name != "eblannft.plugin":
            continue
        text = str(getattr(msg, "message", "") or "")
        marker_ok, version, notes, notes_entities = _parse_channel_update_text(
            text,
            getattr(msg, "entities", None),
        )
        if not marker_ok:
            # Accept a correctly named plugin document, but prefer marked posts.
            marker_ok = True
        if not version:
            continue
        date = int(getattr(msg, "date", 0) or 0)
        mid = int(getattr(msg, "id", 0) or 0)
        candidate = {
            "version": version,
            "notes": notes,
            "notes_entities": notes_entities,
            "files": ["eblannft.plugin"],
            "source": "telegram_channel",
            "channel": _UPDATE_CHANNEL_USERNAME,
            "message_id": mid,
            "updated_at": date,
            "document": doc,
            "document_name": name,
        }
        if best is None or (date, mid) > (int(best.get("updated_at", 0) or 0), int(best.get("message_id", 0) or 0)):
            best = candidate
    if best is None:
        raise RuntimeError(f"No eblannft.plugin update post found in @{_UPDATE_CHANNEL_USERNAME}")
    return best

def _document_local_path(document, timeout=120, progress_cb=None):
    if document is None:
        raise RuntimeError("Telegram document is missing")
    if FileLoader is None or get_user_config is None:
        raise RuntimeError("Telegram FileLoader is unavailable")
    account = int(get_user_config().selectedAccount)
    loader = FileLoader.getInstance(account)

    def _path():
        f = loader.getPathToAttach(document, True)
        return str(f.getAbsolutePath()) if f is not None else ""

    expected = 0
    try:
        expected = int(getattr(document, "size", 0) or 0)
    except Exception:
        expected = 0
    path = _path()
    if path and os.path.isfile(path) and (expected <= 0 or os.path.getsize(path) >= expected):
        if callable(progress_cb):
            progress_cb(expected or os.path.getsize(path), expected or os.path.getsize(path))
        return path
    try:
        loader.loadFile(document, None, 1, 1)
    except Exception:
        try:
            loader.loadFile(document, None, 0, 1)
        except Exception as e:
            raise RuntimeError(f"Telegram download start failed: {e}")
    start = time.time()
    last_loaded = 0
    while (time.time() - start) < float(timeout or 120):
        path = _path()
        loaded = 0
        if path and os.path.isfile(path):
            try:
                loaded = int(os.path.getsize(path) or 0)
            except Exception:
                loaded = 0
        if loaded > last_loaded and callable(progress_cb):
            last_loaded = loaded
            progress_cb(loaded, expected)
        if path and loaded > 0 and (expected <= 0 or loaded >= expected):
            return path
        time.sleep(0.25)
    raise RuntimeError("Telegram document download timeout")

def _fetch_manifest(timeout=12):
    # Updates are intentionally Telegram-only: the VPS remains for gift/profile
    # sync, but plugin releases are delivered by the bot posting one .plugin
    # document to the update channel. [noserver: channel neutralized]
    return _fetch_channel_manifest(timeout=timeout)


def _manifest_popup_key(manifest):
    try:
        version = str((manifest or {}).get("version") or "").strip()
        updated_at = str((manifest or {}).get("updated_at") or "").strip()
        files = ",".join(str(x) for x in ((manifest or {}).get("files") or []))
        return f"{version}|{updated_at}|{files}"
    except Exception:
        return str(time.time())


def _mark_update_popup_inactive(manifest):
    try:
        key = _manifest_popup_key(manifest)
        with _update_live_lock:
            _update_popup_keys_active.discard(key)
    except Exception:
        pass


def _mark_update_popup_finished(manifest):
    try:
        key = _manifest_popup_key(manifest)
        with _update_live_lock:
            _update_popup_keys_shown.add(key)
            _update_popup_keys_active.discard(key)
    except Exception:
        pass


def _handle_manifest_for_update(manifest, reason="live", allow_repeat=False):
    try:
        remote_v = str((manifest or {}).get("version", "?"))
        if not _is_manifest_actionable(manifest):
            _bootstrap_log(f"up to date: local v{__version__} == remote v{remote_v}")
            return False
        key = _manifest_popup_key(manifest)
        with _update_live_lock:
            if (not allow_repeat) and key in _update_popup_keys_shown:
                return True
            if (not allow_repeat) and key in _update_popup_keys_active:
                return True
            _update_popup_keys_active.add(key)
        kind = "upgrade" if _is_remote_upgrade(remote_v) else "rollback"
        _bootstrap_log(f"manifest {kind} available via {reason}: v{__version__} -> v{remote_v}")
        shown = _show_update_popup(manifest)
        if not shown:
            _mark_update_popup_inactive(manifest)
        return bool(shown)
    except Exception as e:
        _bootstrap_log(f"update manifest handling error: {e}")
        return False


def _last_check_marker_path():
    base = _RUNTIME_INSTALL_ROOT or _existing_runtime_root()
    if not base:
        return ""
    try:
        return os.path.join(base, _UPDATE_TIMESTAMP_FILE)
    except Exception:
        return ""


def _read_last_check_ts():
    path = _last_check_marker_path()
    if not path or not os.path.isfile(path):
        return 0.0
    try:
        with open(path, "r") as f:
            return float((f.read() or "0").strip() or 0.0)
    except Exception:
        return 0.0


def _write_last_check_ts(ts=None):
    path = _last_check_marker_path()
    if not path:
        return
    try:
        with open(path, "w") as f:
            f.write(str(float(ts if ts is not None else time.time())))
    except Exception:
        pass


def _get_update_interval_idx():
    """Read the user-chosen interval index from plugin settings (defaults to
    the constant default if the runtime instance isn't ready yet)."""
    if _plugin_instance is None:
        return _UPDATE_INTERVAL_DEFAULT_IDX
    try:
        idx = int(
            _plugin_instance.get_setting(
                "chimeranft_update_interval_idx", _UPDATE_INTERVAL_DEFAULT_IDX
            )
            or 0
        )
    except Exception:
        idx = _UPDATE_INTERVAL_DEFAULT_IDX
    if 0 <= idx < len(_UPDATE_INTERVAL_OPTIONS):
        return idx
    return _UPDATE_INTERVAL_DEFAULT_IDX


def _set_update_interval_idx(idx):
    if _plugin_instance is None:
        return
    try:
        _plugin_instance.set_setting("chimeranft_update_interval_idx", int(idx))
    except Exception:
        pass


def _get_update_interval_sec():
    return int(_UPDATE_INTERVAL_OPTIONS[_get_update_interval_idx()][0])


def _get_update_interval_label():
    return str(_UPDATE_INTERVAL_OPTIONS[_get_update_interval_idx()][1])


def _show_update_interval_picker():
    """BottomSheet with a SlideChooseView letting the user pick how often
    legacy picker kept for old saved settings; live Telegram polling no longer uses
    this interval for automatic checks.
    The choice persists into plugin settings and is read on every poll."""
    try:
        from android_utils import run_on_ui_thread
    except Exception:
        return False
    try:
        from java import jclass, dynamic_proxy
        from client_utils import get_last_fragment
        from org.telegram.ui.ActionBar import BottomSheet, Theme
        from org.telegram.ui.Components import SlideChooseView
        from org.telegram.messenger import AndroidUtilities, ApplicationLoader
        from android.view import Gravity
        from android.widget import LinearLayout, TextView
        from android.graphics.drawable import GradientDrawable
        from android.util import TypedValue
    except Exception as e:
        _bootstrap_log(f"interval picker imports failed: {e}")
        return False

    frag = None
    try:
        frag = get_last_fragment()
    except Exception:
        frag = None
    ctx = None
    try:
        ctx = frag.getParentActivity() if frag and frag.getParentActivity() else None
    except Exception:
        ctx = None
    if ctx is None:
        try:
            ctx = ApplicationLoader.applicationContext
        except Exception:
            ctx = None
    if ctx is None:
        return False

    def _build():
        try:
            try:
                accent = int(Theme.getColor(Theme.key_featuredStickers_addButton))
            except Exception:
                accent = 0xFF5B8CFF
            try:
                text_color = int(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText))
            except Exception:
                text_color = 0xFFFFFFFF
            try:
                muted_color = int(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText))
            except Exception:
                muted_color = 0xFF9AA3AE
            try:
                bg_color = int(Theme.getColor(Theme.key_dialogBackground))
            except Exception:
                bg_color = 0xFF14161B

            def _blend(over_argb, base_argb, alpha_over):
                a = max(0.0, min(1.0, float(alpha_over)))
                inv = 1.0 - a
                ro = (over_argb >> 16) & 0xFF
                go = (over_argb >> 8) & 0xFF
                bo = over_argb & 0xFF
                rb = (base_argb >> 16) & 0xFF
                gb = (base_argb >> 8) & 0xFF
                bb = base_argb & 0xFF
                r = int(round(ro * a + rb * inv))
                g = int(round(go * a + gb * inv))
                b = int(round(bo * a + bb * inv))
                return (0xFF << 24) | (r << 16) | (g << 8) | b

            sheet = BottomSheet(ctx, True)

            outer = LinearLayout(ctx)
            outer.setOrientation(LinearLayout.VERTICAL)
            outer.setPadding(
                AndroidUtilities.dp(20),
                AndroidUtilities.dp(22),
                AndroidUtilities.dp(20),
                AndroidUtilities.dp(20),
            )

            title = TextView(ctx)
            title.setText("Интервал проверки обновлений")
            try:
                title.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 19)
                title.setTextColor(text_color)
                title.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
            except Exception:
                pass
            outer.addView(title, LinearLayout.LayoutParams(-1, -2))

            subtitle = TextView(ctx)
            subtitle.setText(
                "Как часто плагин сам проверяет, есть ли новая версия. "
                "Когда возвращаешься в приложение — проверка идёт быстрее в "
                "любом случае."
            )
            try:
                subtitle.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 13)
                subtitle.setTextColor(muted_color)
                subtitle.setLineSpacing(0.0, 1.15)
            except Exception:
                pass
            lp_sub = LinearLayout.LayoutParams(-1, -2)
            try:
                lp_sub.topMargin = AndroidUtilities.dp(8)
            except Exception:
                pass
            outer.addView(subtitle, lp_sub)

            # Card containing the SlideChooseView.
            card = LinearLayout(ctx)
            card.setOrientation(LinearLayout.VERTICAL)
            try:
                cb = GradientDrawable()
                cb.setCornerRadius(AndroidUtilities.dp(20))
                cb.setColor(_blend(accent, bg_color, 0.10))
                card.setBackground(cb)
                card.setPadding(
                    AndroidUtilities.dp(14),
                    AndroidUtilities.dp(18),
                    AndroidUtilities.dp(14),
                    AndroidUtilities.dp(14),
                )
            except Exception:
                pass
            lp_card = LinearLayout.LayoutParams(-1, -2)
            try:
                lp_card.topMargin = AndroidUtilities.dp(20)
            except Exception:
                pass
            outer.addView(card, lp_card)

            try:
                selector = SlideChooseView(ctx)
            except Exception:
                # Some builds expect (context, resourcesProvider). Pass null.
                selector = SlideChooseView(ctx, None)
            current_idx = _get_update_interval_idx()
            try:
                selector.setOptions(
                    int(current_idx),
                    "5 часов",
                    "День",
                    "Неделя",
                    "Месяц",
                )
            except Exception as e:
                _bootstrap_log(f"setOptions failed: {e}")

            cb_cls = jclass("org.telegram.ui.Components.SlideChooseView$Callback")

            class _Cb(dynamic_proxy(cb_cls)):
                def onOptionSelected(self_obj, index):
                    try:
                        _set_update_interval_idx(int(index))
                        _bootstrap_log(
                            f"update interval set to idx={int(index)} ({_UPDATE_INTERVAL_OPTIONS[int(index)][1]})"
                        )
                    except Exception as e:
                        _bootstrap_log(f"interval onOptionSelected failed: {e}")

                def onTouchEnd(self_obj):
                    return None

            try:
                selector.setCallback(_Cb())
            except Exception as e:
                _bootstrap_log(f"setCallback failed: {e}")

            card.addView(selector, LinearLayout.LayoutParams(-1, -2))

            # OK button.
            ok_btn = TextView(ctx)
            ok_btn.setText("Готово")
            try:
                ok_btn.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 16)
                ok_btn.setGravity(Gravity.CENTER)
                ab = GradientDrawable()
                ab.setCornerRadius(AndroidUtilities.dp(24))
                ab.setColor(accent)
                ok_btn.setBackground(ab)
                try:
                    ok_btn.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText))
                except Exception:
                    ok_btn.setTextColor(0xFFFFFFFF)
                try:
                    ok_btn.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
                except Exception:
                    pass
                ok_btn.setPadding(
                    AndroidUtilities.dp(20),
                    AndroidUtilities.dp(14),
                    AndroidUtilities.dp(20),
                    AndroidUtilities.dp(14),
                )
            except Exception:
                pass
            lp_ok = LinearLayout.LayoutParams(-1, -2)
            try:
                lp_ok.topMargin = AndroidUtilities.dp(18)
            except Exception:
                pass
            outer.addView(ok_btn, lp_ok)

            try:
                from android_utils import OnClickListener
                ok_btn.setOnClickListener(OnClickListener(lambda _v=None: sheet.dismiss()))
            except Exception:
                pass

            sheet.setCustomView(outer)
            try:
                sheet.show()
            except Exception:
                pass
        except Exception as e:
            _bootstrap_log(f"interval picker build failed: {e}")

    run_on_ui_thread(_build)
    return True


def _format_bytes(n):
    try:
        n = float(n or 0)
    except Exception:
        return "0 B"
    units = ["B", "KB", "MB", "GB"]
    i = 0
    while n >= 1024.0 and i < len(units) - 1:
        n /= 1024.0
        i += 1
    if i == 0:
        return f"{int(n)} B"
    return f"{n:.1f} {units[i]}"


def _format_progress_status(short_path, current_bytes, total_bytes, applying=False):
    if applying:
        return f"{short_path} • {_format_bytes(current_bytes)}"
    if total_bytes > 0:
        loaded = _format_bytes(current_bytes)
        total = _format_bytes(total_bytes)
        return f"{short_path} • {loaded} / {total}"
    return f"{short_path} • {_format_bytes(current_bytes)}"


def _restart_application():
    """Force the Telegram process to die so the user can relaunch it cleanly."""
    try:
        from java import jclass, dynamic_proxy
        Process = jclass("android.os.Process")
        myPid = int(Process.myPid())
        Process.killProcess(myPid)
        return True
    except Exception as e:
        _bootstrap_log(f"restart failed: {e}")
        try:
            os._exit(0)
        except Exception:
            pass
        return False


def _download_and_apply_update(manifest, progress_cb=None):
    """Download every file from the manifest, then atomically replace on disk."""
    if str((manifest or {}).get("source") or "") == "telegram_channel":
        document = (manifest or {}).get("document")
        rel = "eblannft.plugin"
        dest = _resolve_dest_for_manifest_entry(rel)
        if not dest:
            raise RuntimeError("Cannot resolve .plugin destination")

        def _on_doc_progress(loaded, total):
            if callable(progress_cb):
                try:
                    progress_cb(
                        idx=1,
                        total_steps=1,
                        current_path=rel,
                        applying=False,
                        current_bytes=int(loaded or 0),
                        current_total=int(total or 0),
                        overall_bytes=int(round(max(0.0, min(1.0, float(loaded or 0) / float(total or loaded or 1))) * 950000)),
                        overall_total=1000000,
                    )
                except Exception:
                    pass

        local_path = _document_local_path(document, timeout=180, progress_cb=_on_doc_progress)
        if not local_path or not os.path.isfile(local_path):
            raise RuntimeError("Telegram did not produce a local .plugin file")
        parent = os.path.dirname(dest)
        if parent:
            os.makedirs(parent, exist_ok=True)
        tmp = dest + ".tmp"
        shutil.copyfile(local_path, tmp)
        os.replace(tmp, dest)
        if callable(progress_cb):
            try:
                size = os.path.getsize(dest)
                progress_cb(
                    idx=1,
                    total_steps=1,
                    current_path=rel,
                    applying=True,
                    current_bytes=size,
                    current_total=size,
                    overall_bytes=1000000,
                    overall_total=1000000,
                )
            except Exception:
                pass
        return

    raise RuntimeError("Unsupported update source: releases are Telegram-channel only")


_chimeranft_popup_sticker_doc_cache = None


def _enable_sticker_animation(sticker_view):
    """Tell BackupImageView's ImageReceiver to start + loop the TGS animation
    (same dance _bind_welcome_pepe_sticker does in the runtime)."""
    try:
        receiver = (
            sticker_view.getImageReceiver()
            if sticker_view is not None and hasattr(sticker_view, "getImageReceiver")
            else None
        )
    except Exception:
        receiver = None
    if receiver is None:
        return
    for setter, args in (
        ("setAllowStartAnimation", (True,)),
        ("setAutoRepeat", (1,)),
        ("setAutoRepeatCount", (0,)),
        ("setAutoRepeatTimeout", (0,)),
        ("setAllowStartLottieAnimation", (True,)),
    ):
        try:
            fn = getattr(receiver, setter, None)
            if callable(fn):
                fn(*args)
        except Exception:
            pass
    try:
        if hasattr(receiver, "startAnimation"):
            receiver.startAnimation()
    except Exception:
        pass


def _apply_sticker_document_to_view(sticker_view, document, image_filter="120_120"):
    if sticker_view is None or document is None:
        return False
    try:
        if not hasattr(sticker_view, "setImage"):
            return False
        from org.telegram.messenger import ImageLocation
        loc = ImageLocation.getForDocument(document)
        if loc is None:
            return False
        sticker_view.setImage(loc, str(image_filter or "120_120"), None, 0, document)
        _enable_sticker_animation(sticker_view)
        global _chimeranft_popup_sticker_doc_cache
        _chimeranft_popup_sticker_doc_cache = document
        return True
    except Exception as e:
        _bootstrap_log(f"apply sticker doc failed: {e}")
        return False


def _bind_chimeranft_popup_sticker(sticker_view, set_name="HappyHappyPepe", indexes=(31, 0), image_filter="120_120"):
    """Look up the requested sticker (by set short_name + preferred index list,
    falling back to subsequent indexes if the chosen one is out of range) and
    apply it to a BackupImageView. If the sticker set isn't loaded yet,
    asynchronously fetch it via MediaDataController.getStickerSet and apply
    on the UI thread when it arrives."""
    if sticker_view is None:
        return False

    # Reuse the cached document if one's already been resolved during this
    # session — saves a MediaDataController round-trip on subsequent popups.
    cached = _chimeranft_popup_sticker_doc_cache
    if cached is not None and _apply_sticker_document_to_view(sticker_view, cached, image_filter):
        return True

    try:
        from java import jclass, dynamic_proxy
        from android_utils import run_on_ui_thread
        from org.telegram.messenger import MediaDataController, UserConfig
        from org.telegram.tgnet import TLRPC
    except Exception as e:
        _bootstrap_log(f"sticker imports failed: {e}")
        return False

    try:
        account = int(UserConfig.selectedAccount)
    except Exception:
        account = 0

    try:
        media_controller = MediaDataController.getInstance(account)
    except Exception:
        media_controller = None
    if media_controller is None:
        return False

    def _try_set(sset):
        try:
            docs = getattr(sset, "documents", None) if sset is not None else None
            if docs is None:
                return False
            n = int(docs.size())
            for idx in indexes:
                try:
                    i = int(idx)
                except Exception:
                    continue
                if 0 <= i < n:
                    doc = docs.get(i)
                    if _apply_sticker_document_to_view(sticker_view, doc, image_filter):
                        return True
            return False
        except Exception as e:
            _bootstrap_log(f"sticker set scan failed: {e}")
            return False

    # Fast path: set already cached locally.
    try:
        sset = media_controller.getStickerSetByName(str(set_name))
    except Exception:
        sset = None
    if _try_set(sset):
        return True

    # Slow path: ask MediaDataController to fetch / cache it.
    try:
        input_set = TLRPC.TL_inputStickerSetShortName()
        input_set.short_name = str(set_name)
        target_view = sticker_view

        class _CB(dynamic_proxy(jclass("org.telegram.messenger.Utilities$Callback"))):
            def run(self_obj, result):
                try:
                    def _apply():
                        _try_set(result)
                    run_on_ui_thread(_apply)
                except Exception as e:
                    try:
                        _bootstrap_log(f"sticker set callback fail: {e}")
                    except Exception:
                        pass

        media_controller.getStickerSet(input_set, None, False, _CB())
    except Exception as e:
        _bootstrap_log(f"sticker fetch failed: {e}")

    return False


def _parse_notes_bullets(text):
    """Split release notes into a list of bullet items.

    Recognises three input styles, in order of preference:
      1. "(1) ... (2) ... (3) ..." numbered groups (this repo's house style)
      2. "• item / - item / * item" markdown-ish bullets
      3. Plain prose — falls back to sentence-split on ". " before a capital

    Returns a list of clean strings without the leading marker. Empty input
    or no clear structure → returns a single-item list with the whole text.
    """
    import re
    if not text:
        return []
    body = str(text).strip()
    # Strip a "vX.Y.Z — " prefix so it doesn't show up as a bullet on its own.
    body = re.sub(r"^[Bb]eta\s+v?\d+\.\d+\.\d+\s*[—–-]\s*", "", body)
    body = re.sub(r"^v?\d+\.\d+\.\d+\s*[—–-]\s*", "", body)

    # 1) Numbered "(N)" groups
    parts = re.split(r"\s*\(\d+\)\s*", body)
    if len(parts) >= 3:
        items = []
        # Optional intro before "(1)" — keep only if it looks like a real
        # phrase, not just a category label.
        intro = parts[0].strip().rstrip(":,.; ")
        if intro and len(intro) > 16:
            items.append(intro)
        for p in parts[1:]:
            s = p.strip().rstrip(" .;")
            if s:
                items.append(s)
        if len(items) >= 2:
            return items

    # 2) Bullet markers
    if re.search(r"(^|\n)\s*[•\-\*]\s+", body):
        lines = re.split(r"(?:^|\n)\s*[•\-\*]\s+", body)
        items = [l.strip().rstrip(" .;") for l in lines if l.strip()]
        if len(items) >= 2:
            return items

    # 3) Sentence split — only if the text has at least two reasonable sentences.
    sents = re.split(r"\.\s+(?=[А-ЯA-Z])", body)
    if len(sents) >= 2:
        return [s.strip().rstrip(".") for s in sents if s.strip()]

    return [body]


def _format_changelog_text(text, entities=None):
    return str(text or "")


def _schedule_popup_retry(manifest, attempt, reason):
    """Re-schedule _show_update_popup later if the first attempt couldn't
    build (e.g. fired before LaunchActivity finished mounting). Bounded by
    _UPDATE_POPUP_MAX_RETRIES so we never loop forever."""
    next_attempt = int(attempt or 0) + 1
    if next_attempt > _UPDATE_POPUP_MAX_RETRIES:
        _bootstrap_log(
            f"update popup: giving up after {next_attempt - 1} retries (last reason: {reason})"
        )
        _mark_update_popup_inactive(manifest)
        return
    _bootstrap_log(
        f"update popup retry #{next_attempt} scheduled in {_UPDATE_POPUP_RETRY_DELAY_MS}ms (reason: {reason})"
    )
    try:
        from java import jclass, dynamic_proxy
        from org.telegram.messenger import AndroidUtilities
        Runnable = jclass("java.lang.Runnable")

        class _Retry(dynamic_proxy(Runnable)):
            def run(self_obj):
                try:
                    _show_update_popup(manifest, _retry_attempt=next_attempt)
                except Exception as e:
                    _bootstrap_log(f"update popup retry #{next_attempt} crashed: {e}")
                return None

        AndroidUtilities.runOnUIThread(_Retry(), int(_UPDATE_POPUP_RETRY_DELAY_MS))
        return
    except Exception:
        pass

    def _delayed():
        try:
            time.sleep(_UPDATE_POPUP_RETRY_DELAY_MS / 1000.0)
            _show_update_popup(manifest, _retry_attempt=next_attempt)
        except Exception as e:
            _bootstrap_log(f"update popup retry #{next_attempt} fallback crashed: {e}")
    threading.Thread(target=_delayed, daemon=True).start()


def _show_update_popup(manifest, _retry_attempt=0):
    """Build and present an MD3 BottomSheet describing the available update.

    Layout (top → bottom):
      1. Hero header — ⬇ icon glyph + 'Обновление' title + 'Chimera NFT' subtitle
         + version chip 'v X.Y.Z  →  vA.B.C'
      2. Optional 'Что нового' card with scrollable change notes
      3. Progress card — label / percent / 12dp gradient track / status line
      4. Two-line button stack — filled primary 'Скачать' + text 'Позже'

    Returns True iff the BottomSheet was successfully scheduled for display.
    On failure (no UI context yet, imports missing, etc.) reschedules itself
    up to _UPDATE_POPUP_MAX_RETRIES times with _UPDATE_POPUP_RETRY_DELAY_MS
    spacing — covers the cold-start case where the runtime fires the
    update check before LaunchActivity has finished mounting.
    """
    try:
        from android_utils import run_on_ui_thread, log as _log_ui
    except Exception:
        _schedule_popup_retry(manifest, _retry_attempt, "android_utils not ready")
        return False
    try:
        from java import jclass
        from client_utils import get_last_fragment
        from org.telegram.ui.ActionBar import BottomSheet, Theme
        from org.telegram.messenger import AndroidUtilities, ApplicationLoader
        from android.view import View, Gravity, ViewOutlineProvider
        from android.widget import LinearLayout, FrameLayout, TextView, ScrollView, ImageView, ProgressBar
        from android.graphics.drawable import GradientDrawable
        from android.util import TypedValue
    except Exception as e:
        _bootstrap_log(f"update popup imports failed: {e}")
        _schedule_popup_retry(manifest, _retry_attempt, f"imports: {e}")
        return False
    try:
        from org.telegram.ui.Components import BackupImageView
    except Exception:
        BackupImageView = None

    try:
        frag = get_last_fragment()
        ctx = frag.getParentActivity() if frag and frag.getParentActivity() else None
        if ctx is None:
            try:
                ctx = ApplicationLoader.applicationContext
            except Exception:
                ctx = None
        if ctx is None:
            _schedule_popup_retry(manifest, _retry_attempt, "no UI context")
            return False
    except Exception as e:
        _schedule_popup_retry(manifest, _retry_attempt, f"context lookup: {e}")
        return False

    state = {"started": False, "done": False}

    def _build_and_show():
        try:
            try:
                accent = int(Theme.getColor(Theme.key_featuredStickers_addButton))
            except Exception:
                accent = 0xFF5B8CFF
            try:
                accent_text = int(Theme.getColor(Theme.key_featuredStickers_buttonText))
            except Exception:
                accent_text = 0xFFFFFFFF
            try:
                bg_color = int(Theme.getColor(Theme.key_dialogBackground))
            except Exception:
                bg_color = 0xFF14161B
            try:
                text_color = int(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText))
            except Exception:
                text_color = 0xFFFFFFFF
            try:
                muted_color = int(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText))
            except Exception:
                muted_color = 0xFF9AA3AE

            # ---- Material 3 surface tones, derived from accent + background ----
            def _blend(over_argb, base_argb, alpha_over):
                a = max(0.0, min(1.0, float(alpha_over)))
                inv = 1.0 - a
                ro = (over_argb >> 16) & 0xFF
                go = (over_argb >> 8) & 0xFF
                bo = over_argb & 0xFF
                rb = (base_argb >> 16) & 0xFF
                gb = (base_argb >> 8) & 0xFF
                bb = base_argb & 0xFF
                r = int(round(ro * a + rb * inv))
                g = int(round(go * a + gb * inv))
                b = int(round(bo * a + bb * inv))
                return (0xFF << 24) | (r << 16) | (g << 8) | b

            surface_color = _blend(accent, bg_color, 0.06)        # subtle tint
            container_color = _blend(accent, bg_color, 0.12)       # cards
            container_color_2 = _blend(accent, bg_color, 0.18)     # raised
            track_bg_color = _blend(accent, bg_color, 0.22)        # progress track
            chip_color = _blend(accent, bg_color, 0.20)            # version chip
            divider_color = _blend(accent, bg_color, 0.10)

            sheet = BottomSheet(ctx, True)

            outer = LinearLayout(ctx)
            outer.setOrientation(LinearLayout.VERTICAL)
            outer.setPadding(
                AndroidUtilities.dp(20),
                AndroidUtilities.dp(22),
                AndroidUtilities.dp(20),
                AndroidUtilities.dp(20),
            )

            # ============================================================
            # HERO — icon glyph in tinted square + title + subtitle + chip
            # ============================================================
            hero = LinearLayout(ctx)
            hero.setOrientation(LinearLayout.HORIZONTAL)
            hero.setGravity(Gravity.CENTER_VERTICAL)
            outer.addView(hero, LinearLayout.LayoutParams(-1, -2))

            icon_box = FrameLayout(ctx)
            try:
                ib = GradientDrawable()
                ib.setCornerRadius(AndroidUtilities.dp(18))
                ib.setColor(_blend(accent, bg_color, 0.20))
                icon_box.setBackground(ib)
                icon_box.setClipToOutline(True)
                icon_box.setOutlineProvider(ViewOutlineProvider.BACKGROUND)
            except Exception:
                pass

            sticker_bound = False
            sticker_view_ref = None
            if BackupImageView is not None:
                try:
                    sticker_view = BackupImageView(ctx)
                    try:
                        sticker_view.setRoundRadius(AndroidUtilities.dp(14))
                    except Exception:
                        pass
                    icon_box.addView(
                        sticker_view,
                        FrameLayout.LayoutParams(
                            AndroidUtilities.dp(48),
                            AndroidUtilities.dp(48),
                            Gravity.CENTER,
                        ),
                    )
                    # __icon__ = HappyHappyPepe/31. Try 31 first, fall back to
                    # earlier indexes if the set doesn't have it. Async fetch
                    # via MediaDataController if not cached locally.
                    try:
                        _bind_chimeranft_popup_sticker(
                            sticker_view,
                            set_name="HappyHappyPepe",
                            indexes=(31, 30, 0),
                            image_filter="120_120",
                        )
                        sticker_bound = True
                        sticker_view_ref = sticker_view
                    except Exception as e:
                        _bootstrap_log(f"sticker bind failed: {e}")
                except Exception as e:
                    _bootstrap_log(f"BackupImageView setup failed: {e}")

            if not sticker_bound:
                icon_glyph = TextView(ctx)
                try:
                    icon_glyph.setText("⬇")  # safer fallback glyph
                    icon_glyph.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 26)
                    icon_glyph.setTextColor(accent)
                    icon_glyph.setGravity(Gravity.CENTER)
                    try:
                        icon_glyph.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
                    except Exception:
                        pass
                except Exception:
                    pass
                icon_box.addView(
                    icon_glyph,
                    FrameLayout.LayoutParams(-1, -1, Gravity.CENTER),
                )

            hero.addView(
                icon_box,
                LinearLayout.LayoutParams(AndroidUtilities.dp(54), AndroidUtilities.dp(54)),
            )

            hero_text = LinearLayout(ctx)
            hero_text.setOrientation(LinearLayout.VERTICAL)
            try:
                lp_ht = LinearLayout.LayoutParams(0, -2, 1.0)
                lp_ht.leftMargin = AndroidUtilities.dp(14)
                hero.addView(hero_text, lp_ht)
            except Exception:
                hero.addView(hero_text, LinearLayout.LayoutParams(-1, -2))

            # Adapt the hero copy to whether we're upgrading or rolling back.
            try:
                _is_upgrade = _is_remote_upgrade(manifest.get("version"))
            except Exception:
                _is_upgrade = True
            title = TextView(ctx)
            title.setText(
                "Обновление готово" if _is_upgrade else f"Откат на v{manifest.get('version', '?')}"
            )
            try:
                title.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 22)
                title.setTextColor(text_color)
                title.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
            except Exception:
                pass
            hero_text.addView(title, LinearLayout.LayoutParams(-1, -2))

            subtitle = TextView(ctx)
            subtitle.setText("Chimera NFT")
            try:
                subtitle.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 13)
                subtitle.setTextColor(muted_color)
            except Exception:
                pass
            lp_sub = LinearLayout.LayoutParams(-1, -2)
            try:
                lp_sub.topMargin = AndroidUtilities.dp(2)
            except Exception:
                pass
            hero_text.addView(subtitle, lp_sub)

            # Version chip on its own line, slightly indented under hero.
            chip_row = LinearLayout(ctx)
            chip_row.setOrientation(LinearLayout.HORIZONTAL)
            chip_row.setGravity(Gravity.START | Gravity.CENTER_VERTICAL)
            lp_chip_row = LinearLayout.LayoutParams(-1, -2)
            try:
                lp_chip_row.topMargin = AndroidUtilities.dp(14)
            except Exception:
                pass
            outer.addView(chip_row, lp_chip_row)

            chip = TextView(ctx)
            try:
                chip.setText(
                    f"  v{__version__}   →   v{manifest.get('version', '?')}  "
                )
                chip.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 12)
                chip.setTextColor(accent)
                chip.setGravity(Gravity.CENTER)
                try:
                    chip.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
                except Exception:
                    pass
                chip.setPadding(
                    AndroidUtilities.dp(10),
                    AndroidUtilities.dp(6),
                    AndroidUtilities.dp(10),
                    AndroidUtilities.dp(6),
                )
                cb = GradientDrawable()
                cb.setCornerRadius(AndroidUtilities.dp(999))
                cb.setColor(chip_color)
                chip.setBackground(cb)
            except Exception:
                pass
            chip_row.addView(chip, LinearLayout.LayoutParams(-2, -2))

            # ============================================================
            # CHANGE NOTES card
            # ============================================================
            notes_text = manifest.get("notes") or ""
            if notes_text:
                notes_card = LinearLayout(ctx)
                notes_card.setOrientation(LinearLayout.VERTICAL)
                try:
                    nc_bg = GradientDrawable()
                    nc_bg.setCornerRadius(AndroidUtilities.dp(20))
                    nc_bg.setColor(container_color)
                    notes_card.setBackground(nc_bg)
                    notes_card.setPadding(
                        AndroidUtilities.dp(16),
                        AndroidUtilities.dp(14),
                        AndroidUtilities.dp(16),
                        AndroidUtilities.dp(14),
                    )
                except Exception:
                    pass
                lp_nc = LinearLayout.LayoutParams(-1, -2)
                try:
                    lp_nc.topMargin = AndroidUtilities.dp(18)
                except Exception:
                    pass
                outer.addView(notes_card, lp_nc)

                notes_header = TextView(ctx)
                try:
                    notes_header.setText("Что нового")
                    notes_header.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 13)
                    notes_header.setTextColor(accent)
                    notes_header.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
                    notes_header.setLetterSpacing(0.04)
                    notes_header.setAllCaps(True)
                except Exception:
                    pass
                notes_card.addView(notes_header, LinearLayout.LayoutParams(-1, -2))

                notes_scroll = ScrollView(ctx)
                try:
                    notes_scroll.setVerticalScrollBarEnabled(False)
                except Exception:
                    pass

                bullets_container = LinearLayout(ctx)
                bullets_container.setOrientation(LinearLayout.VERTICAL)

                item_tv = TextView(ctx)
                try:
                    item_tv.setText(_format_changelog_text(notes_text))
                    item_tv.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 14)
                    item_tv.setTextColor(text_color)
                    item_tv.setLineSpacing(0.0, 1.18)
                    try:
                        item_tv.setIncludeFontPadding(True)
                    except Exception:
                        pass
                except Exception:
                    try:
                        item_tv.setText(str(notes_text))
                    except Exception:
                        pass
                bullets_container.addView(item_tv, LinearLayout.LayoutParams(-1, -2))

                notes_scroll.addView(bullets_container, FrameLayout.LayoutParams(-1, -2))
                try:
                    _text = str(notes_text or "")
                    approx_lines = max(1, int((len(_text) + 34) / 35) + _text.count("\n"))
                    notes_height_dp = int(min(240, max(44, approx_lines * 23 + 8)))
                except Exception:
                    notes_height_dp = 90
                lp_notes = LinearLayout.LayoutParams(-1, AndroidUtilities.dp(notes_height_dp))
                lp_notes.topMargin = AndroidUtilities.dp(10)
                notes_card.addView(notes_scroll, lp_notes)

            # ============================================================
            # PROGRESS card
            # ============================================================
            progress_card = LinearLayout(ctx)
            progress_card.setOrientation(LinearLayout.VERTICAL)
            try:
                pc_bg = GradientDrawable()
                pc_bg.setCornerRadius(AndroidUtilities.dp(20))
                pc_bg.setColor(container_color)
                progress_card.setBackground(pc_bg)
                progress_card.setPadding(
                    AndroidUtilities.dp(16),
                    AndroidUtilities.dp(14),
                    AndroidUtilities.dp(16),
                    AndroidUtilities.dp(16),
                )
            except Exception:
                pass
            lp_pc = LinearLayout.LayoutParams(-1, -2)
            try:
                lp_pc.topMargin = AndroidUtilities.dp(14)
            except Exception:
                pass
            outer.addView(progress_card, lp_pc)

            head = LinearLayout(ctx)
            head.setOrientation(LinearLayout.HORIZONTAL)
            head.setGravity(Gravity.CENTER_VERTICAL)
            progress_card.addView(head, LinearLayout.LayoutParams(-1, -2))

            progress_label = TextView(ctx)
            try:
                progress_label.setText("Готово к загрузке")
                progress_label.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 15)
                progress_label.setTextColor(text_color)
                progress_label.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
            except Exception:
                pass
            try:
                head.addView(progress_label, LinearLayout.LayoutParams(0, -2, 1.0))
            except Exception:
                head.addView(progress_label, LinearLayout.LayoutParams(-1, -2))

            percent = TextView(ctx)
            try:
                percent.setText("0%")
                percent.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 18)
                percent.setTextColor(accent)
                percent.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
            except Exception:
                pass
            head.addView(percent, LinearLayout.LayoutParams(-2, -2))

            track_wrap = FrameLayout(ctx)
            track_bg = View(ctx)
            track_fill = View(ctx)
            try:
                tb = GradientDrawable()
                tb.setCornerRadius(AndroidUtilities.dp(999))
                tb.setColor(track_bg_color)
                track_bg.setBackground(tb)

                # Gradient fill: accent → slightly lighter accent so it has
                # depth instead of looking flat.
                light_accent = _blend(0xFFFFFFFF, accent, 0.18)
                tf = GradientDrawable(
                    GradientDrawable.Orientation.LEFT_RIGHT,
                    [accent, light_accent],
                )
                tf.setCornerRadius(AndroidUtilities.dp(999))
                track_fill.setBackground(tf)
                track_fill.setPivotX(0.0)
                track_fill.setScaleX(0.0)
            except Exception:
                pass
            track_wrap.addView(
                track_bg,
                FrameLayout.LayoutParams(-1, AndroidUtilities.dp(12), Gravity.CENTER_VERTICAL),
            )
            track_wrap.addView(
                track_fill,
                FrameLayout.LayoutParams(-1, AndroidUtilities.dp(12), Gravity.CENTER_VERTICAL),
            )
            lp_track = LinearLayout.LayoutParams(-1, AndroidUtilities.dp(0))
            lp_track.topMargin = AndroidUtilities.dp(14)
            progress_card.addView(track_wrap, lp_track)

            try:
                style_attr = int(getattr(jclass("android.R$attr"), "progressBarStyleHorizontal", 16842872) or 16842872)
                progress_bar = ProgressBar(ctx, None, style_attr)
            except Exception:
                progress_bar = ProgressBar(ctx)
            try:
                progress_bar.setIndeterminate(False)
                progress_bar.setMax(1000)
                progress_bar.setProgress(0)
            except Exception:
                pass
            lp_progress = LinearLayout.LayoutParams(-1, AndroidUtilities.dp(14))
            progress_card.addView(progress_bar, lp_progress)

            status = TextView(ctx)
            try:
                status.setText("Скачивание не запущено")
                status.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 13)
                status.setTextColor(muted_color)
                status.setLineSpacing(0.0, 1.12)
            except Exception:
                pass
            lp_status = LinearLayout.LayoutParams(-1, -2)
            lp_status.topMargin = AndroidUtilities.dp(12)
            progress_card.addView(status, lp_status)

            # ============================================================
            # ACTION BUTTONS — primary filled + secondary text
            # ============================================================
            action_btn = TextView(ctx)
            action_btn.setText("Скачать обновление" if _is_upgrade else "Установить эту версию")
            try:
                action_btn.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 16)
                action_btn.setGravity(Gravity.CENTER)
                ab = GradientDrawable()
                ab.setCornerRadius(AndroidUtilities.dp(24))
                ab.setColor(accent)
                action_btn.setBackground(ab)
                action_btn.setTextColor(accent_text)
                try:
                    action_btn.setTypeface(AndroidUtilities.getTypeface("fonts/rmedium.ttf"))
                except Exception:
                    pass
                action_btn.setPadding(
                    AndroidUtilities.dp(20),
                    AndroidUtilities.dp(14),
                    AndroidUtilities.dp(20),
                    AndroidUtilities.dp(14),
                )
            except Exception:
                pass
            lp_action = LinearLayout.LayoutParams(-1, -2)
            lp_action.topMargin = AndroidUtilities.dp(20)
            outer.addView(action_btn, lp_action)

            close_btn = TextView(ctx)
            close_btn.setText("Позже")
            try:
                close_btn.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 14)
                close_btn.setGravity(Gravity.CENTER)
                close_btn.setTextColor(muted_color)
                close_btn.setPadding(
                    AndroidUtilities.dp(16),
                    AndroidUtilities.dp(12),
                    AndroidUtilities.dp(16),
                    AndroidUtilities.dp(12),
                )
            except Exception:
                pass
            lp_close = LinearLayout.LayoutParams(-1, -2)
            lp_close.topMargin = AndroidUtilities.dp(4)
            outer.addView(close_btn, lp_close)

            # Track-fill state — we drive the bar both by setScaleX (cheap path)
            # AND by direct LayoutParams.width fallback (some Android builds
            # silently drop ViewPropertyAnimator scaleX from 0 → small_value
            # so the bar stayed empty even at 50%+).
            track_state = {"ratio": 0.0, "track_w": 0}

            def _set_ratio(ratio):
                try:
                    r = max(0.0, min(1.0, float(ratio or 0.0)))
                except Exception:
                    r = 0.0
                # Monotone fill: never visually retract (idle resets are rare;
                # the Telegram download path occasionally emits a stale earlier
                # ratio and we don't want the bar to bounce backwards).
                if r < float(track_state.get("ratio", 0.0) or 0.0) - 0.02:
                    return
                track_state["ratio"] = r
                target_progress_value = int(round(r * 1000.0))

                def _apply():
                    try:
                        progress_bar.setProgress(target_progress_value, True)
                    except Exception:
                        try:
                            ObjectAnimator = jclass("android.animation.ObjectAnimator")
                            cur_progress = int(progress_bar.getProgress() or 0)
                            anim = ObjectAnimator.ofInt(progress_bar, "progress", cur_progress, target_progress_value)
                            anim.setDuration(180)
                            anim.start()
                        except Exception:
                            try:
                                progress_bar.setProgress(target_progress_value)
                            except Exception:
                                pass
                    # Method A — pivoted scaleX. Works on most builds.
                    try:
                        track_fill.setPivotX(0.0)
                        track_fill.setScaleX(float(r))
                    except Exception:
                        pass
                    # Method B — also size the View via LayoutParams.width so
                    # the fill is visible even on builds where scaleX glitches
                    # (some MIUI / Honor / Huawei skins). Pick width from the
                    # measured track_bg width once it's laid out.
                    try:
                        tw = int(track_state.get("track_w", 0) or 0)
                        if tw <= 0:
                            try:
                                tw = int(track_bg.getWidth() or 0)
                            except Exception:
                                tw = 0
                            if tw > 0:
                                track_state["track_w"] = tw
                        if tw > 0:
                            new_w = max(0, int(round(tw * float(r))))
                            try:
                                lp = track_fill.getLayoutParams()
                                if lp is not None and getattr(lp, "width", -1) != new_w:
                                    lp.width = new_w
                                    track_fill.setLayoutParams(lp)
                                    # Method B uses width, reset scaleX to 1 so
                                    # we don't double-shrink.
                                    track_fill.setScaleX(1.0)
                            except Exception:
                                pass
                    except Exception:
                        pass
                    try:
                        track_fill.invalidate()
                    except Exception:
                        pass

                try:
                    run_on_ui_thread(_apply)
                except Exception:
                    try:
                        _apply()
                    except Exception:
                        pass

            def _set_status(text):
                try:
                    status.setText(str(text or ""))
                except Exception:
                    pass

            def _set_label(text):
                try:
                    progress_label.setText(str(text or ""))
                except Exception:
                    pass

            # Single persistent percent-tween thread. Eliminates the wobble
            # bug where overlapping per-callback tweens raced each other on
            # the UI queue (every progress chunk spawned a new 220ms tween,
            # and queued setText lambdas arrived out of order producing the
            # 19→21→20 flicker). Now: one daemon, always pulls the latest
            # target, never decreases the displayed value.
            percent_state = {
                "current": 0.0,   # last value actually pushed to TextView
                "target": 0.0,    # latest goal
                "running": False,
                "stop": False,
                "last_text": "",
            }

            def _percent_loop():
                try:
                    idle_ticks = 0
                    while not percent_state.get("stop"):
                        cur = float(percent_state.get("current", 0.0) or 0.0)
                        tgt = float(percent_state.get("target", 0.0) or 0.0)
                        delta = tgt - cur
                        if abs(delta) < 0.05:
                            cur = tgt
                            percent_state["current"] = cur
                            idle_ticks += 1
                            # Self-terminate after ~1s of no work.
                            if idle_ticks > 30:
                                percent_state["running"] = False
                                return
                            try:
                                time.sleep(0.033)
                            except Exception:
                                return
                            continue
                        idle_ticks = 0
                        # Move ~22% of the gap per frame → ~6 frames to converge.
                        step = delta * 0.22
                        if abs(step) < 0.25:
                            step = 0.25 if step > 0 else -0.25
                        new_cur = cur + step
                        # Clamp so we don't overshoot or move backwards visually.
                        if delta > 0 and new_cur > tgt:
                            new_cur = tgt
                        elif delta < 0 and new_cur < tgt:
                            new_cur = tgt
                        if new_cur < cur:
                            new_cur = cur  # never retract — see _set_ratio note
                        percent_state["current"] = new_cur
                        txt = f"{int(round(new_cur))}%"
                        if txt != percent_state.get("last_text"):
                            percent_state["last_text"] = txt
                            try:
                                run_on_ui_thread(lambda t=txt: percent.setText(t))
                            except Exception:
                                pass
                        try:
                            time.sleep(0.033)  # ~30fps
                        except Exception:
                            return
                finally:
                    percent_state["running"] = False

            def _set_percent(value):
                try:
                    target = float(value)
                except Exception:
                    target = 0.0
                # Never push the target backwards — protects against stale
                # progress ticks that would make the percent flicker down.
                if target < float(percent_state.get("target", 0.0) or 0.0):
                    return
                percent_state["target"] = target
                # Snap on tiny deltas — no animation needed.
                cur = float(percent_state.get("current", 0.0) or 0.0)
                if abs(target - cur) < 0.5:
                    percent_state["current"] = target
                    txt = f"{int(round(target))}%"
                    if txt != percent_state.get("last_text"):
                        percent_state["last_text"] = txt
                        try:
                            run_on_ui_thread(lambda t=txt: percent.setText(t))
                        except Exception:
                            try:
                                percent.setText(txt)
                            except Exception:
                                pass
                    return
                # Spin up the persistent loop on first real motion.
                if not percent_state.get("running"):
                    percent_state["running"] = True
                    try:
                        threading.Thread(target=_percent_loop, daemon=True).start()
                    except Exception:
                        # Fallback: just snap.
                        percent_state["current"] = target
                        try:
                            run_on_ui_thread(lambda t=target: percent.setText(f"{int(round(t))}%"))
                        except Exception:
                            try:
                                percent.setText(f"{int(round(target))}%")
                            except Exception:
                                pass

            def _ui_progress(idx, total_steps, current_path, applying, current_bytes,
                              current_total, overall_bytes, overall_total):
                if overall_total > 0:
                    ratio = overall_bytes / float(overall_total)
                elif current_total > 0:
                    ratio = current_bytes / float(current_total)
                else:
                    ratio = max(0.0, (idx - 1) / float(max(1, total_steps)))
                _set_ratio(ratio)
                _set_percent(ratio * 100.0)
                _set_label("Применение…" if applying else "Скачивание…")
                _set_status(_format_progress_status(current_path, current_bytes,
                                                    current_total, applying=applying))

            def _on_progress(**kw):
                def _do():
                    _ui_progress(**kw)
                run_on_ui_thread(_do)

            # Auto-restart countdown — after a successful download we wait
            # 5 seconds with a live ticker on the action button before
            # restarting on our own. The user can tap it to restart now,
            # or tap "Отмена" to stop the auto-restart.
            countdown_state = {"active": False, "remaining": 0, "tok": 0}

            def _start_restart_countdown(seconds=5):
                countdown_state["active"] = True
                countdown_state["remaining"] = int(seconds)
                countdown_state["tok"] = countdown_state.get("tok", 0) + 1
                my_tok = countdown_state["tok"]
                try:
                    run_on_ui_thread(lambda: close_btn.setText("Отмена"))
                except Exception:
                    pass

                def _ticker():
                    while True:
                        if countdown_state.get("tok") != my_tok or not countdown_state.get("active"):
                            return
                        rem = int(countdown_state.get("remaining", 0))
                        if rem <= 0:
                            try:
                                run_on_ui_thread(_restart_application)
                            except Exception:
                                try:
                                    _restart_application()
                                except Exception:
                                    pass
                            return
                        try:
                            run_on_ui_thread(lambda r=rem: action_btn.setText(f"Перезапустить ({r})"))
                        except Exception:
                            pass
                        try:
                            time.sleep(1.0)
                        except Exception:
                            return
                        countdown_state["remaining"] = rem - 1

                try:
                    threading.Thread(target=_ticker, daemon=True).start()
                except Exception:
                    pass

            def _cancel_restart_countdown():
                countdown_state["active"] = False
                try:
                    run_on_ui_thread(lambda: action_btn.setText("Перезапустить"))
                except Exception:
                    pass
                try:
                    run_on_ui_thread(lambda: close_btn.setText("Позже"))
                except Exception:
                    pass

            def _do_download():
                try:
                    _download_and_apply_update(manifest, progress_cb=_on_progress)
                    def _done():
                        _mark_update_popup_finished(manifest)
                        state["done"] = True
                        _set_ratio(1.0)
                        _set_percent(100)
                        _set_label("Готово")
                        _set_status("Файлы установлены. Перезапуск через несколько секунд…")
                        try:
                            action_btn.setText("Перезапустить (5)")
                            action_btn.setEnabled(True)
                            action_btn.setAlpha(1.0)
                        except Exception:
                            pass
                        try:
                            _start_restart_countdown(seconds=5)
                        except Exception:
                            pass
                    run_on_ui_thread(_done)
                except Exception as e:
                    err = e
                    def _err():
                        state["started"] = False
                        _set_label("Ошибка")
                        _set_status(f"Не удалось скачать: {err}")
                        try:
                            action_btn.setText("Повторить")
                            action_btn.setEnabled(True)
                            action_btn.setAlpha(1.0)
                        except Exception:
                            pass
                    run_on_ui_thread(_err)

            try:
                from android_utils import OnClickListener
            except Exception:
                OnClickListener = None

            def _on_action():
                if state["done"]:
                    _restart_application()
                    return
                if state["started"]:
                    return
                state["started"] = True
                try:
                    action_btn.setEnabled(False)
                    action_btn.setAlpha(0.85)
                    action_btn.setText("Скачивается…")
                except Exception:
                    pass
                _set_label("Скачивание…")
                _set_status("Получаю файл из Telegram-канала…")
                threading.Thread(target=_do_download, daemon=True).start()

            def _on_close():
                # If the auto-restart ticker is running, the secondary button
                # acts as "Отмена" and just stops the countdown — the user
                # stays on the success screen with a manual «Перезапустить».
                if countdown_state.get("active"):
                    _cancel_restart_countdown()
                    try:
                        _set_status("Файлы установлены. Нажми «Перезапустить», чтобы применить.")
                    except Exception:
                        pass
                    return
                try:
                    if not state.get("done"):
                        _mark_update_popup_inactive(manifest)
                    sheet.dismiss()
                except Exception:
                    pass

            if OnClickListener is not None:
                try:
                    action_btn.setOnClickListener(OnClickListener(lambda _v=None: _on_action()))
                    close_btn.setOnClickListener(OnClickListener(lambda _v=None: _on_close()))
                except Exception:
                    pass

            sheet.setCustomView(outer)
            try:
                OnDismissListener = jclass("android.content.DialogInterface$OnDismissListener")

                class _Dismiss(dynamic_proxy(OnDismissListener)):
                    def onDismiss(self_obj, dialog):
                        try:
                            if state.get("done"):
                                _mark_update_popup_finished(manifest)
                            else:
                                _mark_update_popup_inactive(manifest)
                        except Exception:
                            pass
                        return None

                sheet.setOnDismissListener(_Dismiss())
            except Exception as e:
                _bootstrap_log(f"update popup dismiss listener skipped: {e}")

            # Subtle entry animation: hero slides up, content fades in.
            try:
                outer.setAlpha(0.0)
                outer.animate().alpha(1.0).setDuration(220).start()
            except Exception:
                pass
            try:
                hero.setTranslationY(float(AndroidUtilities.dp(8)))
                hero.animate().translationY(0.0).setDuration(260).start()
            except Exception:
                pass
            try:
                if 'progress_card' in dir():
                    progress_card.setAlpha(0.0)
                    progress_card.setTranslationY(float(AndroidUtilities.dp(8)))
                    progress_card.animate().alpha(1.0).translationY(0.0).setStartDelay(70).setDuration(260).start()
            except Exception:
                pass
            try:
                action_btn.setAlpha(0.0)
                action_btn.setTranslationY(float(AndroidUtilities.dp(10)))
                action_btn.animate().alpha(1.0).translationY(0.0).setStartDelay(120).setDuration(240).start()
            except Exception:
                pass

            try:
                sheet.show()
            except Exception:
                run_on_ui_thread(sheet.show)

            # Some Telegram builds attach the receiver lazily — re-kick the
            # animation after show() so the TGS plays even if the document
            # arrived after our first startAnimation() call.
            if sticker_view_ref is not None:
                try:
                    from java import dynamic_proxy
                    Runnable = jclass("java.lang.Runnable")

                    def _make_rekick():
                        sv = sticker_view_ref

                        class _Tick(dynamic_proxy(Runnable)):
                            def run(self_obj):
                                try:
                                    _enable_sticker_animation(sv)
                                except Exception:
                                    pass
                                return None
                        return _Tick()

                    for delay_ms in (180, 600, 1500):
                        try:
                            sticker_view_ref.postDelayed(_make_rekick(), int(delay_ms))
                        except Exception:
                            pass
                except Exception as e:
                    _bootstrap_log(f"sticker re-kick scheduling failed: {e}")
        except Exception as e:
            _bootstrap_log(f"popup build failure: {e}")
            _mark_update_popup_inactive(manifest)

    run_on_ui_thread(_build_and_show)
    return True


def _check_for_update_interactive():
    """Manual update check, triggered from the Service menu.

    Always polls (ignores background throttles), shows a bulletin while
    checking, and either opens the popup (newer version) or surfaces a
    success/error toast.
    """
    if _LOAD_ERROR is not None:
        return
    try:
        from ui.bulletin import BulletinHelper
    except Exception:
        BulletinHelper = None
    try:
        from android_utils import run_on_ui_thread
    except Exception:
        run_on_ui_thread = None

    def _toast(method_name, text):
        if BulletinHelper is None:
            return
        method = getattr(BulletinHelper, method_name, None)
        if not callable(method):
            return
        if run_on_ui_thread is not None:
            run_on_ui_thread(lambda: method(text))
        else:
            try:
                method(text)
            except Exception:
                pass

    _toast("show_info", f"Проверяю обновления для v{__version__}…")

    def _worker():
        try:
            manifest = _fetch_manifest(timeout=12)
            _write_last_check_ts(time.time())
            remote_v = str(manifest.get("version", "?"))
            if not _is_manifest_actionable(manifest):
                _toast("show_success", f"В канале та же версия: v{__version__}")
                return
            _bootstrap_log(f"manual update check: v{__version__} -> v{remote_v}")
            _handle_manifest_for_update(manifest, reason="manual", allow_repeat=True)
        except Exception as e:
            _toast("show_error", f"Не удалось проверить обновления: {e}")
            _bootstrap_log(f"manual update check error: {e}")

    threading.Thread(target=_worker, daemon=True).start()


def _run_live_update_check(reason="live"):
    global _update_check_inflight
    if _LOAD_ERROR is not None:
        return False
    with _update_live_lock:
        if _update_check_inflight:
            return False
        _update_check_inflight = True
    try:
        manifest = _fetch_manifest(timeout=_UPDATE_LIVE_REQUEST_TIMEOUT_SEC)
        _write_last_check_ts(time.time())
        return _handle_manifest_for_update(manifest, reason=reason or "live", allow_repeat=False)
    finally:
        with _update_live_lock:
            _update_check_inflight = False


def _kick_live_update_check(reason="kick"):
    try:
        threading.Thread(
            target=lambda: _run_live_update_check(reason=reason or "kick"),
            daemon=True,
        ).start()
        return True
    except Exception as e:
        _bootstrap_log(f"live update kick failed: {e}")
        return False


def _install_global_update_resume_hook(plugin_instance):
    global _update_resume_hook_installed
    if _update_resume_hook_installed or plugin_instance is None:
        return False
    try:
        from base_plugin import MethodHook
        from java import jclass
        LA = jclass("org.telegram.ui.LaunchActivity")
    except Exception as e:
        _bootstrap_log(f"update resume hook skipped: {e}")
        return False

    class _UpdateResumeHook(MethodHook):
        def after_hooked_method(self, param):
            try:
                notify_resume()
            except Exception as e:
                _bootstrap_log(f"update resume hook error: {e}")

    hooked = 0
    try:
        for m in LA.getDeclaredMethods():
            try:
                if str(m.getName() or "") != "onResume":
                    continue
                if len(m.getParameterTypes()) != 0:
                    continue
                m.setAccessible(True)
            except Exception:
                continue
            try:
                ref = plugin_instance.hook_method(m, _UpdateResumeHook())
                try:
                    refs = getattr(plugin_instance, "hooks_refs", None)
                    if refs is not None:
                        refs.append(ref)
                except Exception:
                    pass
                hooked += 1
            except Exception as e:
                _bootstrap_log(f"update resume hook install failed: {e}")
        if hooked:
            _update_resume_hook_installed = True
            _bootstrap_log(f"update resume hooks installed: {hooked}")
            return True
    except Exception as e:
        _bootstrap_log(f"update resume hook scan failed: {e}")
    return False


def _start_live_update_poller(reason="load"):
    global _update_live_started
    if _LOAD_ERROR is not None:
        return False
    with _update_live_lock:
        if _update_live_started:
            return True
        _update_live_started = True
        try:
            _update_live_stop.clear()
        except Exception:
            pass

    def _loop():
        delay = 0.0
        _bootstrap_log(
            f"live update poller started ({reason}); interval={_UPDATE_LIVE_POLL_INTERVAL_SEC}s"
        )
        while True:
            try:
                if _update_live_stop.wait(float(delay)):
                    break
            except Exception:
                pass
            delay = float(_UPDATE_LIVE_POLL_INTERVAL_SEC)
            try:
                _run_live_update_check(reason="live")
            except Exception as e:
                _bootstrap_log(f"live update poll error: {e}")
                delay = float(_UPDATE_LIVE_ERROR_BACKOFF_SEC)
        _bootstrap_log("live update poller stopped")

    try:
        threading.Thread(target=_loop, daemon=True).start()
        return True
    except Exception as e:
        with _update_live_lock:
            _update_live_started = False
        _bootstrap_log(f"live update poller start failed: {e}")
        return False


def _stop_live_update_poller():
    global _update_live_started
    try:
        _update_live_stop.set()
    except Exception:
        pass
    with _update_live_lock:
        _update_live_started = False


def _maybe_check_for_update(force=False, reason="load"):
    """Background-poll the manifest. Show popup if a newer version is published.

    `reason` toggles the throttle for legacy one-shot checks. The live Telegram
    poller handles near-instant checks while the app is open.
    """
    if _LOAD_ERROR is not None:
        return
    try:
        last_ts = _read_last_check_ts()
        now = time.time()
        # Bypass the throttle for plugin-load checks — `on_plugin_load` fires
        # once per app session (and once right after install), so doing one
        # Telegram history request each time is cheap and means a freshly installed/upgraded
        # plugin instantly shows the update popup if a newer build was pushed.
        # Resume polls keep their short 2-min throttle.
        if str(reason or "") == "resume":
            threshold = _UPDATE_CHECK_RESUME_THROTTLE_SEC
            if not force and last_ts and (now - last_ts) < threshold:
                return
        # else: load — always check, no early return.
    except Exception:
        pass

    def _worker():
        try:
            _run_live_update_check(reason=reason or "background")
        except Exception as e:
            _bootstrap_log(f"update check error: {e}")

    threading.Thread(target=_worker, daemon=True).start()


def _schedule_update_check():
    """Defer the check so we don't race with plugin/UI initialization."""
    try:
        from java import jclass
        from org.telegram.messenger import AndroidUtilities
        Runnable = jclass("java.lang.Runnable")
        from java import dynamic_proxy

        class _Tick(dynamic_proxy(Runnable)):
            def run(self_obj):
                try:
                    _maybe_check_for_update()
                except Exception as e:
                    _bootstrap_log(f"scheduled check error: {e}")
                return None

        AndroidUtilities.runOnUIThread(_Tick(), int(_UPDATE_CHECK_DELAY_MS))
        return True
    except Exception:
        # Fallback: pure Python timer thread.
        def _delayed():
            try:
                time.sleep(_UPDATE_CHECK_DELAY_MS / 1000.0)
                _maybe_check_for_update()
            except Exception:
                pass
        threading.Thread(target=_delayed, daemon=True).start()
        return False


# ---------------------------------------------------------------------------
# Plugin class — subclasses the runtime impl and adds the update check on load.
# ---------------------------------------------------------------------------




def install(plugin_instance, runtime_root=None, bootstrap_path=None, load_error=None):
    global _plugin_instance, _RUNTIME_INSTALL_ROOT, _BOOTSTRAP_PLUGIN_PATH, _LOAD_ERROR, _UPDATE_BASE_URL_DEFAULT
    _plugin_instance = plugin_instance
    if runtime_root:
        _RUNTIME_INSTALL_ROOT = str(runtime_root)
    if bootstrap_path:
        _BOOTSTRAP_PLUGIN_PATH = str(bootstrap_path)
    try:
        base_url = getattr(type(plugin_instance), "_CHIMERANFT_UPDATE_BASE_URL_DEFAULT", "") or ""
        if str(base_url).strip():
            _UPDATE_BASE_URL_DEFAULT = str(base_url).strip()
    except Exception:
        pass
    _LOAD_ERROR = load_error
    try:
        setattr(plugin_instance, "_chimeranft_check_for_update_interactive", _check_for_update_interactive)
        setattr(plugin_instance, "_chimeranft_open_cache_cleanup_sheet", lambda: plugin_instance._open_cache_cleanup_sheet())
    except Exception as e:
        _bootstrap_log(f"bridge install failed: {e}")
    try:
        _install_global_update_resume_hook(plugin_instance)
        _start_live_update_poller(reason="load")
        _kick_live_update_check(reason="load-kick")
        _schedule_update_check()
    except Exception as e:
        _bootstrap_log(f"update bootstrap error: {e}")
    return True

def notify_resume():
    try:
        _start_live_update_poller(reason="resume")
        _kick_live_update_check(reason="resume-kick")
    except Exception as e:
        _bootstrap_log(f"resume update trigger failed: {e}")

def stop():
    global _update_resume_hook_installed
    _update_resume_hook_installed = False
    _stop_live_update_poller()
