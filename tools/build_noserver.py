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
    '__version__ = "1.3.21"',
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
# [gift-toast] Telegram's own «Подарок не доставлен получателю» bulletin: the visual
# send is local-only, but exteraGram still tries a REAL gift deliver and paints its
# own failure bulletin on the server reject. The text lives in Telegram resources,
# so the guard hooks Bulletin.show() and matches the bulletin by rendered text.
t = patch(
    t,
    "if MethodHook is not None:\n"
    "    class _CatUpdateHook(MethodHook):",
    "if MethodHook is not None:\n"
    "    class _GiftToastGuard(MethodHook):\n"
    "        \"\"\"Suppress exteraGram's own «Подарок не доставлен получателю …» bulletin.\n"
    "\n"
    "        The visual send/purchase is local-only in the no-server build: the core fakes\n"
    "        the API response, but exteraGram (Telegram 12+) ALSO tries to deliver the\n"
    "        gift as a REAL message; the server rejects the fake gift and Telegram shows\n"
    "        its own failure bulletin even though the visual message is already in the\n"
    "        chat. That text lives in Telegram's own resources (it is not in the plugin's\n"
    "        dex or locales), so the guard matches the bulletin by its rendered text and\n"
    "        skips show() entirely — every other bulletin keeps working.\n"
    "        \"\"\"\n"
    "        def __init__(self, plugin):\n"
    "            super().__init__()\n"
    "            self.plugin = plugin\n"
    "\n"
    "        @staticmethod\n"
    "        def _collect_text(v, out):\n"
    "            try:\n"
    "                gt = getattr(v, \"getText\", None)\n"
    "                if gt is not None:\n"
    "                    s = str(gt() or \"\")\n"
    "                    if s.strip():\n"
    "                        out.append(s)\n"
    "            except Exception:\n"
    "                pass\n"
    "            try:\n"
    "                gv = getattr(v, \"getView\", None)\n"
    "                if gv is not None:\n"
    "                    _child = gv()\n"
    "                    if _child is not None and _child is not v:\n"
    "                        _GiftToastGuard._collect_text(_child, out)\n"
    "            except Exception:\n"
    "                pass\n"
    "            try:\n"
    "                gc = getattr(v, \"getChildCount\", None)\n"
    "                if gc is not None:\n"
    "                    for i in range(int(gc())):\n"
    "                        _GiftToastGuard._collect_text(v.getChildAt(i), out)\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "        def before_hooked_method(self, param):\n"
    "            try:\n"
    "                v = param.thisObject\n"
    "                out = []\n"
    "                if v is not None:\n"
    "                    self._collect_text(v, out)\n"
    "                # Error text often arrives as a show() ARGUMENT (server-error\n"
    "                # bulletins): the view tree is empty at that moment - we always\n"
    "                # logged \u00ab(no text)\u00bb. Scan the args too, so the text filter\n"
    "                # (MESSAGE_ID_INVALID / STARGIFT_*) can match and suppress.\n"
    "                try:\n"
    "                    for a in (param.args or []):\n"
    "                        if a is None:\n"
    "                            continue\n"
    "                        try:\n"
    "                            s = str(a)\n"
    "                        except Exception:\n"
    "                            continue\n"
    "                        if s and len(s) < 400 and not s.startswith(\"de.robv\"):\n"
    "                            out.append(s)\n"
    "                except Exception:\n"
    "                    pass\n"
    "                joined = \" \".join(out)\n"
    "                _bad = (\"Подарок не доставлен\" in joined\n"
    "                        or \"не доставлен получателю\" in joined\n"
    "                        or \"MESSAGE_ID_INVALID\" in joined.upper()\n"
    "                        or \"STARGIFT_ALREADY_CONVERTED\" in joined.upper())\n"
    "                # log EVERY distinct bulletin text once (capped) — full visibility\n"
    "                # into what the client tries to show, for exact diagnosis.\n"
    "                try:\n"
    "                    _dc = globals().get(\"_DIAG_CLEARED\", 0)\n"
    "                    if getattr(self, \"_seen_gen\", 0) != _dc:\n"
    "                        self._seen_gen = _dc\n"
    "                        self._seen_texts = set()\n"
    "                    _seen = getattr(self, \"_seen_texts\", None)\n"
    "                    if _seen is None:\n"
    "                        _seen = set()\n"
    "                        self._seen_texts = _seen\n"
    "                    if len(_seen) > 64:\n"
    "                        _seen.clear()\n"
    "                    _key = \"B:\" + joined[:80]\n"
    "                    if _key not in _seen:\n"
    "                        _seen.add(_key)\n"
    "                        _diag(\"[gift-toast] bulletin: \" + (joined[:120] or \"(no text)\"))\n"
    "                except Exception:\n"
    "                    pass\n"
    "                if _bad:\n"
    "                    try:\n"
    "                        _diag(\"[gift-toast] suppressed bulletin: \" + joined[:140])\n"
    "                    except Exception:\n"
    "                        pass\n"
    "                    param.setResult(None)\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "    class _GiftNotifGuard(MethodHook):\n"
    "        \"\"\"Layer 2: the same failure banner posted as a REAL Android notification.\n"
    "\n"
    "        When the bulletin goes out through showAsNotification() or any other path\n"
    "        that lands in NotificationManager, the phone itself paints it as a system\n"
    "        heads-up — the user sees it as «системное уведомление». Match the posted\n"
    "        notification's extras text and drop the post; every other notification\n"
    "        (messages, downloads) is untouched.\n"
    "        \"\"\"\n"
    "        def __init__(self, plugin):\n"
    "            super().__init__()\n"
    "            self.plugin = plugin\n"
    "\n"
    "        def before_hooked_method(self, param):\n"
    "            try:\n"
    "                n = param.args[-1] if param.args else None\n"
    "                if n is None:\n"
    "                    return\n"
    "                ex = getattr(n, \"extras\", None)\n"
    "                if ex is None:\n"
    "                    return\n"
    "                title = text = \"\"\n"
    "                try: title = str(ex.getCharSequence(\"android.title\") or \"\")\n"
    "                except Exception: pass\n"
    "                try: text = str(ex.getCharSequence(\"android.text\") or \"\")\n"
    "                except Exception: pass\n"
    "                joined = (title + \" \" + text).strip()\n"
    "                if not joined:\n"
    "                    return\n"
    "                if (\"Подарок не доставлен\" in joined or \"не доставлен получателю\" in joined\n"
    "                        or \"MESSAGE_ID_INVALID\" in joined.upper()\n"
    "                        or \"STARGIFT_ALREADY_CONVERTED\" in joined.upper()):\n"
    "                    try:\n"
    "                        _diag(\"[gift-toast] suppressed notification: \" + joined[:140])\n"
    "                    except Exception:\n"
    "                        pass\n"
    "                    param.setResult(None)\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "    class _GiftToastToastGuard(MethodHook):\n"
    "        \"\"\"Layer 3: the core's own purchase-failure TOAST — the actual culprit.\n"
    "\n"
    "        GiftHook.showPurchaseMessage posts a plain android.widget.Toast via postUi\n"
    "        with the text «Подарок не доставлен получателю — нет связи с сервером».\n"
    "        In a no-server build the sync hop is dead BY DESIGN, so this failure toast\n"
    "        fires on every visual buy and looks like a system banner at the bottom of\n"
    "        the screen. Two hooks cooperate: makeText() captures the text BEFORE the\n"
    "        view exists and marks the Toast object (identity hash); show() then drops\n"
    "        marked toasts. Text probes at show() time are kept as a fallback.\n"
    "        \"\"\"\n"
    "        def __init__(self, plugin):\n"
    "            super().__init__()\n"
    "            self.plugin = plugin\n"
    "            self._seen = set()\n"
    "            self._marks = {}\n"
    "            self._keep = []\n"
    "            self._pending = None\n"
    "\n"
    "        def _idh(self, obj):\n"
    "            try:\n"
    "                return hash(str(obj))\n"
    "            except Exception:\n"
    "                return None\n"
    "\n"
    "        def mark(self, obj):\n"
    "            h = self._idh(obj)\n"
    "            if h is None:\n"
    "                return\n"
    "            if len(self._keep) > 32:\n"
    "                self._keep = []\n"
    "                self._marks = {}\n"
    "            self._marks[h] = True\n"
    "            self._keep.append(obj)\n"
    "\n"
    "        def _marked(self, obj):\n"
    "            h = self._idh(obj)\n"
    "            return h is not None and bool(self._marks.get(h))\n"
    "\n"
    "        def _is_bad(self, text):\n"
    "            return (\"Подарок не доставлен\" in text\n"
    "                    or \"не доставлен получателю\" in text\n"
    "                    or \"MESSAGE_ID_INVALID\" in text.upper()\n"
    "                    or \"STARGIFT_ALREADY_CONVERTED\" in text.upper())\n"
    "\n"
    "        def _log_once(self, prefix, text):\n"
    "            try:\n"
    "                if len(self._seen) > 96:\n"
    "                    self._seen.clear()\n"
    "                _dc = globals().get(\"_DIAG_CLEARED\", 0)\n"
    "                if getattr(self, \"_seen_gen\", 0) != _dc:\n"
    "                    self._seen_gen = _dc\n"
    "                    self._seen.clear()\n"
    "                _key = prefix + text[:80]\n"
    "                if _key not in self._seen:\n"
    "                    self._seen.add(_key)\n"
    "                    _diag(prefix + (text[:120] or \"(no text)\"))\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "        def note_bad(self):\n"
    "            try:\n"
    "                import time as _time\n"
    "                self._last_bad_ms = _time.time()\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "        def _bad_recent(self):\n"
    "            ms = getattr(self, \"_last_bad_ms\", 0)\n"
    "            if not ms:\n"
    "                return False\n"
    "            try:\n"
    "                import time as _time\n"
    "                return (_time.time() - ms) < 5000\n"
    "            except Exception:\n"
    "                return False\n"
    "\n"
    "        def make_dummy(self, param):\n"
    "            \"\"\"A neutral empty Toast to swap in instead of the failure toast.\"\"\"\n"
    "            if getattr(self, \"_reentr\", False):\n"
    "                return None\n"
    "            self._reentr = True\n"
    "            try:\n"
    "                ctx = None\n"
    "                try: ctx = param.args[0] if param.args else None\n"
    "                except Exception: ctx = None\n"
    "                if ctx is None:\n"
    "                    return None\n"
    "                _T = JavaClass.forName(\"android.widget.Toast\")\n"
    "                return _T.makeText(ctx, \"\", 0)\n"
    "            except Exception:\n"
    "                return None\n"
    "            finally:\n"
    "                self._reentr = False\n"
    "\n"
    "        def before_hooked_method(self, param):\n"
    "            try:\n"
    "                v = param.thisObject\n"
    "                if v is None:\n"
    "                    return\n"
    "                out = []\n"
    "                _GiftToastGuard._collect_text(v, out)\n"
    "                joined = \" \".join(out).strip()\n"
    "                self._log_once(\"[gift-toast] toast: \", joined)\n"
    "                _ctx_hit = False\n"
    "                _pend = getattr(self, \"_pending\", None)\n"
    "                if _pend is not None and _bad_recent(self):\n"
    "                    try:\n"
    "                        _ctx_hit = str(getattr(v, \"getContext\", lambda: None)()) == _pend\n"
    "                    except Exception:\n"
    "                        _ctx_hit = False\n"
    "                _kill = (self._marked(v) or self._is_bad(joined)\n"
    "                         or _ctx_hit\n"
    "                         or (joined == \"\" and self._bad_recent()))\n"
    "                if _kill:\n"
    "                    self._log_once(\"[gift-toast] suppressed toast: \", joined or \"(marked at makeText)\")\n"
    "                    h = self._idh(v)\n"
    "                    if h is not None:\n"
    "                        try: del self._marks[h]\n"
    "                        except Exception: pass\n"
    "                    param.setResult(None)\n"
    "                    self._pending = None\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "    class _ToastMakeTextHook(MethodHook):\n"
    "        \"\"\"Captures the toast text at makeText() time — before any view exists.\n"
    "        Three independent kills: (1) mutate the text arg to empty before the\n"
    "        original runs, (2) swap the returned Toast for a neutral empty one via\n"
    "        setResult, (3) mark the dummy so show() drops it outright. param.result is\n"
    "        NOT relied on — the elyx bridge may not expose it in after-hooks.\"\"\"\n"
    "        def __init__(self, plugin, guard):\n"
    "            super().__init__()\n"
    "            self.plugin = plugin\n"
    "            self.guard = guard\n"
    "\n"
    "        def before_hooked_method(self, param):\n"
    "            try:\n"
    "                if getattr(self.guard, \"_reentr\", False):\n"
    "                    return\n"
    "                if param.args and len(param.args) >= 2:\n"
    "                    txt = str(param.args[1] or \"\")\n"
    "                    if self.guard._is_bad(txt):\n"
    "                        self.guard.note_bad()\n"
    "                        try: param.args[1] = \"\"\n"
    "                        except Exception: pass\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "        def after_hooked_method(self, param):\n"
    "            try:\n"
    "                if getattr(self.guard, \"_reentr\", False):\n"
    "                    return\n"
    "                txt = \"\"\n"
    "                try:\n"
    "                    if param.args and len(param.args) >= 2:\n"
    "                        txt = str(param.args[1] or \"\")\n"
    "                except Exception:\n"
    "                    txt = \"\"\n"
    "                self.guard._log_once(\"[gift-toast] makeText: \", txt)\n"
    "                if not self.guard._is_bad(txt):\n"
    "                    return\n"
    "                self.guard.note_bad()\n"
    "                # Remember which context the bad toast was built on; the show()\n"
    "                # guard will drop the NEXT toast shown on this context within 5s.\n"
    "                try:\n"
    "                    self.guard._pending = str(param.args[0]) if param.args else None\n"
    "                except Exception:\n"
    "                    self.guard._pending = None\n"
    "                try:\n"
    "                    d = self.guard.make_dummy(param)\n"
    "                    if d is not None:\n"
    "                        self.guard.mark(d)\n"
    "                        try:\n"
    "                            param.setResult(d)\n"
    "                            self.guard._log_once(\"[gift-toast] makeText swapped: \", txt)\n"
    "                        except Exception:\n"
    "                            # setResult unavailable in after-hooks: text is already\n"
    "                            # emptied by the before-hook, so the real Toast shows\n"
    "                            # an empty bubble; the pending-context kill in show()\n"
    "                            # removes it anyway.\n"
    "                            self.guard._log_once(\"[gift-toast] setResult n/a; killed by show-guard: \", txt)\n"
    "                except Exception:\n"
    "                    pass\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "    class _CraftDiagHook(MethodHook):\n"
    "        \"\"\"Passive observer of Main$Companion.craftGifts — logs the result string\n"
    "        (the core reports its own failure reason there) without touching anything.\"\"\"\n"
    "        def __init__(self, plugin):\n"
    "            super().__init__()\n"
    "            self.plugin = plugin\n"
    "\n"
    "        def after_hooked_method(self, param):\n"
    "            try:\n"
    "                res = None\n"
    "                try: res = param.result\n"
    "                except Exception: pass\n"
    "                if res is None:\n"
    "                    try:\n"
    "                        _g = getattr(param, \"getResult\", None)\n"
    "                        if _g: res = _g()\n"
    "                    except Exception: pass\n"
    "                _diag(\"[craft-diag] craftGifts -> \" + str(res)[:220])\n"
    "            except Exception as e:\n"
    "                try: _diag(\"[craft-diag] err: \" + repr(e))\n"
    "                except Exception: pass\n"
    "\n"
    "    # ---- [hide-diag] hide-regular-gifts fix helpers -----------------------\n"
    "    _HF_CACHE2 = {}\n"
    "\n"
    "    def _h_proxy_check(obj):\n"
    "        \"\"\"True if obj is one of the core's fake-success reflect.Proxy wrappers.\"\"\"\n"
    "        try:\n"
    "            c = _HF_CACHE2.get(\"proxy\")\n"
    "            if c is None:\n"
    "                c = JavaClass.forName(\"java.lang.reflect.Proxy\")\n"
    "                _HF_CACHE2[\"proxy\"] = c\n"
    "            return bool(c.isProxyClass(obj.getClass()))\n"
    "        except Exception:\n"
    "            return False\n"
    "\n"
    "    def _h_saved_ids(obj, out, slugs, depth):\n"
    "        \"\"\"Scan obj fields for msg-id-like values (superset of the core's\n"
    "        SAVED_ID_FIELDS + nested gift fields), one/two levels deep.\"\"\"\n"
    "        try:\n"
    "            if obj is None or depth > 2:\n"
    "                return\n"
    "            if isinstance(obj, (int, str, bytes, float, bool)):\n"
    "                return\n"
    "            cls = obj.getClass()\n"
    "            key = \"f:\" + str(cls.getName())\n"
    "            flds = _HF_CACHE2.get(key)\n"
    "            if flds is None:\n"
    "                flds = []\n"
    "                for f in cls.getDeclaredFields():\n"
    "                    try:\n"
    "                        f.setAccessible(True)\n"
    "                        fn = str(f.getName())\n"
    "                        if fn in (\"savedId\", \"savedID\", \"saved_gift_id\",\n"
    "                                  \"savedGiftId\", \"savedStarGiftId\", \"msg_id\",\n"
    "                                  \"msgId\", \"id\"):\n"
    "                            flds.append((f, 1))\n"
    "                        elif fn == \"slug\":\n"
    "                            flds.append((f, 2))\n"
    "                        elif fn in (\"stargift\", \"stargifts\", \"add_stargift\",\n"
    "                                    \"delete_stargift\", \"gift\", \"gifts\", \"order\"):\n"
    "                            flds.append((f, 3))\n"
    "                    except Exception:\n"
    "                        continue\n"
    "                _HF_CACHE2[key] = flds\n"
    "            for f, kind in flds:\n"
    "                try:\n"
    "                    v = f.get(obj)\n"
    "                except Exception:\n"
    "                    continue\n"
    "                if v is None:\n"
    "                    continue\n"
    "                if kind == 1:\n"
    "                    try:\n"
    "                        ln = int(v)\n"
    "                    except Exception:\n"
    "                        ln = 0\n"
    "                    if ln:\n"
    "                        out.add(ln)\n"
    "                elif kind == 2:\n"
    "                    try:\n"
    "                        s = str(v)\n"
    "                        if s:\n"
    "                            slugs.add(s)\n"
    "                    except Exception:\n"
    "                        pass\n"
    "                else:\n"
    "                    if isinstance(v, (list, tuple)):\n"
    "                        for x in v:\n"
    "                            _h_saved_ids(x, out, slugs, depth + 1)\n"
    "                    else:\n"
    "                        _h_saved_ids(v, out, slugs, depth + 1)\n"
    "        except Exception:\n"
    "            pass\n"
    "\n"
    "    def _h_inj_list(gh):\n"
    "        try:\n"
    "            for m in gh.getClass().getDeclaredMethods():\n"
    "                try:\n"
    "                    if str(m.getName()) == \"injectedList\" and len(m.getParameterTypes()) == 0:\n"
    "                        m.setAccessible(True)\n"
    "                        return m.invoke(gh)\n"
    "                except Exception:\n"
    "                    continue\n"
    "        except Exception:\n"
    "            pass\n"
    "        return None\n"
    "\n"
    "    def _h_find_inj(gh, ids, slugs):\n"
    "        lst = _h_inj_list(gh)\n"
    "        try:\n"
    "            if not lst:\n"
    "                return None\n"
    "            for it in lst:\n"
    "                try:\n"
    "                    cands = set()\n"
    "                    entry = it.getEntry()\n"
    "                    if entry is not None:\n"
    "                        try:\n"
    "                            cands.add(int(entry.optLong(\"saved_id\", 0)))\n"
    "                        except Exception:\n"
    "                            pass\n"
    "                        try:\n"
    "                            cands.add(int(entry.optLong(\"unique_id\", 0)))\n"
    "                        except Exception:\n"
    "                            pass\n"
    "                    wids = set()\n"
    "                    wsl = set()\n"
    "                    _h_saved_ids(it.getWrapper(), wids, wsl, 0)\n"
    "                    cands = cands | wids\n"
    "                    if ids and (cands & ids):\n"
    "                        return it\n"
    "                    if slugs and entry is not None:\n"
    "                        try:\n"
    "                            es = str(entry.optString(\"slug\", \"\"))\n"
    "                            if es and es in slugs:\n"
    "                                return it\n"
    "                        except Exception:\n"
    "                            pass\n"
    "                except Exception:\n"
    "                    continue\n"
    "        except Exception:\n"
    "            pass\n"
    "        return None\n"
    "\n"
    "    class _HideSavedDiag(MethodHook):\n"
    "        \"\"\"AFTER-hook on GiftHook.handleSavedAction — logs what the core decided\n"
    "        for every gift-named saved-action request (wrapped or passed through).\"\"\"\n"
    "        def __init__(self, plugin):\n"
    "            super().__init__()\n"
    "            self.plugin = plugin\n"
    "            self._seen = set()\n"
    "\n"
    "        def _log_once(self, prefix, text):\n"
    "            try:\n"
    "                if len(self._seen) > 96:\n"
    "                    self._seen.clear()\n"
    "                _dc = globals().get(\"_DIAG_CLEARED\", 0)\n"
    "                if getattr(self, \"_seen_gen\", 0) != _dc:\n"
    "                    self._seen_gen = _dc\n"
    "                    self._seen.clear()\n"
    "                k = prefix + text[:100]\n"
    "                if k not in self._seen:\n"
    "                    self._seen.add(k)\n"
    "                    _diag(prefix + (text[:180] or \"(empty)\"))\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "        def after_hooked_method(self, param):\n"
    "            try:\n"
    "                arr = param.args[0]\n"
    "                idx = param.args[1]\n"
    "                nm = str(param.args[3] or \"\")\n"
    "                req = arr[idx]\n"
    "                if req is None:\n"
    "                    return\n"
    "                wrp = _h_proxy_check(req)\n"
    "                self._log_once(\"[hide-diag] saved: \", nm + \" req=\"\n"
    "                               + str(req.getClass().getSimpleName()) + \" wrapped=\" + str(wrp))\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "    # ---- fake-success delegate (the core's makeWrapper recipe, python side).\n"
    "    # dynamic_proxy instances can only be BUILT from the plugin-load/main\n"
    "    # context (timer/network threads break _chaquopy_this), so ONE proxy is\n"
    "    # created at install time and shared; the before-hook fills the holder\n"
    "    # with the per-request state before swapping it into args[di].\n"
    "    _FD_HOLDER = {\"orig\": None, \"plugin\": None, \"gid\": 0}\n"
    "    _FD_STATE = {\"inst\": None, \"tried\": False}\n"
    "\n"
    "    def _fd_proxy():\n"
    "        if _FD_STATE[\"inst\"] is not None:\n"
    "            return _FD_STATE[\"inst\"]\n"
    "        if _FD_STATE[\"tried\"]:\n"
    "            return None\n"
    "        _FD_STATE[\"tried\"] = True\n"
    "        try:\n"
    "            RD = jclass(\"org.telegram.tgnet.RequestDelegate\")\n"
    "            class _Run(dynamic_proxy(RD)):\n"
    "                def run(s, result, error):\n"
    "                    _fd_deliver(result, error)\n"
    "            _FD_STATE[\"inst\"] = _Run()\n"
    "        except Exception as e:\n"
    "            try: _diag(\"[hide-diag] fd class err: \" + _cause(e))\n"
    "            except Exception: pass\n"
    "        return _FD_STATE[\"inst\"]\n"
    "\n"
    "    def _fd_deliver(result, error):\n"
    "        try:\n"
    "            orig = _FD_HOLDER.get(\"orig\")\n"
    "            gid = _FD_HOLDER.get(\"gid\", 0)\n"
    "            if error is None and result is not None:\n"
    "                if orig is not None:\n"
    "                    orig.run(result, None)\n"
    "                return\n"
    "            # server refused (already converted / invalid) - fake success\n"
    "            _diag(\"[hide-diag] fake-ok gid=\" + str(gid) + \" (server err swallowed)\")\n"
    "            if orig is not None:\n"
    "                orig.run(None, None)\n"
    "        except Exception as e:\n"
    "            try: _diag(\"[hide-diag] fd deliver err: \" + _cause(e))\n"
    "            except Exception: pass\n"
    "\n"
    "    class _OnSendHideFix(MethodHook):\n"
    "        \"\"\"BEFORE-hook on ConnectionsManager.sendRequest - the core's own\n"
    "        makeWrapper recipe in pure Python: when the request targets one of OUR\n"
    "        gift_library gifts, swap the RequestDelegate arg for a fake one that\n"
    "        swallows server errors, and mark the row hidden locally. Pure\n"
    "        reflection + python only - safe on any thread.\"\"\"\n"
    "        def __init__(self, plugin, di):\n"
    "            super().__init__()\n"
    "            self.plugin = plugin\n"
    "            self.di = int(di)\n"
    "            self._seen = set()\n"
    "\n"
    "        def _log_once(self, prefix, text):\n"
    "            try:\n"
    "                if len(self._seen) > 128:\n"
    "                    self._seen.clear()\n"
    "                _dc = globals().get(\"_DIAG_CLEARED\", 0)\n"
    "                if getattr(self, \"_seen_gen\", 0) != _dc:\n"
    "                    self._seen_gen = _dc\n"
    "                    self._seen.clear()\n"
    "                k = prefix + text[:100]\n"
    "                if k not in self._seen:\n"
    "                    self._seen.add(k)\n"
    "                    _diag(prefix + (text[:180] or \"(empty)\"))\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "        def before_hooked_method(self, param):\n"
    "            try:\n"
    "                mp = param\n"
    "                try:\n"
    "                    arr = mp.args\n"
    "                    if not arr or len(arr) <= self.di:\n"
    "                        return\n"
    "                except Exception:\n"
    "                    return\n"
    "                req = arr[0]\n"
    "                if req is None:\n"
    "                    return\n"
    "                if _h_proxy_check(req):\n"
    "                    return\n"
    "                name = str(req.getClass().getSimpleName())\n"
    "                lname = name.lower()\n"
    "                self._log_once(\"[hide-diag] req: \", name)\n"
    "                if \"get\" in lname:\n"
    "                    return\n"
    "                if not ((\"savestar\" in lname) or (\"unsave\" in lname)\n"
    "                        or (\"hide\" in lname) or (\"unhide\" in lname)\n"
    "                        or (\"delete\" in lname) or (\"remove\" in lname)\n"
    "                        or (\"visible\" in lname) or (\"show\" in lname)\n"
    "                        or (\"convert\" in lname)):\n"
    "                    return\n"
    "                ids = set()\n"
    "                slugs = set()\n"
    "                _h_saved_ids(req, ids, slugs, 0)\n"
    "                if not ids and not slugs:\n"
    "                    return\n"
    "                gid = self.plugin._h_match_library(ids, slugs)\n"
    "                if gid is None:\n"
    "                    self._log_once(\"[hide-diag] no-match: \",\n"
    "                                   name + \" ids=\" + str(sorted(ids))[:90]\n"
    "                                   + \" slugs=\" + str(sorted(slugs))[:60])\n"
    "                    return\n"
    "                hidden = True\n"
    "                if (\"unhide\" in lname) or (\"visible\" in lname) or (\"show\" in lname):\n"
    "                    hidden = False\n"
    "                # TL_saveStarGift (the native in-gift hide button): direction\n"
    "                # lives in the `unsave` field - unsave=false means SHOW.\n"
    "                if \"savestar\" in lname:\n"
    "                    try:\n"
    "                        _uf = req.getClass().getDeclaredField(\"unsave\")\n"
    "                        _uf.setAccessible(True)\n"
    "                        _uv = _uf.get(req)\n"
    "                        if _uv is not None:\n"
    "                            hidden = str(_uv).lower() in (\"true\", \"1\")\n"
    "                    except Exception:\n"
    "                        pass\n"
    "                # 1) swap the delegate BEFORE the request leaves - the server\n"
    "                #    error (STARGIFT_ALREADY_CONVERTED etc.) never reaches UI.\n"
    "                try:\n"
    "                    if self.plugin._fd_swap(arr, self.di, gid):\n"
    "                        self._log_once(\"[hide-diag] swapped: \",\n"
    "                                       name + \" gid=\" + str(gid))\n"
    "                except Exception as sw_e:\n"
    "                    self._log_once(\"[hide-diag] swap err: \", repr(sw_e))\n"
    "                # 2) the hide of a VISUAL gift must never reach the server: its\n"
    "                #    server copy is gone (already converted) or never existed,\n"
    "                #    so a real request can only fail. Skip the send entirely.\n"
    "                try:\n"
    "                    param.setResult(0)\n"
    "                    self._log_once(\"[hide-diag] cancelled: \",\n"
    "                                   name + \" gid=\" + str(gid))\n"
    "                except Exception as cn_e:\n"
    "                    self._log_once(\"[hide-diag] cancel err: \", repr(cn_e))\n"
    "                # 3) mark the row in the loader's own library + persist;\n"
    "                #    queue for the main-thread ticker (core visibility apply).\n"
    "                try:\n"
    "                    self.plugin._mark_library_hidden(gid, hidden)\n"
    "                    pend = getattr(self.plugin, \"_pending_hides\", None)\n"
    "                    if pend is None:\n"
    "                        pend = []\n"
    "                        self.plugin._pending_hides = pend\n"
    "                    pend.append((gid, hidden))\n"
    "                except Exception as q_e:\n"
    "                    self._log_once(\"[hide-diag] queue err: \", repr(q_e))\n"
    "            except Exception as e:\n"
    "                try: _diag(\"[hide-diag] err: \" + repr(e))\n"
    "                except Exception: pass\n"
    "\n"
    "    class _CatUpdateHook(MethodHook):",
    "loader.py: gift-failure bulletin guard hook class",
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
    "_DIAG_CLEARED = 0  # bumped by clear-log; all _log_once guards reset their memory\n"
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
    "            pass\n"
    "\n"
    "        # [gift-toast] install the bulletin guard: Telegram's own gift-send failure\n"
    "        # bulletin («Подарок не доставлен получателю …») is meaningless here — the\n"
    "        # visual delivery is local and already done. Hook EVERY show* entry point\n"
    "        # (show / show(boolean) / showAsNotification / showPopSafe …): newer clients\n"
    "        # push the bulletin as a REAL Android notification via showAsNotification(),\n"
    "        # which is why a 0-arg show() hook alone never fired.\n"
    "        try:\n"
    "            if MethodHook is not None:\n"
    "                _Bul = JavaClass.forName(\"org.telegram.ui.Components.Bulletin\")\n"
    "                _guard = _GiftToastGuard(self)\n"
    "                _hooked = 0\n"
    "                for _m in _Bul.getDeclaredMethods():\n"
    "                    try:\n"
    "                        if _m.getName().startswith(\"show\"):\n"
    "                            try: _m.setAccessible(True)\n"
    "                            except Exception: pass\n"
    "                            self.hook_method(_m, _guard)\n"
    "                            _hooked += 1\n"
    "                    except Exception:\n"
    "                        continue\n"
    "                self._bulletin_guard_ref = _guard\n"
    "                _diag(\"[gift-toast] bulletin guard installed: \" + str(_hooked) + \" show* methods\")\n"
    "        except Exception as guard_error:\n"
    "            try: _diag(\"[gift-toast] install err: \" + _cause(guard_error))\n"
    "            except Exception: pass\n"
    "        # [gift-toast] layer 2: catch the banner if it still lands as a real Android\n"
    "        # notification (posted by Telegram through NotificationManager.notify).\n"
    "        try:\n"
    "            if MethodHook is not None:\n"
    "                _NM = JavaClass.forName(\"android.app.NotificationManager\")\n"
    "                _guard2 = _GiftNotifGuard(self)\n"
    "                _hooked2 = 0\n"
    "                for _m in _NM.getDeclaredMethods():\n"
    "                    try:\n"
    "                        if _m.getName() == \"notify\":\n"
    "                            try: _m.setAccessible(True)\n"
    "                            except Exception: pass\n"
    "                            self.hook_method(_m, _guard2)\n"
    "                            _hooked2 += 1\n"
    "                    except Exception:\n"
    "                        continue\n"
    "                self._notif_guard_ref = _guard2\n"
    "                _diag(\"[gift-toast] notification guard installed: \" + str(_hooked2) + \" notify() overloads\")\n"
    "        except Exception as guard_error2:\n"
    "            try: _diag(\"[gift-toast] notify install err: \" + _cause(guard_error2))\n"
    "            except Exception: pass\n"
    "        # [gift-toast] layer 3 (THE fix): the core's own purchase-failure toast.\n"
    "        # GiftHook.showPurchaseMessage posts android.widget.Toast.makeText(...).show()\n"
    "        # with «Подарок не доставлен получателю — нет связи с сервером» — that is the\n"
    "        # bottom banner the user sees. Hook Toast.show() and drop it by text.\n"
    "        try:\n"
    "            if MethodHook is not None:\n"
    "                _Toast = JavaClass.forName(\"android.widget.Toast\")\n"
    "                _guard3 = _GiftToastToastGuard(self)\n"
    "                _hooked3 = 0\n"
    "                for _m in _Toast.getDeclaredMethods():\n"
    "                    try:\n"
    "                        if _m.getName() == \"show\" and len(_m.getParameterTypes()) == 0:\n"
    "                            try: _m.setAccessible(True)\n"
    "                            except Exception: pass\n"
    "                            self.hook_method(_m, _guard3)\n"
    "                            _hooked3 += 1\n"
    "                    except Exception:\n"
    "                        continue\n"
    "                self._toast_guard_ref = _guard3\n"
    "                _diag(\"[gift-toast] toast guard installed: \" + str(_hooked3) + \" show()\")\n"
    "                _hooked4 = 0\n"
    "                for _m in _Toast.getDeclaredMethods():\n"
    "                    try:\n"
    "                        if _m.getName() == \"makeText\":\n"
    "                            try: _m.setAccessible(True)\n"
    "                            except Exception: pass\n"
    "                            self.hook_method(_m, _ToastMakeTextHook(self, _guard3))\n"
    "                            _hooked4 += 1\n"
    "                    except Exception:\n"
    "                        continue\n"
    "                _diag(\"[gift-toast] toast makeText hooks: \" + str(_hooked4))\n"
    "        except Exception as guard_error3:\n"
    "            try: _diag(\"[gift-toast] toast install err: \" + _cause(guard_error3))\n"
    "            except Exception: pass",
    "loader.py: mirror log into diag file",
)
# [hide-fix] The core-class hooks (craft-diag, hide-fix) CANNOT be installed from
# on_plugin_load: it runs BEFORE the core DEX is loaded (InMemoryDexClassLoader is
# created further down), so JavaClass.forName("com.chimeranft.core.…") fails there
# and the install silently dies. They are installed from a deferred timer instead —
# after Main.init() has definitely run.
t = patch(
    t,
    "        try:\n"
    "            import threading\n"
    "            t = threading.Timer(0.8, self._install_deferred_hooks)\n"
    "            t.daemon = True\n"
    "            t.start()\n"
    "        except Exception:\n"
    "            self._install_deferred_hooks()",
    "        try:\n"
    "            import threading\n"
    "            t = threading.Timer(0.8, self._install_deferred_hooks)\n"
    "            t.daemon = True\n"
    "            t.start()\n"
    "        except Exception:\n"
    "            self._install_deferred_hooks()\n"
    "        # [hide-fix] core classes exist only after the DEX loader below has run;\n"
    "        # a short timer from here is the earliest safe point to hook them.\n"
    "        try:\n"
    "            import threading\n"
    "            t2 = threading.Timer(2.0, self._install_core_class_hooks)\n"
    "            t2.daemon = True\n"
    "            t2.start()\n"
    "        except Exception:\n"
    "            try: self._install_core_class_hooks()\n"
    "            except Exception: pass",
    "loader.py: deferred core-class hook install after dex load",
)
t = patch(
    t,
    "    def _install_deferred_hooks(self):",
    "    def _install_core_class_hooks(self):\n"
    "        \"\"\"[hide-fix] Install core-class hooks. jclass (elyx bridge) resolves\n"
    "        plugin-dex classes on any thread (proven on raw Timer threads); the\n"
    "        main-thread ticker handles only the visibility apply (Handler Runnable\n"
    "        proxying proved unreliable across calls).\"\"\"\n"
    "        if getattr(self, \"_pending_hides\", None) is None:\n"
    "            self._pending_hides = []\n"
    "        if getattr(self, \"_inj_snapshot\", None) is None:\n"
    "            self._inj_snapshot = []\n"
    "        # All core-touching work goes through elyx's OWN ui-thread helper\n"
    "        # (android_utils.run_on_ui_thread) - it accepts python callables and is\n"
    "        # what the loader itself uses everywhere (proven working). Handler/\n"
    "        # dynamic_proxy dispatch broke in three different ways before.\n"
    "        try:\n"
    "            if run_on_ui_thread is not None:\n"
    "                run_on_ui_thread(self._install_core_class_hooks_mt)\n"
    "                self._hide_install_status = \"dispatched via run_on_ui_thread\"\n"
    "                return\n"
    "        except Exception as _r9e:\n"
    "            try: _diag(\"[hide-diag] ui dispatch err: \" + _cause(_r9e))\n"
    "            except Exception: pass\n"
    "        self._install_core_class_hooks_mt()\n"
    "\n"
    "    def _install_core_class_hooks_mt(self):\n"
    "        \"\"\"[hide-fix] Install the sendRequest before-hooks. Pure elyx\n"
    "        helpers only: get_connections_manager() + hook_method. NO core-class\n"
    "        resolution anywhere (jclass resolves lazily via Class.forName, which\n"
    "        is unavailable outside the plugin-load context - every previous\n"
    "        attempt died there with CNFE/NoClassDefFoundError).\"\"\"\n"
    "        try:\n"
    "            if MethodHook is None:\n"
    "                return\n"
    "            # prime the fake-delegate proxy class on this (safe) context\n"
    "            try: _fd_proxy()\n"
    "            except Exception: pass\n"
    "            _conn_cls = None\n"
    "            try:\n"
    "                _cm_inst = get_connections_manager()\n"
    "                if _cm_inst is not None:\n"
    "                    _conn_cls = _cm_inst.getClass()\n"
    "            except Exception as cm_e:\n"
    "                try: _diag(\"[hide-diag] cm instance err: \" + _cause(cm_e))\n"
    "                except Exception: pass\n"
    "            if _conn_cls is None:\n"
    "                self._hide_install_status = \"ConnectionsManager unresolved\"\n"
    "                _diag(\"[hide-diag] \" + self._hide_install_status)\n"
    "                return\n"
    "            _hooked6 = 0\n"
    "            _skip6 = []\n"
    "            for _m in _conn_cls.getDeclaredMethods():\n"
    "                try:\n"
    "                    if str(_m.getName()) != \"sendRequest\":\n"
    "                        continue\n"
    "                    _pt = _m.getParameterTypes()\n"
    "                    if len(_pt) < 2 or not str(_pt[0].getName()).startswith(\"org.telegram.tgnet.TLObject\"):\n"
    "                        _skip6.append(str(_m)[:150])\n"
    "                        continue\n"
    "                    # di = index of the RequestDelegate parameter (mirrors the\n"
    "                    # core's own delegateIndex() - the fake-success wrapper\n"
    "                    # replaces args[di], while the TLObject request is args[0]).\n"
    "                    _di = -1\n"
    "                    for _i in range(len(_pt)):\n"
    "                        if str(_pt[_i].getName()).startswith(\"org.telegram.tgnet.RequestDelegate\"):\n"
    "                            _di = _i\n"
    "                            break\n"
    "                    if _di < 0:\n"
    "                        continue\n"
    "                    try: _m.setAccessible(True)\n"
    "                    except Exception: pass\n"
    "                    self.hook_method(_m, _OnSendHideFix(self, _di))\n"
    "                    _hooked6 += 1\n"
    "                except Exception:\n"
    "                    continue\n"
    "            self._hide_install_status = \"sendRequest hooks installed: \" + str(_hooked6)\n"
    "            if _skip6:\n"
    "                self._hide_install_status += \" | skipped: \" + \" ; \".join(_skip6)[:400]\n"
    "            _diag(\"[hide-diag] \" + self._hide_install_status)\n"
    "            if _hooked6 == 0 and not getattr(self, \"_hide_retry\", False):\n"
    "                self._hide_retry = True\n"
    "                import threading as _th6\n"
    "                _th6.Timer(5.0, self._install_core_class_hooks).start()\n"
    "            # Main-thread ticker: drains _pending_hides queued by the before-\n"
    "            # hook and applies core visibility (lazy Companion, best-effort).\n"
    "            try:\n"
    "                if getattr(self, \"_pending_hides\", None) is None:\n"
    "                    self._pending_hides = []\n"
    "                from android.os import Handler as _HA, Looper as _LO\n"
    "                _ha = _HA(_LO.getMainLooper())\n"
    "                def _tick9():\n"
    "                    try:\n"
    "                        pend = getattr(self, \"_pending_hides\", None)\n"
    "                        if pend:\n"
    "                            jobs = list(pend)\n"
    "                            del pend[:]\n"
    "                            for gid, hid in jobs:\n"
    "                                try:\n"
    "                                    # proven bridge (my-gifts hide button path):\n"
    "                                    # no jclass, static core call, persists + rerenders\n"
    "                                    self._set_gift_visibility(int(gid), not hid)\n"
    "                                    _diag(\"[hide-diag] main-apply gid=\" + str(gid) + \" hidden=\" + str(hid))\n"
    "                                except Exception as ap_e:\n"
    "                                    try: _diag(\"[hide-diag] main-apply err: \" + _cause(ap_e))\n"
    "                                    except Exception: pass\n"
    "                    except Exception:\n"
    "                        pass\n"
    "                    try:\n"
    "                        _ha.postDelayed(_tick9, 1000)\n"
    "                    except Exception:\n"
    "                        pass\n"
    "                _ha.postDelayed(_tick9, 1000)\n"
    "            except Exception as _tick_e:\n"
    "                try: _diag(\"[hide-diag] ticker err: \" + _cause(_tick_e))\n"
    "                except Exception: pass\n"
    "        except Exception as hide_e:\n"
    "            self._hide_install_status = \"install err: \" + _cause(hide_e)\n"
    "            try: _diag(\"[hide-diag] \" + self._hide_install_status)\n"
    "            except Exception: pass\n"
    "            try:\n"
    "                self._hide_rounds = getattr(self, \"_hide_rounds\", 0) + 1\n"
    "                if self._hide_rounds <= 3:\n"
    "                    self._hide_install_status += \" | retry \" + str(self._hide_rounds) + \"/3 in 6s\"\n"
    "                    _diag(\"[hide-diag] \" + self._hide_install_status)\n"
    "                    import threading as _th9\n"
    "                    _th9.Timer(6.0, self._install_core_class_hooks).start()\n"
    "                    _diag(\"[hide-diag] retry scheduled via timer\")\n"
    "            except Exception:\n"
    "                pass\n"
    "\n"
    "    def _retry_gift_hook(self):\n"
    "        \"\"\"Late pickup of the GiftHook instance (the core may set it after its\n"
    "        deferred UI install).\"\"\"\n"
    "        try:\n"
    "            if getattr(self, \"_gh_instance\", None) is not None:\n"
    "                return\n"
    "            _Main5 = jclass(\"com.chimeranft.core.Main\")\n"
    "            _mi = _Main5.getInstance()\n"
    "            _gh = None\n"
    "            try:\n"
    "                _gh = _mi.giftHook\n"
    "            except Exception:\n"
    "                _gh = None\n"
    "            if _gh is None:\n"
    "                try:\n"
    "                    _f = _mi.getClass().getDeclaredField(\"giftHook\")\n"
    "                    _f.setAccessible(True)\n"
    "                    _gh = _f.get(_mi)\n"
    "                except Exception:\n"
    "                    _gh = None\n"
    "            if _gh is not None:\n"
    "                self._gh_instance = _gh\n"
    "                self._inj_snapshot = self._snapshot_injections()\n"
    "                _diag(\"[hide-diag] giftHook late-resolved; snapshot: \" + str(len(self._inj_snapshot)) + \" entries\")\n"
    "            else:\n"
    "                _diag(\"[hide-diag] giftHook still null (core deferred install)\")\n"
    "        except Exception as e:\n"
    "            try: _diag(\"[hide-diag] giftHook retry err: \" + _cause(e))\n"
    "            except Exception: pass\n"
    "\n"
    "    def _snapshot_injections(self):\n"
    "        \"\"\"Snapshot injectable entries from Store (public getInjectableEntries)\n"
    "        into pure-Python rows; works on any thread via jclass.\"\"\"\n"
    "        out = []\n"
    "        try:\n"
    "            _Main5 = jclass(\"com.chimeranft.core.Main\")\n"
    "            _mi = _Main5.getInstance()\n"
    "            if _mi is None:\n"
    "                return out\n"
    "            _store = None\n"
    "            try:\n"
    "                _store = getattr(_Main5, \"access$getStore$p\")(_mi)\n"
    "            except Exception:\n"
    "                _store = None\n"
    "            if _store is None:\n"
    "                try:\n"
    "                    _f = _mi.getClass().getDeclaredField(\"store\")\n"
    "                    _f.setAccessible(True)\n"
    "                    _store = _f.get(_mi)\n"
    "                except Exception:\n"
    "                    _store = None\n"
    "            if _store is None:\n"
    "                _diag(\"[hide-diag] snapshot: store unresolved\")\n"
    "                return out\n"
    "            _arr = _store.getInjectableEntries()\n"
    "            _raw_n = 0 if _arr is None else len(_arr)\n"
    "            if not _raw_n:\n"
    "                _diag(\"[hide-diag] snapshot: store ok, 0 injectable entries\")\n"
    "                return out\n"
    "            import json as _json\n"
    "            for _e in _arr:\n"
    "                try:\n"
    "                    d = _json.loads(str(_e))\n"
    "                except Exception:\n"
    "                    continue\n"
    "                row = {\"gid\": None, \"saved\": None, \"uniq\": None, \"slug\": None}\n"
    "                try:\n"
    "                    for k in (\"gift_id\", \"giftId\", \"id\"):\n"
    "                        if d.get(k) is not None:\n"
    "                            row[\"gid\"] = int(d.get(k))\n"
    "                            break\n"
    "                except Exception:\n"
    "                    pass\n"
    "                try:\n"
    "                    for k in (\"saved_id\", \"savedId\", \"msg_id\", \"msgId\"):\n"
    "                        if d.get(k) is not None:\n"
    "                            row[\"saved\"] = int(d.get(k))\n"
    "                            break\n"
    "                except Exception:\n"
    "                    pass\n"
    "                try:\n"
    "                    for k in (\"unique_id\", \"uniqueId\", \"collectible_id\", \"gift_unique_id\", \"giftUniqueId\"):\n"
    "                        if d.get(k) is not None:\n"
    "                            row[\"uniq\"] = int(d.get(k))\n"
    "                            break\n"
    "                except Exception:\n"
    "                    pass\n"
    "                try:\n"
    "                    for k in (\"slug\", \"username\"):\n"
    "                        if d.get(k):\n"
    "                            row[\"slug\"] = str(d.get(k))\n"
    "                            break\n"
    "                except Exception:\n"
    "                    pass\n"
    "                if row[\"gid\"] is not None:\n"
    "                    out.append(row)\n"
    "            _diag(\"[hide-diag] snapshot: raw=\" + str(_raw_n) + \" parsed=\" + str(len(out)))\n"
    "        except Exception as e:\n"
    "            try: _diag(\"[hide-diag] snapshot(store) err: \" + _cause(e))\n"
    "            except Exception: pass\n"
    "        return out\n"
    "\n"
    "    def _fd_swap(self, arr, di, gid):\n"
    "        \"\"\"Install the fake-success delegate for this request. The proxy is\n"
    "        pre-built on the main thread (dynamic_proxy cannot be built from\n"
    "        network threads); the holder carries the per-request state.\"\"\"\n"
    "        try:\n"
    "            pr = _fd_proxy()\n"
    "            if pr is None:\n"
    "                return False\n"
    "            _FD_HOLDER[\"orig\"] = arr[di]\n"
    "            _FD_HOLDER[\"gid\"] = gid\n"
    "            arr[di] = pr\n"
    "            return True\n"
    "        except Exception as e:\n"
    "            try: _diag(\"[hide-diag] fd swap err: \" + _cause(e))\n"
    "            except Exception: pass\n"
    "            return False\n"
    "\n"
    "    def _h_match_library(self, ids, slugs):\n"
    "        \"\"\"Match a request's ids/slugs against OUR gifts: first the prod\n"
    "        runtime's gift_library rows (pure python), then the Store snapshot.\n"
    "        Returns the matched gid or None.\"\"\"\n"
    "        prod = getattr(self, \"_prod\", None)\n"
    "        if prod is None and not getattr(self, \"_prod_attempted\", False):\n"
    "            self._prod_attempted = True\n"
    "            try:\n"
    "                _ep = getattr(self, \"_ensure_prod\", None)\n"
    "                if callable(_ep):\n"
    "                    prod = _ep()\n"
    "                    try: _diag(\"[hide-diag] prod lazy-ready, lib=\" + str(len(getattr(prod, \"gift_library\", None) or [])))\n"
    "                    except Exception: pass\n"
    "            except Exception as ep_e:\n"
    "                try: _diag(\"[hide-diag] prod lazy err: \" + _cause(ep_e))\n"
    "                except Exception: pass\n"
    "        if prod is not None:\n"
    "            for row in getattr(prod, \"gift_library\", None) or []:\n"
    "                try:\n"
    "                    if not isinstance(row, dict):\n"
    "                        continue\n"
    "                    gid = 0\n"
    "                    try:\n"
    "                        gid = int(row.get(\"gift_id\", 0) or 0)\n"
    "                    except Exception:\n"
    "                        gid = 0\n"
    "                    for key in (\"saved_id\", \"msg_id\", \"unique_id\", \"id\", \"gift_id\", \"base_gift_id\"):\n"
    "                        v = row.get(key, None)\n"
    "                        if v is None:\n"
    "                            continue\n"
    "                        try:\n"
    "                            iv = int(v)\n"
    "                        except Exception:\n"
    "                            continue\n"
    "                        if iv and iv in ids:\n"
    "                            return gid or iv\n"
    "                    s = str(row.get(\"slug\", \"\") or \"\")\n"
    "                    if s and s in slugs:\n"
    "                        return gid or None\n"
    "                except Exception:\n"
    "                    continue\n"
    "        for row in getattr(self, \"_inj_snapshot\", None) or []:\n"
    "            hit = False\n"
    "            try:\n"
    "                if row.get(\"saved\") is not None and row[\"saved\"] in ids:\n"
    "                    hit = True\n"
    "                if not hit and row.get(\"uniq\") is not None and row[\"uniq\"] in ids:\n"
    "                    hit = True\n"
    "                if not hit and row.get(\"slug\") and row[\"slug\"] in slugs:\n"
    "                    hit = True\n"
    "            except Exception:\n"
    "                hit = False\n"
    "            if hit:\n"
    "                return row.get(\"gid\")\n"
    "        return None\n"
    "\n"
    "    def _mark_library_hidden(self, gid, hidden=True):\n"
    "        \"\"\"Mark the matched gift_library row on the prod runtime and flush —\n"
    "        the single-writer guard funnels that flush into the Java Store, so the\n"
    "        hide persists without any direct core calls from this thread.\"\"\"\n"
    "        try:\n"
    "            prod = getattr(self, \"_prod\", None)\n"
    "            if prod is None:\n"
    "                return\n"
    "            for row in getattr(prod, \"gift_library\", None) or []:\n"
    "                if not isinstance(row, dict):\n"
    "                    continue\n"
    "                rg = 0\n"
    "                for key in (\"gift_id\", \"saved_id\", \"unique_id\"):\n"
    "                    try:\n"
    "                        rg = int(row.get(key, 0) or 0)\n"
    "                    except Exception:\n"
    "                        rg = 0\n"
    "                    if rg == int(gid):\n"
    "                        break\n"
    "                if rg != int(gid):\n"
    "                    continue\n"
    "                if hidden:\n"
    "                    row[\"hidden_override\"] = True\n"
    "                    row[\"hidden\"] = True\n"
    "                else:\n"
    "                    row[\"hidden_override\"] = False\n"
    "                    row[\"hidden\"] = False\n"
    "                break\n"
    "            try:\n"
    "                flush = getattr(prod, \"_flush_cache_now\", None)\n"
    "                if callable(flush):\n"
    "                    flush(\"hide-gift\")\n"
    "            except Exception:\n"
    "                pass\n"
    "            try:\n"
    "                self.log(\"[hide] gift \" + str(gid) + \" hidden=\" + str(hidden) + \" (local)\")\n"
    "            except Exception:\n"
    "                pass\n"
    "        except Exception as e:\n"
    "            try: _diag(\"[hide-diag] mark err: \" + _cause(e))\n"
    "            except Exception: pass\n"
    "\n"
    "    def _h_match_snapshot(self, ids, slugs):\n"
    "        best = None\n"
    "        for row in getattr(self, \"_inj_snapshot\", None) or []:\n"
    "            hit = False\n"
    "            try:\n"
    "                if row.get(\"saved\") is not None and row[\"saved\"] in ids:\n"
    "                    hit = True\n"
    "                if not hit and row.get(\"uniq\") is not None and row[\"uniq\"] in ids:\n"
    "                    hit = True\n"
    "                if not hit and row.get(\"slug\") and row[\"slug\"] in slugs:\n"
    "                    hit = True\n"
    "            except Exception:\n"
    "                hit = False\n"
    "            if hit:\n"
    "                best = row\n"
    "                break\n"
    "        return best\n"
    "\n"
    "    def _install_deferred_hooks(self):",
    "loader.py: _install_core_class_hooks method",
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
    '__version__ = "1.3.21"',
    "loader.py: __version__ 1.2.0",
)
t = patch(
    t,
    '_LOADER_VERSION = "1.0.0"',
    '_LOADER_VERSION = "1.3.21"',
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
t = patch(
    t,
    "    def _tapped(self, name, fn):",
    "    def _clear_diag_log(self):\n"
    "        \"\"\"Wipe diag.log; ask first — the button is destructive.\"\"\"\n"
    "        try:\n"
    "            p = os.path.join(_resolve_data_dir(), \"diag.log\")\n"
    "            if not os.path.exists(p):\n"
    "                self._toast(\"Диагностика: лог пуст\")\n"
    "                return\n"
    "            frag = get_last_fragment()\n"
    "            ctx = frag.getParentActivity() if frag else None\n"
    "            if ctx is None or AlertDialogBuilder is None:\n"
    "                self._do_clear_diag(p)\n"
    "                return\n"
    "            b = AlertDialogBuilder(ctx)\n"
    "            b.set_title(\"Очистить лог диагностики?\")\n"
    "            b.set_message(\"Все записи diag.log будут удалены без возможности восстановления.\")\n"
    "            b.set_positive_button(\"Очистить\", lambda d, w: self._do_clear_diag(p))\n"
    "            b.set_negative_button(\"Отмена\", None)\n"
    "            run_on_ui_thread(b.show)\n"
    "        except Exception as e:\n"
    "            self._toast(\"Очистка: \" + _cause(e))\n"
    "\n"
    "    def _do_clear_diag(self, p):\n"
        "        try:\n"
        "            globals()[\"_DIAG_CLEARED\"] = globals().get(\"_DIAG_CLEARED\", 0) + 1\n"
        "            with open(p, \"w\", encoding=\"utf-8\") as fh:\n"
        "                fh.write(\"\")\n"
        "            self._toast(\"Диагностика: лог очищен\")\n"
        "            _diag(\"diag log cleared\")\n"
        "            _s = getattr(self, \"_hide_install_status\", None)\n"
        "            _diag(\"[hide-diag] status: \" + (_s or \"not installed yet (loader still starting)\"))\n"
    "        except Exception as e:\n"
    "            self._toast(\"Очистка: \" + _cause(e))\n"
    "\n"
    "    def _tapped(self, name, fn):",
    "loader.py: _clear_diag_log method",
)
t = patch(
    t,
    '            Text(text="Исходный код",\n'
    "                 subtext=\"GitHub — m4rker20-rgb/OpenChimeraNFT\",\n"
    "                 icon=\"msg_share\",\n"
    "                 on_click=self._tapped(\"open\", self._open_source_page),\n"
    "                 link_alias=\"src\"),\n"
    "        ]",
    '            Text(text="Исходный код",\n'
    "                 subtext=\"GitHub — m4rker20-rgb/OpenChimeraNFT\",\n"
    "                 icon=\"msg_share\",\n"
    "                 on_click=self._tapped(\"open\", self._open_source_page),\n"
    "                 link_alias=\"src\"),\n"
    '            Text(text="Очистить лог",\n'
    '                 subtext="удалить все записи диагностики",\n'
    '                 icon="msg_saved",\n'
    '                 on_click=self._tapped("open", self._clear_diag_log),\n'
    '                 link_alias="diagclear"),\n'
    "        ]",
    "loader.py: clear-log row in native settings",
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
    "version: 1.3.21\n"
    "author: '@Coder_Minecraft'\n"
    "app_version: '>=11.9.0'\n"
    "sdk_version: '>=1.4.4.6'\n"
    "icon: HappyHappyPepe/31\n"
    "elyxbuilder:\n"
    "  compiled: true\n"
    "  buildNum: 38\n"
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
