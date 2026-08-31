# -*- coding: utf-8 -*-
"""Build chimeranft-noserver.elyx.zip — Chimera NFT with ALL author-server comms disabled.

Patches (minimal, functional impact: none locally):
  loader.py:
    - _check_plugin_access(): short-circuit -> always allowed, offline. No uid/username/
      account-ids/client-id ever sent to the gate endpoint.
    - _report_banned_client(): early return (unreachable anyway).
    - CHIMERANFT_API_BASE / CHIMERANFT_UPDATE_BASE -> http://127.0.0.1:9 (dead end).
    - _PAYLOAD_B64 + _PAYLOAD_SHA256 updated to the patched payload zip.
  plugin.py (payload):
    - _sync_get_settings(): enabled True->False  => _sync_bootstrap() returns early,
      SyncClient never constructed: no 12s pushes of gifts/username state, no pulls.
    - _updates_bootstrap(): return False => updater never starts (no 128.140.65.15
      update traffic, no eblannftlogs channel polling => no remote code push).
  sync_client.py / updater.py (payload): server URLs -> http://127.0.0.1:9 (belt & suspenders).
"""
import base64
import hashlib
import io
import os
import re
import shutil
import sys
import textwrap
import zipfile
import zlib
import struct

SRC_ELYX = r"C:\Users\user2\Desktop\eblanNFT\chimeranft.elyx.zip"
WORK = r"C:\Users\user2\Desktop\eblanNFT\extracted\noserver_build"
OUT = r"C:\Users\user2\Desktop\eblanNFT\OpenChimeraNFT.elyx.zip"
DEAD = "http://127.0.0.1:9"


def rd(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()


def wr(path, text):
    with open(path, "w", encoding="utf-8", newline="") as f:
        f.write(text)


def patch(text, old, new, label, must=1):
    n = text.count(old)
    if n != must:
        raise SystemExit(f"ANCHOR FAIL [{label}]: found {n}, expected {must}")
    print(f"  ok: {label}")
    return text.replace(old, new)


# ---------- 0. fresh workdir ----------
if os.path.exists(WORK):
    shutil.rmtree(WORK)
os.makedirs(WORK)

with zipfile.ZipFile(SRC_ELYX) as z:
    z.extractall(WORK)
print("[0] extracted original elyx.zip")

# ---------- 1. patch payload files ----------
pkg = os.path.join(WORK, "chimeranft", "src")
p_plugin = os.path.join(pkg, "..", "..", "chimeranft")  # unused guard
payload_dir = os.path.join(WORK, "chimeranft")
# runtime_payload.zip lives at chimeranft/src/runtime_payload.zip
rp_path = os.path.join(pkg, "runtime_payload.zip")
rt = os.path.join(WORK, "_rt")
if os.path.exists(rt):
    shutil.rmtree(rt)
with zipfile.ZipFile(rp_path) as z:
    z.extractall(rt)
rt_pkg = os.path.join(rt, "chimeranft_runtime")

# --- plugin.py ---
p = os.path.join(rt_pkg, "plugin.py")
t = rd(p)
t = patch(
    t,
    'cfg = {\n            "enabled": True,\n            "server_url": "http://128.140.65.15:8787",',
    'cfg = {\n            "enabled": False,\n            "server_url": "' + DEAD + '",',
    "plugin.py: sync enabled=False + dead URL",
)
t = patch(
    t,
    "    def _updates_bootstrap(self):\n",
    "    def _updates_bootstrap(self):\n        return False  # [noserver] updater disabled: no update traffic, no remote code push\n",
    "plugin.py: _updates_bootstrap no-op",
)
wr(p, t)

# --- sync_client.py ---
p = os.path.join(rt_pkg, "sync_client.py")
t = rd(p)
t = patch(
    t,
    'DEFAULT_SERVER_URL = "http://127.0.0.1:8787"',
    'DEFAULT_SERVER_URL = "' + DEAD + '"',
    "sync_client.py: dead default URL",
)
wr(p, t)

# --- updater.py ---
p = os.path.join(rt_pkg, "updater.py")
t = rd(p)
t = patch(
    t,
    '_UPDATE_BASE_URL_DEFAULT = "http://128.140.65.15"',
    '_UPDATE_BASE_URL_DEFAULT = "' + DEAD + '"',
    "updater.py: dead default base url",
)
t = patch(
    t,
    '_UPDATE_BASE_URL_LEGACY = "http://128.140.65.15:8787"',
    '_UPDATE_BASE_URL_LEGACY = "' + DEAD + '"',
    "updater.py: dead legacy base url",
)
t = patch(
    t,
    '_UPDATE_CHANNEL_USERNAME = "eblannftlogs"',
    '_UPDATE_CHANNEL_USERNAME = ""',
    "updater.py: update channel neutralized",
)
t = patch(
    t,
    "    # document to @eblannftlogs.",
    "    # document to the update channel. [noserver: channel neutralized]",
    "updater.py: comment cleaned",
)
wr(p, t)

# ---------- 1d. src link + "Исходный код (GitHub)" button (OpenEblanNFT-style) ----------
SRC_URL = "https://github.com/m4rker20-rgb/OpenChimeraNFT"

# plugin.py (payload) — MUST run before [2] so the rebuilt zip carries the button
pp = os.path.join(rt_pkg, "plugin.py")
pt = rd(pp)
# full display rebrand of the runtime (19 strings: __name__, __description__, UI titles)
n_pp = pt.count("Chimera NFT")
pt = pt.replace("Chimera NFT", "OpenChimeraNFT")
print(f"  ok: plugin.py: rebranded {n_pp} display strings")
# truthful description: sync is disabled in this build
pt = patch(
    pt,
    "OpenChimeraNFT (бывший eblanNFT) — NFT-подарки, оформление профиля и синхронизация между пользователями плагина.",
    "OpenChimeraNFT (бывший Chimera NFT) — NFT-подарки и оформление профиля. Локальная сборка: без серверов, синхронизации и автообновлений.",
    "plugin.py: __description__ rewritten",
)
pt = patch(
    pt,
    'info_desc.setText("t.me/eblannftsupbot")',
    'info_desc.setText("' + SRC_URL + '")',
    "plugin.py: footer card desc -> src",
)
pt = patch(
    pt,
    '                    Browser.openUrl(v.getContext(), "https://t.me/eblannftsupbot")\n'
    "                except:\n"
    "                    try:\n"
    '                        Browser.openUrlInSystemBrowser(v.getContext(), "https://t.me/eblannftsupbot")\n'
    "                    except:\n"
    "                        pass\n"
    "\n"
    "            try:\n"
    "                support_row.setOnClickListener(JOnClickListener(_open_support))",
    '                    Browser.openUrl(v.getContext(), "' + SRC_URL + '")\n'
    "                except:\n"
    "                    try:\n"
    '                        Browser.openUrlInSystemBrowser(v.getContext(), "' + SRC_URL + '")\n'
    "                    except:\n"
    "                        pass\n"
    "\n"
    "            try:\n"
    "                support_row.setOnClickListener(JOnClickListener(_open_support))",
    "plugin.py: footer card click -> src",
)
pt = patch(
    pt,
    '            desc.setText("chimeranft\\nЛокальный плагин для NFT-подарков,\\nпрофиля и визуальных настроек.")',
    '            desc.setText("OpenChimeraNFT\\nЛокальный плагин для NFT-подарков,\\nпрофиля и визуальных настроек.\\n\\nSrc: ' + SRC_URL + '")',
    "plugin.py: about sheet desc + src line",
)
pt = patch(
    pt,
    '            btn.setText("Поддержка")',
    '            btn.setText("Исходный код (GitHub)")',
    "plugin.py: about sheet button label",
)
pt = patch(
    pt,
    '                        Browser.openUrl(v.getContext(), "https://t.me/eblannftsupbot")\n'
    "                    except:\n"
    "                        try:\n"
    '                            Browser.openUrlInSystemBrowser(v.getContext(), "https://t.me/eblannftsupbot")\n'
    "                        except:\n"
    "                            pass\n"
    "                    try:\n"
    "                        sheet.dismiss()",
    '                        Browser.openUrl(v.getContext(), "' + SRC_URL + '")\n'
    "                    except:\n"
    "                        try:\n"
    '                            Browser.openUrlInSystemBrowser(v.getContext(), "' + SRC_URL + '")\n'
    "                        except:\n"
    "                            pass\n"
    "                    try:\n"
    "                        sheet.dismiss()",
    "plugin.py: about sheet button click -> src",
)
# [nosave-fix] copy-flow: a dead core returns None -> "" with NO FAIL marker, so the
# bridge path "succeeded" with added=0 and the Python fallback never ran — gifts were
# silently dropped in-session. No "added=" => nothing persisted => force the fallback.
pt = patch(
    pt,
    '                        if "FATAL" in result or "FAIL" in result or "not initialized" in result:\n'
    "                            raise RuntimeError(result)",
    "                        # [nosave-fix] a dead core returns None -> \"\" without any FAIL marker;\n"
    "                        # no \"added=\" means nothing was persisted — force the Python fallback\n"
    "                        if match_added is None or \"FATAL\" in result or \"FAIL\" in result or \"not initialized\" in result:\n"
    '                            raise RuntimeError(result or "bridge returned no result")',
    "plugin.py: copy-flow detects dead bridge",
)
# [diag] file logger in the runtime + explicit save-path markers
pt = patch(
    pt,
    "def _log(msg):\n"
    "    if _VERBOSE_LOG:\n"
    '        logcat(f"[NFT_ARCH] {msg}")',
    "def _log(msg):\n"
    "    if _VERBOSE_LOG:\n"
    '        logcat(f"[NFT_ARCH] {msg}")\n'
    "\n"
    "\n"
    "_DIAG2_LOCK = None\n"
    "\n"
    "\n"
    "def _diag2(msg):\n"
    '    """Append to <plugins>/eblannft_data/diag.log (same file the loader writes)."""\n'
    "    global _DIAG2_LOCK\n"
    "    try:\n"
    "        import threading as _th\n"
    "        if _DIAG2_LOCK is None:\n"
    "            _DIAG2_LOCK = _th.Lock()\n"
    "        import datetime as _dt\n"
    '        line = _dt.datetime.now().strftime("%m-%d %H:%M:%S") + " [rt] " + str(msg) + "\\n"\n'
    "        with _DIAG2_LOCK:\n"
    '            with open(os.path.join(_cache_dir(), "diag.log"), "a", encoding="utf-8") as _fh:\n'
    "                _fh.write(line)\n"
    "    except Exception:\n"
    "        pass",
    "plugin.py: diag2 file logger",
)
pt = patch(
    pt,
    "    def on_plugin_load(self):\n"
    "        try:\n"
    "            self._plugin_unloading = False",
    "    def on_plugin_load(self):\n"
    "        try:\n"
    '            _diag2("=== runtime load v" + __version__ + " gifts=" + str(len(self.gift_library or [])))\n'
    "        except Exception:\n"
    "            pass\n"
    "        try:\n"
    "            self._plugin_unloading = False",
    "plugin.py: runtime load diag",
)
pt = patch(
    pt,
    "    def _drain_cache_writes(self):",
    "    def _drain_cache_writes(self):\n"
    "        try:\n"
    '            _diag2("drain: pending=%s dirty=%s" % (getattr(self, "_cache_pending", None) is not None, getattr(self, "_library_dirty", False)))\n'
    "        except Exception:\n"
    "            pass",
    "plugin.py: drain diag",
)
pt = patch(
    pt,
    "    def _flush_cache_now(self, reason=\"\"):",
    "    def _flush_cache_now(self, reason=\"\"):\n"
    "        try:\n"
    '            _diag2("flush(" + str(reason) + ")")\n'
    "        except Exception:\n"
    "            pass",
    "plugin.py: flush diag",
)
pt = patch(
    pt,
    "                if not callable(bridge):\n"
    "                    for copied, wrapper in prepared:",
    "                if not callable(bridge):\n"
    "                    try:\n"
    '                        _diag2("copy-flow: PYTHON FALLBACK for %d gift(s)" % len(prepared))\n'
    "                    except Exception:\n"
    "                        pass\n"
    "                    for copied, wrapper in prepared:",
    "plugin.py: copy fallback diag",
)
pt = patch(
    pt,
    '                        logcat("[NFT_COPY] Elyx addGifts: %s" % result)',
    "                        try:\n"
    '                            _diag2("copy-flow: bridge addGifts -> " + result[:200])\n'
    "                        except Exception:\n"
    "                            pass\n"
    '                        logcat("[NFT_COPY] Elyx addGifts: %s" % result)',
    "plugin.py: copy bridge diag",
)
pt = patch(
    pt,
    '                BulletinHelper.show_success("Сохранено")',
    "                try:\n"
    '                    _diag2("my-gifts edit: saved (gift_library=%d)" % len(self.gift_library or []))\n'
    "                except Exception:\n"
    "                    pass\n"
    '                BulletinHelper.show_success("Сохранено")',
    "plugin.py: my-gifts save diag",
)
pt = patch(
    pt,
    '        BulletinHelper.show_success("Подарок добавлен в OpenChimeraNFT")',
    "        try:\n"
    '            _diag2("sheet add: imported to library (key=%s)" % str(key))\n'
    "        except Exception:\n"
    "            pass\n"
    '        BulletinHelper.show_success("Подарок добавлен в OpenChimeraNFT")',
    "plugin.py: sheet add diag",
)
pt = patch(
    pt,
    "    def create_settings(self):",
    "    def _copy_diag_log(self):\n"
    "        try:\n"
    '            p = os.path.join(_cache_dir(), "diag.log")\n'
    '            raw = ""\n'
    "            if os.path.exists(p):\n"
    '                with open(p, "r", encoding="utf-8", errors="replace") as _fh:\n'
    "                    raw = _fh.read()\n"
    "            tail = raw.splitlines()[-400:]\n"
    '            text = "\\n".join(tail) if tail else "(лог пуст)"\n'
    "            AndroidUtilities.addToClipboard(text)\n"
    '            BulletinHelper.show_success("Диагностика: скопировано %d строк" % len(tail))\n'
    "            try:\n"
    '                _diag2("diag copied to clipboard (%d lines)" % len(tail))\n'
    "            except Exception:\n"
    "                pass\n"
    "        except Exception as e:\n"
    '            BulletinHelper.show_error(f"Диагностика: {e}")\n'
    "\n"
    "    def create_settings(self):",
    "plugin.py: _copy_diag_log method",
)
pt = patch(
    pt,
    '                link_alias="chimeranft_service_subfragment",\n'
    "            ),\n"
    "        ]",
    '                link_alias="chimeranft_service_subfragment",\n'
    "            ),\n"
    "            Text(\n"
    '                text="Диагностика",\n'
    '                subtext="скопировать лог сохранения в буфер обмена",\n'
    '                icon="msg_share",\n'
    "                on_click=lambda _: self._copy_diag_log(),\n"
    "            ),\n"
    "        ]",
    "plugin.py: diagnostics settings row",
)
pt = patch(
    pt,
    '__version__ = "1.0.0"',
    '__version__ = "1.2.3"',
    "plugin.py: __version__ 1.2.0",
)
wr(pp, pt)

# ---------- 2. rebuild runtime_payload.zip ----------
new_rp = os.path.join(WORK, "_runtime_payload_new.zip")
names = [
    "chimeranft_runtime/__init__.py",
    "chimeranft_runtime/legacy_gifts.py",
    "chimeranft_runtime/plugin.py",
    "chimeranft_runtime/sync_client.py",
    "chimeranft_runtime/updater.py",
]
with zipfile.ZipFile(new_rp, "w", zipfile.ZIP_DEFLATED) as z:
    for n in names:
        z.write(os.path.join(rt, n.replace("/", os.sep)), n)
rp_bytes = open(new_rp, "rb").read()
rp_sha = hashlib.sha256(rp_bytes).hexdigest()
print(f"[2] rebuilt runtime_payload.zip: {len(rp_bytes)} bytes sha256={rp_sha}")

# sanity: original payload sha must differ
orig_sha = hashlib.sha256(open(rp_path, "rb").read()).hexdigest()
print(f"    original was                       sha256={orig_sha}")

# ---------- 3. patch loader.py ----------
lp = os.path.join(pkg, "loader.py")
t = rd(lp)
t = patch(
    t,
    'CHIMERANFT_UPDATE_BASE = "http://128.140.65.15"',
    'CHIMERANFT_UPDATE_BASE = "' + DEAD + '"',
    "loader.py: dead update base",
)
t = patch(
    t,
    'CHIMERANFT_API_BASE = "http://128.140.65.15:8787"',
    'CHIMERANFT_API_BASE = "' + DEAD + '"',
    "loader.py: dead api base",
)
t = patch(
    t,
    "    import time\n    cached = _load_access_cache()\n    now = int(time.time())",
    "    import time\n"
    "    # [noserver] access gate disabled: no uid/username/account data ever leaves the device\n"
    '    return {"allowed": True, "checked_at": int(time.time()), "offline": True}\n'
    "    cached = _load_access_cache()\n"
    "    now = int(time.time())",
    "loader.py: access check short-circuit",
)
t = patch(
    t,
    "    the local marker applies (which still covers this install).\"\"\"\n    try:\n        import threading",
    "    the local marker applies (which still covers this install).\"\"\"\n    return  # [noserver] never report accounts to the server\n    try:\n        import threading",
    "loader.py: ban-report disabled",
)

# ---------- 1b. remove the ban system entirely ----------
t = patch(
    t,
    "def _load_access_cache():\n    try:\n",
    "def _load_access_cache():\n    return {}  # [noban] persisted access state is never read\n    try:\n",
    "loader.py: _load_access_cache always empty",
)
t = patch(
    t,
    "def _save_access_cache(value):\n    try:\n",
    "def _save_access_cache(value):\n    return  # [noban] bans are never persisted\n    try:\n",
    "loader.py: _save_access_cache no-op",
)
t = patch(
    t,
    "    def _install_access_denied_callback(self):\n        if self._clazz is None",
    "    def _install_access_denied_callback(self):\n        return  # [noban] DEX can never register a ban callback\n        if self._clazz is None",
    "loader.py: denied-callback bridge disabled",
)
t = patch(
    t,
    "    def _start_deferred_access_check(self):\n        \"\"\"Run the access revalidation",
    "    def _start_deferred_access_check(self):\n        return  # [noban]\n        \"\"\"Run the access revalidation",
    "loader.py: deferred access check disabled",
)
t = patch(
    t,
    "    def _handle_live_access_denied(self):\n        self._access_denied = True",
    "    def _handle_live_access_denied(self):\n        return  # [noban] live ban handler removed\n        self._access_denied = True",
    "loader.py: live ban handler disabled",
)
t = patch(
    t,
    '    def _show_access_denied(self, decision, attempt=0):\n        """Full-height native Telegram sheet',
    '    def _show_access_denied(self, decision, attempt=0):\n        return  # [noban] ban sheet removed\n        """Full-height native Telegram sheet',
    "loader.py: ban sheet disabled",
)
t = patch(
    t,
    "    def _start_access_denied_watchdog(self):\n        \"\"\"The gate sheet cannot be dismissed",
    "    def _start_access_denied_watchdog(self):\n        return  # [noban]\n        \"\"\"The gate sheet cannot be dismissed",
    "loader.py: ban watchdog disabled",
)
t = patch(
    t,
    "        # is started from _start_deferred_access_check() once the core is up.\n        access = _check_plugin_access(network=False)",
    "        # is started from _start_deferred_access_check() once the core is up.\n"
    "        # [noban] purge stale ban markers so old denies can never resurface\n"
    "        try:\n"
    "            for _nm in (\"plugin_access.json\", \"plugin_access.json.core.bak\", \"plugin_access.json.core.tmp\"):\n"
    "                try: os.remove(os.path.join(_resolve_data_dir(), _nm))\n"
    "                except OSError: pass\n"
    "        except Exception:\n"
    "            pass\n"
    "        access = _check_plugin_access(network=False)",
    "loader.py: stale ban markers purged on load",
)
# dead-end the DEX access endpoints too (same-length)
# NOTE: dex patch block below (after _PAYLOAD_SHA256) also handles /api/v1/access/ paths
t = patch(
    t,
    'CHIMERANFT_API_BASE = "http://127.0.0.1:9"',
    'CHIMERANFT_API_BASE = "http://127.0.0.1:9"  # [noban] was the author server',
    "loader.py: api base marked dead",
)
t = patch(
    t,
    "                self._clazz.getMethod(\"setAccessUsername\", _STR_CLS).invoke(\n"
    "                    None, str(_real_username() or \"\"))",
    "                pass  # [noban] username never handed to the ban machinery",
    "loader.py: username bridge disabled",
)

# ---------- 1c. rebrand: Chimera NFT -> OpenChimeraNFT ----------
# display strings only: case-sensitive exact "Chimera NFT" never matches the
# lowercase ids/paths/packages (chimeranft, com.chimeranft.core, chimeranft_runtime)
n_rebrand = t.count("Chimera NFT")
t = t.replace("Chimera NFT", "OpenChimeraNFT")
print(f"  ok: loader.py: rebranded {n_rebrand} display strings")

# locales (separate zip entries, patched on disk)
LOCALE_FIX = {
    "strings_ru.json": [
        ("(бывший eblanNFT)", "(бывший Chimera NFT)"),
        (
            "NFT-подарки, оформление профиля и синхронизация между пользователями.",
            "NFT-подарки и оформление профиля. Локальная сборка: без серверов, синхронизации и автообновлений.",
        ),
        (
            "NFT-подарки, оформление профиля\\nи синхронизация между пользователями.",
            "NFT-подарки и оформление профиля.\\nЛокальная сборка: без серверов.",
        ),
    ],
    "strings_en.json": [
        ("(formerly eblanNFT)", "(formerly Chimera NFT)"),
        (
            "NFT gifts, profile customization, and sync between plugin users.",
            "NFT gifts and profile customization. Local build: no servers, no sync.",
        ),
        (
            "NFT gifts, profile customization,\\nand sync between plugin users.",
            "NFT gifts and profile customization.\\nLocal build: no servers.",
        ),
    ],
}
for loc in ("strings_en.json", "strings_ru.json"):
    lpath = os.path.join(WORK, "chimeranft", "locales", loc)
    lt = rd(lpath)
    lc = lt.count("Chimera NFT")
    lt = lt.replace("Chimera NFT", "OpenChimeraNFT")
    for old, new in LOCALE_FIX[loc]:
        n = lt.count(old)
        if n:
            lt = lt.replace(old, new)
            print(f"  ok: locales/{loc}: {n}x phrase fixed")
    wr(lpath, lt)
    print(f"  ok: locales/{loc}: rebranded {lc} strings")

# ---------- 1e. loader-side src links (payload part of this lives in [1d]) ----------
SRC_URL = "https://github.com/m4rker20-rgb/OpenChimeraNFT"

# loader.py (t is still the loader text here)
t = patch(
    t,
    "        They all funnel into the Java Store's allowlisted merge instead, so Elyx Core stays the\n"
    '        only process that ever rewrites stolen_cache_*.json."""',
    "        They all funnel into the Java Store's allowlisted merge instead, so Elyx Core stays the\n"
    '        only process that ever rewrites stolen_cache_*.json."""\n'
    "        # [nosave-fix] probe the bridge BEFORE taking ownership of the writes. If the core\n"
    "        # failed to load (dex rejected, init failed), _jvoid(\"mergeState\") would silently\n"
    "        # swallow every save. In that case keep the runtime's own writers — they are the\n"
    "        # only persistence path left.\n"
    "        _probe = self._jvoid(\"mergeState\", (\"str\",), (\"{}\",))\n"
    "        _probe_s = \"\" if _probe is None else str(_probe)\n"
    "        try:\n"
    "            _diag(\"[store] single-writer probe -> \" + _probe_s[:120])\n"
    "        except Exception:\n"
    "            pass\n"
    "        if self._clazz is None or _probe is None or \"(not initialized)\" in _probe_s or _probe_s.startswith(\"FAIL\"):\n"
    "            self.log(\"[store] bridge unavailable (probe: \" + _probe_s + \") — runtime keeps its cache writers\")\n"
    "            return",
    "loader.py: single-writer guard probes bridge first",
)

t = patch(
    t,
    'CHIMERANFT_SUPPORT_URL = "https://t.me/eblannftsupbot"',
    'CHIMERANFT_SUPPORT_URL = "' + SRC_URL + '"',
    "loader.py: support URL -> GitHub src",
)
t = patch(
    t,
    'CHIMERANFT_DEVELOPER_CHANNEL_URL = "https://t.me/vcvk1"',
    'CHIMERANFT_DEVELOPER_CHANNEL_URL = "' + SRC_URL + '"',
    "loader.py: developer channel URL -> GitHub src",
)
t = patch(
    t,
    '("Бот поддержки и связь", "Помощь и вопросы — t.me/eblannftsupbot."),',
    '("Исходный код", "GitHub — m4rker20-rgb/OpenChimeraNFT."),',
    "loader.py: supporter sheet row -> src",
)
t = patch(
    t,
    "    def _developer_channel_prompt_seen(self):\n"
    '        """True = do NOT show it now. The name is kept because several callers test it.',
    "    def _developer_channel_prompt_seen(self):\n"
    "        return True  # [noserver] never promote the author's channel\n"
    '        """True = do NOT show it now. The name is kept because several callers test it.',
    "loader.py: author-channel prompt disabled",
)
# replace embedded payload b64 + sha
b64 = base64.b64encode(rp_bytes).decode("ascii")
b64_wrapped = "\n".join(textwrap.wrap(b64, 100))
pat = re.compile(r'_PAYLOAD_B64 = """\n.*?\n"""\.strip\(\)', re.S)
if not pat.search(t):
    raise SystemExit("ANCHOR FAIL: _PAYLOAD_B64 block not found")
t = pat.sub('_PAYLOAD_B64 = """\n' + b64_wrapped + '\n""".strip()', t, count=1)
print("  ok: loader.py: _PAYLOAD_B64 replaced")
t = patch(
    t,
    '_PAYLOAD_SHA256 = "25a8a99314db3f38a589998fdb1ffdb6a8803b5a00d32c3007fa98b292c9e81d"',
    '_PAYLOAD_SHA256 = "' + rp_sha + '"',
    "loader.py: _PAYLOAD_SHA256 updated",
)

# --- patch engine.dex (java core does its own server comms: gate/badges/market/sync) ---
# ART verifies that string_ids are SORTED. A naive same-length rewrite that changes the
# sort key ('access/' -> 'xxxxxxx') makes the whole dex fail verification:
#   "Failure to verify dex file: Out-of-order string_ids: '/api/v1/xxxxxxxxxxxxx'
#    then '/api/v1/badges'" -> ClassNotFoundException Gate/Main -> core dead ->
#    every save silently dropped. So: parse the string table, nudge each replacement
#    into the (prev, next) window, verify the full table, recompute the header.
dex_path = os.path.join(WORK, "chimeranft", "java", "engine.dex")
dex = open(dex_path, "rb").read()

import struct as _dex_struct

def _dex_strings(data):
    """Parse the dex string table -> [(start, end, raw)]: the byte range of each
    string's data (after the uleb128 size prefix, before the NUL terminator) plus
    its RAW bytes — dex ordering is defined on these bytes, not on decoded text."""
    n, = _dex_struct.unpack_from("<I", data, 0x38)
    off, = _dex_struct.unpack_from("<I", data, 0x3C)
    out = []
    for i in range(n):
        so, = _dex_struct.unpack_from("<I", data, off + 4 * i)
        p = so
        while data[p] & 0x80:
            p += 1
        p += 1
        start = p
        end = data.index(b"\x00", start)
        out.append((start, end, bytes(data[start:end])))
    return out

def _dex_check_sorted(raws):
    for i in range(1, len(raws)):
        assert raws[i - 1] <= raws[i], (
            "engine.dex: string table out of order at %d: %r > %r"
            % (i, raws[i - 1], raws[i])
        )

def _nudge_dead(desired, lo, hi):
    """Walk `desired` (printable ASCII bytes, fixed length) until lo < res < hi
    and it is still a dead endpoint (no real host, no access path)."""
    bb = bytearray(desired)

    def safe(x):
        return b"128.140.65." not in x and b"/api/v1/access" not in x

    def inc():
        for i in range(len(bb) - 1, -1, -1):
            if bb[i] < 0x7E:
                bb[i] += 1
                return True
            bb[i] = 0x21
        return False

    def dec():
        for i in range(len(bb) - 1, -1, -1):
            if bb[i] > 0x21:
                bb[i] -= 1
                return True
            bb[i] = 0x7E
        return False

    for _ in range(100000):
        res = bytes(bb)
        if lo < res < hi and safe(res):
            return res
        if res <= lo or not safe(res):
            if not inc():
                break
        else:
            if not dec():
                break
    raise AssertionError(
        "engine.dex: cannot nudge %r into (%r, %r)" % (desired, lo, hi)
    )

def _make_dead_dex(data):
    """Neutralize the server endpoint strings so the dex still verifies:
    each replacement keeps its byte length AND its sorted position (ALL
    comparisons on raw bytes — the order ART enforces). lo = already-patched
    left neighbor, hi = ORIGINAL right neighbor."""
    strs = _dex_strings(data)
    raws = [raw for (_, _, raw) in strs]
    texts = [raw.decode("ascii", "replace") for raw in raws]
    final = list(raws)
    HOST = b"http://128.140.65.15:8787"
    targets = {
        b"/api/v1/access/": b"/api/v1/aaaaaaa",             # '/ack' < .. < 'access/report'
        b"/api/v1/access/report": b"/api/v1/aaaaaaaaaaaaa",  # > new left, < '/api/v1/badges'
        HOST: b"http://0.0.0.0:8787/00000",                 # fits ('http$default', 'https://...')
    }
    idxs = {}
    for i, raw in enumerate(raws):
        if raw in targets:
            idxs[i] = ("exact", targets[raw])
        elif HOST in raw:
            idxs[i] = ("composite", raw)  # log-only '] | sync[started server=...]' line
    assert len(idxs) == 4, "engine.dex: expected 4 endpoint strings, found %d" % len(idxs)
    buf = bytearray(data)

    def _composite_candidate(txt, oct1):
        inner = b"%03d.000.000.0" % oct1  # 13 chars, same as '128.140.65.15'; log-only text
        return txt.replace(HOST, b"http://" + inner + b":8787")

    for i in sorted(idxs):
        kind, payload = idxs[i]
        lo = final[i - 1] if i > 0 else b""
        hi = raws[i + 1] if i + 1 < len(raws) else b"\xff" * 64
        if kind == "exact":
            res = payload if (lo < payload < hi) else _nudge_dead(payload, lo, hi)
        elif lo < (cand := _composite_candidate(payload, 30)) < hi:
            res = cand  # '] | sync[started server=http://030.000.000.0:8787]' inside its window
        else:
            # log-only composite: neutralize the whole line into its (lo, hi) window
            res = _nudge_dead(b"x" * (strs[i][1] - strs[i][0]), lo, hi)
        final[i] = res
        s, e, old_raw = strs[i]
        assert len(res) == (e - s), "engine.dex: length mismatch for %r" % old_raw
        buf[s:e] = res
        print("  dex string: %r -> %r" % (old_raw.decode("ascii", "replace"),
                                          res.decode("ascii", "replace")))
    _dex_check_sorted(final)
    return bytes(buf), len(idxs)

dex, _dead = _make_dead_dex(dex)

def _fix_dex_header(d):
    """Byte patching invalidated the dex header: offset 12 = SHA-1 of bytes [32:],
    offset 8 = adler32 of bytes [12:] (which INCLUDES the sha1 field, so the sha1
    must be rewritten first). ART verifies both on load — a stale header makes
    InMemoryDexClassLoader reject the whole core (then every save is redirected
    into the dead bridge and nothing persists)."""
    import zlib as _z, hashlib as _h, struct as _s
    d = bytearray(d)
    d[12:32] = _h.sha1(bytes(d[32:])).digest()
    _s.pack_into("<I", d, 8, _z.adler32(bytes(d[12:])) & 0xFFFFFFFF)
    return bytes(d)

dex = _fix_dex_header(dex)
open(dex_path, "wb").write(dex)
print(f"  ok: engine.dex: {_dead} endpoint strings neutralized (order-safe, header recomputed)")

# keep the loader's embedded dex copy consistent
m = re.search(r"_DEX_B64 = \"\"\"\n(.*?)\n\"\"\"", t, re.S)
if m:
    import base64 as _b64
    emb = _b64.b64decode("".join(m.group(1).split()))
    if any(tg in emb for tg in (b"http://128.140.65.15:8787", b"/api/v1/access/report", b"/api/v1/access/")):
        new_emb, _ = _make_dead_dex(emb)
        new_emb = _fix_dex_header(new_emb)
        nb64 = _b64.b64encode(new_emb).decode("ascii")
        nb64_wrapped = "\n".join(textwrap.wrap(nb64, 100))
        t = t[: m.start()] + '_DEX_B64 = """\n' + nb64_wrapped + '\n"""' + t[m.end():]
        print("  ok: loader.py: _DEX_B64 re-embedded (patched dex)")
    elif emb == dex:
        print("  ok: loader.py: _DEX_B64 already patched")
    else:
        print("  warn: loader.py: _DEX_B64 has neither url pattern — inspect manually")
# [nosave-fix] add-gift bridges: fail loudly when the core is dead so every caller's
# Python fallback (gift_library + _save_cache) actually runs instead of eating writes.
t = patch(
    t,
    "                def _elyx_add_gifts(entries):\n"
    '                    payload = json.dumps(list(entries or []), ensure_ascii=False)\n'
    '                    result = self._jvoid("addGifts", ("str",), (payload,))',
    "                def _elyx_add_gifts(entries):\n"
    "                    if self._clazz is None:\n"
    '                        raise RuntimeError("core not loaded")\n'
    '                    payload = json.dumps(list(entries or []), ensure_ascii=False)\n'
    '                    result = self._jvoid("addGifts", ("str",), (payload,))\n'
    "                    if result is None:\n"
    '                        raise RuntimeError("core bridge returned no result")',
    "loader.py: add-gifts bridge raises on dead core",
)
t = patch(
    t,
    '            self._jvoid("addGifts", ("str",), (json.dumps(entries),))\n'
    '            self._toast("Добавлено %d NFT ✓" % len(entries))',
    '            _batch_res = self._jvoid("addGifts", ("str",), (json.dumps(entries),))\n'
    "            if _batch_res is None or \"FAIL\" in str(_batch_res) or \"not initialized\" in str(_batch_res):\n"
    '                raise RuntimeError("core addGifts: " + str(_batch_res))\n'
    '            self._toast("Добавлено %d NFT ✓" % len(entries))',
    "loader.py: constructor batch add honest result",
)
t = patch(
    t,
    '            self._jvoid("addGifts", ("str",), (json.dumps(entries),))\n'
    '            nm = str(title or "").strip() or str(tpl.get("title") or "подарок")',
    '            _reg_res = self._jvoid("addGifts", ("str",), (json.dumps(entries),))\n'
    "            if _reg_res is None or \"FAIL\" in str(_reg_res) or \"not initialized\" in str(_reg_res):\n"
    '                raise RuntimeError("core addGifts: " + str(_reg_res))\n'
    '            nm = str(title or "").strip() or str(tpl.get("title") or "подарок")',
    "loader.py: regular add honest result",
)
t = patch(
    t,
    '            self.log("OpenChimeraNFT load error: " + _cause(e))',
    '            self.log("OpenChimeraNFT load error: " + _cause(e))\n'
    "            try:\n"
    '                run_on_ui_thread(lambda: self._toast("OpenChimeraNFT: ядро не загрузилось — " + _cause(e)))\n'
    "            except Exception:\n"
    "                pass",
    "loader.py: toast when the core fails to load",
)

# ---------- [bridge-fix] replaceGift 'parameter type is null' + honest saves ----------
t = patch(
    t,
    "            m = mcache.get((method, sig))\n"
    "            if m is None:\n"
    '                tmap = {"int": _INT_T, "long": _LONG_T, "str": _STR_CLS}\n'
    "                m = clazz.getMethod(method, *[tmap[t] for t in sig])\n"
    "                mcache[(method, sig)] = m",
    "            m = mcache.get((method, sig))\n"
    "            if m is None:\n"
    "                # [bridge-fix] lazy type resolution: a bridge call can run before the\n"
    "                # preload window has filled the globals (early hook / settings render).\n"
    "                # getMethod then received null Classes and threw 'parameter type is\n"
    "                # null' — and the WRITE was silently dropped.\n"
    "                global _STR_CLS, _INT_T, _LONG_T\n"
    "                if _STR_CLS is None:\n"
    '                    try: _STR_CLS = JavaClass.forName("java.lang.String")\n'
    "                    except Exception: pass\n"
    "                if _INT_T is None:\n"
    "                    try: _INT_T = JInteger.TYPE\n"
    "                    except Exception: pass\n"
    "                if _LONG_T is None:\n"
    "                    try: _LONG_T = JLong.TYPE\n"
    "                    except Exception: pass\n"
    '                tmap = {"int": _INT_T, "long": _LONG_T, "str": _STR_CLS}\n'
    "                _types = []\n"
    "                for _t in sig:\n"
    "                    _tc = tmap.get(_t)\n"
    "                    if _tc is None:\n"
    '                        raise RuntimeError("bridge type %r unresolved" % (_t,))\n'
    "                    _types.append(_tc)\n"
    "                m = clazz.getMethod(method, *_types)\n"
    "                mcache[(method, sig)] = m",
    "loader.py: _jvoid lazy bridge types",
)
t = patch(
    t,
    "        except Exception as e:\n"
    "            try:\n"
    '                self.log("OpenChimeraNFT bridge " + method + " err: " + _cause(e))\n'
    "            except Exception:\n"
    "                pass\n"
    "            return None",
    "        except Exception as e:\n"
    "            try:\n"
    "                # [bridge-fix] log each DISTINCT (method, sig) failure once — a core\n"
    "                # without a method (isOptimizationEnabled in this fork) spammed the log\n"
    "                # on every settings render while None was the safe answer anyway.\n"
    '                if "NoSuchMethodException" in _cause(e):\n'
    '                    _miss = getattr(self, "_jm_missing", None)\n'
    "                    if _miss is None:\n"
    "                        _miss = set()\n"
    '                        self._jm_missing = _miss\n'
    "                    if (method, sig) in _miss:\n"
    "                        return None\n"
    "                    _miss.add((method, sig))\n"
    '                self.log("OpenChimeraNFT bridge " + method + " err: " + _cause(e))\n'
    "            except Exception:\n"
    "                pass\n"
    "            return None",
    "loader.py: bridge missing-method logged once",
)
t = patch(
    t,
    "            # remove-old + add-new in ONE atomic write and ONE re-inject; eid=0 → plain add\n"
    '            res = self._jvoid("replaceGift", ("long", "str"), (eid, json.dumps(entry)))\n'
    "            if eid > 0:\n"
    "                self._ctor_edit_id = 0\n"
    '            try: self.log("[edit] save edit_id=%s new_uid=%s -> %s" % (eid, uid, str(res)[:70]))\n'
    "            except Exception: pass\n"
    '            self._toast("NFT обновлён ✓" if eid > 0 else "NFT сохранён ✓")\n'
    "            return True",
    "            # remove-old + add-new in ONE atomic write and ONE re-inject; eid=0 → plain add\n"
    '            res = self._jvoid("replaceGift", ("long", "str"), (eid, json.dumps(entry)))\n'
    "            if eid > 0:\n"
    "                self._ctor_edit_id = 0\n"
    "            # [nosave-fix] honest result: a dropped bridge write must not be announced\n"
    "            # as «сохранено». Fallback: the same entry through addGifts; only if THAT\n"
    "            # fails too, report failure.\n"
    "            ok, text = self._bridge_ok(res)\n"
    "            if not ok:\n"
    "                try:\n"
    '                    res = self._jvoid("addGifts", ("str",), (json.dumps([entry]),))\n'
    "                except Exception as add_error:\n"
    "                    res = None\n"
    "                    text = _cause(add_error)\n"
    "                if res is None:\n"
    "                    ok = False\n"
    "                else:\n"
    "                    _s = str(res)\n"
    "                    _low = _s.lower()\n"
    '                    ok = not any(mk in _low for mk in ("fail", "fatal", "not initialized", "blocked", "exception"))\n'
    "                    text = _s[:120]\n"
    '            try: self.log("[edit] save edit_id=%s new_uid=%s -> %s" % (eid, uid, str(res)[:70]))\n'
    "            except Exception: pass\n"
    "            if not ok:\n"
    '                self._toast("не сохранено: " + (text or "ядро не ответило")[:70])\n'
    "                return False\n"
    '            self._toast("NFT обновлён ✓" if eid > 0 else "NFT сохранён ✓")\n'
    "            return True",
    "loader.py: honest constructor save + addGifts fallback",
)
t = patch(
    t,
    "    @staticmethod\n    def _bridge_ok(raw):",
    "    def _core_reveal_sent(self, b64, dialog_id, comment=\"\"):\n"
    "        \"\"\"[market-visual] Draw the gift message in the chat via the core.\n"
    "\n"
    "        deliverGiftBatch only QUEUES outbox events; the visual gift message used\n"
    "        to be produced by the sync round-trip (server merge -> poll ->\n"
    "        applyTransfer -> GiftReveal). With the author server dead that chain\n"
    "        never fired: the cart closed, the toast said the gifts were on their\n"
    "        way, and nothing appeared anywhere. The core already carries the whole\n"
    "        local renderer - GiftReveal.showSent, the same method the native gift\n"
    "        sheet drives (b64 -> TL_messageActionStarGift service message ->\n"
    "        MessagesStorage.putMessages + MessagesController.updateInterfaceWithMessages\n"
    "        + confetti) - so drive it directly, once per delivered row.\n"
    "        \"\"\"\n"
    "        try:\n"
    "            if not b64 or jclass is None:\n"
    "                return False\n"
    "            main_cls = JavaClass.forName(\"com.chimeranft.core.Main\")\n"
    "            main_inst = main_cls.getMethod(\"getInstance\").invoke(None)\n"
    "            if main_inst is None:\n"
    "                _diag(\"[reveal] core Main not initialized\")\n"
    "                return False\n"
    "            reveal = main_cls.getMethod(\n"
    "                \"access$getGiftReveal$p\", main_cls).invoke(None, main_inst)\n"
    "            if reveal is None:\n"
    "                _diag(\"[reveal] core reveal is null\")\n"
    "                return False\n"
    "            from java.lang import Boolean as JBoolean\n"
    "            m = reveal.getClass().getMethod(\n"
    "                \"showSent\", JavaClass.forName(\"java.lang.String\"), JLong.TYPE,\n"
    "                JavaClass.forName(\"java.lang.String\"),\n"
    "                JBoolean.TYPE, JBoolean.TYPE)\n"
    "            m.invoke(reveal, str(b64), JLong(int(dialog_id)),\n"
    "                     \"\" if comment is None else str(comment),\n"
    "                     JBoolean(True), JBoolean(True))\n"
    "            return True\n"
    "        except Exception as e:\n"
    "            try: _diag(\"[reveal] showSent err: \" + _cause(e))\n"
    "            except Exception: pass\n"
    "            return False\n"
    "\n"
    "    @staticmethod\n    def _bridge_ok(raw):",
    "loader.py: core reveal driver for local visual send",
)
t = patch(
    t,
    "                rows = []\n"
    "                for _slug, gift, title in list(self._market_cart):\n"
    "                    tpl = self._regular_entry_template(gift, title)\n"
    "                    if tpl is not None:\n"
    "                        rows.append({\"b64\": tpl[\"b64\"], \"title\": title, \"unique\": True})\n",
    "                rows = []\n"
    "                sent_b64 = []\n"
    "                for _slug, gift, title in list(self._market_cart):\n"
    "                    tpl = self._regular_entry_template(gift, title)\n"
    "                    if tpl is not None:\n"
    "                        rows.append({\"b64\": tpl[\"b64\"], \"title\": title, \"unique\": True})\n"
    "                        sent_b64.append((tpl[\"b64\"], title))\n",
    "loader.py: market cart keeps row b64 list for local reveal",
)
t = patch(
    t,
    "                self._market_cart = []\n"
    "                self._market_cart_mode = False\n"
    "                self._hap(\"reveal\", essential=True)\n"
    "                try: sheet_ref[0].dismiss()\n"
    "                except Exception: pass\n"
    "                self._toast(\"Подарки отправляются · %d\" % len(rows))\n",
    "                self._market_cart = []\n"
    "                self._market_cart_mode = False\n"
    "                self._hap(\"reveal\", essential=True)\n"
    "                # [market-visual] the queued outbox cannot render anything without\n"
    "                # the author server - fire the core's local reveal for every row so\n"
    "                # the gift message actually appears in the chat (the same path the\n"
    "                # native gift sheet uses).\n"
    "                _revealed = 0\n"
    "                for _b64, _title in sent_b64:\n"
    "                    try:\n"
    "                        if self._core_reveal_sent(_b64, to_uid, \"\"):\n"
    "                            _revealed += 1\n"
    "                    except Exception:\n"
    "                        pass\n"
    "                try: self.log(\"[market-cart] reveal sent: %d/%d\" % (_revealed, len(sent_b64)))\n"
    "                except Exception: pass\n"
    "                try: sheet_ref[0].dismiss()\n"
    "                except Exception: pass\n"
    "                self._toast(\"Подарки отправлены · %d\" % _revealed)\n",
    "loader.py: market cart fires local reveal after ok",
)

t = patch(
    t,
    "    def _tapped(self, name, fn):",
    "    def _open_source_page(self):\n"
    "        \"\"\"«Исходный код» — open the GitHub repo (in-app browser, clipboard fallback).\"\"\"\n"
    "        url = \"https://github.com/m4rker20-rgb/OpenChimeraNFT\"\n"
    "        try:\n"
    "            frag = get_last_fragment()\n"
    "            ctx = frag.getParentActivity() if frag else None\n"
    "            if ctx is not None:\n"
    "                Browser = jclass(\"org.telegram.messenger.browser.Browser\")\n"
    "                if Browser is not None:\n"
    "                    Browser.openUrl(ctx, url)\n"
    "                    return\n"
    "        except Exception:\n"
    "            pass\n"
    "        try:\n"
    "            AndroidUtilities.addToClipboard(url)\n"
    "            self._toast(\"Ссылка скопирована: \" + url)\n"
    "        except Exception:\n"
    "            self._toast(url)\n"
    "\n"
    "    def _tapped(self, name, fn):",
    "loader.py: _open_source_page method",
)
# ---------- [diag] on-device save diagnostics: <data>/diag.log + settings row ----------
t = patch(
    t,
    '    new_dir = os.path.join(base, "eblannft_data")\n'
    "    return new_dir",
    '    new_dir = os.path.join(base, "eblannft_data")\n'
    "    return new_dir\n"
    "\n"
    "\n"
    "_DIAG_LOCK = None\n"
    "\n"
    "\n"
    "def _diag(msg):\n"
    '    """Append a timestamped line to <data>/diag.log — on-device save diagnostics."""\n'
    "    global _DIAG_LOCK\n"
    "    try:\n"
    "        import threading as _th\n"
    "        if _DIAG_LOCK is None:\n"
    "            _DIAG_LOCK = _th.Lock()\n"
    "        import datetime as _dt\n"
    '        line = _dt.datetime.now().strftime("%m-%d %H:%M:%S") + " " + str(msg) + "\\n"\n'
    "        with _DIAG_LOCK:\n"
    '            with open(os.path.join(_resolve_data_dir(), "diag.log"), "a", encoding="utf-8") as _fh:\n'
    "                _fh.write(line)\n"
    "    except Exception:\n"
    "        pass",
    "loader.py: diag file logger",
)
t = patch(
    t,
    "    def on_plugin_load(self):\n"
    "        global _STR_CLS, _INT_T, _LONG_T, __version__\n"
    "        self._unloaded = False\n"
    "        self._access_denied = False",
    "    def on_plugin_load(self):\n"
    "        # [diag] mirror every framework log line into <data>/diag.log\n"
    "        try:\n"
    "            _base_log = self.log\n"
    "\n"
    "            def _file_log(msg, _bl=_base_log):\n"
    "                try:\n"
    "                    _diag(msg)\n"
    "                except Exception:\n"
    "                    pass\n"
    "                _bl(msg)\n"
    "\n"
    "            self.log = _file_log\n"
    "        except Exception:\n"
    "            pass\n"
    "        try:\n"
    '            _diag("=== on_plugin_load v" + __version__)\n'
    "        except Exception:\n"
    "            pass",
    "loader.py: mirror log into diag file",
)
t = patch(
    t,
    "            res = m.invoke(None, *jargs)\n"
    "            if method in self._GIFT_MUTATORS:",
    "            res = m.invoke(None, *jargs)\n"
    '            if method in ("addGifts", "mergeState", "updateGifts", "updateGift",\n'
    '                          "removeGifts", "removeGift", "replaceGift", "craftGifts",\n'
    '                          "deliverGiftBatch", "pushSyncNow", "reloadAll"):\n'
    '                _diag("[bridge] " + method + " -> " + str(res)[:200])\n'
    "            if method in self._GIFT_MUTATORS:",
    "loader.py: bridge mutator results to diag",
)
t = patch(
    t,
    "            try:\n"
    "                prod._load_cache()\n"
    "            except Exception as e:\n"
    '                self.log("[cat] _load_cache: " + repr(e))',
    "            try:\n"
    "                prod._load_cache()\n"
    "            except Exception as e:\n"
    '                self.log("[cat] _load_cache: " + repr(e))\n'
    "            try:\n"
    '                _diag("[prod] prod ready, gift_library=%d" % len(getattr(prod, "gift_library", []) or []))\n'
    "            except Exception:\n"
    "                pass",
    "loader.py: prod ready diag",
)
t = patch(
    t,
    '__version__ = "1.0.0"',
    '__version__ = "1.2.3"',
    "loader.py: __version__ 1.2.0",
)
t = patch(
    t,
    '_LOADER_VERSION = "1.0.0"',
    '_LOADER_VERSION = "1.2.3"',
    "loader.py: _LOADER_VERSION 1.2.0",
)
# Диагностика row in the NATIVE settings list (the screen the user actually opens)
t = patch(
    t,
    '            Text(text=S("menu_about"), subtext=S("menu_about_sub", _LOADER_VERSION),\n'
    '                 icon="msg2_reactions2",\n'
    '                 on_click=self._tapped("open", self._open_about), link_alias="about"),\n'
    "        ]",
    '            Text(text=S("menu_about"), subtext=S("menu_about_sub", _LOADER_VERSION),\n'
    '                 icon="msg2_reactions2",\n'
    '                 on_click=self._tapped("open", self._open_about), link_alias="about"),\n'
    '            Text(text="Диагностика",\n'
    '                 subtext="скопировать лог сохранения в буфер обмена",\n'
    '                 icon="msg_info",\n'
    '                 on_click=self._tapped("open", self._copy_diag_log),\n'
    '                 link_alias="diag"),\n'
    "        ]",
    "loader.py: diagnostics row in native settings",
)
# «Исходный код» row — anchored AFTER the Диагностика row (that patch runs first and
# owns the about-row anchor), so the settings list ends: …О плагине, Диагностика, Исходный код.
t = patch(
    t,
    '            Text(text="Диагностика",\n'
    '                 subtext="скопировать лог сохранения в буфер обмена",\n'
    '                 icon="msg_info",\n'
    '                 on_click=self._tapped("open", self._copy_diag_log),\n'
    '                 link_alias="diag"),\n'
    "        ]",
    '            Text(text="Диагностика",\n'
    '                 subtext="скопировать лог сохранения в буфер обмена",\n'
    '                 icon="msg_info",\n'
    '                 on_click=self._tapped("open", self._copy_diag_log),\n'
    '                 link_alias="diag"),\n'
    "            # «Исходный код» — the repo lives on GitHub; the runtime settings\n"
    "            # screen already carries the same button, the native screen did not.\n"
    "            Text(text=\"Исходный код\",\n"
    "                 subtext=\"GitHub — m4rker20-rgb/OpenChimeraNFT\",\n"
    "                 icon=\"msg_share\",\n"
    "                 on_click=self._tapped(\"open\", self._open_source_page),\n"
    "                 link_alias=\"src\"),\n"
    "        ]",
    "loader.py: source-code row in native settings",
)
t = patch(
    t,
    "    def _tapped(self, name, fn):",
    "    def _copy_diag_log(self):\n"
    "        try:\n"
    '            p = os.path.join(_resolve_data_dir(), "diag.log")\n'
    '            raw = ""\n'
    "            if os.path.exists(p):\n"
    '                with open(p, "r", encoding="utf-8", errors="replace") as fh:\n'
    "                    raw = fh.read()\n"
    "            tail = raw.splitlines()[-400:]\n"
    '            text = "\\n".join(tail) if tail else "(лог пуст)"\n'
    "            try:\n"
    "                AndroidUtilities.addToClipboard(text)\n"
    "            except Exception:\n"
    "                try:\n"
    "                    from android.content import ClipData as _ClipData\n"
    "                    from android.content import Context as _Context\n"
    "                    _cm = ApplicationLoader.applicationContext.getSystemService(\n"
    "                        _Context.CLIPBOARD_SERVICE)\n"
    '                    _cm.setPrimaryClip(_ClipData.newPlainText("diag", text))\n'
    "                except Exception:\n"
    "                    pass\n"
    '            self._toast("Диагностика: скопировано %d строк" % len(tail))\n'
    '            _diag("diag copied to clipboard (%d lines)" % len(tail))\n'
    "        except Exception as e:\n"
    '            self._toast("Диагностика: " + _cause(e))\n'
    "\n"
    "    def _tapped(self, name, fn):",
    "loader.py: _copy_diag_log method",
)
wr(lp, t)

# ---------- 4. verify no server refs remain ----------
bad = []
for root, dirs, files in os.walk(WORK):
    for fn in files:
        if fn.lower().endswith((".py", ".json", ".yml")):
            fp = os.path.join(root, fn)
            try:
                data = open(fp, "r", encoding="utf-8", errors="replace").read()
            except Exception:
                continue
            for needle in ("128.140.65.15", "eblannftlogs"):
                if needle in data:
                    bad.append((fp, needle))
if bad:
    for fp, needle in bad:
        print("REMAINING REF:", needle, "->", fp)
    raise SystemExit("FAIL: server references remain")
print("[4] no 128.140.65.15 / eblannftlogs references remain in code")

# ---------- 5. syntax check patched python ----------
import py_compile

for f in (
    os.path.join(pkg, "loader.py"),
    os.path.join(rt_pkg, "plugin.py"),
    os.path.join(rt_pkg, "sync_client.py"),
    os.path.join(rt_pkg, "updater.py"),
):
    py_compile.compile(f, doraise=True)
print("[5] syntax ok")

# ---------- 6. repackage elyx.zip (replace loader.py + runtime_payload.zip) ----------
if os.path.exists(OUT):
    os.remove(OUT)
shutil.copy(new_rp, rp_path)  # update the shipped asset copy too
with zipfile.ZipFile(SRC_ELYX) as zin, zipfile.ZipFile(
    OUT, "w", zipfile.ZIP_DEFLATED
) as zout:
    replaced = (
        "chimeranft/src/loader.py",
        "chimeranft/src/runtime_payload.zip",
        "chimeranft/java/engine.dex",
        "chimeranft/locales/strings_en.json",
        "chimeranft/locales/strings_ru.json",
    )
    patched = {
        "chimeranft/locales/strings_en.json": os.path.join(WORK, "chimeranft", "locales", "strings_en.json"),
        "chimeranft/locales/strings_ru.json": os.path.join(WORK, "chimeranft", "locales", "strings_ru.json"),
    }
    for info in zin.infolist():
        if info.filename in replaced:
            continue
        zout.writestr(info, zin.read(info.filename))
    zout.write(lp, "chimeranft/src/loader.py")
    zout.write(rp_path, "chimeranft/src/runtime_payload.zip")
    zout.write(dex_path, "chimeranft/java/engine.dex")
    for arcname, fpath in patched.items():
        zout.write(fpath, arcname)
print(f"[6] wrote {OUT} ({os.path.getsize(OUT)} bytes)")

# ---------- 6b. build the installable .eaf (exteraGram reads .eaf as an archive;
#             a .plugin/.zip goes to the TEXT metadata parser and crashes) ----------
OUT_EAF = r"C:\Users\user2\Desktop\eblanNFT\OpenChimeraNFT.eaf"
if os.path.exists(OUT_EAF):
    os.remove(OUT_EAF)

# meta.yml: original .eaf nests the builder info under `elyxbuilder:` and the engine
# expects that shape; also match version lineage + bump buildNum
loader_sha = hashlib.sha256(open(lp, "rb").read()).hexdigest()
meta_new = (
    "name: OpenChimeraNFT\n"
    "description: '{description}'\n"
    "id: chimeranft\n"
    "version: 1.2.3\n"
    "author: '@Coder_Minecraft'\n"
    "app_version: '>=11.9.0'\n"
    "sdk_version: '>=1.4.4.6'\n"
    "icon: HappyHappyPepe/31\n"
    "elyxbuilder:\n"
    "  compiled: true\n"
    "  buildNum: 10\n"
    "  buildDate: '2026-08-31'\n"
    "  pythonVer: '3.11'\n"
    f"  sourceHash: {loader_sha}\n"
    "  elybVer: 0.6.2\n"
)

with zipfile.ZipFile(OUT, "r") as src, zipfile.ZipFile(
    OUT_EAF, "w", zipfile.ZIP_DEFLATED
) as eaf:
    # entry order mirrors the original .eaf: refmap.yml first, then plugin files
    eaf.writestr("refmap.yml", src.read("refmap.yml"))
    eaf.writestr("chimeranft/", b"")
    eaf.writestr("chimeranft/meta.yml", meta_new.encode("utf-8"))
    order = [
        "chimeranft/res/",
        "chimeranft/res/access_denied.tgs",
        "chimeranft/res/username_card_plate.webp",
        "chimeranft/res/help_rating.mp4",
        "chimeranft/res/help_username.mp4",
        "chimeranft/res/help_number.mp4",
        "chimeranft/res/support_chimeranft.tgs",
        "chimeranft/res/chimeranft_logo.svg",
        "chimeranft/res/help_nft_gifts.mp4",
        "chimeranft/res/ulm_medium.ttf",
        "chimeranft/res/support_chimeranft_extera.tgs",
        "chimeranft/res/username_card_at.png",
        "chimeranft/res/gram_icon.tgs",
        "chimeranft/res/ulm_extrabold.ttf",
        "chimeranft/java/",
        "chimeranft/java/engine.dex",
        "chimeranft/native/",
        "chimeranft/native/armeabi-v7a/",
        "chimeranft/native/armeabi-v7a/libchimeranft_fast.so",
        "chimeranft/native/arm64-v8a/",
        "chimeranft/native/arm64-v8a/libchimeranft_fast.so",
        "chimeranft/src/",
        "chimeranft/src/payload_helper.pyc",
        "chimeranft/src/loader.py",
        "chimeranft/src/native_helper.pyc",
        "chimeranft/src/runtime_payload.zip",
        "chimeranft/locales/",
        "chimeranft/locales/strings_en.json",
        "chimeranft/locales/strings_ru.json",
    ]
    src_names = set(src.namelist())
    for n in order:
        if n.endswith("/"):
            eaf.writestr(n, b"")
        else:
            eaf.writestr(n, src.read(n))
    missing = src_names - set(order) - {"chimeranft/", "chimeranft/meta.yml", "refmap.yml"}
    if missing:
        raise SystemExit(f"EAF FAIL: unhandled entries: {missing}")
print(f"[6b] wrote {OUT_EAF} ({os.path.getsize(OUT_EAF)} bytes)")

# ---------- 7. end-to-end verify the artifact ----------
with zipfile.ZipFile(OUT) as z:
    ld = z.read("chimeranft/src/loader.py").decode("utf-8")
    rp2 = z.read("chimeranft/src/runtime_payload.zip")
    dex2 = z.read("chimeranft/java/engine.dex")
assert hashlib.sha256(rp2).hexdigest() == rp_sha, "payload hash mismatch in artifact"
m = re.search(r'_PAYLOAD_SHA256 = "([0-9a-f]{64})"', ld)
assert m and m.group(1) == rp_sha, "loader sha constant mismatch"
b = re.search(r'_PAYLOAD_B64 = """\n(.*?)\n"""\.strip\(\)', ld, re.S)
assert b, "b64 block missing"
decoded = base64.b64decode("".join(b.group(1).split()))
assert hashlib.sha256(decoded).hexdigest() == rp_sha, "embedded b64 mismatch"
assert "128.140.65.15" not in ld, "server url remains in loader"
assert b"128.140.65.15" not in dex2, "server url remains in engine.dex"
assert b"/api/v1/access" not in dex2, "dex access endpoint remains"
# the shipped dex must still verify: header checksums + sorted string table
_stored_cs, = struct.unpack_from("<I", dex2, 8)
assert _stored_cs == (zlib.adler32(dex2[12:]) & 0xFFFFFFFF), "dex adler32 stale"
assert dex2[12:32] == hashlib.sha1(dex2[32:]).digest(), "dex sha1 stale"
_dex2_strings = [txt for (_, _, txt) in _dex_strings(dex2)]
assert all(_dex2_strings[i - 1] <= _dex2_strings[i] for i in range(1, len(_dex2_strings))), (
    "dex string table out of order"
)
assert b"plugin_access.json.core.bak" in dex2, "dex marker filenames must survive (self-heal purge)"
# embedded dex copy must match the file dex
de = re.search(r'_DEX_B64 = """\n(.*?)\n"""', ld, re.S)
assert de, "_DEX_B64 missing"
emb2 = base64.b64decode("".join(de.group(1).split()))
assert emb2 == dex2, "embedded dex != file dex"
inner = zipfile.ZipFile(io.BytesIO(rp2))
for n in names:
    data = inner.read(n).decode("utf-8", errors="replace")
    assert "128.140.65.15" not in data, f"server url remains in {n}"
src_button = "Исходный код (GitHub)"
for needle in (src_button, "github.com/m4rker20-rgb/OpenChimeraNFT"):
    assert needle in inner.read("chimeranft_runtime/plugin.py").decode("utf-8"), (
        f"src button missing from payload: {needle}"
    )
assert "github.com/m4rker20-rgb/OpenChimeraNFT" in ld, "src link missing from loader"
assert '"enabled": False' in inner.read("chimeranft_runtime/plugin.py").decode("utf-8")
print("[7] artifact verified: hashes match, no server endpoints (py+dex), sync disabled")

# verify the .eaf too: readable, correct order, same payload/dex
with zipfile.ZipFile(OUT_EAF) as eaf:
    assert eaf.namelist()[0] == "refmap.yml"
    eaf_ld = eaf.read("chimeranft/src/loader.py").decode("utf-8")
    eaf_rp = eaf.read("chimeranft/src/runtime_payload.zip")
    eaf_dex = eaf.read("chimeranft/java/engine.dex")
assert eaf_ld == ld and eaf_rp == rp2 and eaf_dex == dex2, "eaf content mismatch"
print("[7b] eaf verified: refmap first, content identical to elyx build")
print("DONE:", OUT_EAF)
