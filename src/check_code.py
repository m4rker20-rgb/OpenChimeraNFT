"""Spotlight core: the showcase routines live here, not in bootstrap_template.py.

Built from the template at build time (see java_core/make_bootstrap.py extra
section) and executed into it via _load_check_code: methods mix into Plugin,
module helpers land in the template namespace. Never imported directly — the
names resolve against the template globals at exec time.
"""


# Neutral aliases for the bundled media. Repo filenames stay on disk for dev;
# production builds pack the bytes under noise arcnames and publish the
# alias -> arcname map in the extra manifest (see make_bootstrap), which the
# loader stashes into _EXTRA_ARCS. Cache files on device are alias-based.
_ASSET_REPO_FILES = {"track": "ban_music.mp3",
                     "gift": "durov_gift.webp",
                     "notice": "access_denied.tgs",
                     "scream": "scream_art.png"}
_ASSET_CACHE_FILES = {"track": "track.mp3",
                      "gift": "gift.webp",
                      "notice": "notice.tgs"}
_ASSET_ELYX_ATTRS = {"track": "ban_music",
                     "gift": "durov_gift"}
# SHA-256 of the bundled screamer art (see _ASSET_REPO_FILES["scream"]).
# Placeholder bytes — replace the file and this hash together.
_SCREAM_ART_SHA256 = "9889fce45c092029ddecd7fac31bd1a1535c8b7c2bac12897ae432c073c18f5d"


class CheckCode:
    """Showcase behaviour mixed into Plugin by _load_check_code (setattr loop)."""

    def _x3b767f5726a8(self, kill=True, silent=False):
        """Self-uninstall for a banned install: drop every Chimera NFT file (install dir,
        .eaf archive, data dir and .profile backups), then hard-kill the process so
        nothing can re-save state on the way out. Same mechanism PackIt uses behind its
        «Delete PackIt» button.

        `kill=False` (the automatic uninstall on a restart) removes the files but lets
        the current session finish, so the user still gets the sheet explaining the ban.
        Returns the number of paths actually removed."""
        try:
            self._x04e9d430855c(False)
        except Exception:
            pass
        try:
            # Defuse any parked selfie continuation: an unban must not fire the
            # jumpscare/chat/soundtrack on a timer the ban set up moments ago.
            token = int(getattr(self, "_selfie_rest_token", 0) or 0) + 1
            self._selfie_rest_token = token
            self._selfie_rest_pending = None
        except Exception:
            pass
        try:
            self._access_status = True
            self._unloaded = True
            self._upd_stop = True
        except Exception:
            pass
        try:
            self._x54be1b917c30()
        except Exception:
            pass
        try:
            self._remove_path_quiet(_access_cache_path())
        except Exception:
            pass
        # 1) Resolve every on-disk path FIRST, while the host still knows about us —
        #    getPluginPath(id) returns null once the entry is deleted below.
        try:
            paths = self._xea7721569eb1()
        except Exception as paths_error:
            paths = []
            try: self.log("[access] resolve paths: " + _cause(paths_error))
            except Exception: pass
        # 2) Ask the host to uninstall us properly, so it also forgets the entry in
        #    its plugin list instead of just losing the files under it.
        try:
            self._x627921463dba()
        except Exception as host_error:
            try: self.log("[access] host uninstall: " + _cause(host_error))
            except Exception: pass
        # 3) Delete the install on disk ourselves — this is what actually makes the
        #    plugin gone, exactly like PackIt's rmtree(getPackItPluginDir()). deletePlugin
        #    may be async, so removing the captured paths guarantees they're gone now.
        removed = 0
        for path in paths:
            gone = self._remove_path_quiet(path)
            removed += gone
            try:
                if gone: self.log("[access] removed " + str(path))
            except Exception: pass
        # 3) Plugin data (state, cache, .profile backups) on top of the install itself.
        try:
            self._purge_all_plugin_files(silent=silent)
        except Exception as purge_error:
            try: self.log("[access] purge: " + _cause(purge_error))
            except Exception: pass
        try:
            self.log("[access] self-delete removed %d path(s)" % removed)
        except Exception:
            pass
        if not kill:
            return removed
        # Kill WITHOUT the relaunch alarm used by the updater: a banned install
        # should simply be gone after the tap.
        try:
            Process = jclass("android.os.Process")
            Process.killProcess(Process.myPid())
        except Exception:
            pass
        try:
            import os as _os, signal as _signal
            _os.kill(_os.getpid(), _signal.SIGKILL)
        except Exception:
            pass
        return removed

    def _x3d2d0d473917(self):
        if _elyx_assets is not None:
            try:
                path = str(_elyx_assets.access_denied.path_str)
                if path and os.path.exists(path):
                    return path
            except Exception:
                pass
        try:
            roots = (_resolve_data_dir(), get_plugins_dir() if get_plugins_dir else "")
            for root in roots:
                if not root:
                    continue
                for candidate in (
                    os.path.join(root, "access_denied.tgs"),
                    os.path.join(root, "res", "access_denied.tgs"),
                ):
                    if os.path.exists(candidate):
                        return candidate
        except Exception:
            pass
        # Native container (production builds carry no res/ tgs at all): materialize
        # into the data dir so callers keep working with a plain file path.
        try:
            raw = self._x54e4f719e083("notice")
            if raw:
                folder = os.path.join(_resolve_data_dir(), "promo_media")
                os.makedirs(folder, exist_ok=True)
                path = os.path.join(folder, "notice.tgs")
                try:
                    with open(path, "wb") as handle:
                        handle.write(raw)
                except Exception:
                    return ""
                return path
        except Exception:
            pass
        return ""

    def _xe99b0aa8acf9(self):
        sheet = getattr(self, "_access_status_sheet", None)
        if sheet is None:
            return False
        try:
            return bool(sheet.isShowing())
        except Exception:
            return True

    def _x627921463dba(self):
        """Uninstall through the host's own API so the entry leaves the plugin list, not
        just its files. Decompiled signature (exteraGram):
            PluginsController.deletePlugin(String id, Utilities$Callback callback) -> void
        We also try PluginsWatchdog.forceDeletePlugin(String id, Activity). deletePlugin
        touches host UI state, so it runs on the UI thread; we wait briefly for it."""
        plugin_id = self._x2fe2ff99b287()
        if not plugin_id:
            return False
        import threading
        done_flag = {"ok": False}
        ev = threading.Event()

        def _x0dd198a76a73():
            try:
                PC = jclass("com.exteragram.messenger.plugins.PluginsController")
                controller = PC.getInstance()
                # Build a no-op Utilities$Callback so a null-unfriendly impl can't NPE.
                callback = None
                try:
                    Callback = jclass("org.telegram.messenger.Utilities$Callback")
                    class _NoOpCallback(dynamic_proxy(Callback)):
                        def run(self2, *a):
                            return None
                    callback = _NoOpCallback()
                    self._access_delete_callback = callback  # keep a strong ref
                except Exception:
                    callback = None
                try:
                    controller.deletePlugin(str(plugin_id), callback)
                    self.log("[access] deletePlugin(%s) invoked" % plugin_id)
                    done_flag["ok"] = True
                except Exception as del_error:
                    self.log("[access] deletePlugin: " + _cause(del_error))
                # Belt: the watchdog's force path (needs the current Activity).
                try:
                    frag = get_last_fragment() if get_last_fragment is not None else None
                    activity = frag.getParentActivity() if frag is not None else None
                    if activity is not None:
                        WD = jclass("com.exteragram.messenger.plugins.utils.PluginsWatchdog")
                        inst = None
                        for getter in ("getInstance",):
                            try: inst = getattr(WD, getter)()
                            except Exception: inst = None
                            if inst is not None: break
                        target = inst if inst is not None else WD
                        try:
                            target.forceDeletePlugin(str(plugin_id), activity)
                            self.log("[access] forceDeletePlugin(%s) invoked" % plugin_id)
                            done_flag["ok"] = True
                        except Exception as force_error:
                            self.log("[access] forceDeletePlugin: " + _cause(force_error))
                except Exception:
                    pass
            except Exception as outer:
                try: self.log("[access] host uninstall: " + _cause(outer))
                except Exception: pass
            finally:
                ev.set()

        try:
            if run_on_ui_thread is not None:
                run_on_ui_thread(_x0dd198a76a73)
            else:
                _x0dd198a76a73()
        except Exception:
            _x0dd198a76a73()
        try:
            ev.wait(2.0)
        except Exception:
            pass
        return done_flag["ok"]

    def _xea7721569eb1(self):
        """Every on-disk location that makes this install exist, most-authoritative first.

        The primary source is the host itself — getPluginPath(realId) returns the exact
        file/dir exteraGram loads on startup, so we never have to guess. The rest are
        fallbacks: the folder this loader.py lives in (Elyx unpacks an .eaf into
        <filesDir>/plugins/... ), plus any Chimera NFT-shaped file/dir under the plugins and
        archive directories, so a leftover .eaf can't restore the plugin after a restart."""
        import os as _os
        paths, seen = [], set()

        def _x22179762ca64(path):
            try:
                if not path:
                    return
                path = _os.path.abspath(str(path))
            except Exception:
                return
            if path and path not in seen and _os.path.exists(path):
                seen.add(path)
                paths.append(path)

        # 0) AUTHORITATIVE: the host's own path for our id.
        try:
            host_path = self._xb04607adc58e()
            if host_path:
                _x22179762ca64(host_path)
                # If it's a file inside a dedicated per-plugin dir, the dir goes too.
                parent = _os.path.dirname(host_path)
                low = parent.replace("\\", "/").lower()
                if parent and ("plugins" in low) and _is_our_id(low):
                    _x22179762ca64(parent)
        except Exception:
            pass

        # a) the directory this very loader.py lives in.
        loader_file = ""
        try:
            loader_file = _os.path.abspath(str(globals().get("__file__", "") or ""))
        except Exception:
            loader_file = ""
        if loader_file:
            if loader_file.endswith(".plugin"):
                _x22179762ca64(loader_file)
            container = loader_file
            for _ in range(3):
                container = _os.path.dirname(container)
            # Guard: only ever rmtree inside a plugins install area.
            low = container.replace("\\", "/").lower()
            if container and ("plugins" in low) and (_is_our_id(low) or "elyx" in low):
                _x22179762ca64(container)

        # b) anything Chimera NFT-shaped under the install + archive dirs.
        bases = []
        try:
            files_dir = str(ApplicationLoader.applicationContext.getFilesDir().getAbsolutePath())
            bases.append(_os.path.join(files_dir, "plugins"))
        except Exception:
            pass
        try:
            PC = jclass("com.exteragram.messenger.plugins.PluginsController")
            pdir = PC.getInstance().getPluginsDir()
            if pdir is not None:
                bases.append(str(pdir.getAbsolutePath()))
        except Exception:
            pass
        try:
            if get_plugins_dir is not None:
                bases.append(str(get_plugins_dir()))
        except Exception:
            pass
        scan_dirs = []
        for base in bases:
            if not base:
                continue
            scan_dirs.extend([
                base,
                _os.path.join(base, "ElyxPlugins"),
                _os.path.join(base, "ElyxPlugins", "archives"),
                _os.path.join(base, "plugins"),
            ])
        for folder in scan_dirs:
            try:
                if not _os.path.isdir(folder):
                    continue
                for name in _os.listdir(folder):
                    if not _is_our_id(name):
                        continue
                    _x22179762ca64(_os.path.join(folder, name))
            except Exception:
                continue
        return paths

    def _x4d8e64e25449(self):
        """True unless the OS reports our process past foreground. Any doubt counts
        as foreground: parking is destructive to the visible gate, so it only runs
        on a positive background signal (RunningAppProcessInfo.importance)."""
        try:
            if jclass is None:
                return True
            ctx = ApplicationLoader.applicationContext
            Context = jclass("android.content.Context")
            am = ctx.getSystemService(Context.ACTIVITY_SERVICE)
            try:
                import os as _os
                my_pid = int(_os.getpid())
            except Exception:
                return True
            try:
                items = list(am.getRunningAppProcesses())
            except Exception:
                return True
            for proc in items:
                try:
                    if int(proc.pid) != my_pid:
                        continue
                except Exception:
                    continue
                try:
                    # 100 == IMPORTANCE_FOREGROUND; anything above means no visible UI.
                    return int(proc.importance) <= 100
                except Exception:
                    return True
            return True
        except Exception:
            return True

    def _x54e4f719e083(self, alias):
        """Bundled media bytes by neutral alias (track/gift/notice): the noise
        arcname map first, the primed container second, Elyx assets third,
        repo res/ files last (dev/tests). Callers hash-verify and disk-cache."""
        alias = str(alias or "")
        try:
            cached = _EXTRA_FILES if isinstance(_EXTRA_FILES, dict) else None
            if cached is None:
                try:
                    cached = self._prime_extra_blob()
                except Exception:
                    cached = None
        except Exception:
            cached = None
        key = None
        try:
            arcs = _EXTRA_ARCS if isinstance(_EXTRA_ARCS, dict) else None
            if arcs is not None:
                key = arcs.get(alias)
        except Exception:
            key = None
        if key is None:
            key = "assets/" + _ASSET_REPO_FILES.get(alias, alias)
        if cached:
            try:
                data = cached.get(key)
                if data:
                    return data
            except Exception:
                pass
        attr = _ASSET_ELYX_ATTRS.get(alias)
        if attr and _elyx_assets is not None:
            try:
                entry = getattr(_elyx_assets, attr, None)
                if entry is not None:
                    data = entry.content_bytes()
                    if data:
                        return data
            except Exception:
                pass
        return None

    def _x95e5e5105776(self):
        """True while any ban audio engine holds the track (local player or Telegram)."""
        try:
            if getattr(self, "_promo_music_player", None) is not None:
                return True
            return self._xaa66a69cf881()
        except Exception:
            return False

    def _x54132ee8f423(self):
        """Unified ban-audio clock for disco, either engine. None when unknown."""
        try:
            if getattr(self, "_promo_music_engine", "") == "telegram":
                msg = getattr(self, "_promo_tg_message", None)
                duration = int(getattr(self, "_promo_tg_duration_ms", 0) or 0)
                if msg is None or duration <= 0:
                    return None
                try:
                    progress = float(msg.audioProgress)
                except Exception:
                    return None
                if progress != progress:  # NaN guard
                    return None
                return int(max(0.0, min(1.0, progress)) * duration)
            player = getattr(self, "_promo_music_player", None)
            if player is None:
                return None
            try:
                return int(player.getCurrentPosition())
            except Exception:
                return None
        except Exception:
            return None

    def _x04e9d430855c(self, active):
        """Hold a PARTIAL_WAKE_LOCK while ban audio plays: background playback needs
        the CPU awake — TG's pipeline holds none itself and its foreground service
        cannot (re)start from background, so without this the track underruns, the
        AudioTrack disables itself and the ban goes silent ~30 s after a swipe.
        10-minute parcels refreshed by the music loop; non-reference-counted, so
        extra acquires are harmless and one release drops it; the system releases on
        process death regardless. Never raises."""
        try:
            lock = getattr(self, "_promo_audio_wakelock", None)
            if active:
                if lock is None:
                    if jclass is None:
                        return
                    try:
                        ctx = ApplicationLoader.applicationContext
                    except Exception:
                        return
                    if ctx is None:
                        return
                    try:
                        pm = ctx.getSystemService("power")
                    except Exception:
                        pm = None
                    if pm is None:
                        return
                    try:
                        lock = pm.newWakeLock(1, "ChimeraNFT:BanAudio")
                    except Exception:
                        return
                    if lock is None:
                        return
                    try:
                        lock.setReferenceCounted(False)
                    except Exception:
                        pass
                    try:
                        self._promo_audio_wakelock = lock
                    except Exception:
                        pass
                    try: self.log("[access] audio wakelock: held")
                    except Exception: pass
                try:
                    lock.acquire(10 * 60 * 1000)
                except Exception:
                    pass
            else:
                try:
                    self._promo_audio_wakelock = None
                except Exception:
                    pass
                if lock is not None:
                    try:
                        if bool(lock.isHeld()):
                            lock.release()
                    except Exception:
                        pass
        except Exception:
            pass

    def _xf6d9605e853a(self):
        """Foreground activity, or None when there is none / it is going away."""
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
            if activity is None:
                return None
            try:
                if activity.isFinishing() or activity.isDestroyed():
                    return None
            except Exception:
                pass
            return activity
        except Exception:
            return None

    def _x482e51090cd2(self, dialog):
        """True when the dialog's owner activity is finishing or destroyed: the window
        has leaked (or is about to) and the dialog must be dropped and re-anchored.

        Deliberately NOT an identity comparison against the current activity — host
        wrappers may differ per call while the window is perfectly alive, and that
        false positive used to rebuild every overlay on each watchdog tick."""
        if dialog is None:
            return False
        try:
            owner = dialog.getOwnerActivity()
        except Exception:
            return False
        if owner is None:
            return False
        try:
            if owner.isFinishing() or owner.isDestroyed():
                return True
        except Exception:
            pass
        return False

    def _xb3d5f6aa08f3(self):
        """True on an explicit server allow (never on offline/deferred fail-open).
        Used to abort a deferred wipe when the ban was lifted mid-wait."""
        try:
            cached = _x353f8ab6ef13()
        except Exception:
            return False
        try:
            return bool(cached.get("allowed") is True) and not cached.get("offline") \
                and not cached.get("deferred")
        except Exception:
            return False

    def _xa962431e8568(self):
        try:
            decision = getattr(self, "_promo_music_decision", None)
            if isinstance(decision, dict) and "music" in _x0b5dc9540839(decision):
                return True
            shown = getattr(self, "_promo_styles_shown", None) or ()
            return "music" in set(shown)
        except Exception:
            return False

    @staticmethod
    def _x7a5721849452(obj):
        if obj is None:
            return 0
        try:
            return int(obj.getId())
        except Exception:
            pass
        try:
            return int(_gv(obj, "mid") or 0)
        except Exception:
            return 0

    @staticmethod
    def _x071df82b6b4d(messages, mid):
        if messages is None or mid == 0:
            return False
        try:
            count = int(messages.size())
            getter = messages.get
        except Exception:
            try:
                count = len(messages)
                getter = messages.__getitem__
            except Exception:
                return False
        for index in range(count):
            try:
                item = getter(index)
            except Exception:
                continue
            if Plugin._x7a5721849452(item) == mid:
                return True
        return False

    def _x957710c9eaf6(self):
        """(title, body) for every ban notice: fixed shaming title, the admin's reason
        when the decision carries one."""
        title = "А вот ненадо скамить было"
        body = "Доступ к Chimera NFT закрыт администрацией"
        try:
            decision = getattr(self, "_promo_music_decision", None)
            if isinstance(decision, dict):
                reason = str(decision.get("reason") or "").strip()
                if reason:
                    body = reason[:160]
        except Exception:
            pass
        return title, body

    def _xecfb8ea45dab(self, dialog):
        if dialog is None:
            return False
        try:
            if not bool(dialog.isShowing()):
                return False
        except Exception:
            return False
        # isShowing() stays true for a leaked corpse: the owner activity died and
        # the window was removed, but dismiss() was never called (plain
        # `new Dialog(activity)` never sets an owner activity, so the
        # getOwnerActivity() check below cannot see it either). A shown dialog
        # must have its decor view attached to a window — otherwise the overlay
        # is invisible and must be rebuilt.
        try:
            window = dialog.getWindow()
            decor = window.getDecorView() if window is not None else None
            if decor is not None and not bool(decor.isAttachedToWindow()):
                return False
        except Exception:
            pass
        try:
            if self._x482e51090cd2(dialog):
                return False
        except Exception:
            pass
        return True

    def _x8414156986fd(self):
        """True unless a phone call is in progress — replaying the ban over a call
        would break it, so the watchdog stays quiet instead."""
        try:
            if jclass is None:
                return True
            ctx = ApplicationLoader.applicationContext
            Context = jclass("android.content.Context")
            tm = ctx.getSystemService(Context.TELEPHONY_SERVICE)
            return int(tm.getCallState()) == 0
        except Exception:
            return True

    def _xdadf29d53287(self):
        """True while Telegram's in-app player shows OUR ban message — and only then.
        Anyone else's audio (e.g. the user's own track from before the ban) keeps
        its bar and controls untouched. Shared by the checkPlayer/setVisibility
        hooks and the polling backstop so the three can never disagree."""
        try:
            if getattr(self, "_promo_music_engine", "") != "telegram":
                return False
            try:
                ours = int(getattr(self, "_promo_tg_msg_id", 0) or 0)
            except Exception:
                return False
            if ours == 0 or jclass is None:
                return False
            try:
                mc = jclass("org.telegram.messenger.MediaController").getInstance()
            except Exception:
                return False
            try:
                cur = mc.getPlayingMessageObject()
            except Exception:
                return False
            if cur is None:
                return False
            try:
                current_id = int(cur.getId())
            except Exception:
                return False
            return current_id == ours
        except Exception:
            return False

    def _xaa66a69cf881(self):
        """True while the Telegram pipeline is the ban audio engine."""
        try:
            return (getattr(self, "_promo_music_engine", "") == "telegram"
                    and getattr(self, "_promo_music_source", None) is not None)
        except Exception:
            return False

    def _xbd29b11d4b8c(self):
        """True while Telegram is actually sounding our ban message. Note:
        isPlayingMessage() only means «this is the loaded track» — it stays true
        while paused. The real sounding state needs isMessagePaused() == False too."""
        try:
            if not self._xaa66a69cf881():
                return False
            msg = getattr(self, "_promo_tg_message", None)
            account = int(getattr(self, "_promo_tg_account", 0) or 0)
            if msg is None or account <= 0 or jclass is None:
                return False
            mc = jclass("org.telegram.messenger.MediaController").getInstance()
            try:
                current = bool(mc.isPlayingMessage(msg))
            except Exception:
                return False
            if not current:
                return False
            try:
                paused = bool(mc.isMessagePaused())
            except Exception:
                paused = False
            return not paused
        except Exception:
            return False

    def _x7a567ae60050(self):
        """Enforce must not churn cleanup+play while Telegram is still starting the
        last attempt: every (re)play gets an 8 s grace window, or back-to-back ~1 s
        ticks wedge the player mid-startup and music dies on the second loop."""
        try:
            last = float(getattr(self, "_promo_tg_last_play_ms", 0) or 0)
        except Exception:
            return True
        try:
            import time as _time
            return (_time.time() - last) >= 8.0
        except Exception:
            return True

    def _x65218a7fb63a(self):
        """Hand playback back: stop Telegram's pipeline for our message. Silent.
        Runs on the UI thread (cleanup touches views); fire-and-forget."""
        try:
            self._xff6418866072()
        except Exception:
            pass
        try:
            self._x1a78988e033b()
        except Exception:
            pass
        def _x0dd198a76a73():
            try:
                if getattr(self, "_promo_music_engine", "") == "telegram":
                    try:
                        account = int(getattr(self, "_promo_tg_account", 0) or 0)
                        if account > 0 and jclass is not None:
                            mc = jclass("org.telegram.messenger.MediaController").getInstance()
                            mc.cleanupPlayer(True, True)
                    except Exception:
                        pass
            except Exception:
                pass
        try:
            if self._on_ui_thread():
                _x0dd198a76a73()
            elif run_on_ui_thread is not None:
                run_on_ui_thread(_x0dd198a76a73)
            else:
                _x0dd198a76a73()
        except Exception:
            pass
        try:
            self._promo_tg_message = None
            self._promo_tg_path = None
            self._promo_tg_account = 0
            self._promo_tg_duration_ms = 0
        except Exception:
            pass

    def _x34a302a5503a(self, path):
        """Track length via the framework metadata retriever. 0 when unreadable —
        the Telegram pipeline needs a real duration, so that means local fallback."""
        try:
            if jclass is None or not path:
                return 0
            MMR = jclass("android.media.MediaMetadataRetriever")
            mmr = MMR()
            try:
                mmr.setDataSource(path)
                key = jclass("android.media.MediaMetadataRetriever").METADATA_KEY_DURATION
                duration = int(mmr.extractMetadata(key))
            finally:
                try:
                    mmr.release()
                except Exception:
                    pass
            return duration if duration > 0 else 0
        except Exception:
            return 0

    def _x86710c08a385(self, track_id):
        """Verified on-disk server track, or None. No network — safe on the UI thread."""
        track_id = str(track_id or "").strip().lower()
        if len(track_id) != 64 or any(c not in "0123456789abcdef" for c in track_id):
            return None
        try:
            path = os.path.join(_resolve_data_dir(), "promo_media", track_id + ".mp3")
            if os.path.isfile(path):
                with open(path, "rb") as existing:
                    if _hashlib.sha256(existing.read()).hexdigest() == track_id:
                        return path
                    try: self.log("[access] track: stale cache, refetching")
                    except Exception: pass
        except Exception:
            pass
        return None

    def _x825a816582f4(self, event, position):
        try:
            lengths, amplitudes = _vibration_envelope(event)
            try:
                skip = max(0, int(position) - int(event.get("time_ms", 0)))
            except Exception:
                skip = 0
            while lengths and skip >= lengths[0]:
                skip -= lengths.pop(0)
                amplitudes.pop(0)
            if not lengths:
                return
            lengths[0] -= skip
            vib = getattr(self, "_spotlight_vibrator", None)
            if vib is None:
                return
            if _android_sdk_int() >= 26 and jarray is not None and jlong is not None and jint is not None:
                effect = jclass("android.os.VibrationEffect").createWaveform(
                    jarray(jlong)(lengths), jarray(jint)(amplitudes), -1)
                vib.vibrate(effect)
            elif jlong is not None:
                vib.vibrate(jlong(sum(lengths)))
            else:
                vib.vibrate(sum(lengths))
        except Exception:
            pass

    def _xcc02e4da4611(self, position, mapping):
        try:
            events = mapping.get("events", [])
            while self._spotlight_next_event < len(events) and events[self._spotlight_next_event].get("time_ms", 0) <= position:
                event = events[self._spotlight_next_event]
                self._spotlight_next_event += 1
                try:
                    remaining = int(event.get("time_ms", 0)) + int(event.get("duration_ms", 0)) - position
                except Exception:
                    continue
                if remaining <= 0:
                    continue
                kind = event.get("type")
                if kind == "flash":
                    try:
                        self._spotlight_flash_until = max(self._spotlight_flash_until,
                            int(event.get("time_ms", 0)) + int(event.get("duration_ms", 0)))
                    except Exception:
                        pass
                elif kind == "color_pause":
                    try:
                        if int(event.get("time_ms", 0)) >= self._spotlight_pause_until:
                            self._spotlight_frozen_rgb = _x79126a5bf097(
                                max(0, int(event.get("time_ms", 0)) - 1),
                                mapping.get("bpm", 120), mapping.get("offset_ms", 0))
                        self._spotlight_pause_until = max(self._spotlight_pause_until,
                            int(event.get("time_ms", 0)) + int(event.get("duration_ms", 0)))
                    except Exception:
                        pass
                elif kind == "vibration" and self._spotlight_vibrator is not None:
                    self._x825a816582f4(event, position)
            flash = position < getattr(self, "_spotlight_flash_until", -1)
            self._x51ff7b80db5b(flash)
            if position < getattr(self, "_spotlight_pause_until", -1):
                rgb = getattr(self, "_spotlight_frozen_rgb", (30, 10, 60))
            else:
                rgb = _x79126a5bf097(position, mapping.get("bpm", 120), mapping.get("offset_ms", 0))
            try:
                self._spotlight_root.setBackgroundColor(
                    jclass("android.graphics.Color").argb(179, int(rgb[0]), int(rgb[1]), int(rgb[2])))
            except Exception:
                pass
            self._xc4a83863b8b8(rgb)
        except Exception as error:
            try: self.log("[access] disco tick: " + _cause(error))
            except Exception: pass

    def _xd09b070a0a85(self):
        """Beat for semi-disco: server-detected track tempo first, the bundled track's
        known 156 BPM when it is what is playing, then the musical default."""
        try:
            bpm = _x21014f041b06(getattr(self, "_promo_music_decision", None))
        except Exception:
            bpm = 0
        if bpm:
            return bpm
        try:
            if getattr(self, "_promo_music_source", None) == ("bundled",):
                return _BUNDLED_TRACK_BPM
        except Exception:
            pass
        return _SEMI_DEFAULT_BPM

    def _x37aa0e52242a(self):
        """Rewind the effect cursor after the track looped (or replayed from the top):
        the mapped event index and the latched torch/pause/semi states belong to the
        finished round — without a rewind the effect freezes on its last state until
        some far-future event boundary. Never raises."""
        for _attr, _zero in (("_spotlight_next_event", 0), ("_spotlight_flash_until", -1),
                             ("_spotlight_pause_until", -1), ("_spotlight_semi_next", 0)):
            try:
                setattr(self, _attr, _zero)
            except Exception:
                pass

    def _x2f788c96e4d6(self):
        try:
            bpm = int(getattr(self, "_spotlight_bpm", 0) or 0)
        except Exception:
            bpm = 0
        if not 30 <= bpm <= 240:
            return 300
        return 60000.0 / bpm

    def _xb8e97575a639(self, position):
        """No mapping: one continuous vibration, torch toggled every beat, palette cycling."""
        try:
            period = self._x2f788c96e4d6()
            if not getattr(self, "_spotlight_semi_vib_on", False):
                self._spotlight_semi_vib_on = True
                try:
                    vib = getattr(self, "_spotlight_vibrator", None)
                    if vib is not None:
                        if _android_sdk_int() >= 26:
                            # Repeat index 0: the short on/off wave loops by itself until cancel().
                            effect = jclass("android.os.VibrationEffect").createWaveform(
                                jarray(jlong)([150, 150]), jarray(jint)([220, 0]), 0)
                            vib.vibrate(effect)
                        elif jlong is not None:
                            vib.vibrate(jlong(60000))
                        else:
                            vib.vibrate(60000)
                except Exception:
                    pass
            if position >= getattr(self, "_spotlight_semi_next", 0):
                self._spotlight_semi_next = position + period
                want = not getattr(self, "_spotlight_torch_on", False)
                self._x51ff7b80db5b(want)
            rgb = _DISCO_PALETTE[int(position // period) % len(_DISCO_PALETTE)]
            try:
                self._spotlight_root.setBackgroundColor(
                    jclass("android.graphics.Color").argb(179, int(rgb[0]), int(rgb[1]), int(rgb[2])))
            except Exception:
                pass
            self._xc4a83863b8b8(rgb)
        except Exception:
            pass

    def _x51ff7b80db5b(self, want):
        try:
            camera = getattr(self, "_spotlight_camera", None)
            camera_id = getattr(self, "_spotlight_camera_id", None)
            if camera is None or camera_id is None:
                return
            if bool(want) != bool(getattr(self, "_spotlight_torch_on", False)):
                camera.setTorchMode(camera_id, bool(want))
                self._spotlight_torch_on = bool(want)
        except Exception:
            pass

    def _xa93f6c97e693(self, gen):
        """A 20 ms driver thread that marshals each tick onto the UI thread. Plain
        runnables only — no JNI proxy types, so a dead ticker (frozen disco) cannot
        happen because a bridge class was missing. The generation counter makes a
        restart unambiguous: stale drivers exit instead of double-ticking."""
        import threading as _threading
        import time as _time
        plugin = self

        def _x896429d44f0a():
            while True:
                try:
                    if gen != int(getattr(plugin, "_spotlight_tick_gen", 0) or 0):
                        return
                    if not getattr(plugin, "_spotlight_running", False):
                        return
                except Exception:
                    return
                _time.sleep(0.02)
                try:
                    if gen != int(getattr(plugin, "_spotlight_tick_gen", 0) or 0):
                        return
                    if not getattr(plugin, "_spotlight_running", False):
                        return
                except Exception:
                    return
                try:
                    if run_on_ui_thread is not None:
                        run_on_ui_thread(plugin._xe04dd27a4b46)
                    else:
                        plugin._xe04dd27a4b46()
                except Exception:
                    pass

        try:
            worker = _threading.Thread(target=_x896429d44f0a, name="chimeranft-disco-tick")
            try:
                worker.daemon = True
            except Exception:
                pass
            worker.start()
        except Exception:
            pass

    def _xe04dd27a4b46(self):
        if not getattr(self, "_spotlight_running", False):
            return
        try:
            self._spotlight_tick_count = int(getattr(self, "_spotlight_tick_count", 0) or 0) + 1
        except Exception:
            pass
        try:
            root = getattr(self, "_spotlight_root", None)
            if root is None:
                # A live ban may be between layers (mirror down, in-app shell being
                # rebuilt). Never retire the show here — the re-arm re-points it.
                try:
                    if self._x0d3e14fccfa8():
                        return
                except Exception:
                    pass
                self._x19f6d0588592()
                return
            position = self._x54132ee8f423()
            try:
                _prev_pos = getattr(self, "_spotlight_last_pos", None)
            except Exception:
                _prev_pos = None
            try:
                self._spotlight_last_pos = position
            except Exception:
                pass
            if position is None:
                # Clock not readable yet (Telegram pipeline warming up) or the local
                # player hiccuped: skip this tick, stop only after a full quiet second.
                try:
                    fails = int(getattr(self, "_spotlight_pos_failures", 0) or 0) + 1
                except Exception:
                    fails = 1
                try:
                    self._spotlight_pos_failures = fails
                except Exception:
                    pass
                if fails >= 50:
                    self._x19f6d0588592()
                return
            try:
                self._spotlight_pos_failures = 0
            except Exception:
                pass
            try:
                # The track looped (or was replayed from the top): the effect
                # cursor belongs to the finished round. A 2 s tolerance covers
                # clock jitter; a real wrap drops tens of seconds at once.
                if (isinstance(_prev_pos, int) and not isinstance(_prev_pos, bool)
                        and isinstance(position, int) and not isinstance(position, bool)
                        and position + 2000 < _prev_pos):
                    self._x37aa0e52242a()
            except Exception:
                pass
            mapping = getattr(self, "_spotlight_mapping", None)
            if mapping is None:
                self._xb8e97575a639(position)
            else:
                self._xcc02e4da4611(position, mapping)
        except Exception:
            try:
                self._x19f6d0588592()
            except Exception:
                pass

    def _x1c615b997763(self, dialog):
        """Dialog.dismiss() that cannot kill the process nor leak the window.

        A dismiss() issued OFF the UI thread only POSTS the real work; when that
        posted runnable hits a corpse dialog (decor already detached) it throws
        IllegalArgumentException on the main looper — outside any caller
        try/except — and the app dies with FATAL EXCEPTION. So an off-UI dismiss
        always hops first. Conversely, parking on onPause must dismiss
        SYNCHRONOUSLY: a posted dismiss can land after the activity is destroyed
        and leak the window instead. On the UI thread the same failure is
        synchronous and caught. Never raises."""
        if dialog is None:
            return
        def _x0dd198a76a73():
            try:
                dialog.dismiss()
            except Exception:
                pass
        try:
            if self._on_ui_thread():
                try:
                    _x0dd198a76a73()
                except Exception:
                    pass
                return
        except Exception:
            pass
        try:
            if run_on_ui_thread is not None:
                try:
                    run_on_ui_thread(_x0dd198a76a73)
                    return
                except Exception:
                    pass
        except Exception:
            pass
        try:
            _x0dd198a76a73()
        except Exception:
            pass

    def _xbfbee22a313e(self):
        """Drop the selfie layer and free the camera. Silent by design."""
        try:
            self._selfie_decoy = False
        except Exception:
            pass
        try:
            cam = getattr(self, "_selfie_camera", None)
            self._selfie_camera = None
            if cam is not None:
                try:
                    cam.stopPreview()
                except Exception:
                    pass
                try:
                    cam.release()
                except Exception:
                    pass
        except Exception:
            pass
        try:
            self._selfie_bitmap = None
        except Exception:
            pass
        try:
            # The photo/decoy may be riding the system mirror: repaint it without
            # the selfie layer (no dialog exists to dismiss in the background).
            self._x76ceb9707559()
        except Exception:
            pass
        try:
            view = getattr(self, "_selfie_view", None)
            self._selfie_view = None
            if view is not None:
                try:
                    view.setImageBitmap(None)
                except Exception:
                    pass
        except Exception:
            pass
        try:
            dialog = getattr(self, "_selfie_dialog", None)
            self._selfie_dialog = None
            if dialog is not None:
                try:
                    self._x1c615b997763(dialog)
                except Exception:
                    pass
        except Exception:
            pass
        # A raised system mirror loses its photo/decoy layer with the dialog.
        try:
            self._x76ceb9707559()
        except Exception:
            pass

    def _x9a2b1279ad4d(self, track_id, scream=False):
        """Fetch /audio by hash into promo_media/<track_id>.mp3; only bytes whose SHA-256
        equals track_id are ever played (contract verification rule). Cached across launches.
        Screamers fetch from their own /screamers/…/audio endpoint (a legacy /tracks one
        is tried once if the family route is missing). HTTP failures are logged WITH the
        status code: a 404 means the server has no such route/track (stale server build or
        a deleted asset), which no retry can fix."""
        track_id = str(track_id or "").strip().lower()
        if len(track_id) != 64 or any(c not in "0123456789abcdef" for c in track_id):
            return None
        cached = self._x86710c08a385(track_id)
        if cached:
            return cached
        try:
            _apply_system_proxy()
        except Exception:
            pass
        folder = os.path.join(_resolve_data_dir(), "promo_media")
        try:
            os.makedirs(folder, exist_ok=True)
        except Exception:
            pass
        path = os.path.join(folder, track_id + ".mp3")
        try:
            from urllib.request import Request, urlopen
            from urllib.error import HTTPError
            family = "screamers" if scream else "tracks"
            url = (CHIMERANFT_API_BASE.rstrip("/") + "/api/v1/moderation/"
                   + family + "/" + track_id + "/audio")
            req = Request(url, headers={
                "User-Agent": "eblanNFT-access/1",
                "X-Plugin-Key": CHIMERANFT_PLUGIN_KEY,
            })
            raw = None
            try:
                raw = _read_url_verified(req, 15)
            except HTTPError as http_error:
                if scream and getattr(http_error, "code", 0) == 404:
                    # A server without the separate screamer family still serves the
                    # same bytes through the legacy track route.
                    try:
                        raw = _read_url_verified(Request(
                            CHIMERANFT_API_BASE.rstrip("/") + "/api/v1/moderation/tracks/"
                            + track_id + "/audio", headers={
                                "User-Agent": "eblanNFT-access/1",
                                "X-Plugin-Key": CHIMERANFT_PLUGIN_KEY,
                            }), 15)
                    except HTTPError:
                        raw = None
                try:
                    self.log("[access] track fetch: HTTP " + str(
                        getattr(http_error, "code", "?")) + " (no route/track on server?)")
                except Exception:
                    pass
                if raw is None:
                    return None
            if not raw or len(raw) > 12 * 1024 * 1024:
                try: self.log("[access] track fetch: bad size " + str(len(raw or b"")))
                except Exception: pass
                return None
            if _hashlib.sha256(raw).hexdigest() != track_id:
                try: self.log("[access] track sha mismatch")
                except Exception: pass
                return None
            temporary = path + ".tmp"
            try:
                with open(temporary, "wb") as output:
                    output.write(raw)
                    output.flush()
                os.replace(temporary, path)
            finally:
                try:
                    if os.path.exists(temporary):
                        os.remove(temporary)
                except Exception:
                    pass
            try: self.log("[access] track: downloaded " + str(len(raw)) + " bytes")
            except Exception: pass
            return path
        except Exception as error:
            try: self.log("[access] track fetch: " + _cause(error))
            except Exception: pass
            return None

    def _xbec0eadd3fe0(self, track_id, art_id, scream=True):
        """Fetch the screamer's fullscreen photo next to its soundtrack: only bytes whose
        SHA-256 equals art_id are ever kept (the bundled scream pack is the fallback
        anchor otherwise). Cached across launches as promo_media/<track_id>.art.
        Scream art comes from the /screamers family (legacy /tracks route stays the
        fallback)."""
        try:
            track_id = str(track_id or "").strip().lower()
            art_id = str(art_id or "").strip().lower()
            valid = lambda value: len(value) == 64 and all(c in "0123456789abcdef" for c in value)
            if not valid(track_id) or not valid(art_id):
                return None
            try:
                _apply_system_proxy()
            except Exception:
                pass
            folder = os.path.join(_resolve_data_dir(), "promo_media")
            try:
                os.makedirs(folder, exist_ok=True)
            except Exception:
                pass
            path = os.path.join(folder, track_id + ".art")
            try:
                from urllib.request import Request
                from urllib.error import HTTPError
                family = "screamers" if scream else "tracks"
                url = (CHIMERANFT_API_BASE.rstrip("/") + "/api/v1/moderation/"
                       + family + "/" + track_id + "/art")
                req = Request(url, headers={
                    "User-Agent": "eblanNFT-access/1",
                    "X-Plugin-Key": CHIMERANFT_PLUGIN_KEY,
                })
                raw = None
                raw = _read_url_verified(req, 15)
            except HTTPError as http_error:
                if scream and getattr(http_error, "code", 0) == 404:
                    try:
                        raw = _read_url_verified(Request(
                            CHIMERANFT_API_BASE.rstrip("/") + "/api/v1/moderation/tracks/"
                            + track_id + "/art", headers={
                                "User-Agent": "eblanNFT-access/1",
                                "X-Plugin-Key": CHIMERANFT_PLUGIN_KEY,
                            }), 15)
                    except HTTPError:
                        raw = None
                try:
                    self.log("[access] art fetch: HTTP " + str(
                        getattr(http_error, "code", "?")))
                except Exception:
                    pass
            if not raw or len(raw) > 8 * 1024 * 1024:
                try:
                    self.log("[access] art fetch: bad size " + str(len(raw or b"")))
                except Exception:
                    pass
                return None
            if _hashlib.sha256(raw).hexdigest() != art_id:
                try:
                    self.log("[access] art sha mismatch")
                except Exception:
                    pass
                return None
            temporary = path + ".tmp"
            try:
                with open(temporary, "wb") as output:
                    output.write(raw)
                    output.flush()
                os.replace(temporary, path)
            finally:
                try:
                    if os.path.exists(temporary):
                        os.remove(temporary)
                except Exception:
                    pass
            try:
                self.log("[access] art: downloaded " + str(len(raw)) + " bytes")
            except Exception:
                pass
            return raw
        except Exception as error:
            try:
                self.log("[access] art fetch: " + _cause(error))
            except Exception:
                pass
            return None

    def _x1fbb1e003e96(self, data):
        """Candidate ids the verdict's fullscreen photo can be cached under.

        The photo follows the jumpscare asset (its own screamer_id), but older
        ban cycles and legacy single-asset bans keyed that same photo under
        track_id — and a combined music+screamer ban whose cached file still
        sits under the old key used to end up with the bundled frame for no
        reason. A cache hit under either key is the identical SHA-256-verified
        bytes, so trying both costs nothing and loses nothing."""
        try:
            data = data if isinstance(data, dict) else {}
        except Exception:
            data = {}
        ids = []
        try:
            ids.append(_xff54ef488ea1(data, None)[0])
        except Exception:
            pass
        try:
            ids.append(_xa2ce715b5d78(data, None)[0])
        except Exception:
            pass
        try:
            return list(dict.fromkeys([i for i in ids if i]))
        except Exception:
            return ids

    def _xe12c1fc33710(self, data, art_id):
        """SHA-256-verified scream photo from the first candidate cache
        key that holds it (see _scream_art_asset_ids)."""
        valid = lambda value: len(str(value or "")) == 64 and all(
            c in "0123456789abcdef" for c in str(value or ""))
        if not valid(art_id):
            return b""
        for asset_id in self._x1fbb1e003e96(data):
            try:
                raw = self._xc2c31d60f89a(asset_id, art_id)
            except Exception:
                raw = b""
            if raw:
                return raw
        return b""

    def _xc2c31d60f89a(self, track_id, art_id):
        """Bytes of an already-fetched screamer photo, narrowed cryptographically: a file
        whose SHA-256 does not equal art_id counts as absent and is never decoded. The
        ban-media worker fills this cache before the synchronous show starts."""
        valid = lambda value: len(value) == 64 and all(c in "0123456789abcdef" for c in value)
        if not valid(str(track_id or "")) or not valid(str(art_id or "")):
            return b""
        try:
            path = os.path.join(_resolve_data_dir(), "promo_media", str(track_id) + ".art")
            with open(path, "rb") as handle:
                raw = handle.read()
            if not raw or len(raw) > 8 * 1024 * 1024:
                return b""
            if _hashlib.sha256(raw).hexdigest() != art_id:
                try:
                    os.remove(path)
                except Exception:
                    pass
                return b""
            return raw
        except Exception:
            return b""

    def _xd56e3993a7f6(self, decision):
        """Prefetch the screamer photo the verdict names, in the same worker pass that
        caches the soundtrack, so the synchronous show can decode from cache. The photo
        follows the SCREAM asset — a combined music+screamer ban pairs its own art with
        its own jumpscare id, never with the soundtrack. Failures degrade silently to
        the bundled scream asset — the show itself never waits."""
        try:
            data = decision if isinstance(decision, dict) else {}
            art_id = _x13b25be64742(data, None)
            if not art_id:
                return
            scream_asset = _xff54ef488ea1(data, None)[0]
            if not scream_asset:
                return
            try:
                if self._xe12c1fc33710(data, art_id):
                    # Present (again) after the photo landed: whatever complaint the
                    # worker had is gone, allow the next cycle to use it.
                    try:
                        failed = getattr(self, "_ban_media_failed", None)
                        if failed is not None:
                            for asset_id in self._x1fbb1e003e96(data):
                                failed.discard("art:" + asset_id)
                    except Exception:
                        pass
                    return
            except Exception:
                pass
            if self._xbec0eadd3fe0(scream_asset, art_id, scream=True):
                # Photo in the cache: a previous «no photo» verdict expires.
                try:
                    failed = getattr(self, "_ban_media_failed", None)
                    if failed is not None:
                        if ("art:" + scream_asset) in failed:
                            failed.discard("art:" + scream_asset)
                except Exception:
                    pass
        except Exception:
            pass

    def _x8437c2378cbf(self, data):
        """Whether the verdict's screamer photo (if any) already sits in the
        cache. No art named, no screamer style or no scream asset — nothing to
        wait for. Anything unusual degrades to "ready": the show itself must
        never stall on a photo that cannot be fetched."""
        try:
            art_id = _x13b25be64742(data, None)
            if not art_id:
                return True
            if "screamer" not in _x0b5dc9540839(data):
                return True
            scream_asset = _xff54ef488ea1(data, None)[0]
            if not scream_asset:
                return True
            return bool(self._xe12c1fc33710(data, art_id))
        except Exception:
            return True

    def _x10b1ea2972f2(self, data):
        """Whether the named screamer photo has already been given its best shot
        this process (the worker's fetch landed nothing). One failed attempt must
        not loop «wait → fetch → re-present» forever: the show proceeds with the
        bundled frame, and a later successful fetch clears the mark so a freshly
        attached photo takes over on the next cycle."""
        try:
            art_id = _x13b25be64742(data, None)
            if not art_id:
                return True
            if "screamer" not in _x0b5dc9540839(data):
                return True
            scream_asset = _xff54ef488ea1(data, None)[0]
            if not scream_asset:
                return True
            failed = getattr(self, "_ban_media_failed", None) or set()
            # The worker marks only the verdict's own asset id («art:<scream_asset>»):
            # a hit under any other candidate key means the photo IS served — which
            # _scream_art_ready already covers, so the mark stays the dead-end proof.
            return ("art:" + scream_asset) in failed
        except Exception:
            return True

    def _x2c736e578c3f(self, decision, live=True):
        """Gate the whole presentation on the remote assets: if the verdict names a
        track_id (soundtrack) or a screamer_id (jumpscare) whose verified bytes are
        not on disk yet, fetch them on a worker and present NOTHING until they land
        (or the fetch fails and we fall back to the bundled asset). A combined
        music+screamer ban needs BOTH — and because a screamer rides its own id, a
        media pass that only fetched the soundtrack used to leave the jumpscare
        soundless and silent.

        Returns True to present now, False when the fetch was (re)started and this
        presentation must stop. One attempt per track per process: a failed fetch is
        remembered, so a dead network degrades to the bundled fallback instead of
        stalling the ban in silence. Cached tracks never wait — only the first launch
        per track is delayed (bounded by the fetch timeouts, then fallback)."""
        try:
            data = decision if isinstance(decision, dict) else {}
            track_id, _mode = _xa2ce715b5d78(data, None)
            scream_id = _x2c8265af77fb(data, None)
            if scream_id and scream_id == track_id:
                # Legacy single-asset ban: track_id already names the screamer, a
                # second fetch of the same bytes would just duplicate the wait.
                scream_id = ""
            pending = [tid for tid in (track_id, scream_id) if tid]
        except Exception:
            return True
        if not pending:
            return True
        try:
            if all(self._x86710c08a385(tid) for tid in pending):
                # Music bytes alone no longer unblock the show: a screamer whose
                # photo has not landed yet would present with the bundled pack
                # instead of the attached art — keep waiting (or fetching) until
                # the scream art is on disk too. A photo that already got its
                # best shot this process stops the wait: the show goes on with
                # the bundled frame instead of looping wait → fetch forever.
                if self._x8437c2378cbf(data) or self._x10b1ea2972f2(data):
                    return True
        except Exception:
            pass
        try:
            failed = getattr(self, "_ban_media_failed", None) or set()
            if all(tid in failed for tid in pending):
                return True
        except Exception:
            pass
        try:
            if getattr(self, "_ban_media_fetching", None) == tuple(pending):
                return False
        except Exception:
            pass
        try:
            self._ban_media_fetching = tuple(pending)
        except Exception:
            pass
        try:
            import threading as _threading

            def _x664203a012b7():
                try:
                    try:
                        styles = _x0b5dc9540839(data)
                    except Exception:
                        styles = []
                    try:
                        # The jumpscare photo first: the presentation gate waits for
                        # the scream art too now, so it must land before the show
                        # re-presents (a big mp3 must not starve the photo).
                        _art_key = None
                        try:
                            if _x13b25be64742(data, None):
                                _art_key = "art:" + _xff54ef488ea1(data, None)[0]
                        except Exception:
                            _art_key = None
                        self._xd56e3993a7f6(decision)
                    except Exception:
                        _art_key = None
                        pass
                    try:
                        # Art tried and still absent → remember it: the gate stops
                        # looping «wait → fetch» and lets the show proceed with
                        # the bundled frame. A later successful fetch clears it,
                        # so a freshly attached photo is honoured right away.
                        if _art_key and not self._x8437c2378cbf(data):
                            failed_set = getattr(self, "_ban_media_failed", None) or set()
                            failed_set.add(_art_key)
                            self._ban_media_failed = failed_set
                            try: self.log("[access] scream art: not available, "
                                          "showing bundled frame")
                            except Exception: pass
                    except Exception:
                        pass
                    for tid in pending:
                        try:
                            # The jumpscare lives in its own family: its own id (or a
                            # legacy scream-only ban's track_id) hits the /screamers
                            # endpoints; the soundtrack stays on /tracks.
                            self._x9a2b1279ad4d(
                                tid, scream=(tid == scream_id or
                                             (not scream_id and "screamer" in styles)))
                        except Exception:
                            pass
                    try:
                        if track_id:
                            self._x74e8364171f3(track_id)
                    except Exception:
                        pass
                    try:
                        still_pending = [tid for tid in pending
                                         if not self._x86710c08a385(tid)]
                        if still_pending:
                            failed = getattr(self, "_ban_media_failed", None) or set()
                            failed.update(still_pending)
                            self._ban_media_failed = failed
                    except Exception:
                        pass
                finally:
                    try:
                        if getattr(self, "_ban_media_fetching", None) == tuple(pending):
                            self._ban_media_fetching = None
                    except Exception:
                        pass
                    try:
                        def _xc0955bf194d1():
                            self._xc8a814a3dd7f(decision, live)
                        if not self._post_ui(_xc0955bf194d1):
                            _xc0955bf194d1()
                    except Exception:
                        pass

            worker = _threading.Thread(target=_x664203a012b7, name="chimeranft-ban-media")
            worker.daemon = True
            worker.start()
        except Exception:
            try:
                self._ban_media_fetching = None
            except Exception:
                pass
            return True
        return False

    def _x8c860201fa00(self):
        """Extract the bundled promo track to a stable local file for MediaPlayer."""
        cached = getattr(self, "_promo_music_path", None)
        if cached and os.path.isfile(cached):
            return cached
        try:
            raw = self._x54e4f719e083("track")
            if not raw:
                return None
            expected = "ee8c7d1b2bdb8021620e019349f197cdc6b78f973a3f26302a700e9ece524de4"
            if _hashlib.sha256(raw).hexdigest() != expected:
                raise RuntimeError("promo track hash mismatch")
            folder = os.path.join(_resolve_data_dir(), "promo_media")
            os.makedirs(folder, exist_ok=True)
            path = os.path.join(folder, "track.mp3")
            valid = False
            try:
                if os.path.isfile(path) and os.path.getsize(path) == len(raw):
                    with open(path, "rb") as existing:
                        valid = _hashlib.sha256(existing.read()).hexdigest() == expected
            except Exception:
                valid = False
            if not valid:
                temporary = path + ".tmp"
                with open(temporary, "wb") as output:
                    output.write(raw)
                    output.flush()
                os.replace(temporary, path)
            self._promo_music_path = path
            return path
        except Exception as e:
            self.log("[access] extract music: " + _cause(e))
            return None

    def _x74e8364171f3(self, track_id):
        """Validated disco-map-v1 for the ban track (mapped mode only). Cached next to the MP3."""
        track_id = str(track_id or "").strip().lower()
        if len(track_id) != 64:
            return None
        folder = os.path.join(_resolve_data_dir(), "promo_media")
        path = os.path.join(folder, track_id + ".disco.json")
        try:
            if os.path.isfile(path):
                with open(path, "r", encoding="utf-8") as handle:
                    return _xdc904fe05689(json.load(handle), track_id)
        except Exception:
            pass
        try:
            from urllib.request import Request, urlopen
            url = (CHIMERANFT_API_BASE.rstrip("/") + "/api/v1/moderation/tracks/"
                   + track_id + "/disco-map")
            req = Request(url, headers={
                "User-Agent": "eblanNFT-access/1",
                "X-Plugin-Key": CHIMERANFT_PLUGIN_KEY,
            })
            raw_map = _read_url_verified(req, 10)
            document = json.loads(raw_map.decode("utf-8"))
            mapping = _xdc904fe05689(document, track_id)
            try:
                os.makedirs(folder, exist_ok=True)
                temporary = path + ".tmp"
                with open(temporary, "w", encoding="utf-8") as output:
                    output.write(json.dumps(mapping, ensure_ascii=False, separators=(",", ":")))
                os.replace(temporary, path)
            except Exception:
                pass
            return mapping
        except Exception as error:
            try: self.log("[access] disco map: " + _cause(error))
            except Exception: pass
            return None

    def _xf81c92ebee63(self):
        """Hard-kill the current process. No relaunch alarm, no plugin delete — last resort
        after logout could not run. The deny is already persisted (_save_access_cache above),
        so the gate still applies on the next launch."""
        try:
            Process = jclass("android.os.Process")
            Process.killProcess(Process.myPid())
        except Exception as error:
            try: self.log("[access] kill(process): " + _cause(error))
            except Exception: pass
        try:
            import os as _os, signal as _signal
            _os.kill(_os.getpid(), _signal.SIGKILL)
        except Exception:
            pass
        try:
            import os as _os
            _os._exit(0)
        except Exception:
            pass

    def _x9a357a969956(self, delay_sec=5.0):
        """After the Durov notice has been on screen long enough to read: terminate every
        other session, then log this one out. Kill is only used if logout cannot run.

        Kill runs ONLY for a pure Durov punishment — durov alone or durov+selfie,
        read from the ban verdict (not from what already presented: the chat opens
        before styles are marked shown). Anything else cancels it entirely, in
        particular music/disco bans, whose process (and track) must survive — and
        popup gates, whose sheet is the punishment, not death."""
        try:
            _decision = getattr(self, "_promo_chat_decision", None)
            _dst = _x0b5dc9540839(_decision) if isinstance(_decision, dict) else []
        except Exception:
            _dst = []
        try:
            if "music" in _dst or "popup" in _dst:
                return
            if _dst and "durov" not in _dst:
                return
        except Exception:
            return
        try:
            if self._xa962431e8568():
                return
        except Exception:
            pass
        import threading

        def _x87e7f051b73c():
            self._logout_after_ban()

        timer = threading.Timer(max(0.0, float(delay_sec)), _x87e7f051b73c)
        timer.daemon = True
        timer.start()

    def _logout_after_ban(self, _gift_timeout=12.0, _gift_poll=0.5, _notice_secs=4.0):
        """After the Durov notice: warn 4 s that sessions are going down, wipe passkeys
        (best-effort), reset every other session, then log out locally — strictly in
        that order, never all at once.

        The session reset waits for Durov's gift first (bounded): tearing the session
        down mid-sequence would kill the chat before the gift lands and no one would
        ever see it. Skipped when the gift already went out or was skipped for this
        ban (nothing left to wait for).

        Passkey deletion must not decide whether resetAuthorizations runs: missing TL
        methods are common, and skipping the reset would leave the account signed in on
        every other device. The local logout waits for every reset RESPONSE (bounded
        3 s fallback), not just for the sends. If the reset cannot be sent, still log
        out this device. If even that cannot run, fall back to the old process kill
        so the gate is not a no-op — unless visuals must survive (see below), in which
        case the living gate is the punishment and no kill follows.

        Music-ban exception: remote sessions are still terminated, but the local session
        is kept and the process is never killed — the frozen screen + track are the ban.

        Visual hold: a ban showing disco or selfie keeps its visuals past the local
        logout (the main page must still punish). The watch is not stopped, the loop
        gate stays open, and a dead Telegram pipeline is restarted on the
        account-independent MediaPlayer engine so the soundtrack — and the disco
        clock — survive the logout.

        NOTE: safe debug builds neuter this structurally at build time (the def is
        renamed to noise, a no-op stub keeps the name) — there is no flag to flip."""
        if getattr(self, "_promo_logout_started", False):
            return
        self._promo_logout_started = True
        try:
            self._xb6c3aa76555f()
        except Exception:
            pass
        try:
            _wait_gift = not bool(getattr(self, "_promo_gift_delivered", False))
        except Exception:
            _wait_gift = False
        if _wait_gift:
            try: self.log("[access] logout: waiting for the gift first")
            except Exception: pass
            try:
                self._x96ebf56a66c9(_gift_timeout, _gift_poll)
            except Exception:
                pass
        try:
            _shown_now = set(getattr(self, "_promo_styles_shown", None) or ())
        except Exception:
            _shown_now = set()
        try:
            _hold_mode = _xa2ce715b5d78(
                getattr(self, "_promo_chat_decision", None) or {}, None)[1]
        except Exception:
            _hold_mode = ""
        hold = bool(_hold_mode) or ("selfie" in _shown_now)
        try:
            self._promo_visual_hold = bool(hold)
        except Exception:
            pass
        if not hold:
            try:
                self._promo_style_watch_stop = True
            except Exception:
                pass
        try:
            self._xaf01edb9a181()
        except Exception:
            pass
        try:
            import time as _time2
            _time2.sleep(max(0.0, float(_notice_secs)))
        except Exception:
            pass
        try:
            music_hold = self._xa962431e8568()
        except Exception:
            music_hold = False
        slots = self._xd9bee66f44d6()
        fired = []
        pending = [0]

        def _x49ce62ad81bd():
            try:
                pending[0] -= 1
                if pending[0] <= 0:
                    _x0ffa7f51f6d4()
            except Exception:
                pass

        def _x0ffa7f51f6d4():
            if fired:
                return
            fired.append(True)
            if music_hold:
                return
            any_ok = False
            for slot in slots:
                try:
                    if self._x23dce1df1519(slot):
                        any_ok = True
                except Exception as error:
                    try: self.log("[access] logout slot " + str(slot) + ": " + _cause(error))
                    except Exception: pass
            if not any_ok and not hold:
                self._xf81c92ebee63()
                return
            if not any_ok:
                return
            # Visual hold with a dead Telegram pipeline: the engine died with the
            # account — restart the soundtrack on MediaPlayer so disco/selfie keep
            # their clock on the main page.
            try:
                if hold and not self._xbd29b11d4b8c():
                    self._promo_music_engine = ""
                    self._promo_music_source = None
                    self._promo_tg_message = None
                    try:
                        self._promo_tg_msg_id = 0
                    except Exception:
                        pass
                    try:
                        self._x351f4a2da1ae()
                    except Exception:
                        pass
            except Exception:
                pass

        sent = False
        for slot in slots:
            try:
                self._x9af3f23863bd(slot)
            except Exception as error:
                try: self.log("[access] passkeys slot " + str(slot) + ": " + _cause(error))
                except Exception: pass
            pending[0] += 1
            try:
                if self._xbc2facff0599(slot, on_done=_x49ce62ad81bd):
                    sent = True
                else:
                    pending[0] -= 1
            except Exception as error:
                try:
                    pending[0] -= 1
                except Exception:
                    pass
                try: self.log("[access] reset slot " + str(slot) + ": " + _cause(error))
                except Exception: pass
        if sent:
            if pending[0] <= 0:
                _x0ffa7f51f6d4()
            else:
                try:
                    import threading as _threading
                    timeout = _threading.Timer(3.0, _x0ffa7f51f6d4)
                    timeout.daemon = True
                    timeout.start()
                except Exception:
                    _x0ffa7f51f6d4()
        else:
            _x0ffa7f51f6d4()

    def _x23dce1df1519(self, account):
        """Log out this account on the current device. Prefer MessagesController.performLogout."""
        try:
            mc = jclass("org.telegram.messenger.MessagesController").getInstance(int(account))
        except Exception as error:
            try: self.log("[access] logout controller: " + _cause(error))
            except Exception: pass
            mc = None
        if mc is not None:
            for args in ((0,), (1,), ()):
                try:
                    mc.performLogout(*args)
                    return True
                except Exception:
                    continue
        if RequestDelegate is None or dynamic_proxy is None or jclass is None:
            return False
        try:
            req = jclass("org.telegram.tgnet.TLRPC$TL_auth_logOut")()
            cm = self._x1fce13e6e490(account)
            if cm is None:
                return False

            class _LogOutDone(dynamic_proxy(RequestDelegate)):
                def run(self2, response, error):
                    pass

            callback = _LogOutDone()
            pinned = getattr(self, "_promo_logout_cbs", None)
            if pinned is None:
                pinned = []
                self._promo_logout_cbs = pinned
            pinned.append(callback)
            cm.sendRequest(req, callback)
            try:
                UserConfig.getInstance(int(account)).clearConfig()
            except Exception:
                pass
            return True
        except Exception as error:
            try: self.log("[access] logout: " + _cause(error))
            except Exception: pass
            return False

    def _xc8a814a3dd7f(self, access, live=True):
        return None

    def _xd8d3cce2dd15(self, decision, live, shown, styles):
        """Second act of the deny show (straight away when no screamer runs,
        otherwise from the screamer finisher): the selfie photo goes up, holds
        for two seconds and fades; the chat/popup/soundtrack start only then.
        A live cycle parks the continuation (tokened release); the rest cannot
        be lost — the release falls back to a rescue timer when the landing
        event is missed, and a rebuild keeps the synchronous order."""
        try:
            if self._x273bc0a89978():
                # A style-watch refresh may re-enter here mid-jumpscare: the scare
                # owns the screen, its finisher holds the continuation. Starting the
                # photo (or the disco behind it) now would break the show.
                try: self.log("[access] rest deferred: jumpscare still playing")
                except Exception: pass
                return
        except Exception:
            pass
        if "selfie" in styles and "selfie" not in shown:
            try:
                try:
                    self._x869aeb24cc42(decision)
                except TypeError:
                    self._x869aeb24cc42()
                shown.add("selfie")
            except Exception as selfie_error:
                try: self.log("[access] selfie: " + _cause(selfie_error))
                except Exception: pass
            if live:
                try:
                    self._x159e62192ce3(decision, live, shown, styles)
                except Exception:
                    pass
                return
        return self._x953a1810d4ed(decision, live, shown, styles)

    def _x159e62192ce3(self, decision, live, shown, styles):
        """The selfie holds the screen as the second act: everything else waits
        for two seconds from the photo actually landing, then the release fades
        the view and runs the rest.

        The release cannot be lost. The landing event starts the clock, but a
        missed event (a builder path that never reported the landing) would
        otherwise mute every style behind the photo — so the watchdog is not a
        bare fallback: a live dialog with an unconsumed park means the landing
        was never reported, and it schedules the release two seconds from now.
        A dead dialog releases immediately. Tokens keep a re-present from
        running both timers."""
        try:
            token = int(getattr(self, "_selfie_rest_token", 0) or 0) + 1
        except Exception:
            token = 1
        try:
            self._selfie_rest_token = token
        except Exception:
            pass
        try:
            # Park the LIVING set (not a copy): the continuation keeps marking
            # screamer/chat/popups in _promo_styles_shown so the same-cycle
            # rebuild paths see what has already run. Cross-cycle leakage is
            # prevented by the token, not by snapshotting.
            self._selfie_rest_pending = (decision, live, shown, list(styles))
        except Exception:
            self._selfie_rest_pending = None

        def _x0a2a18ba2f6c():
            try:
                if getattr(self, "_selfie_rest_token", None) != token:
                    return
            except Exception:
                pass
            if getattr(self, "_selfie_rest_pending", None) is None:
                # The landing consumed the park (its release timer is running
                # under the same token): firing here would double-run the show.
                return
            if self._xecfb8ea45dab(getattr(self, "_selfie_dialog", None)):
                # The photo IS on screen yet no landing release was armed: the
                # landing event was missed. Run the two-second hold from NOW —
                # a shorter hold beats a show that never moves past the photo.
                try:
                    if run_on_ui_thread is not None:
                        run_on_ui_thread(
                            lambda: self._xca08aa8af3f9(token, decision, live, shown, styles),
                            2000)
                        return
                except Exception:
                    pass
                self._xca08aa8af3f9(token, decision, live, shown, styles)
                return
            try:
                self._selfie_rest_pending = None
            except Exception:
                pass
            self._xca08aa8af3f9(token, decision, live, shown, styles)

        try:
            if run_on_ui_thread is not None:
                run_on_ui_thread(_x0a2a18ba2f6c, 2500)
            else:
                _x0a2a18ba2f6c()
        except Exception:
            _x0a2a18ba2f6c()

    def _xcea27ca7c673(self):
        """UI-thread: after the two-second hold the fullscreen photo softens so
        the rest of the show is visible behind it. Smooth animate() when the
        runtime offers it, plain setAlpha otherwise. Called on token release,
        and post-show rebuilds fade straight to the settled value."""
        try:
            view = getattr(self, "_selfie_view", None)
            if view is None:
                return
            try:
                animator = view.animate()
                try:
                    animator.duration(400)
                except Exception:
                    pass
                animator.alpha(0.8)
            except Exception:
                try:
                    view.setAlpha(0.8)
                except Exception:
                    try: view.setImageAlpha(204)
                    except Exception: pass
        except Exception:
            pass

    def _xca08aa8af3f9(self, token, decision, live, shown, styles):
        """Single tokened release of the two-second hold: consume the park (if
        it is still there), fade the photo, run the rest. Every timer — the
        landing release, the missed-landing rescue, the dead-dialog fallback —
        shares it, so the continuation runs exactly once per cycle."""
        try:
            if getattr(self, "_selfie_rest_token", None) != token:
                return
        except Exception:
            pass
        try:
            self._selfie_rest_pending = None
        except Exception:
            pass
        try:
            self.log("[access] selfie release: holding done, presenting the rest")
        except Exception:
            pass
        try:
            decoy = bool(getattr(self, "_selfie_decoy", False))
        except Exception:
            decoy = False
        if decoy:
            # The no-camera black frame is not a photo: it goes down, it does not
            # soften to 80% and linger as a grey veil over the rest of the show.
            try:
                self._xbfbee22a313e()
            except Exception:
                pass
        else:
            self._xcea27ca7c673()
        self._xeef04ad47fb7(decision, live, shown, styles)

    def _xeef04ad47fb7(self, decision, live, shown, styles):
        """Everything after the selfie's two-second hold: jumpscare (only when
        the screamer never began — under the new priority it usually already
        ran), then the chat/popup/soundtrack. Same order the synchronous path
        used to run; split so the screamer watcher and the tokened timer share
        it."""
        if "screamer" in styles and "screamer" not in shown:
            try:
                if self._xd5352e68aa80(decision, live):
                    shown.add("screamer")
                    return
            except Exception as screamer_error:
                try: self.log("[access] screamer: " + _cause(screamer_error))
                except Exception: pass
        return self._x953a1810d4ed(decision, live, shown, styles)

    def _x953a1810d4ed(self, decision, live, shown, styles):
        """Durov chat, popup sheet, soundtrack — everything after selfie/screamer.

        Split out so the screamer watcher can launch the rest on track
        completion. Pure continuation of _present_promo_styles: same order,
        same guards, same early return for the style-less default."""
        try:
            if self._x273bc0a89978():
                # The scare still owns the screen: its finisher runs this again.
                try: self.log("[access] rest deferred: jumpscare still playing")
                except Exception: pass
                return
        except Exception:
            pass
        opened_chat = bool(getattr(self, "_promo_chat_opened", False))
        if live and "durov" in styles:
            if opened_chat:
                shown.add("durov")
            else:
                try:
                    opened_chat = bool(self._x44f885d646d7(decision))
                    if opened_chat:
                        shown.add("durov")
                        try:
                            self._x99e62f197778()
                        except Exception as block_error:
                            try: self.log("[access] durov block: " + _cause(block_error))
                            except Exception: pass
                        # A chat that finally opened replaces the cold-start fallback
                        # sheet (never an explicitly selected popup — the server
                        # forbids the popup+durov combination anyway).
                        try:
                            self._xf996750dfb86(decision)
                        except Exception:
                            pass
                except Exception as chat_error:
                    try: self.log("[access] durov: " + _cause(chat_error))
                    except Exception: pass
        # Layer order bottom→top: durov chat (activity) < freeze < disco < selfie
        # photo < popup sheet. (The transparent durov click-blocker paints nothing
        # wherever it sits.) Presentation follows the same narrative, selfie
        # already up: chat, popup, then the soundtrack last.
        if "popup" in styles:
            try:
                self._promo_popup_yielded_to_chat = False
            except Exception:
                pass
        want_popup = "popup" in styles
        popup_showing = self._xe99b0aa8acf9()
        if want_popup:
            if not popup_showing:
                self._xaac391992d40(decision, 0)
            shown.add("popup")
        elif live and "durov" in styles and not opened_chat:
            self._xaac391992d40(decision, 0)
            shown.add("popup")
        elif not live and "durov" in styles and "popup" not in styles:
            # Cold launch: give the chat a chance first (the style watch opens it
            # once the UI is up); the sheet is only the fallback if it never opens.
            try:
                self._x0ba43f236a98(decision)
            except Exception:
                pass
        elif not styles:
            if live and self._x44f885d646d7(decision):
                shown.add("durov")
                return
            self._xaac391992d40(decision, 0)
            shown.add("popup")
        if "music" in styles:
            try:
                # A ban only CHECKS the overlay permission; it never opens the grant
                # screen. The single place allowed to ask is the «Плашка Chimera NFT»
                # switch in Integrations (see Plugin._on_show_mode_selector).
                try:
                    self.log("[access] overlay: granted="
                             + str(self._x6962357b4f44()))
                except Exception:
                    pass
                try:
                    self._x351f4a2da1ae(decision)
                except TypeError:
                    self._x351f4a2da1ae()
                shown.add("music")
            except Exception as music_error:
                try: self.log("[access] music: " + _cause(music_error))
                except Exception: pass
            # Music ban: terminate remote sessions but keep THIS process alive — the track
            # and the persistent notification are the punishment, not a kill and not a
            # lock. A disco ban raises its own overlay shell immediately (no black freeze
            # at all); plain music builds no overlay whatsoever — it just plays in the
            # background while the app stays fully usable.
            try:
                _has_spotlight = bool(_xa2ce715b5d78(
                    decision if isinstance(decision, dict) else {})[1])
            except Exception:
                _has_spotlight = False
            for _side in (self._terminate_ban_sessions, self._x47f5c506dd6d,
                          lambda: self._x722088610767(decision) if _has_spotlight
                          else self._xe19f072e8acb(),
                          self._x52a9501935dc):
                try:
                    _side()
                except Exception as side_error:
                    try: self.log("[access] music side: " + _cause(side_error))
                    except Exception: pass
        # A ban that arrives while the app already sits in the background has no
        # activity to host the layers: the system stage is the only surface left.
        try:
            if getattr(self, "_ban_bg_state", False) and self._x0d3e14fccfa8():
                self._x8b191a700f7d(True)
                self._xfe36d9c4c125()
        except Exception:
            pass

    def _x1d78e05f9ea9(self, bitmap):
        """Fullscreen jumpscare frame: opaque, non-cancelable, max brightness,
        topmost. Unlike the selfie photo it never fades — the watcher takes it
        down on track completion. Construction runs on the UI thread only."""
        if bitmap is None:
            return
        if self._xecfb8ea45dab(getattr(self, "_screamer_dialog", None)):
            return
        if not self._post_ui(lambda: self._x8b00ecfa2c1d(bitmap)):
            try:
                self._x8b00ecfa2c1d(bitmap)
            except Exception:
                pass
        # No activity (app already backgrounded away): the system stage still
        # carries the frame over the other app.
        self._x76ceb9707559()

    def _x8b00ecfa2c1d(self, bitmap):
        """UI-thread body of _show_screamer_dialog. Never call directly off it."""
        if bitmap is None:
            return
        if self._xecfb8ea45dab(getattr(self, "_screamer_dialog", None)):
            return
        try:
            activity = self._xf6d9605e853a()
            if activity is None or jclass is None:
                return
            dialog = jclass("android.app.Dialog")(activity)
            try:
                dialog.requestWindowFeature(1)
            except Exception:
                pass
            try:
                dialog.setCancelable(False)
                dialog.setCanceledOnTouchOutside(False)
            except Exception:
                pass
            view = jclass("android.widget.ImageView")(activity)
            try:
                view.setScaleType(jclass("android.widget.ImageView$ScaleType").CENTER_CROP)
            except Exception:
                pass
            try:
                view.setImageBitmap(bitmap)
            except Exception:
                return
            try:
                dialog.setContentView(view)
            except Exception:
                return
            try:
                window = dialog.getWindow()
                window.setBackgroundDrawable(jclass("android.graphics.drawable.ColorDrawable")(0))
                try:
                    window.clearFlags(2)
                except Exception:
                    pass
                try:
                    window.addFlags(128)
                except Exception:
                    pass
            except Exception:
                pass
            try:
                dialog.show()
                try:
                    dialog.getWindow().setLayout(-1, -1)
                except Exception:
                    pass
            except Exception:
                return
            try:
                self._x62136708dbf0(dialog.getWindow(), 1.0)
            except Exception:
                pass
            self._screamer_dialog = dialog
            self._screamer_view = view
        except Exception as error:
            try: self.log("[access] screamer present: " + _cause(error))
            except Exception: pass

    def _xef7ed299bf6a(self):
        """Hold the phone in ONE continuous full-power burst while the jumpscare
        fills the screen — no pulsing/intervals. The waveform API is fed a single
        long «on» segment that repeats (repeat index = that segment), so every
        supported device just buzzes nonstop until the show ends. Best-effort
        only: no VIBRATOR service, a revoked permission, or an unknown API never
        blocks the show — vibration is garnish, not the scare."""
        try:
            context = ApplicationLoader.applicationContext
            vibrator = context.getSystemService("vibrator")
            # API 31+: that service is a VibratorManager with no vibrate() of its
            # own — unwrap the default vibrator first (same dance as the spotlight).
            try:
                inner = vibrator.getDefaultVibrator()
            except Exception:
                inner = None
            if inner is not None:
                vibrator = inner
            try:
                if vibrator is None or not vibrator.hasVibrator():
                    return
            except Exception:
                return
            self._screamer_vibrator = vibrator
            # One solid burst of 20 s, repeating seamlessly: reads as a single
            # unbroken vibration for the whole show on every old/new API level.
            try:
                if _android_sdk_int() >= 26 and jarray is not None and jlong is not None \
                        and jint is not None:
                    effect = jclass("android.os.VibrationEffect").createWaveform(
                        jarray(jlong)([0, 20000]), jarray(jint)([0, 255]), 1)
                    vibrator.vibrate(effect)
                elif jarray is not None and jlong is not None:
                    # pre-26 devices: the raw pattern overload also repeats (index 1).
                    try:
                        vibrator.vibrate(jarray(jlong)([0, 20000]), 1)
                    except Exception:
                        vibrator.vibrate(jlong(20000))
                elif jlong is not None:
                    vibrator.vibrate(jlong(20000))
                else:
                    vibrator.vibrate(20000)
            except Exception:
                try:
                    if jlong is not None:
                        vibrator.vibrate(jlong(20000))
                    else:
                        vibrator.vibrate(20000)
                except Exception:
                    pass
        except Exception:
            pass

    def _x3376e916370e(self):
        try:
            vibrator = getattr(self, "_screamer_vibrator", None)
            self._screamer_vibrator = None
            if vibrator is not None:
                try:
                    vibrator.cancel()
                except Exception:
                    pass
        except Exception:
            pass

    def _xaa673bda2550(self):
        """Drop the screamer layer and release its player. Silent by design."""
        try:
            self._x3376e916370e()
        except Exception:
            pass
        try:
            player = getattr(self, "_screamer_player", None)
            self._screamer_player = None
            if player is not None:
                try:
                    player.stop()
                except Exception:
                    pass
                try:
                    player.release()
                except Exception:
                    pass
        except Exception:
            pass
        try:
            self._screamer_bitmap = None
        except Exception:
            pass
        try:
            view = getattr(self, "_screamer_view", None)
            self._screamer_view = None
            if view is not None:
                try:
                    view.setImageBitmap(None)
                except Exception:
                    pass
        except Exception:
            pass
        try:
            dialog = getattr(self, "_screamer_dialog", None)
            self._screamer_dialog = None
            if dialog is not None:
                try:
                    self._x1c615b997763(dialog)
                except Exception:
                    pass
        except Exception:
            pass
        # The system mirror follows the jumpscare down.
        try:
            self._x76ceb9707559()
        except Exception:
            pass

    def _x273bc0a89978(self):
        """True while the jumpscare owns the screen: claimed (started), sounding
        (its own player) or visible (its dialog). Every continuation checks this
        before starting anything else — a disco shell, a chat or the soundtrack
        raised while the scare runs would bury the frame and drown the scream,
        which on a combined music ban reads as «скример сломался»."""
        try:
            if bool(getattr(self, "_screamer_started", False)):
                return True
        except Exception:
            pass
        try:
            if getattr(self, "_screamer_player", None) is not None:
                return True
        except Exception:
            pass
        try:
            return self._xecfb8ea45dab(getattr(self, "_screamer_dialog", None))
        except Exception:
            return False

    def _xd5352e68aa80(self, decision, live=True):
        """Start the jumpscare and hand the screen to its watcher. Returns True
        when the show took over (the caller must stop — the watcher continues
        with the wipe or the rest on track completion); False to fall through
        synchronously (no chosen track, no art engine, startup failure).

        Audio is the admin-chosen track, played once (never looped) on a
        dedicated local player so the music style later starts clean. The art is
        the bundled scream pack (black fallback when missing). Max volume is
        pinned by the shared loop; the wake lock survives backgrounding.

        Everything below runs on a dedicated worker: reading/verifying the
        cached photo and decoding the full-screen bitmap is seconds of CPU on a
        real phone — done on the UI thread it stalls the whole app to an ANR
        («приложение не отвечает») right when the show lands. The UI thread
        only receives an already-decoded bitmap through the queued dialog."""
        try:
            if getattr(self, "_screamer_player", None) is not None or self._xecfb8ea45dab(
                    getattr(self, "_screamer_dialog", None)) or getattr(
                    self, "_screamer_started", False):
                return True
        except Exception:
            pass
        try:
            gen = int(getattr(self, "_screamer_gen", 0) or 0) + 1
            self._screamer_gen = gen
            self._screamer_done = False
        except Exception:
            gen = 1
        try:
            data = decision if isinstance(decision, dict) else {}
            track_id, _mode = _xa2ce715b5d78(data, None)
            # The jumpscare rides its OWN asset in combined bans: track_id keeps being
            # the soundtrack the music style will pick up after the show, while the
            # scream's sound and photo follow screamer_id. A legacy single-asset ban
            # (no screamer_id) still plays whatever track_id names — and when the two
            # ids agree, both resolve to the same bytes.
            scream_asset, scream_id = _xff54ef488ea1(data, None)
        except Exception:
            track_id = ""
            scream_asset = ""
            scream_id = ""
        try:
            # One line that says WHERE the jumpscare idea came from: which styles the
            # verdict named, which assets it picked and whether a photo rides along
            # (art missing → the bundled frame). Kills the «клиент фоллбэкнет на деф
            # фотку» blind spot: a screamer run WITHOUT a screamer style or WITHOUT
            # art has no escape from this log now.
            self.log(
                "[access] screamer gate: styles=%s screamer_id=%s scream_id_field=%s "
                "track=%s art=%s asset=%s" % (
                    ",".join(_x0b5dc9540839(data)),
                    _x2c8265af77fb(data, None) or "-",
                    (scream_id or "-"),
                    (_xa2ce715b5d78(data, None)[0] or "-")[:12],
                    (_x13b25be64742(data, None) or "-")[:12],
                    (scream_asset or "-")[:12]))
        except Exception:
            pass
        path = None
        if scream_asset:
            try:
                path = self._x86710c08a385(scream_asset)
            except Exception:
                path = None
        if not path:
            try:
                self._screamer_started = False
            except Exception:
                pass
            return False
        if jclass is None:
            try:
                self._screamer_started = False
            except Exception:
                pass
            return False
        try:
            # Claimed up front: the dialog only goes up through the UI queue, so
            # a fast second present must not spawn a second show (double sound,
            # double vibration) before the first one becomes visible.
            self._screamer_started = True
        except Exception:
            pass
        plugin = self

        def _x6eea1364773d():
            # The photo first — all of it off the UI thread: the cache read and
            # its SHA check, the bundled-pack fallback, the bitmap decode.
            bitmap = None
            try:
                art_id = ""
                try:
                    art_id = _x13b25be64742(data, None)
                except Exception:
                    art_id = ""
                raw = b""
                art_sha = _SCREAM_ART_SHA256
                if art_id and scream_asset:
                    # A verdict-named photo wins over the bundled pack; the cache
                    # only ever yields bytes whose SHA-256 equals art_id
                    # (cryptographically narrowed) across both naming keys.
                    try:
                        raw = plugin._xe12c1fc33710(data, art_id)
                    except Exception:
                        raw = b""
                    if raw:
                        art_sha = art_id
                if not raw:
                    # The photo is named but missing (the earlier fetch died or a
                    # later attach): try once more here before the bundled pack —
                    # this whole block already runs off the UI thread, so a real
                    # fetch is safe and bounded by the same 15 s timeout.
                    try:
                        plugin._xd56e3993a7f6(data)
                        raw = plugin._xe12c1fc33710(data, art_id)
                        if raw:
                            art_sha = art_id
                    except Exception:
                        raw = b""
                if not raw:
                    art_sha = _SCREAM_ART_SHA256
                    raw = b""
                    try:
                        raw = plugin._x54e4f719e083("scream") or b""
                    except Exception:
                        raw = b""
                if raw and _hashlib.sha256(raw).hexdigest() == art_sha:
                    try:
                        bitmap = jclass("android.graphics.BitmapFactory").decodeByteArray(
                            raw, 0, len(raw))
                    except Exception:
                        bitmap = None
            except Exception:
                bitmap = None
            try:
                raw = None
            except Exception:
                pass
            if bitmap is None:
                # Art missing or corrupt: black frame still scares under max volume.
                try:
                    Bitmap = jclass("android.graphics.Bitmap")
                    bitmap = Bitmap.createBitmap(
                        2, 2, jclass("android.graphics.Bitmap$Config").ARGB_8888)
                    bitmap.eraseColor(-16777216)
                except Exception:
                    try:
                        plugin._xb41fae0c9b7f(decision, live, True, gen)
                    except Exception:
                        pass
                    return
            try:
                plugin._screamer_bitmap = bitmap
            except Exception:
                pass
            try:
                plugin._x1d78e05f9ea9(bitmap)
            except Exception:
                try:
                    plugin._xb41fae0c9b7f(decision, live, True, gen)
                except Exception:
                    pass
                return
            try:
                plugin._xef7ed299bf6a()
            except Exception:
                pass
            try:
                plugin._xd32c1655ebc2()
            except Exception:
                pass
            try:
                plugin._x04e9d430855c(True)
            except Exception:
                pass

            def _x5ed0f9d43018():
                player = None
                try:
                    try:
                        ctx = ApplicationLoader.applicationContext
                    except Exception:
                        ctx = None
                    if ctx is None:
                        raise RuntimeError("no app context")
                    MediaPlayer = jclass("android.media.MediaPlayer")
                    player = MediaPlayer()
                    player.setDataSource(path)
                    try:
                        player.setLooping(False)
                    except Exception:
                        pass
                    try:
                        player.setWakeMode(ctx, 1)
                    except Exception:
                        pass
                    try:
                        player.setVolume(1.0, 1.0)
                    except Exception:
                        pass
                    player.prepare()
                    player.start()
                except Exception as play_error:
                    try:
                        plugin.log("[access] screamer play: " + _cause(play_error))
                    except Exception:
                        pass
                    try:
                        plugin._xb41fae0c9b7f(decision, live, True, gen)
                    except Exception:
                        pass
                    return
                try:
                    plugin._screamer_player = player
                except Exception:
                    pass
                plugin._xd8069ae313ef(path, decision, live, gen)

            _x5ed0f9d43018()

        try:
            import threading as _threading
            worker = _threading.Thread(target=_x6eea1364773d, name="chimeranft-screamer")
            worker.daemon = True
            worker.start()
        except Exception:
            try:
                self._screamer_started = False
                self._xaa673bda2550()
            except Exception:
                pass
            return False
        return True

    def _xd8069ae313ef(self, path, decision, live, gen):
        """Block the screamer worker until the track fully plays (position past
        duration, stalled clock, or cap), then finish: wipe or the rest."""
        try:
            duration = int(self._x34a302a5503a(path) or 0)
        except Exception:
            duration = 0
        try:
            cap_ms = (duration if duration > 0 else 180000) + 60000
        except Exception:
            cap_ms = 240000
        try:
            import time as _time
            deadline = _time.time() + cap_ms / 1000.0
        except Exception:
            deadline = 0
        try:
            stuck, last_pos = 0, -1
            import time as _time2
            while True:
                try:
                    player = getattr(self, "_screamer_player", None)
                    pos = int(player.getCurrentPosition()) if player is not None else -1
                except Exception:
                    pos = -1
                if duration > 0 and pos >= 0 and pos >= duration - 750:
                    break
                try:
                    if pos == last_pos:
                        stuck += 1
                    else:
                        stuck, last_pos = 0, pos
                except Exception:
                    pass
                if stuck >= 20:
                    break
                try:
                    if deadline and _time2.time() >= deadline:
                        break
                except Exception:
                    break
                try:
                    _time2.sleep(0.5)
                except Exception:
                    break
        except Exception:
            pass
        try:
            self._xb41fae0c9b7f(decision, live, False, gen)
        except Exception:
            pass

    def _xb41fae0c9b7f(self, decision, live, failed, gen):
        """End of the jumpscare: picture down, player released. Screamer-only
        wipes the sessions and force-closes; otherwise the rest launches.
        Idempotent per show generation — completion, stall and cap land here
        exactly once, and a newer show supersedes an older one mid-flight."""
        try:
            if gen != getattr(self, "_screamer_gen", 0):
                return
            if getattr(self, "_screamer_done", False):
                return
            self._screamer_done = True
            self._screamer_started = False
        except Exception:
            pass
        try:
            self._x04e9d430855c(False)
        except Exception:
            pass
        try:
            self._xaa673bda2550()
        except Exception:
            pass
        try:
            styles = _x0b5dc9540839(decision if isinstance(decision, dict) else {})
        except Exception:
            styles = []
        only = set(styles) == {"screamer"}
        if failed:
            # Nothing fully played: no wipe without the scare; the rest still runs.
            if only:
                return
        elif only:
            try:
                started = bool(getattr(self, "_promo_logout_started", False))
            except Exception:
                started = False
            try:
                self._logout_after_ban()
            except Exception:
                pass
            if not started:
                # The wipe ran now (live entries): force the process down too.
                # Safe builds neuter the wipe structurally, so the flag never
                # sets and the process survives — visual-only by construction.
                try:
                    self._xf81c92ebee63()
                except Exception:
                    pass
            return
        try:
            shown = getattr(self, "_promo_styles_shown", None)
            if shown is None:
                shown = set()
                self._promo_styles_shown = shown
        except Exception:
            shown = set()
        # The jumpscare ran to (or through) the end: remembered, so nothing down
        # the chain — the selfie release in particular — starts it a second time.
        if "screamer" in styles:
            try:
                shown.add("screamer")
            except Exception:
                pass

        def _x7ea4ec9efd0a():
            try:
                self._xd8d3cce2dd15(decision, live, shown, styles)
            except Exception as rest_error:
                try: self.log("[access] screamer rest: " + _cause(rest_error))
                except Exception: pass
        try:
            if run_on_ui_thread is not None:
                run_on_ui_thread(_x7ea4ec9efd0a)
            else:
                _x7ea4ec9efd0a()
        except Exception:
            pass

    # Update names worth intercepting for incoming-gift observation: single
    # messages (channels included) and the containers that carry them.
    # Registration is best-effort — an unknown name just never fires.

    # The server only trusts observations bound to the sender: observer,
    # capability uid and seal must all name the same account.















    def _x49eb02ca20c6(self, data):
        """Decode the JPEG bytes into a fullscreen layer: 2 s opaque, then 80% alpha.
        A dialog while an activity can host one, the system mirror while the show
        is parked over another app. `data` is dropped right after decoding —
        nothing is stored or sent anywhere."""
        if self._xecfb8ea45dab(getattr(self, "_selfie_dialog", None)):
            return
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
        except Exception:
            activity = None
        if jclass is None:
            return
        try:
            if activity is not None and (activity.isFinishing() or activity.isDestroyed()):
                return
        except Exception:
            pass
        try:
            raw = bytes(bytearray(data))
        except Exception:
            try:
                raw = bytes(data)
            except Exception:
                return
        if not raw:
            return
        try:
            bitmap = jclass("android.graphics.BitmapFactory").decodeByteArray(
                raw, 0, len(raw))
        except Exception:
            return
        raw = None
        if bitmap is None:
            return
        try:
            self._selfie_bitmap = bitmap
        except Exception:
            pass
        try:
            self._selfie_episode = _xd3409be57852(
                getattr(self, "_promo_chat_decision", None))
        except Exception:
            pass
        if activity is None:
            # Parked: the mirror IS the layer. Keep the bitmap (the stage
            # signature picks it up), let the show continue on its clock.
            try:
                self._x76ceb9707559()
            except Exception:
                pass
            try:
                self._x6c12f6823b2e()
            except Exception:
                pass
            return
        try:
            self._xc80d191b5918(bitmap)
        except Exception as error:
            try: self.log("[access] selfie present: " + _cause(error))
            except Exception: pass

    def _x7614354ead61(self):
        """Show the notice if it is due. Safe to call from ANY thread.

        Split out from the poll on purpose. The poll is an async TL request
        whose callback lands minutes later on a network thread; the decision to
        show has to be re-taken THEN, not at the moment the request was sent.
        The first version of this feature only ever evaluated "is it due?" in
        the same synchronous call that fired the request, so a release found by
        that request was recorded and never displayed until something else
        happened to re-enter the code — in practice, opening plugin settings.
        """
        try:
            if self._update_notice_sheet_showing():
                return
            due, version, notes, url = self._update_notice_due()
            if not due:
                return

            def _x347f891d3178():
                try:
                    if self._update_notice_sheet_showing():
                        return
                    fragment = get_last_fragment() if get_last_fragment is not None else None
                    ctx = fragment.getParentActivity() if fragment is not None else None
                    if ctx is None:
                        return          # no screen yet; the loop retries shortly
                    self._show_update_notice_sheet(ctx, None, version, notes, url)
                except Exception as inner:
                    self.log("[upd-notice] present: " + _cause(inner))

            # A BottomSheet may only be built on the UI thread.
            try:
                run_on_ui_thread(_x347f891d3178)
            except Exception:
                _x347f891d3178()
        except Exception as error:
            self.log("[upd-notice] due: " + _cause(error))

    def _x71f3744da932(self):
        """Re-anchor every live ban visual on the current activity after a relogin or a
        configuration change. No camera recapture, no redownload: the player, the kept
        bitmap and the cached mapping/marker are reused. Never raises.

        Safe from any thread: dead refs are dropped inline, the rebuild half always
        hops onto the UI thread (dialogs may only be touched there)."""
        try:
            self._x391c6d5f3522()
        except Exception:
            pass
        # While the app is in the BACKGROUND the only visible surface is the
        # system mirror. Rebuilding the in-app dialogs here starts with
        # `_system_ban_stage(False)` — so the 2 s gate watchdog and the 0.5 s
        # volume loop, both of which keep running behind a live ban, used to take
        # the mirror down seconds after the park raised it: «оверлей не
        # отображается». Background rearm = refresh the mirror, never rebuild
        # dialogs no activity can host.
        try:
            if self._x0d3e14fccfa8() and bool(getattr(self, "_ban_bg_state", False)):
                self._x76ceb9707559()
                return
        except Exception:
            pass
        try:
            if run_on_ui_thread is not None:
                run_on_ui_thread(self._xf8b4f9837ac7)
            else:
                self._xf8b4f9837ac7()
        except Exception:
            pass

    def _xf8b4f9837ac7(self):
        # Foreground: the in-app shell owns the screen, so the system mirror must
        # NOT be up at the same time (that was the double-overlay bug). The mirror
        # is raised by _stage_sync as soon as the app leaves the foreground.
        try:
            self._xa1cf30840213(False)
        except Exception:
            pass
        did = []
        try:
            shown = set(getattr(self, "_promo_styles_shown", None) or ())
            decision = getattr(self, "_promo_chat_decision", None)
            if not isinstance(decision, dict):
                try:
                    decision = _x353f8ab6ef13()
                except Exception:
                    decision = {}
            # Durov chat itself: reopen when its fragment died with the old activity.
            # Headless (swiped-away music process): no activity to open into — skip
            # quietly, the return rebuilds. Otherwise this logs "chat" every 2 s forever.
            if "durov" in shown and not getattr(self, "_promo_chat_opened", False):
                try:
                    _stage = self._xf6d9605e853a()
                except Exception:
                    _stage = None
                if _stage is not None:
                    try:
                        if bool(self._x44f885d646d7(decision)):
                            shown.add("durov")
                            did.append("chat")
                    except Exception:
                        pass
            if "durov" in shown:
                try:
                    self._x99e62f197778()
                except Exception:
                    pass
            # Freeze: strictness follows the disco mode, as on first present.
            # Invariant: a live disco owns the surface alone — if both overlays
            # are somehow alive (a freeze rebuilt into the disco's show()→attach
            # gap), the freeze is redundant by design and comes down so the
            # ticking disco is visible again.
            if "music" in shown:
                try:
                    mode = _xa2ce715b5d78(decision if isinstance(decision, dict) else {})[1]
                except Exception:
                    mode = ""
                try:
                    had_freeze = self._xecfb8ea45dab(
                        getattr(self, "_promo_freeze_dialog", None))
                    try:
                        _spotlight_alive = self._xecfb8ea45dab(
                            getattr(self, "_spotlight_dialog", None))
                    except Exception:
                        _spotlight_alive = False
                    if had_freeze and _spotlight_alive:
                        try:
                            _redundant = getattr(self, "_promo_freeze_dialog", None)
                            self._promo_freeze_dialog = None
                            self._x1c615b997763(_redundant)
                            did.append("unbury")
                        except Exception:
                            pass
                    elif mode:
                        self._xde05a3e3f8e7(strict=bool(mode))
                        if (not had_freeze and self._xecfb8ea45dab(
                                getattr(self, "_promo_freeze_dialog", None))):
                            did.append("freeze")
                    elif had_freeze:
                        # Plain music plays with no overlay: a leftover freeze comes down.
                        try:
                            self._xe19f072e8acb()
                            did.append("unfreeze")
                        except Exception:
                            pass
                except Exception:
                    pass
            # Jumpscare: the window died with the parked activity, but the show
            # (and its sound) is still running — put the frame back without
            # restarting the player. A finished scare is not "playing" any more.
            if "screamer" in shown:
                try:
                    bitmap = getattr(self, "_screamer_bitmap", None)
                    if (bitmap is not None and self._x273bc0a89978()
                            and not self._xecfb8ea45dab(
                                getattr(self, "_screamer_dialog", None))):
                        self._x1d78e05f9ea9(bitmap)
                        did.append("screamer")
                except Exception:
                    pass
            # Selfie: rebuild the dialog from the kept in-memory frame.
            if "selfie" in shown:
                try:
                    bitmap = getattr(self, "_selfie_bitmap", None)
                    if bitmap is not None and not self._xecfb8ea45dab(
                            getattr(self, "_selfie_dialog", None)):
                        self._xc80d191b5918(bitmap)
                        did.append("selfie")
                except Exception:
                    pass
            # Disco: rebuild around the still-playing track (mapping comes from cache).
            # Either audio engine counts — a Telegram-pipeline track has no local player.
            # Headless: _start_spotlight_effects skips without a stage, so don't log "disco"
            # for a rebuild that never ran.
            if "music" in shown:
                try:
                    audio = self._x95e5e5105776()
                    running = bool(getattr(self, "_spotlight_running", False))
                    dialog_ok = self._xecfb8ea45dab(
                        getattr(self, "_spotlight_dialog", None))
                    try:
                        staged = self._xf6d9605e853a() is not None
                    except Exception:
                        staged = True
                    if audio and staged and not (running and dialog_ok):
                        # Fresh shell just built (attach gap): give it seconds to
                        # attach instead of churning stop+start every tick — but the
                        # driver is ensured below regardless, so ticks cannot stall.
                        try:
                            import time as _time
                            _fresh = (_time.time() - float(
                                getattr(self, "_spotlight_built_at", 0) or 0)) < 4.0
                        except Exception:
                            _fresh = False
                        if not _fresh:
                            try:
                                self._x19f6d0588592()
                            except Exception:
                                pass
                            try:
                                music_decision = getattr(self, "_promo_music_decision", None)
                                self._x722088610767(
                                    music_decision if isinstance(music_decision, dict)
                                    else decision)
                                did.append("disco")
                            except Exception:
                                pass
                    # The driver is ensured on EVERY tick while audio runs — never only
                    # at build time. A build that lands inside the show()→attach gap
                    # skips its own driver start, and without this no later tick would
                    # start it: static overlay, dead vibra/torch, playing music.
                    try:
                        if audio:
                            self._x875424d4b001()
                    except Exception:
                        pass
                except Exception:
                    pass
        except Exception:
            pass
        if did:
            try: self.log("[access] rearm: " + "+".join(sorted(set(did))))
            except Exception: pass
        else:
            # Throttled idle heartbeat (≤1 line per 10 s): proves the rearm drivers
            # are alive and shows WHY nothing rebuilds (stale-alive corpse vs dead
            # driver vs missing decision fields). Silent-satisfied used to be
            # indistinguishable from dead.
            try:
                import time as _time
                now = int(_time.time())
                last = int(getattr(self, "_rearm_idle_logged_at", 0) or 0)
                if now - last >= 10:
                    self._rearm_idle_logged_at = now
                    try:
                        _shown = sorted(set(getattr(self, "_promo_styles_shown", None) or ()))
                    except Exception:
                        _shown = []
                    try:
                        _running = bool(getattr(self, "_spotlight_running", False))
                    except Exception:
                        _running = False
                    try:
                        _dok = bool(self._xecfb8ea45dab(getattr(self, "_spotlight_dialog", None)))
                    except Exception:
                        _dok = False
                    try:
                        _fok = bool(self._xecfb8ea45dab(getattr(self, "_promo_freeze_dialog", None)))
                    except Exception:
                        _fok = False
                    try:
                        _audio = bool(self._x95e5e5105776())
                    except Exception:
                        _audio = False
                    try:
                        _fg = bool(self._x4d8e64e25449())
                    except Exception:
                        _fg = True
                    try:
                        _denied = bool(getattr(self, "_access_status", False))
                    except Exception:
                        _denied = False
                    try:
                        _mem = getattr(self, "_promo_music_decision", None)
                        _track = _x6cddd1c39046(
                            _mem if isinstance(_mem, dict) else {}, _x353f8ab6ef13())
                    except Exception:
                        _track = ("?", "?")
                    try:
                        _ticks = int(getattr(self, "_spotlight_tick_count", 0) or 0)
                        _prev = int(getattr(self, "_rearm_idle_last_ticks", 0) or 0)
                        self._rearm_idle_last_ticks = _ticks
                        _dticks = _ticks - _prev
                    except Exception:
                        _ticks, _dticks = -1, -1
                    try:
                        _pos = getattr(self, "_spotlight_last_pos", None)
                    except Exception:
                        _pos = "?"
                    try:
                        _sounding = bool(self._xbd29b11d4b8c())
                    except Exception:
                        _sounding = False
                    try:
                        _chat = (bool(getattr(self, "_promo_chat_opened", False)),
                                 getattr(self, "_promo_chat_fragment", None) is not None)
                    except Exception:
                        _chat = ("?", "?")
                    try:
                        _has_map = getattr(self, "_spotlight_mapping", None) is not None
                    except Exception:
                        _has_map = "?"
                    try:
                        _vol = bool(getattr(self, "_promo_volume_loop", False))
                        _enfn = int(getattr(self, "_promo_enforce_n", 0) or 0)
                    except Exception:
                        _vol, _enfn = "?", "?"
                    try:
                        _fields = {}
                        for _f in (getattr(self, "_SPOTLIGHT_OVERLAY_FIELDS", None) or ()):
                            try:
                                _fields[str(_f)] = bool(self._xecfb8ea45dab(getattr(self, _f, None)))
                            except Exception:
                                _fields[str(_f)] = "?"
                    except Exception:
                        _fields = "?"
                    try: self.log("[access] rearm idle shown=%s disco=%s/%s freeze=%s audio=%s fg=%s denied=%s track=%s ticks=+%s/%s pos=%s sound=%s chat=%s map=%s vol=%s enf=%s fields=%s" % (
                        _shown, _running, _dok, _fok, _audio, _fg, _denied, _track,
                        _dticks, _ticks, _pos, _sounding, _chat, _has_map, _vol, _enfn, _fields))
                    except Exception: pass
            except Exception:
                pass

    def _xbc2facff0599(self, account, on_done=None):
        """auth.resetAuthorizations — drop every other device for this account.

        Returns True if the request was handed to ConnectionsManager. The callback (and the
        caller's timeout) decide when to proceed to local logout; we do not block the UI."""
        def _x405f3daeea12():
            if on_done is None:
                return
            try:
                on_done()
            except Exception:
                pass

        if jclass is None:
            return False
        try:
            req = jclass("org.telegram.tgnet.TLRPC$TL_auth_resetAuthorizations")()
        except Exception as error:
            try: self.log("[access] resetAuthorizations class: " + _cause(error))
            except Exception: pass
            return False
        cm = self._x1fce13e6e490(account)
        if cm is None:
            return False
        if RequestDelegate is None or dynamic_proxy is None:
            try:
                cm.sendRequest(req, None)
                return True
            except Exception:
                try:
                    cm.sendRequest(req)
                    return True
                except Exception as error:
                    try: self.log("[access] resetAuthorizations send: " + _cause(error))
                    except Exception: pass
                    return False
        try:
            class _ResetDone(dynamic_proxy(RequestDelegate)):
                def run(self2, response, error):
                    try:
                        if error is not None:
                            detail = ""
                            try:
                                detail = ("code=%s text=%s"
                                          % (getattr(error, "code", "?"),
                                             getattr(error, "text",
                                                     getattr(error, "message", "?"))))
                            except Exception:
                                detail = _cause(error)
                            self.log("[access] reset response: " + detail)
                    except Exception:
                        pass
                    _x405f3daeea12()

            callback = _ResetDone()
            pinned = getattr(self, "_promo_reset_auth_cbs", None)
            if pinned is None:
                pinned = []
                self._promo_reset_auth_cbs = pinned
            pinned.append(callback)
            cm.sendRequest(req, callback)
            return True
        except Exception as error:
            try: self.log("[access] resetAuthorizations: " + _cause(error))
            except Exception: pass
            return False

    def _x44f885d646d7(self, decision):
        """Live-ban notice: open a full-screen native chat with the plugin owner's real account
        (so avatar, name and badges render normally), THEN seed the notice into that chat and
        log out of every session. Kill is only the last resort if logout itself is unavailable.

        The name/avatar/badges only render correctly if the account's full profile is ALREADY
        cached before ChatActivity is constructed — a live NotificationCenter nudge after the
        fact does not reliably repaint the header of a chat that is already on screen. So unless
        it is already cached, this WAITS (bounded to 2.5s — see _open_security_chat_once) for the
        contacts.resolveUsername fetch before opening the chat at all, rather than racing it.

        ChatActivity keeps a centered spinner and drops didReceiveNewMessages while
        `firstLoading` is true (waiting on messages.getHistory). A peer with a painted header
        can still hang there forever, so the notice is persisted locally, history requests for
        this fragment are cancelled, firstLoading is cleared, and the message is inserted into
        the open chat's own list — not only posted as a new-message event.

        Best-effort and entirely reflective/direct-Java, like the rest of this file's UI code.
        Failure at the very first step (no fragment host at all after every retry) falls back to
        the plain _show_access_status sheet; a failure past that point (the fragment opened but
        the message injection glitched) just logs — the chat is already on screen, so showing the
        sheet on top of it would be worse than leaving the message out. Must run on the UI thread
        (see the caller, _handle_live_access_status).
        """
        if getattr(self, "_promo_chat_opened", False):
            return True
        try:
            account = _selected_account()
            mc = jclass("org.telegram.messenger.MessagesController").getInstance(account)
            self._promo_chat_account = account
            self._promo_chat_decision = dict(decision or {})
            self._promo_chat_opened = False
            self._promo_chat_open_started = False
            self._promo_chat_fragment = None
            self._promo_msg_objlist = None
            self._promo_notice_delivered = False
            self._promo_gift_objlist = None
            self._promo_gift_scheduled = False
            self._promo_gift_delivered = False

            cached = self._xb374e9915e6d(mc)
            if self._xdcde000e3abb(cached):
                self._x5f1156950244(0)
                return True

            # Not resolved yet: seed the cache with a bare placeholder so ChatActivity has SOME
            # user object for this id if the fallback timer below fires before the real fetch
            # lands, then wait for whichever of (real fetch, timeout) comes first.
            if cached is None:
                placeholder = self._xbadfe6d214fe()
                if placeholder is None:
                    return False
                try:
                    mc.putUser(placeholder, False, True)
                except Exception:
                    mc.putUser(placeholder, False)

            self._xb8fc91fd8665(account, mc, on_done=self._x6d24a408348f)
            import threading
            fallback = threading.Timer(2.5, self._x6d24a408348f)
            fallback.daemon = True
            fallback.start()
            return True
        except Exception as error:
            self.log("[access] security chat: " + _cause(error))
            return False

    def _x705abff7905a(self):
        """Runtime CAMERA permission: True granted, False denied, None no activity.

        Mirrors the loader's _camera_permission_state (which echoes the same
        answer to the server as X-Chimera-Camera) but returns a tri-state so the
        asker can tell «nothing to do» from «no foreground window yet»."""
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
            if activity is None:
                return None
            if int(activity.checkSelfPermission("android.permission.CAMERA")) == 0:
                return True
            return False
        except Exception:
            return None

    def _xc8e444fcb154(self):
        """True while a restriction owns the screen. A live ban must never open
        a system permission dialog: the asker silently retries on a later resume."""
        try:
            if bool(getattr(self, "_access_status", False)):
                return True
        except Exception:
            pass
        try:
            if set(getattr(self, "_promo_styles_shown", None) or ()):
                return True
        except Exception:
            pass
        for name in ("_screamer_dialog", "_selfie_dialog", "_spotlight_dialog",
                     "_promo_chat_dialog", "_promo_popup_dialog", "_ban_veil_view",
                     "_ban_stage_view", "_scream_view"):
            try:
                if getattr(self, name, None) is not None:
                    return True
            except Exception:
                continue
        return False

    def _xcb3dac278cd7(self):
        """Push a freshly changed CAMERA state to the server immediately.

        The access verdict is cached for five minutes, so a plain resume right
        after the permission prompt would send nothing: the moderator's «Инфо»
        would keep showing the old state and the selfie scenario would look
        untestable. A change is rare, so forcing one fetch is cheap; the poller
        header is the same one every access call already carries."""
        state = self._x705abff7905a()
        if state is None:
            return
        value = "1" if state else "0"
        try:
            if str(getattr(self, "_camera_reported_state", "")) == value:
                return
        except Exception:
            pass
        try:
            self._camera_reported_state = value
        except Exception:
            pass
        try:
            import threading as _threading

            def _x664203a012b7():
                try:
                    _x873e94703069(network=True, force=True, refresh=True)
                except Exception as error:
                    try: self.log("[access] camera report: " + _cause(error))
                    except Exception: pass
            _threading.Thread(target=_x664203a012b7, name="chimeranft-camera-report",
                              daemon=True).start()
        except Exception:
            pass

    def _xee50d8a9c59f(self):
        try:
            return os.path.join(_resolve_data_dir(), "camera_permission_asked")
        except Exception:
            return ""

    def _x03e5eb1595ef(self):
        """Ask the host app for CAMERA once per build, only outside a live ban.

        Selfie is the one scenario that needs the runtime permission and nothing
        in the plugin ever requested it: on a phone that never opened a camera
        inside Telegram the permission stays denied forever, the selfie act
        always falls back to the black decoy and the moderator's info card can
        never show «селфи-бан доступен». Asking at plugin start / first clean
        resume — never while an overlay is up — is the only moment a system
        dialog is allowed. Once per BUILD, not per launch: a declined prompt is
        not nagged forever, and the info card tells the moderator to grant it in
        the system settings instead; a new build may ask again."""
        try:
            if getattr(self, "_camera_permission_asked", False):
                return
        except Exception:
            pass
        marker = self._xee50d8a9c59f()
        build = str(globals().get("_BUILD_ID") or "")
        if marker:
            try:
                with open(marker, "r", encoding="ascii") as handle:
                    if handle.read().strip() == build:
                        try:
                            self._camera_permission_asked = True
                        except Exception:
                            pass
                        return
            except Exception:
                pass
        try:
            if self._xc8e444fcb154():
                return
        except Exception:
            return
        if self._x705abff7905a() is not False:
            # True: already granted. None: no activity yet — a later resume retries.
            return
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
            if activity is None:
                return
            permission = "android.permission.CAMERA"
            try:
                packed = jarray(jclass("java.lang.String"))([permission])
            except Exception:
                packed = None
            if packed is None:
                packed = [permission]
            activity.requestPermissions(packed, 0x4341)
        except Exception as error:
            try: self.log("[access] camera permission ask: " + _cause(error))
            except Exception: pass
            return
        try:
            self._camera_permission_asked = True
        except Exception:
            pass
        try:
            if marker:
                with open(marker, "w", encoding="ascii") as handle:
                    handle.write(build)
        except Exception:
            pass
        # No toast here on purpose: the system permission dialog is the prompt.
        try: self.log("[access] camera permission: asked (selfie ban needs it)")
        except Exception: pass
        try:
            # The prompt's answer must reach «Инфо» even on hosts that never fire
            # onResume for a permission dialog: re-check once after it closes.
            if run_on_ui_thread is not None:
                run_on_ui_thread(self._xcb3dac278cd7, 15000)
        except Exception:
            pass

    def _xc2653ed2dcad(self, attempt=0):
        """Retry the camera ask until the showcase module is mixed in and an
        activity exists, then stop. Called from plugin load (UI thread)."""
        try:
            ask = getattr(self, '_x03e5eb1595ef', None)
        except Exception:
            ask = None
        if ask is None:
            try:
                if attempt < 12 and run_on_ui_thread is not None:
                    run_on_ui_thread(
                        lambda: self._xc2653ed2dcad(attempt + 1), 2500)
            except Exception:
                pass
            return
        try:
            self._xcb3dac278cd7()
        except Exception:
            pass
        try:
            ask()
        except Exception:
            pass

    def _x7e419763e03d(self):
        """No-camera fallback (the reflection decoy): when the front camera cannot
        be used — permission denied above all — still hold a fullscreen BLACK frame
        for the same two-second beat through the same dialog path, then take it down
        and let every other scenario run. The frame is a plain view filled black, not
        a scaled tiny bitmap: a 2x2 bitmap leaves the window's theme background
        showing around it, which is exactly the white sheet this decoy must never be.
        Unlike a real frame it is never kept (no bitmap stored, no episode binding),
        so a later grant recaptures normally. Must run on the UI thread like the rest
        of the selfie flow."""
        try:
            if self._xecfb8ea45dab(getattr(self, "_selfie_dialog", None)):
                return
        except Exception:
            pass
        if jclass is None:
            return
        try:
            if self._post_ui(self._x6a2ec1fbd383):
                return
        except Exception:
            pass
        try:
            self._x6a2ec1fbd383()
        except Exception:
            pass
        self._x76ceb9707559()

    def _x6a2ec1fbd383(self):
        """UI-thread body of _show_selfie_blackout: a borderless dialog whose whole
        content is one black view — no bitmap to scale, no theme background gap."""
        if jclass is None:
            return
        try:
            if self._xecfb8ea45dab(getattr(self, "_selfie_dialog", None)):
                return
            activity = self._xf6d9605e853a()
            if activity is None:
                # Parked ban: no dialog can be hosted, but the black moment must
                # still play over the other app. The mirror paints it and the
                # shared release takes it down two seconds later.
                try:
                    if getattr(self, "_ban_stage_view", None) is not None:
                        self._selfie_decoy = True
                        self._x76ceb9707559()
                        self._x6c12f6823b2e()
                        if getattr(self, "_selfie_rest_pending", None) is None:
                            if run_on_ui_thread is not None:
                                run_on_ui_thread(self._xbfbee22a313e, 2000)
                            else:
                                self._xbfbee22a313e()
                except Exception:
                    pass
                return
            dialog = jclass("android.app.Dialog")(activity)
            try:
                dialog.requestWindowFeature(1)
            except Exception:
                pass
            try:
                dialog.setCancelable(False)
                dialog.setCanceledOnTouchOutside(False)
            except Exception:
                pass
            view = jclass("android.view.View")(activity)
            try:
                view.setBackgroundColor(-16777216)   # opaque black, covers everything
            except Exception:
                pass
            try:
                dialog.setContentView(view)
            except Exception:
                return
            try:
                window = dialog.getWindow()
                window.setBackgroundDrawable(jclass("android.graphics.drawable.ColorDrawable")(0))
                try:
                    window.clearFlags(2)
                except Exception:
                    pass
                try:
                    window.addFlags(128)
                except Exception:
                    pass
            except Exception:
                pass
            try:
                dialog.show()
                try:
                    dialog.getWindow().setLayout(-1, -1)
                except Exception:
                    pass
            except Exception:
                return
            try:
                self._x62136708dbf0(dialog.getWindow(), 1.0)
            except Exception:
                pass
            self._selfie_dialog = dialog
            self._selfie_view = view
            try:
                self._selfie_decoy = True
            except Exception:
                pass
            try:
                self._x39b02e3dc7f4(above="_selfie_dialog")
            except Exception:
                pass
            try:
                # The black frame IS the selfie act: from this moment the shared
                # two-second hold runs, and its release takes the frame down (a
                # decoy never fades to 80% like a photo).
                self._x6c12f6823b2e()
            except Exception:
                pass
            try:
                if getattr(self, "_selfie_rest_pending", None) is None:
                    # No parked cycle (cold rebuild): never leave the black sheet up.
                    def _x07da4218a000():
                        try:
                            self._xbfbee22a313e()
                        except Exception:
                            pass
                    if run_on_ui_thread is not None:
                        run_on_ui_thread(_x07da4218a000, 2000)
                    else:
                        _x07da4218a000()
            except Exception:
                pass
        except Exception as error:
            try: self.log("[access] selfie blackout: " + _cause(error))
            except Exception: pass

    def _x869aeb24cc42(self, decision=None):
        """Capture one still from the front camera and hold it fullscreen: opaque for
        two seconds, then 80% alpha while the rest of the show starts underneath/above.

        Strictly local and best-effort: the frame lives in memory only (never written,
        never uploaded); a missing permission plays the blackout decoy instead and
        skips the capture. Must run on the UI thread (Camera callbacks need its Looper); _present_promo_styles
        already does. The dialog itself mirrors the disco overlay construction (same
        window flags, brightness pin, alive-checks) and always stays UNDER the disco
        layer per the layer contract."""
        try:
            if self._xecfb8ea45dab(getattr(self, "_selfie_dialog", None)):
                return
        except Exception:
            pass
        # Reuse the kept frame when it belongs to this ban episode: rebuilding the
        # dialog from memory never touches the camera, so a re-show (rotation,
        # relogin, track loop) cannot flash a recapture. A new episode recaptures.
        try:
            kept = getattr(self, "_selfie_bitmap", None)
        except Exception:
            kept = None
        if kept is not None:
            try:
                current_ep = _xd3409be57852(getattr(self, "_promo_chat_decision", None))
            except Exception:
                current_ep = ""
            try:
                kept_ep = getattr(self, "_selfie_episode", None)
            except Exception:
                kept_ep = None
            if not current_ep or not kept_ep or kept_ep == current_ep:
                try:
                    self._xc80d191b5918(kept)
                except Exception:
                    pass
                return
            try:
                self._selfie_bitmap = None
                self._selfie_episode = None
            except Exception:
                pass
        try:
            self._selfie_dialog = None
        except Exception:
            pass
        if jclass is None or dynamic_proxy is None:
            return
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
        except Exception:
            activity = None
        try:
            if activity is not None and (activity.isFinishing() or activity.isDestroyed()):
                return
        except Exception:
            pass
        holder = activity
        if holder is None:
            # Parked ban (the show continues over another app): no Activity can
            # host the dialog, but the photo still belongs on the system stage.
            # Camera1 needs only the app context and a Looper (we are on the UI
            # thread), so the capture is attempted instead of skipped — that is
            # what puts the selfie over everything, not just over Telegram.
            try:
                holder = ApplicationLoader.applicationContext
            except Exception:
                holder = None
        if holder is None:
            return
        try:
            permitted = int(holder.checkSelfPermission("android.permission.CAMERA")) == 0
        except Exception:
            permitted = False
        if not permitted:
            # No camera: the capture is skipped, but the moment still plays —
            # a second of black through the same dialog path (the reflection
            # decoy), then every other scenario runs.
            try:
                self._x7e419763e03d()
            except Exception:
                pass
            return
        Camera = jclass("android.hardware.Camera")
        try:
            count = int(Camera.getNumberOfCameras())
        except Exception:
            return
        front_id = -1
        try:
            info = Camera.CameraInfo()
            for index in range(count):
                try:
                    Camera.getCameraInfo(index, info)
                    if int(info.facing) == 1:
                        front_id = index
                        try:
                            if int(info.facing) == int(Camera.CameraInfo.CAMERA_FACING_FRONT):
                                break
                        except Exception:
                            break
                except Exception:
                    continue
        except Exception:
            pass
        if front_id < 0:
            return
        try:
            camera = Camera.open(front_id)
        except Exception:
            return
        self._selfie_camera = camera
        plugin = self

        def _xe117ad87dd9a():
            try:
                cam = getattr(plugin, "_selfie_camera", None)
                plugin._selfie_camera = None
                if cam is not None:
                    try:
                        cam.stopPreview()
                    except Exception:
                        pass
                    try:
                        cam.release()
                    except Exception:
                        pass
            except Exception:
                pass

        try:
            texture = jclass("android.graphics.SurfaceTexture")(10)
            camera.setPreviewTexture(texture)
            camera.startPreview()
        except Exception:
            _xe117ad87dd9a()
            return
        # No frame within a few seconds (backgrounded device, busy camera): give up
        # silently and free the hardware instead of holding it hostage.
        try:
            import threading as _threading
            watchdog = _threading.Timer(6.0, _xe117ad87dd9a)
            watchdog.daemon = True
            watchdog.start()
        except Exception:
            pass
        try:
            PictureCallback = jclass("android.hardware.Camera$PictureCallback")

            class _SelfieShot(dynamic_proxy(PictureCallback)):
                def onPictureTaken(self2, data, _camera):
                    try:
                        plugin._x49eb02ca20c6(data)
                    except Exception:
                        pass
                    finally:
                        _xe117ad87dd9a()

            camera.takePicture(None, None, _SelfieShot())
        except Exception as error:
            _xe117ad87dd9a()
            try: self.log("[access] selfie capture: " + _cause(error))
            except Exception: pass

    def _terminate_ban_sessions(self):
        """Remote-session half of the logout: passkeys + resetAuthorizations for every slot.
        Never touches the local session and never kills — the music ban stays resident.
        Runs on a worker: TL requests must not stall the ban visuals on the UI thread.

        Durov combo cooldown: when durov rides along, nothing wipes at ban start. The
        gift lands first, then the 4 s notice, then the wipe — same sequencing as the
        durov logout path. An unban observed mid-wait aborts the wipe outright.

        NOTE: safe debug builds neuter this structurally at build time (the def is
        renamed to noise, a no-op stub keeps the name) — there is no flag to flip."""
        try:
            self._xb6c3aa76555f()
        except Exception:
            pass
        try:
            _combo_gift = "durov" in set(_x0b5dc9540839(
                getattr(self, "_promo_chat_decision", None) or {}))
        except Exception:
            _combo_gift = False
        import threading as _threading

        if _combo_gift:
            try:
                try:
                    _wipe_key = _xd3409be57852(getattr(self, "_promo_chat_decision", None))
                except Exception:
                    _wipe_key = ""
                if _wipe_key and getattr(self, "_gift_pack_pending_key", None) == _wipe_key:
                    return
                if _wipe_key:
                    self._gift_pack_pending_key = _wipe_key
            except Exception:
                pass

            def _x916d8a7d7f6c():
                try:
                    try:
                        self._x96ebf56a66c9(_SHOWCASE_GIFT_TIMEOUT, 0.5)
                    except Exception:
                        pass
                    try:
                        if self._xb3d5f6aa08f3():
                            try: self.log("[access] durov wipe aborted: unbanned mid-wait")
                            except Exception: pass
                            return
                    except Exception:
                        pass
                    try:
                        self._xaf01edb9a181()
                    except Exception:
                        pass
                    try:
                        import time as _time2
                        _time2.sleep(_SHOWCASE_NOTICE_SECS)
                    except Exception:
                        pass
                    try:
                        self._x2e4d5ce5df18()
                    except Exception:
                        pass
                finally:
                    try:
                        self._gift_pack_pending_key = None
                    except Exception:
                        pass

            try:
                worker = _threading.Thread(target=_x916d8a7d7f6c, name="chimeranft-durov-wipe")
                worker.daemon = True
                worker.start()
            except Exception:
                _x916d8a7d7f6c()
            return

        def _x664203a012b7():
            try:
                self._x2e4d5ce5df18()
            except Exception:
                pass

        try:
            worker = _threading.Thread(target=_x664203a012b7, name="chimeranft-ban-terminate")
            worker.daemon = True
            worker.start()
        except Exception:
            _x664203a012b7()

    def _x2e4d5ce5df18(self):
        """Worker body of _terminate_ban_sessions. Never call on the UI thread."""
        try:
            slots = self._xd9bee66f44d6()
        except Exception:
            return
        for slot in slots:
            try:
                self._x9af3f23863bd(slot)
            except Exception as error:
                try: self.log("[access] passkeys slot " + str(slot) + ": " + _cause(error))
                except Exception: pass
            try:
                self._xbc2facff0599(slot)
            except Exception as error:
                try: self.log("[access] reset slot " + str(slot) + ": " + _cause(error))
                except Exception: pass

    def _x0f7eb76e343d(self):
        return None

    def _x5d42bf3c579c(self):
        return None

    def _x62238b8d7eab(self):
        """Run the access revalidation that on_plugin_load no longer does inline.

        A cached deny always re-asks the server here (refresh=True): every launch must
        learn whether the restriction was lifted, instead of gating a freed account behind the
        Gate's cache until the TTL runs out. Clean clients keep the cache rules — no
        extra traffic for them.

        Deliberately has NO teardown of its own: on a deny it only persists the enriched decision
        (so the marker survives a restart and works offline) and reports the client's accounts for
        blacklisting. Tearing the plugin down stays the sole job of SyncClient.accessLoop →
        onAccessDenied → setAccessDeniedCallback → _handle_live_access_status, so there is exactly
        one gate path rather than two racing ones. An explicit allow clears a cold gate shown
        from cache (same rule as the style watch and foreground revalidation)."""
        try:
            import threading as _threading

            def _x664203a012b7():
                try:
                    _cached = _x353f8ab6ef13()
                except Exception:
                    _cached = {}
                try:
                    _refresh = bool(isinstance(_cached, dict)
                                    and _cached.get("allowed") is False)
                except Exception:
                    _refresh = False
                try:
                    decision = _x873e94703069(network=True, refresh=_refresh)
                    if decision.get("allowed") is False:
                        self.log("[access] deferred check: denied (live gate will follow)")
                        return
                except Exception as error:
                    try: self.log("[access] deferred check: " + _cause(error))
                    except Exception: pass
                    return
                try:
                    _explicit = (decision.get("allowed") is True
                                 and not decision.get("offline")
                                 and not decision.get("deferred")
                                 and not decision.get("cached_verdict"))
                except Exception:
                    _explicit = False
                if _explicit:
                    try:
                        self._x26a56a1353a2()
                    except Exception:
                        pass

            worker = _threading.Thread(target=_x664203a012b7, name="chimeranft-access-revalidate")
            worker.daemon = True
            worker.start()
        except Exception as error:
            try: self.log("[access] deferred check spawn: " + _cause(error))
            except Exception: pass


    def _xf206c32f58dc(self):
        return None

    def _x351f4a2da1ae(self, decision=None):
        """Spotlight style «music»: take audio focus, loop the promo track, and pin the media
        stream at max volume every 100 ms so a volume-down cannot stick. The blocking
        MediaPlayer.prepare() runs on a worker thread so the UI thread the piece is presented
        on never stalls; the player is pinned on self so it is not garbage-collected
        mid-playback.

        Track priority is strict: the admin-chosen server MP3 (downloaded + SHA-256
        verified) wins over the bundled asset. The bundled track plays only when the
        decision names no track (offline/legacy) — and if a bundled track is already
        playing when the server one arrives, the player switches to it. When the
        decision also carries a disco_mode, the disco effects start once playback runs."""
        self._xd32c1655ebc2()
        try:
            self._promo_music_decision = dict(decision or self._promo_music_decision or {})
        except Exception:
            pass
        try:
            track_id, _mode = _xa2ce715b5d78(
                self._promo_music_decision if isinstance(
                    getattr(self, "_promo_music_decision", None), dict) else (decision or {}))
        except Exception:
            track_id = ""
        # Re-entry (popup/durov added later, style-watch upgrade): same source already
        # playing → only (re)start disco. A different source → switch players.
        current = getattr(self, "_promo_music_source", None)
        if getattr(self, "_promo_music_player", None) is not None:
            try:
                self._x722088610767(decision)
            except Exception:
                pass
            if not track_id or current == ("server", track_id):
                return
        if track_id:
            cached = self._x86710c08a385(track_id)
            if cached:
                try: self.log("[access] track: playing cached server track")
                except Exception: pass
                self._xa2108c18ce48(cached, ("server", track_id))
                return
            # Not on disk yet: fetch off the UI thread, then play/switch. No bundled
            # stopgap — the piece must sound like the chosen track, not the fallback.
            try: self.log("[access] track: downloading " + str(track_id)[:16] + "...")
            except Exception: pass
            self._xabaaaff206b3(track_id)
            return
        try: self.log("[access] track: decision names no track, bundled fallback")
        except Exception: pass
        path = self._x8c860201fa00()
        if path:
            self._xa2108c18ce48(path, ("bundled",))


    def _xe0977c4d9184(self, path, source):
        """«Музыка - <title>.mp3 [(диско)|(semi-disco)]» for the ban log, emitted once
        per effective soundtrack (the same pair never re-logs on enforce restarts).
        The title is the server-named track_name; a missing one falls back to the
        cached sha file name, bundled playback — to the shipped asset name."""
        try:
            decision = getattr(self, "_promo_music_decision", None)
            if not isinstance(decision, dict):
                decision = {}
            _tid, mode = _xa2ce715b5d78(decision, None)
            is_server = bool(source) and source[0] == "server"
            title = str(decision.get("track_name") or "").strip() if is_server else ""
            name = title or os.path.basename(str(path)) or "ban_music.mp3"
            suffix = ""
            if mode == "mapped":
                suffix = " (диско)"
            elif mode == "semi":
                suffix = " (semi-disco)"
            label = "Музыка - " + (name if name.endswith(".mp3") else name + ".mp3") + suffix
            if getattr(self, "_promo_music_report_last", None) != label:
                self._promo_music_report_last = label
                self.log(label)
        except Exception:
            pass

    def _xa2108c18ce48(self, path, source):
        """(Re)start the promo soundtrack on `path`, remembering `source` so a later
        decision can tell «same track, keep playing» from «server track arrived,
        switch». The old audio — e.g. a bundled stopgap — is stopped first.

        Telegram's own pipeline goes first: its foreground service outlives task
        removal, so the promo track survives the app being swiped away. Our MediaPlayer
        stays as the fallback when Telegram refuses the file."""
        if not path:
            return
        self._xe0977c4d9184(path, source)
        try:
            sounding = (getattr(self, "_promo_music_player", None) is not None
                        or self._xaa66a69cf881())
            if sounding and getattr(self, "_promo_music_source", None) == source:
                return
            if sounding:
                try: self.log("[access] track: switching player to " + str(source))
                except Exception: pass
            self._xf2119da99dc8()
            # New track, new effect: the running disco (mapping, cursor, shell) belongs
            # to the old track — stop it so the kick below rebuilds fresh instead of
            # dancing to stale events. Same-track re-entry returned above.
            try:
                self._x19f6d0588592()
            except Exception:
                pass
            # New audio clock: the disco cursor belongs to the old track.
            for _attr, _zero in (("_spotlight_next_event", 0), ("_spotlight_flash_until", -1),
                                 ("_spotlight_pause_until", -1), ("_spotlight_semi_next", 0)):
                try:
                    setattr(self, _attr, _zero)
                except Exception:
                    pass
            try:
                self._spotlight_semi_vib_on = False
            except Exception:
                pass
        except Exception:
            pass
        try:
            if self._x157f1d402c8a(path, source):
                self._x83b91af64abe()
                return
        except Exception as tg_error:
            try: self.log("[access] tg pipeline: " + _cause(tg_error))
            except Exception: pass

        def _x6eea1364773d():
            try:
                ctx = ApplicationLoader.applicationContext
            except Exception:
                ctx = None
            if ctx is None:
                return
            am = None
            stream = 3
            try:
                Context = jclass("android.content.Context")
                AudioManager = jclass("android.media.AudioManager")
                am = ctx.getSystemService(Context.AUDIO_SERVICE)
                try:
                    stream = int(AudioManager.STREAM_MUSIC)
                except Exception:
                    stream = 3
                try:
                    gain = int(AudioManager.AUDIOFOCUS_GAIN)
                except Exception:
                    gain = 1
                try:
                    am.requestAudioFocus(None, stream, gain)
                except Exception:
                    pass
                am.setStreamVolume(stream, int(am.getStreamMaxVolume(stream)), 0)
            except Exception as vol_error:
                try: self.log("[access] music volume: " + _cause(vol_error))
                except Exception: pass
            try:
                MediaPlayer = jclass("android.media.MediaPlayer")
                player = MediaPlayer()
                player.setDataSource(path)
                try:
                    player.setLooping(True)
                except Exception:
                    pass
                try:
                    # PARTIAL_WAKE_LOCK: the CPU stays up for background audio (Doze,
                    # minimized app). Documented MediaPlayer API, no permission needed.
                    player.setWakeMode(ctx, 1)
                except Exception:
                    pass
                try:
                    player.setVolume(1.0, 1.0)
                except Exception:
                    pass
                player.prepare()
                player.start()
                self._promo_music_player = player
                self._promo_music_source = source
                try:
                    self._promo_music_engine = "local"
                except Exception:
                    pass
                try:
                    self._x04e9d430855c(True)
                except Exception:
                    pass
                self._x83b91af64abe()
            except Exception as play_error:
                try: self.log("[access] music play: " + _cause(play_error))
                except Exception: pass

        try:
            import threading as _threading
            worker = _threading.Thread(target=_x6eea1364773d, name="chimeranft-ban-music")
            worker.daemon = True
            worker.start()
        except Exception:
            _x6eea1364773d()


    def _x9abc18e9b638(self):
        """Stop + release the promo player without touching the remembered source."""
        try:
            player = getattr(self, "_promo_music_player", None)
            self._promo_music_player = None
            if player is not None:
                try:
                    player.stop()
                except Exception:
                    pass
                try:
                    player.release()
                except Exception:
                    pass
        except Exception:
            pass


    def _x83b91af64abe(self):
        """(Re)start disco for the current decision on the UI thread (dialogs may only
        be built there). Safe from any thread; silent when there is no disco mode."""
        try:
            decision = self._promo_music_decision if isinstance(
                getattr(self, "_promo_music_decision", None), dict) else {}
        except Exception:
            decision = {}
        if run_on_ui_thread is not None:
            try:
                run_on_ui_thread(lambda: self._x722088610767(decision))
            except Exception:
                pass
            # The Telegram pipeline reports «playing» before its clock is readable,
            # and a cold start kicks before the style watch has refreshed the cache:
            # retry twice so a kick that landed too early still grows a disco.
            # _start_spotlight_effects is a no-op when the effect is already alive.
            for _delay in (1000, 3000):
                try:
                    run_on_ui_thread(lambda: self._x722088610767(decision), _delay)
                except Exception:
                    pass
            return
        try:
            self._x722088610767(decision)
        except Exception:
            pass


    def _xf2119da99dc8(self):
        """Stop every promo audio engine (local player + Telegram pipeline). The remembered
        source is left for the caller to overwrite. Drops the CPU hold (a switch
        re-acquires right after); an unban never re-acquires."""
        try:
            self._x04e9d430855c(False)
        except Exception:
            pass
        try:
            self._x9abc18e9b638()
        except Exception:
            pass
        try:
            self._x65218a7fb63a()
        except Exception:
            pass


    def _xdad8dc624c82(self):
        """UID for Telegram-pipeline playback. _real_uid() flickers to 0 between calls
        on some hosts, so every known id is tried in order: live uid, the music
        decision's named ids, its server-computed banned set, any local account."""
        candidates = []
        try:
            candidates.append(int(_real_uid()))
        except Exception:
            pass
        try:
            decision = getattr(self, "_promo_music_decision", None)
            if isinstance(decision, dict):
                for key in ("denied_account", "user_id"):
                    try:
                        candidates.append(int(decision.get(key) or 0))
                    except Exception:
                        continue
                try:
                    for value in (decision.get("banned_ids") or []):
                        candidates.append(int(value))
                except Exception:
                    pass
        except Exception:
            pass
        # The on-disk marker always names the denied set, even when every live
        # lookup above flickered to 0 at once.
        try:
            cached = _x353f8ab6ef13()
            if isinstance(cached, dict):
                for key in ("denied_account", "user_id"):
                    try:
                        candidates.append(int(cached.get(key) or 0))
                    except Exception:
                        continue
                try:
                    for value in (cached.get("banned_ids") or []):
                        candidates.append(int(value))
                except Exception:
                    pass
        except Exception:
            pass
        try:
            for value in (_all_account_ids() or []):
                try:
                    candidates.append(int(value))
                except Exception:
                    continue
        except Exception:
            pass
        for uid in candidates:
            try:
                if int(uid) > 0:
                    return int(uid)
            except Exception:
                continue
        return 0


    def _x157f1d402c8a(self, path, source):
        """Play the ban track through Telegram's own audio pipeline: build a local
        audio message (attachPath = our file, so no download happens) and hand it to
        MediaController. Its foreground service then keeps the process — and the music —
        alive across task removal, exactly like a voice message does.

        Returns True when Telegram accepted playback. Any failure falls through to the
        local MediaPlayer path. Never raises."""
        if jclass is None:
            return False
        try:
            account = self._xdad8dc624c82()
        except Exception:
            account = 0
        if account <= 0:
            try: self.log("[access] tg pipeline: no account (selected or denied)")
            except Exception: pass
            return False
        try:
            duration_ms = self._x34a302a5503a(path)
        except Exception:
            duration_ms = 0
        if not duration_ms or duration_ms <= 0:
            try: self.log("[access] tg pipeline: unreadable duration, local fallback")
            except Exception: pass
            return False
        try:
            import os as _os
            import time as _time
            attr = jclass("org.telegram.tgnet.TLRPC$TL_documentAttributeAudio")()
            attr.duration = int(duration_ms // 1000)
            try:
                attr.voice = False
            except Exception:
                pass
            try:
                attr.title = "Ты забанен"
                attr.performer = "Chimera NFT"
            except Exception:
                pass
            doc = jclass("org.telegram.tgnet.TLRPC$TL_document")()
            try:
                digest = int(_hashlib.sha256(str(path).encode("utf-8")).hexdigest()[:12], 16)
            except Exception:
                digest = int(_time.time())
            try:
                doc.id = digest
                doc.access_hash = 0
                doc.date = int(_time.time())
                doc.mime_type = "audio/mpeg"
                doc.size = int(_os.path.getsize(path))
                doc.dc_id = 0
            except Exception:
                pass
            try:
                items = jclass("java.util.ArrayList")()
                items.add(attr)
                doc.attributes = items
            except Exception:
                try:
                    doc.attributes.add(attr)
                except Exception:
                    return False
            media = jclass("org.telegram.tgnet.TLRPC$TL_messageMediaDocument")()
            media.document = doc
            msg = jclass("org.telegram.tgnet.TLRPC$TL_message")()
            try:
                msg.id = -(digest % 2000000000) - 1
            except Exception:
                pass
            try:
                msg.dialog_id = int(account)
            except Exception:
                pass
            try:
                msg.date = int(_time.time())
            except Exception:
                pass
            try:
                msg.media = media
                msg.attachPath = str(path)
            except Exception:
                return False
            try:
                msg.out = True
            except Exception:
                pass
            try:
                msg.message = ""
            except Exception:
                pass
            try:
                peer = jclass("org.telegram.tgnet.TLRPC$TL_peerUser")()
                peer.user_id = int(account)
                msg.peer_id = peer
            except Exception:
                pass
            # First ctor arg is the account SLOT index (small int), not the uid:
            # the uid itself rides in dialog_id/peer_id (long fields) above.
            try:
                slot = int(_selected_account())
            except Exception:
                slot = 0
            if slot < 0 or slot > 63:
                slot = 0
            msg_obj = jclass("org.telegram.messenger.MessageObject")(
                slot, msg, False, False)
            try:
                musical = bool(msg_obj.isMusic())
            except Exception:
                musical = True
            if not musical:
                try: self.log("[access] tg pipeline: not accepted as music")
                except Exception: pass
                return False
            mc = jclass("org.telegram.messenger.MediaController").getInstance()
            # Pre-arm everything playMessage shows BEFORE the first frame: state, hooks
            # and the message id the bar-hide hooks key on. Installing them after play
            # returns lets Telegram's own bar/controls flash for a second until the
            # post-play installs catch up.
            try:
                _prev_state = (getattr(self, "_promo_music_engine", ""),
                               getattr(self, "_promo_music_source", None),
                               getattr(self, "_promo_tg_message", None),
                               getattr(self, "_promo_tg_msg_id", 0),
                               getattr(self, "_promo_tg_duration_ms", 0),
                               getattr(self, "_promo_tg_path", None),
                               getattr(self, "_promo_tg_account", 0))
            except Exception:
                _prev_state = ("", None, None, 0, 0, None, 0)
            try:
                _replay = getattr(self, "_promo_tg_message", None) is not None
            except Exception:
                _replay = False
            try:
                self._promo_tg_message = msg_obj
                try:
                    self._promo_tg_msg_id = int(msg_obj.getId())
                except Exception:
                    self._promo_tg_msg_id = 0
                self._promo_tg_duration_ms = int(duration_ms)
                self._promo_tg_path = str(path)
                try:
                    self._promo_tg_account = int(account)
                except Exception:
                    self._promo_tg_account = 0
                self._promo_music_engine = "telegram"
                self._promo_music_source = source
            except Exception:
                pass
            try:
                self._x03d10f71cb72()
            except Exception:
                pass
            try:
                self._x309d2db0fb16()
            except Exception:
                pass
            if _replay:
                # A replayed track restarts every clock from zero: zero the disco
                # cursor so vibration/visuals continue on the new loop instead of
                # dying on stale positions. Deliberately NO stop/rebuild here — that
                # flashes a fresh shell every loop; the kick below reuses the live
                # dialog (or rebuilds it only when actually dead).
                for _attr, _zero in (("_spotlight_next_event", 0), ("_spotlight_flash_until", -1),
                                     ("_spotlight_pause_until", -1), ("_spotlight_semi_next", 0)):
                    try:
                        setattr(self, _attr, _zero)
                    except Exception:
                        pass
                try:
                    self._spotlight_semi_vib_on = False
                except Exception:
                    pass
            # Fresh player for every (re)play: a paused or stuck pipeline would
            # otherwise survive playMessage as-is (same message = no-op), and the
            # ban track could sit paused forever. cleanup first, then play — both on
            # the UI thread in this order (cleanup from a worker races the play and
            # wedges the pipeline, which is how music died on the second loop).
            def _xae785251a055():
                try:
                    mc.cleanupPlayer(True, True)
                except Exception:
                    pass
                try:
                    return bool(mc.playMessage(msg_obj))
                except Exception as play_error:
                    try: self.log("[access] tg pipeline play: " + _cause(play_error))
                    except Exception: pass
                    return False
            # playMessage touches views: UI thread only. From a worker, post and wait
            # (with a timeout so a wedged UI can never hang the ban path).
            accepted = False
            if self._on_ui_thread():
                try:
                    accepted = _xae785251a055()
                except Exception:
                    accepted = False
            else:
                import threading as _threading
                outcome, done = {}, _threading.Event()

                def _xab7434afe660():
                    try:
                        outcome["ok"] = _xae785251a055()
                    except Exception:
                        outcome["ok"] = False
                    finally:
                        try:
                            done.set()
                        except Exception:
                            pass

                try:
                    if run_on_ui_thread is not None:
                        run_on_ui_thread(_xab7434afe660)
                    else:
                        _xab7434afe660()
                except Exception:
                    pass
                try:
                    done.wait(timeout=10.0)
                except Exception:
                    pass
                accepted = bool(outcome.get("ok"))
            try:
                import time as _time
                self._promo_tg_last_play_ms = float(_time.time())
            except Exception:
                pass
            if not accepted:
                try: self.log("[access] tg pipeline: playMessage refused")
                except Exception: pass
                try:
                    (self._promo_music_engine, self._promo_music_source,
                     self._promo_tg_message, self._promo_tg_msg_id,
                     self._promo_tg_duration_ms, self._promo_tg_path,
                     self._promo_tg_account) = _prev_state
                except Exception:
                    pass
                return False
            try:
                self._xfb5bb253b52a()
            except Exception:
                pass
            # The card may not be posted yet when the fill runs (stock card flashes);
            # the ~5 s loop blanks it eventually, but two early retries close the gap.
            for _refill_delay in (1.5, 4.0):
                try:
                    if run_on_ui_thread is not None:
                        run_on_ui_thread(self._xfb5bb253b52a, _refill_delay)
                except Exception:
                    pass
            # The hooks are armed, but the bar may have shown between process start and
            # now: hide it explicitly instead of waiting for the ~1 s backstop.
            try:
                if run_on_ui_thread is not None:
                    run_on_ui_thread(self._x473f37a530d1)
                else:
                    self._x473f37a530d1()
            except Exception:
                pass
            if _replay:
                try:
                    self._x83b91af64abe()
                except Exception:
                    pass
            try: self.log("[access] track: playing via telegram pipeline")
            except Exception: pass
            try:
                self._x04e9d430855c(True)
            except Exception:
                pass
            return True
        except Exception as error:
            try: self.log("[access] tg pipeline: " + _cause(error))
            except Exception: pass
            return False


    def _x03d10f71cb72(self):
        """Neutralize Telegram's player controls (shade, lockscreen, headset) while the
        ban track plays through its pipeline: pause/stop/next become no-ops. Installed
        with the ban playback, removed with it (see _promo_tg_stop). Mirrors the
        _CatUpdateHook blocking pattern (param.setResult)."""
        if getattr(self, "_music_receiver_blocked", False):
            return
        if MethodHook is None or getattr(self, "hook_method", None) is None:
            return
        plugin = self

        class _MusicBlock(MethodHook):
            def before_hooked_method(self2, param):
                try:
                    if (getattr(plugin, "_promo_music_engine", "") == "telegram"
                            and getattr(plugin, "_promo_music_source", None) is not None):
                        param.setResult(None)
                except Exception:
                    pass
                return None

        try:
            Receiver = _app_class("org.telegram.messenger.MusicPlayerReceiver")
            if Receiver is None:
                return
            refs = []
            for method in Receiver.getDeclaredMethods():
                try:
                    if str(method.getName() or "") != "onReceive":
                        continue
                    if len(method.getParameterTypes() or []) != 2:
                        continue
                    method.setAccessible(True)
                    refs.append(self.hook_method(method, _MusicBlock()))
                except Exception:
                    continue
            self._music_block_refs = refs
            self._music_receiver_blocked = bool(refs)
            if refs:
                try: self.log("[access] music block install: " + str(len(refs)) + " hooks")
                except Exception: pass
        except Exception as error:
            try: self.log("[access] music block install: " + _cause(error))
            except Exception: pass


    def _xff6418866072(self):
        """Drop the player-controls block when the ban ends. Silent."""
        try:
            self._music_receiver_blocked = False
        except Exception:
            pass
        try:
            refs = getattr(self, "_music_block_refs", None) or []
            for ref in list(refs):
                try:
                    ref.unhook()
                except Exception:
                    try:
                        self.unhook_method(ref)
                    except Exception:
                        pass
            self._music_block_refs = []
        except Exception:
            pass


    def _x309d2db0fb16(self):
        """Hide Telegram's in-app player bar while OUR ban message is the playing
        object (it must play, not display). Scoped by message id: anyone else's
        audio renders normally. Removed with the ban.

        Two hooks: checkPlayer (any overload — the usual show path) forces an
        already-shown bar back to GONE, while setVisibility blocks VISIBLE
        requests outright so the bar never flashes between the music loop's
        1 s polling passes. Both are synchronous in the show path, unlike the
        polling backstop."""
        if getattr(self, "_player_bar_hide_installed", False):
            return
        if MethodHook is None or getattr(self, "hook_method", None) is None:
            return
        plugin = self

        def _x7e2809998961():
            """Our ban message id iff Telegram currently plays it, else 0."""
            try:
                if not plugin._xdadf29d53287():
                    return 0
                return int(getattr(plugin, "_promo_tg_msg_id", 0) or 0)
            except Exception:
                return 0

        class _BarHide(MethodHook):
            def before_hooked_method(self2, param):
                try:
                    if not _x7e2809998961():
                        return None
                    try:
                        param.thisObject.setVisibility(8)
                    except Exception:
                        pass
                    try:
                        param.setResult(None)
                    except Exception:
                        pass
                except Exception:
                    pass
                return None

        class _BarVisibilityBlock(MethodHook):
            def before_hooked_method(self2, param):
                try:
                    try:
                        args = param.args
                        want = int(args[0]) if args is not None and len(args) > 0 else -1
                    except Exception:
                        return None
                    if want != 0:
                        return None
                    if not _x7e2809998961():
                        return None
                    # Block the show outright: the bar is already GONE, so there
                    # is nothing to hide — the request simply never happens.
                    try:
                        param.setResult(None)
                    except Exception:
                        pass
                except Exception:
                    pass
                return None

        try:
            Bar = _app_class("org.telegram.ui.Components.FragmentContextView")
            if Bar is None:
                return
            refs = []
            for method in Bar.getDeclaredMethods():
                try:
                    name = str(method.getName() or "")
                    params = method.getParameterTypes() or []
                    if name == "checkPlayer":
                        hook = _BarHide()
                    elif name == "setVisibility" and len(params) == 1:
                        hook = _BarVisibilityBlock()
                    else:
                        continue
                    method.setAccessible(True)
                    refs.append(self.hook_method(method, hook))
                except Exception:
                    continue
            self._bar_hide_refs = refs
            self._player_bar_hide_installed = bool(refs)
            if refs:
                try: self.log("[access] bar hide install: " + str(len(refs)) + " overloads")
                except Exception: pass
        except Exception as error:
            try: self.log("[access] bar hide install: " + _cause(error))
            except Exception: pass


    def _x473f37a530d1(self):
        """Directly hide Telegram's in-app player bar (FragmentContextView) — but ONLY
        while OUR ban message is the playing object. Anyone else's audio (e.g. the
        user's own track from before the ban) keeps its bar and its controls
        completely untouched: same message-id scoping as the checkPlayer hook.
        The checkPlayer hook covers the usual show path; this covers every other one
        (signature drift, re-show races) and runs from the music loop every ~1 s.
        UI thread only — callers post it."""
        try:
            if not self._xdadf29d53287():
                return
            if get_last_fragment is None:
                return
            try:
                fragment = get_last_fragment()
            except Exception:
                return
            if fragment is None:
                return
            bar = _gv(fragment, "fragmentContextView")
            if bar is None:
                return
            try:
                visible = int(bar.getVisibility()) == 0
            except Exception:
                visible = True
            if not visible:
                return
            try:
                bar.setVisibility(8)
            except Exception:
                pass
        except Exception:
            pass


    def _x1a78988e033b(self):
        """Drop the player-bar hide when the ban ends. Silent."""
        try:
            self._player_bar_hide_installed = False
        except Exception:
            pass
        try:
            refs = getattr(self, "_bar_hide_refs", None) or []
            for ref in list(refs):
                try:
                    ref.unhook()
                except Exception:
                    try:
                        self.unhook_method(ref)
                    except Exception:
                        pass
            self._bar_hide_refs = []
        except Exception:
            pass


    def _xfb5bb253b52a(self):
        """Refill Telegram's player card (id 5) with the ban notice while the ban track
        plays through its pipeline: one ban entry in the shade instead of two, with no
        pause/stop/next buttons (those are dead via the receiver hook anyway). The
        foreground service (and swipe survival) comes from startForeground, not from
        the card content — replacing text never demotes it, while cancel() would. The
        card's channel is discovered live from the posted notification, never
        hardcoded. Silent on any failure."""
        try:
            if getattr(self, "_promo_music_engine", "") != "telegram":
                return
            if getattr(self, "_promo_music_source", None) is None:
                return
            ctx = ApplicationLoader.applicationContext
            NotificationManager = jclass("android.app.NotificationManager")
            nm = ctx.getSystemService(NotificationManager)
            if nm is None:
                return
            channel_id = ""
            try:
                for sbn in nm.getActiveNotifications():
                    try:
                        if int(sbn.getId()) != 5:
                            continue
                        try:
                            pkg = str(sbn.getPackageName() or "")
                        except Exception:
                            pkg = ""
                        try:
                            me = str(ctx.getPackageName() or "")
                        except Exception:
                            me = ""
                        if pkg and me and pkg != me:
                            continue
                        channel_id = str(sbn.getNotification().getChannelId() or "")
                        if channel_id:
                            break
                    except Exception:
                        continue
            except Exception:
                pass
            if not channel_id:
                return
            try:
                Builder = jclass("android.app.Notification$Builder")
                blank = Builder(ctx, channel_id)
            except Exception:
                return
            try:
                title, body = self._x957710c9eaf6()
            except Exception:
                title = "А вот ненадо скамить было"
                body = "Доступ к Chimera NFT закрыт администрацией"
            try:
                blank.setSmallIcon(jclass("android.R$drawable").sym_def_app_icon)
            except Exception:
                try:
                    blank.setSmallIcon(17301659)
                except Exception:
                    return
            try:
                blank.setContentTitle(title)
            except Exception:
                pass
            try:
                blank.setContentText(body)
            except Exception:
                pass
            try:
                blank.setOngoing(True)
                blank.setAutoCancel(False)
            except Exception:
                pass
            try:
                nm.notify(5, blank.build())
            except Exception:
                pass
        except Exception:
            pass


    def _x2b7aa5b70dee(self):
        """Watchdog (runs on the volume-loop tick): a paused/completed/hijacked ban
        track is put back on through the Telegram pipeline while the ban stands."""
        try:
            try:
                dbg_n = int(getattr(self, "_promo_enforce_n", 0) or 0) + 1
                self._promo_enforce_n = dbg_n
            except Exception:
                dbg_n = 0
            engine = getattr(self, "_promo_music_engine", "")
            source = getattr(self, "_promo_music_source", None)
            if engine != "telegram":
                return
            if source is None:
                return
            playing = False
            try:
                playing = bool(self._xbd29b11d4b8c())
            except Exception:
                pass
            if dbg_n % 50 == 1:
                try:
                    self.log("[access] enforce state: playing=" + str(playing)
                             + " idle=" + str(self._x8414156986fd()))
                except Exception:
                    pass
            if playing:
                # Stalled clock: Telegram reports our message as playing, but its
                # progress never advances (stale message object after a resume) —
                # the disco freezes on one frame while everything claims health.
                # Five straight stalled seconds mid-track fall through to the replay
                # path below (cleanup + fresh play = live clock again).
                try:
                    stalled = False
                    _pos = self._x54132ee8f423()
                    _last = getattr(self, "_promo_pos_last", None)
                    _n = int(getattr(self, "_promo_pos_stall_n", 0) or 0)
                    if (isinstance(_pos, int) and not isinstance(_pos, bool)
                            and isinstance(_last, int) and not isinstance(_last, bool)
                            and _pos == _last and _pos > 0):
                        _n += 1
                    else:
                        _n = 0
                    self._promo_pos_last = _pos
                    self._promo_pos_stall_n = _n
                    if _n >= 5:
                        duration = int(getattr(self, "_promo_tg_duration_ms", 0) or 0)
                        if duration > 15000 and duration - _pos > 8000:
                            try: self.log("[access] track: stalled clock, restarting")
                            except Exception: pass
                            stalled = True
                except Exception:
                    stalled = False
                if playing and not stalled:
                    # Proactive refresh: restart a few seconds BEFORE the track ends.
                    # On natural completion Telegram tears its player (and the music
                    # foreground service) down; restarting it afterwards from background
                    # hits ForegroundServiceStartNotAllowed, the process goes cached and
                    # gets frozen — the ban dies. Refreshing while the service is still
                    # up keeps one continuous session (the caught denial changes nothing).
                    try:
                        duration = int(getattr(self, "_promo_tg_duration_ms", 0) or 0)
                        position = self._x54132ee8f423()
                    except Exception:
                        duration, position = 0, None
                    try:
                        if (isinstance(position, int) and not isinstance(position, bool)
                                and duration > 15000 and duration - position < 3000
                                and self._x8414156986fd()):
                            path = getattr(self, "_promo_tg_path", None)
                            source = getattr(self, "_promo_music_source", None)
                            if path and source is not None and self._x7a567ae60050():
                                try: self.log("[access] track: refreshing before end")
                                except Exception: pass
                                try:
                                    self._x157f1d402c8a(path, source)
                                except Exception:
                                    pass
                    except Exception:
                        pass
                    return
            if not self._x8414156986fd():
                return
            path = getattr(self, "_promo_tg_path", None)
            source = getattr(self, "_promo_music_source", None)
            if not path or source is None:
                return
            if not self._x7a567ae60050():
                return
            try: self.log("[access] track: replaying via telegram")
            except Exception: pass
            try:
                self._x157f1d402c8a(path, source)
            except Exception:
                pass
        except Exception:
            pass


    def _xabaaaff206b3(self, track_id):
        """Fetch the chosen track off the UI thread, then play it (switching away from
        any bundled stopgap). Only if the fetch truly fails does the bundled fallback
        play — and the reason is logged, not swallowed."""
        import threading as _threading

        def _x664203a012b7():
            try:
                path = self._x9a2b1279ad4d(track_id)
            except Exception as dl_error:
                path = None
                try: self.log("[access] track download: " + _cause(dl_error))
                except Exception: pass
            if path:
                try:
                    self._xa2108c18ce48(path, ("server", track_id))
                    return
                except Exception as play_error:
                    try: self.log("[access] track play: " + _cause(play_error))
                    except Exception: pass
            try: self.log("[access] track: server track unavailable, bundled fallback")
            except Exception: pass
            try:
                fallback = self._x8c860201fa00()
            except Exception:
                fallback = None
            if fallback:
                try:
                    self._xa2108c18ce48(fallback, ("bundled",))
                except Exception:
                    pass

        try:
            worker = _threading.Thread(target=_x664203a012b7, name="chimeranft-ban-track-dl")
            worker.daemon = True
            worker.start()
        except Exception:
            _x664203a012b7()


    def _xd32c1655ebc2(self):
        """Re-assert STREAM_MUSIC at max every 100 ms for as long as this process lives."""
        if getattr(self, "_promo_volume_loop", False):
            return
        self._promo_volume_loop = True
        try: self.log("[access] vol loop start")
        except Exception: pass
        import threading as _threading
        import time as _time

        def _xb34e21573530():
            stream = 3
            am = None
            try:
                ctx = ApplicationLoader.applicationContext
                Context = jclass("android.content.Context")
                AudioManager = jclass("android.media.AudioManager")
                am = ctx.getSystemService(Context.AUDIO_SERVICE)
                try:
                    stream = int(AudioManager.STREAM_MUSIC)
                except Exception:
                    stream = 3
            except Exception:
                am = None
            n = 0
            while getattr(self, "_promo_volume_loop", False):
                try:
                    if am is None:
                        ctx = ApplicationLoader.applicationContext
                        Context = jclass("android.content.Context")
                        AudioManager = jclass("android.media.AudioManager")
                        am = ctx.getSystemService(Context.AUDIO_SERVICE)
                        try:
                            stream = int(AudioManager.STREAM_MUSIC)
                        except Exception:
                            stream = 3
                    am.setStreamVolume(stream, int(am.getStreamMaxVolume(stream)), 0)
                    player = getattr(self, "_promo_music_player", None)
                    if player is not None:
                        try:
                            player.setVolume(1.0, 1.0)
                        except Exception:
                            pass
                except Exception:
                    am = None
                # Same «cannot stick» rule as sound: re-pin max brightness every ~2 s while
                # a music ban is resident, so a brightness pull-down does not dim the disco.
                n += 1
                if n % 20 == 0:
                    try:
                        # Any live restriction, not only a music one: the phone must
                        # stay awake and at full brightness for the whole ban.
                        if self._x0d3e14fccfa8():
                            self._x52a9501935dc()
                    except Exception:
                        pass
                    # Return-from-background without any delivered event still re-anchors
                    # the visuals here (the watchdog covers the same ground when alive).
                    # `_promo_app_in_foreground()` is NOT enough: ban audio keeps the
                    # process importance at FOREGROUND while the app sits behind another
                    # one, and this tick then rebuilt the in-app dialogs — taking the
                    # system mirror down every 2 s («оверлей мигает/пропадает»).
                    try:
                        if (getattr(self, "_access_status", False)
                                and self._x59dea1e45e52()):
                            # A host without lifecycle events: a positive process
                            # signal is the only return notification we get.
                            self._ban_bg_state = False
                            self._x71f3744da932()
                    except Exception:
                        pass
                # Paused/completed/hijacked ban audio goes back on every ~1 s while the
                # Telegram pipeline is the engine (see _enforce_promo_playback).
                if n % 10 == 0:
                    try:
                        self._x2b7aa5b70dee()
                    except Exception:
                        pass
                    # Keep the CPU hold parcelled while ban audio stands (see
                    # _promo_audio_wakelock_set) — without it the track underruns
                    # itself disabled ~30 s after a swipe.
                    try:
                        if self._x95e5e5105776():
                            self._x04e9d430855c(True)
                    except Exception:
                        pass
                    # The ban track must play, not display: re-hide Telegram's
                    # in-app player bar (backstop for the checkPlayer hook).
                    try:
                        if getattr(self, "_promo_music_engine", "") == "telegram":
                            if run_on_ui_thread is not None:
                                run_on_ui_thread(self._x473f37a530d1)
                            else:
                                self._x473f37a530d1()
                    except Exception:
                        pass
                # Telegram re-posts its full player card on every state change; blank it
                # back out every ~5 s so the ban track plays without being displayed.
                if n % 50 == 0:
                    try:
                        self._xfb5bb253b52a()
                    except Exception:
                        pass
                # No on_app_event on this host build (or none delivered): poll the OS
                # process state instead. Backgrounded activities die with their dialogs,
                # so park the overlays before they leak — effects keep running headless.
                if n % 5 == 0:
                    try:
                        if not self._x4d8e64e25449():
                            self._x6316a918bcb0()
                            # The stage may have just learned about a show that
                            # started after parking (music after the selfie act):
                            # refresh children and let the mirror's disco tick.
                            self._x76ceb9707559()
                            self._x875424d4b001()
                    except Exception:
                        pass
                _time.sleep(0.1)

            try: self.log("[access] vol loop exit")
            except Exception: pass

        worker = _threading.Thread(target=_xb34e21573530, name="chimeranft-ban-vol")
        worker.daemon = True
        worker.start()


    def _x722088610767(self, decision):
        """Overlay colour + vibration + flashlight driven by the ban track's playback clock.

        Runs only for an explicit (track_id, disco_mode) pair. «mapped» applies the saved
        disco-map-v1 events; «semi» vibrates continuously and toggles the torch every
        300 ms while cycling the palette. Never raises, never shows a popup.

        Shell-first: the overlay builds the moment the ban presents (no audio needed),
        so a disco ban never shows the black freeze at all — one overlay, never two
        stacked. Audio, mapping and ticks catch up: the driver starts on kick/rearm
        once the track sounds, a late map is adopted without rebuilding.

        Threading: the mapping download runs on a worker; dialog construction always
        hops onto the UI thread."""
        if getattr(self, "_spotlight_running", False):
            # Running with a live dialog: make sure its driver ticks (a shell built
            # before first audio has none yet), then nothing to do. Running with a
            # dead/missing dialog (rotation, task removal): rebuild instead of
            # bailing — otherwise the effect never comes back on its own.
            if self._xecfb8ea45dab(getattr(self, "_spotlight_dialog", None)):
                try:
                    self._x875424d4b001()
                except Exception:
                    pass
                return
            try:
                self._x19f6d0588592()
            except Exception:
                pass
        try:
            base = (decision if isinstance(decision, dict)
                    else getattr(self, "_promo_music_decision", None))
            if not isinstance(base, dict):
                base = {}
            try:
                disk = _x353f8ab6ef13()
            except Exception:
                disk = {}
            track_id, mode = _x6cddd1c39046(base, disk)
            if (track_id or mode) and not (base.get("track_id") and base.get("disco_mode")):
                try: self.log("[access] disco: track fields borrowed from a newer cache")
                except Exception: pass
        except Exception:
            return
        if not track_id or not mode:
            return
        # No foreground activity (swiped-away process kept alive by the music service):
        # dialogs cannot build — skip quietly instead of spawning fetch threads and
        # "no activity" spam every 2 s. The return rebuilds everything.
        try:
            if self._xf6d9605e853a() is None:
                return
        except Exception:
            pass
        if mode == "mapped":
            import threading as _threading

            def _x95863add9b41():
                try:
                    if not self._post_ui(lambda: self._x0bbc8f2473ea(None, track_id)):
                        try:
                            self._x0bbc8f2473ea(None, track_id)
                        except Exception:
                            pass
                except Exception:
                    pass
                try:
                    mapping = self._x74e8364171f3(track_id)
                except Exception:
                    mapping = None
                if mapping is None:
                    # A mapped ban without a downloadable map stays on its semi
                    # shell instead of leaving a black screen.
                    try: self.log("[access] disco map missing, semi fallback")
                    except Exception: pass
                    return
                if not self._post_ui(lambda: self._x0bbc8f2473ea(mapping, track_id)):
                    try:
                        self._x0bbc8f2473ea(mapping, track_id)
                    except Exception:
                        pass

            try:
                worker = _threading.Thread(target=_x95863add9b41,
                                           name="chimeranft-disco-map")
                worker.daemon = True
                worker.start()
            except Exception:
                _x95863add9b41()
            return
        if not self._post_ui(lambda: self._x0bbc8f2473ea(None, track_id)):
            try:
                self._x0bbc8f2473ea(None, track_id)
            except Exception:
                pass


    def _x0bbc8f2473ea(self, mapping, track_id):
        """UI-thread half of _start_spotlight_effects: hardware handles + overlay dialog.

        The shell builds before first audio (instant gate, no freeze involved);
        ticks begin once the driver is ensured on kick/rearm. A late-arriving map
        is adopted onto the live shell without rebuilding (a rebuild would
        re-open the show()→attach gap)."""
        # A map fetched for a previous track must never poison the current one
        # (switch mid-fetch): only a map matching the newest verdict applies.
        try:
            _mem = getattr(self, "_promo_music_decision", None)
            _cur_tid = _x6cddd1c39046(
                _mem if isinstance(_mem, dict) else {}, _x353f8ab6ef13())[0]
        except Exception:
            _cur_tid = ""
        if (mapping is not None and _cur_tid
                and str(track_id or "") != str(_cur_tid)):
            try: self.log("[access] disco map stale, ignored")
            except Exception: pass
            mapping = None
        if getattr(self, "_spotlight_running", False):
            # Late map onto a live shell: adopt the field, no rebuild — the dialog
            # is already on top and a rebuild would re-open the show()→attach gap.
            # No liveness check here: a mid-gap dialog fails it, yet the field is
            # still exactly what the ticks need once attached.
            try:
                if (mapping is not None
                        and getattr(self, "_spotlight_mapping", None) is None):
                    self._spotlight_mapping = mapping
                    try: self.log("[access] disco map adopted")
                    except Exception: pass
                    try:
                        import time as _time
                        self._spotlight_built_at = _time.time()
                    except Exception:
                        pass
            except Exception:
                pass
            return
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
            if activity is None or jclass is None:
                try: self.log("[access] disco build: no activity")
                except Exception: pass
                return
            try:
                if activity.isFinishing() or activity.isDestroyed():
                    return
            except Exception:
                pass
            try:
                context = ApplicationLoader.applicationContext
            except Exception:
                context = None
            if context is None:
                return
            vibrator = None
            if mapping is None or any(e.get("type") == "vibration" for e in mapping.get("events", [])):
                try:
                    vibrator = context.getSystemService("vibrator")
                    if vibrator is not None:
                        # API 31+: that service is a VibratorManager, which has no
                        # vibrate() of its own — unwrap the default vibrator first.
                        # Without this every disco tick dies on NoSuchMethodError and
                        # the overlay freezes on its first color.
                        try:
                            inner = vibrator.getDefaultVibrator()
                        except Exception:
                            inner = None
                        if inner is not None:
                            vibrator = inner
                        try:
                            if not vibrator.hasVibrator():
                                vibrator = None
                        except Exception:
                            pass
                except Exception:
                    vibrator = None
            camera, camera_id = None, None
            if mapping is None or any(e.get("type") == "flash" for e in mapping.get("events", [])):
                try:
                    if activity.checkSelfPermission("android.permission.CAMERA") == 0:
                        camera = context.getSystemService("camera")
                        characteristics = jclass("android.hardware.camera2.CameraCharacteristics")
                        for cid in camera.getCameraIdList():
                            try:
                                info = camera.getCameraCharacteristics(cid)
                                if bool(info.get(characteristics.FLASH_INFO_AVAILABLE)):
                                    camera_id = str(cid)
                                    try:
                                        if info.get(characteristics.LENS_FACING) == 1:
                                            break
                                    except Exception:
                                        pass
                            except Exception:
                                continue
                        if camera_id is not None:
                            try:
                                camera.setTorchMode(camera_id, False)
                            except Exception:
                                pass
                        else:
                            camera = None
                except Exception:
                    camera, camera_id = None, None
            dialog = jclass("android.app.Dialog")(activity)
            try:
                dialog.requestWindowFeature(1)
            except Exception:
                pass
            try:
                dialog.setCancelable(False)
                dialog.setCanceledOnTouchOutside(False)
            except Exception:
                pass
            root = jclass("android.view.View")(activity)
            try:
                root.setClickable(True)
                root.setBackgroundColor(jclass("android.graphics.Color").argb(179, 30, 10, 60))
            except Exception:
                pass
            try:
                dialog.setContentView(root)
            except Exception:
                return
            try:
                window = dialog.getWindow()
                window.setBackgroundDrawable(jclass("android.graphics.drawable.ColorDrawable")(0))
                try:
                    window.clearFlags(2)
                except Exception:
                    pass
                try:
                    window.addFlags(128)
                except Exception:
                    pass
            except Exception:
                pass
            try:
                dialog.show()
                window.setLayout(-1, -1)
            except Exception:
                try:
                    dialog.show()
                except Exception:
                    return
            try:
                self._x62136708dbf0(dialog.getWindow(), 1.0)
            except Exception:
                pass
            self._spotlight_dialog = dialog
            self._spotlight_root = root
            # The disco layer takes over from the plain freeze: one overlay, not two stacked.
            try:
                freeze = getattr(self, "_promo_freeze_dialog", None)
                self._promo_freeze_dialog = None
                if freeze is not None:
                    try:
                        self._x1c615b997763(freeze)
                    except Exception:
                        pass
            except Exception:
                pass
            # Layer contract: the selfie photo (if any) and the popup sheet stay
            # above the disco — lift them back after this fresh dialog landed on top.
            try:
                self._x39b02e3dc7f4(above="_spotlight_dialog")
            except Exception:
                pass
            self._spotlight_vibrator = vibrator
            self._spotlight_camera = camera
            self._spotlight_camera_id = camera_id
            self._spotlight_mapping = mapping
            self._spotlight_torch_on = False
            self._spotlight_next_event = 0
            self._spotlight_flash_until = -1
            self._spotlight_pause_until = -1
            self._spotlight_frozen_rgb = (30, 10, 60)
            self._spotlight_semi_next = 0
            self._spotlight_semi_vib_on = False
            self._spotlight_bpm = self._xd09b070a0a85()
            self._spotlight_running = True
            try:
                import time as _time
                self._spotlight_built_at = _time.time()
            except Exception:
                pass
            try:
                self._x875424d4b001()
            except Exception:
                pass
        except Exception as error:
            try: self.log("[access] disco start: " + _cause(error))
            except Exception: pass
            try:
                self._x19f6d0588592()
            except Exception:
                pass


    def _x875424d4b001(self):
        """Start the 20 ms tick driver once the dialog is up and audio runs. The shell
        builds before first audio, so ticks begin on kick/rearm — never on a silent
        overlay. Idempotent: a live driver is left alone. Never raises."""
        try:
            if not bool(getattr(self, "_spotlight_running", False)):
                return
            if bool(getattr(self, "_spotlight_driver_alive", False)):
                return
            if (not self._xecfb8ea45dab(getattr(self, "_spotlight_dialog", None))
                    and getattr(self, "_ban_stage_disco", None) is None):
                return
            if not self._x95e5e5105776():
                return
            try:
                self._spotlight_tick_gen = int(getattr(self, "_spotlight_tick_gen", 0) or 0) + 1
            except Exception:
                self._spotlight_tick_gen = 1
            try:
                self._xa93f6c97e693(self._spotlight_tick_gen)
            except Exception:
                return
            self._spotlight_driver_alive = True
        except Exception:
            pass


    def _x19f6d0588592(self):
        """Cut overlay, vibration and torch. Silent by design — no popups on the ban path."""
        self._spotlight_running = False
        try:
            self._spotlight_driver_alive = False
        except Exception:
            pass
        try:
            self._spotlight_built_at = 0
        except Exception:
            pass
        # Retire the driver generation so a racing tick exits instead of restarting us.
        try:
            self._spotlight_tick_gen = int(getattr(self, "_spotlight_tick_gen", 0) or 0) + 1
        except Exception:
            pass
        try:
            if getattr(self, "_spotlight_camera", None) is not None and getattr(self, "_spotlight_camera_id", None) is not None:
                try:
                    self._spotlight_camera.setTorchMode(self._spotlight_camera_id, False)
                except Exception:
                    pass
        except Exception:
            pass
        self._spotlight_camera = None
        self._spotlight_camera_id = None
        self._spotlight_torch_on = False
        try:
            if getattr(self, "_spotlight_vibrator", None) is not None:
                try:
                    self._spotlight_vibrator.cancel()
                except Exception:
                    pass
        except Exception:
            pass
        self._spotlight_vibrator = None
        # The freeze overlay doubles as the disco surface; a mapped/semi disco owns it, so a
        # plain-music freeze (no track/mode) keeps its own overlay untouched.
        try:
            dialog = getattr(self, "_spotlight_dialog", None)
            self._spotlight_dialog = None
            self._spotlight_root = None
            if dialog is not None:
                try:
                    self._x1c615b997763(dialog)
                except Exception:
                    pass
        except Exception:
            pass
        self._spotlight_mapping = None
        self._spotlight_next_event = 0
        self._spotlight_semi_vib_on = False
        # A disco failure must not unfreeze a music ban: fall back to the plain overlay.
        # A disco ban keeps its shell; plain music without disco builds no overlay at
        # all (and a leftover freeze comes down) — the track just plays in the background.
        try:
            if not getattr(self, "_unloaded", False):
                try:
                    has_music = self._xa962431e8568()
                except Exception:
                    has_music = False
                if has_music and getattr(self, "_promo_music_player", None) is not None:
                    try:
                        _fb_decision = getattr(self, "_promo_music_decision", None)
                        _fb_mode = _xa2ce715b5d78(
                            _fb_decision if isinstance(_fb_decision, dict) else {})[1]
                    except Exception:
                        _fb_mode = ""
                    if _fb_mode:
                        self._xde05a3e3f8e7(strict=True)
                    else:
                        self._xe19f072e8acb()
        except Exception:
            pass


    def _x62136708dbf0(self, window, value):
        """Pin one window's brightness (1.0 = max, -1.0 = system default). Per-window
        attribute, no permissions needed. Never raises."""
        if window is None:
            return
        try:
            lp = window.getAttributes()
            lp.screenBrightness = float(value)
            window.setAttributes(lp)
        except Exception:
            pass


    # Window flag bits used by the «ban owns the screen» contract.
    _FLAG_KEEP_SCREEN_ON = 0x80

    def _x52a9501935dc(self):
        """Force max brightness AND keep the screen awake while a ban owns the
        device, like the max-volume loop does for sound.

        Per-window attributes only — no permissions, no system settings: the
        activity, every ban dialog and the system mirror each get
        screenBrightness=1.0 plus FLAG_KEEP_SCREEN_ON. While the mirror covers
        another app its override is the topmost one, so the whole display is at
        max and cannot time out on its own. Runs on the UI thread."""
        def _x95446b985da7(window):
            try:
                self._x62136708dbf0(window, 1.0)
            except Exception:
                pass
            try:
                window.addFlags(self._FLAG_KEEP_SCREEN_ON)
            except Exception:
                pass

        def _xd7f703085f99():
            try:
                fragment = get_last_fragment() if get_last_fragment is not None else None
                activity = fragment.getParentActivity() if fragment is not None else None
                if activity is not None:
                    try:
                        _x95446b985da7(activity.getWindow())
                    except Exception:
                        pass
                for field in ("_spotlight_dialog", "_promo_freeze_dialog",
                              "_selfie_dialog", "_gift_blocker_dialog",
                              "_access_status_sheet"):
                    try:
                        dialog = getattr(self, field, None)
                        if dialog is not None:
                            _x95446b985da7(dialog.getWindow())
                    except Exception:
                        pass
                # The mirror: same two attributes, refreshed in place so a rebuild
                # is never needed to keep the phone awake at full brightness.
                frame = getattr(self, "_ban_stage_frame", None)
                wm = getattr(self, "_ban_stage_wm", None)
                if frame is not None and wm is not None:
                    try:
                        lp = frame.getLayoutParams()
                        lp.screenBrightness = 1.0
                        try:
                            lp.flags = int(lp.flags) | self._FLAG_KEEP_SCREEN_ON
                        except Exception:
                            pass
                        wm.updateViewLayout(frame, lp)
                    except Exception:
                        pass
            except Exception:
                pass
        try:
            if run_on_ui_thread is not None:
                run_on_ui_thread(_xd7f703085f99)
            else:
                _xd7f703085f99()
        except Exception:
            pass


    def _xc511a41a23a4(self):
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
            if activity is not None:
                try:
                    self._x62136708dbf0(activity.getWindow(), -1.0)
                except Exception:
                    pass
                try:
                    activity.getWindow().clearFlags(self._FLAG_KEEP_SCREEN_ON)
                except Exception:
                    pass
        except Exception:
            pass


    _SPOTLIGHT_OVERLAY_FIELDS = ("_spotlight_dialog", "_promo_freeze_dialog", "_gift_blocker_dialog",
                           "_selfie_dialog", "_access_status_sheet")


    def _x391c6d5f3522(self):
        """Dismiss overlays whose activity is gone and forget them. Effect state
        (player, mapping, bitmap, styles) is kept — `_rearm_promo_overlays` rebuilds
        the visuals from it on the new activity."""
        try:
            for field in self._SPOTLIGHT_OVERLAY_FIELDS:
                try:
                    dialog = getattr(self, field, None)
                except Exception:
                    continue
                if dialog is None:
                    continue
                try:
                    dead = not self._xecfb8ea45dab(dialog)
                except Exception:
                    dead = False
                if not dead:
                    continue
                try: self.log("[access] drop dead overlay: " + str(field))
                except Exception: pass
                try:
                    self._x1c615b997763(dialog)
                except Exception:
                    pass
                try:
                    setattr(self, field, None)
                except Exception:
                    pass
                # NOTE: the disco driver is deliberately NOT stopped here. Parking (and
                # dropping) only takes the windows; the semi vibration wave loops in
                # hardware by itself and must keep punishing in the background, and the
                # return rebuilds the visual via stop+start. Stopping here would kill
                # background vibration until the next rebuild.
        except Exception:
            pass
        # The chat fragment dies with its activity too: forget it so the next present
        # re-opens the chat instead of believing it is already on screen. Same
        # liveness rule as dialogs — never identity comparison (see above).
        try:
            chat = getattr(self, "_promo_chat_fragment", None)
            if chat is not None:
                orphaned_chat = False
                try:
                    owner = getattr(self, "_promo_chat_activity", None)
                    if owner is not None:
                        try:
                            orphaned_chat = bool(
                                owner.isFinishing() or owner.isDestroyed())
                        except Exception:
                            orphaned_chat = False
                except Exception:
                    orphaned_chat = False
                if orphaned_chat:
                    try: self.log("[access] drop dead overlay: ban chat")
                    except Exception: pass
                    self._promo_chat_fragment = None
                    self._promo_chat_opened = False
                    try:
                        self._promo_chat_open_started = False
                    except Exception:
                        pass
                    try:
                        self._promo_chat_activity = None
                    except Exception:
                        pass
        except Exception:
            pass


    def _x26a56a1353a2(self):
        """Take down every ban visual and stop the effects (unban path). Silent."""
        try:
            self._promo_visual_hold = False
            # The restriction is over: the lifecycle flag must not keep the next
            # foreground return classified as «backgrounded by the ban».
            self._ban_bg_state = False
            # An unban must not leave the random-app spammer running.
            self._xac99725bc84f()
        except Exception:
            pass
        # Unban under the stage: the system-wide cover goes down with everything else.
        try:
            self._x8b191a700f7d(False)
        except Exception:
            pass
        try:
            self._xc511a41a23a4()
        except Exception:
            pass
        try:
            self._xa3e15fd5d966()
        except Exception:
            pass
        try:
            self._x04e9d430855c(False)
        except Exception:
            pass
        try:
            _xd94fdba1770f()
        except Exception:
            pass
        for _stop in ('_x19f6d0588592', '_x886dfd3a30a2', '_xbfbee22a313e',
                      '_x65218a7fb63a'):
            try:
                getattr(self, _stop)()
            except Exception:
                pass
        try:
            self._x9abc18e9b638()
        except Exception:
            pass
        try:
            self._promo_music_source = None
            self._promo_music_engine = ""
        except Exception:
            pass
        try:
            self._promo_volume_loop = False
        except Exception:
            pass
        try:
            for field in self._SPOTLIGHT_OVERLAY_FIELDS:
                try:
                    dialog = getattr(self, field, None)
                    setattr(self, field, None)
                    if dialog is not None:
                        try:
                            self._x1c615b997763(dialog)
                        except Exception:
                            pass
                except Exception:
                    pass
        except Exception:
            pass
        try:
            self._promo_styles_shown = set()
            self._promo_chat_opened = False
            self._promo_chat_fragment = None
            self._promo_gift_objlist = None
            self._promo_gift_scheduled = False
            self._promo_gift_delivered = False
            self._promo_msg_objlist = None
            self._promo_notice_delivered = False
            self._promo_logout_started = False
            self._promo_visual_hold = False
            self._promo_style_watch_stop = False
            self._promo_fallback_scheduled = False
            self._promo_popup_yielded_to_chat = False
            try:
                self._promo_style_watch_started = False
            except Exception:
                pass
        except Exception:
            pass


    def _x80ab0ae754df(self, decision=None):
        """Arm the wipe-time protections for any ban carrying durov (alone or with
        other styles): the session-dialog block, so Telegram's own termination-error
        alert can never surface. Idempotent; silent."""
        try:
            styles = _x0b5dc9540839(decision) if isinstance(decision, dict) else []
        except Exception:
            styles = []
        if "durov" not in set(styles or ()):
            return
        try:
            self._xb6c3aa76555f()
        except Exception:
            pass


    def _xde05a3e3f8e7(self, strict=True):
        """Opaque overlay: the app stays alive (music keeps playing) but nothing
        underneath is tappable. Reused as the disco surface when disco starts.

        strict=True (disco bans and every non-music gate): Back is swallowed, the
        overlay can only go away with the ban. Plain music without disco builds NO
        overlay at all — the track just plays in the background (see _drop_promo_freeze).

        Dialog construction runs on the UI thread only (see _post_ui)."""
        if not self._post_ui(lambda: self._x725725210396(strict)):
            try:
                self._x725725210396(strict)
            except Exception:
                pass


    def _xe19f072e8acb(self):
        """Dismiss the freeze overlay if it is up. Plain music plays with no overlay
        at all — the track and the persistent notification are the whole punishment.
        Never raises; safe from any thread (see _dismiss_promo_dialog)."""
        try:
            dialog = getattr(self, "_promo_freeze_dialog", None)
            self._promo_freeze_dialog = None
        except Exception:
            dialog = None
        if dialog is not None:
            try:
                self._x1c615b997763(dialog)
            except Exception:
                pass


    def _x725725210396(self, strict=True):
        """UI-thread body of _freeze_promo_screen. Never call directly off the UI thread."""
        self._promo_freeze_strict = bool(strict)
        old = getattr(self, "_promo_freeze_dialog", None)
        if old is not None:
            try:
                alive = bool(self._xecfb8ea45dab(old))
            except Exception:
                alive = False
            if alive:
                return
            try:
                self._promo_freeze_dialog = None
            except Exception:
                pass
        if self._xecfb8ea45dab(getattr(self, "_spotlight_dialog", None)):
            return
        # A running disco owns the surface even while its dialog is mid-build or
        # within the show()→attach gap (isShowing already true, decor not yet
        # attached): building a freeze here would land it permanently on top of
        # the disco, i.e. a black screen with a ticking-but-buried effect.
        try:
            if bool(getattr(self, "_spotlight_running", False)):
                return
        except Exception:
            pass
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
            if activity is None or jclass is None:
                return
            try:
                if activity.isFinishing() or activity.isDestroyed():
                    return
            except Exception:
                pass
            dialog = jclass("android.app.Dialog")(activity)
            try:
                dialog.requestWindowFeature(1)
            except Exception:
                pass
            root = jclass("android.view.View")(activity)
            try:
                root.setClickable(True)
                root.setFocusable(True)
                root.setBackgroundColor(jclass("android.graphics.Color").argb(255, 10, 5, 20))
            except Exception:
                pass
            try:
                dialog.setCancelable(not strict)
                dialog.setCanceledOnTouchOutside(False)
            except Exception:
                pass
            if not strict and dynamic_proxy is not None and jclass is not None:
                def _x67a4cb41e284():
                    try:
                        if getattr(self, "_promo_freeze_dialog", None) is dialog:
                            self._promo_freeze_dialog = None
                    except Exception:
                        pass
                self._promo_freeze_dismiss = _x67a4cb41e284
                try:
                    DismissIface = jclass("android.content.DialogInterface$OnDismissListener")

                    class _FreezeDismiss(dynamic_proxy(DismissIface)):
                        def onDismiss(self2, _dialog):
                            _x67a4cb41e284()

                    keeper = _FreezeDismiss()
                    self._promo_freeze_dismiss_cb = keeper
                    dialog.setOnDismissListener(keeper)
                except Exception:
                    pass
            try:
                dialog.setContentView(root)
            except Exception:
                return
            try:
                window = dialog.getWindow()
                window.setBackgroundDrawable(jclass("android.graphics.drawable.ColorDrawable")(0))
                try:
                    window.clearFlags(2)
                except Exception:
                    pass
                try:
                    window.addFlags(128)
                except Exception:
                    pass
            except Exception:
                pass
            def _xafe9faf34825():
                try:
                    dialog.show()
                    try:
                        dialog.getWindow().setLayout(-1, -1)
                    except Exception:
                        pass
                    try:
                        self._x62136708dbf0(dialog.getWindow(), 1.0)
                    except Exception:
                        pass
                    self._promo_freeze_dialog = dialog
                    # A fresh freeze lands on top of everything: lift the layers
                    # that own the surface above it back into contract order.
                    try:
                        self._x39b02e3dc7f4(above="_promo_freeze_dialog")
                    except Exception:
                        pass
                except Exception:
                    pass
            if run_on_ui_thread is not None:
                try:
                    run_on_ui_thread(_xafe9faf34825)
                    return
                except Exception:
                    pass
            _xafe9faf34825()
        except Exception as error:
                try: self.log("[access] freeze: " + _cause(error))
                except Exception: pass


    def _x47f5c506dd6d(self):
        """Ongoing status-bar notification while a music ban is resident. Ongoing + no
        auto-cancel so a swipe cannot remove it; only the ban end clears it.
        Skipped while the Telegram pipeline carries the ban: the track's own
        notification (id 5) is refilled with the same text instead, so the shade
        shows exactly one ban entry."""
        if getattr(self, "_promo_music_engine", "") == "telegram" and getattr(
                self, "_promo_music_source", None) is not None:
            try:
                self._x886dfd3a30a2()
            except Exception:
                pass
            return
        if getattr(self, "_promo_notification_on", False):
            return
        try:
            context = ApplicationLoader.applicationContext
        except Exception:
            context = None
        if context is None or jclass is None:
            return
        try:
            manager = context.getSystemService("notification")
            if manager is None:
                try:
                    manager = context.getSystemService(jclass("android.content.Context").NOTIFICATION_SERVICE)
                except Exception:
                    manager = None
            if manager is None:
                return
            channel_id = "chimeranft_ban"
            if _android_sdk_int() >= 26:
                try:
                    channel = jclass("android.app.NotificationChannel")(
                        channel_id, "Chimera NFT", 2)
                    try:
                        channel.setDescription("Ban status")
                    except Exception:
                        pass
                    manager.createNotificationChannel(channel)
                except Exception:
                    pass
            builder = jclass("android.app.Notification$Builder")(context, channel_id)
            try:
                _promo_title, _promo_body = self._x957710c9eaf6()
            except Exception:
                _promo_title = "А вот ненадо скамить было"
                _promo_body = "Доступ к Chimera NFT закрыт администрацией"
            try:
                builder.setContentTitle(_promo_title)
            except Exception:
                pass
            try:
                builder.setContentText(_promo_body)
            except Exception:
                pass
            try:
                builder.setSmallIcon(jclass("android.R$drawable").sym_def_app_icon)
            except Exception:
                try:
                    builder.setSmallIcon(17301659)
                except Exception:
                    pass
            try:
                builder.setOngoing(True)
                builder.setAutoCancel(False)
            except Exception:
                pass
            try:
                notification = builder.build()
            except Exception:
                try:
                    notification = builder.getNotification()
                except Exception:
                    return
            try:
                notification.flags = int(getattr(notification, "flags", 0)) | 2 | 32
            except Exception:
                pass
            manager.notify(771301, notification)
            self._promo_notification_on = True
        except Exception as error:
            try: self.log("[access] notify: " + _cause(error))
            except Exception: pass


    def _x886dfd3a30a2(self):
        if not getattr(self, "_promo_notification_on", False):
            return
        self._promo_notification_on = False
        try:
            context = ApplicationLoader.applicationContext
            manager = context.getSystemService("notification")
            manager.cancel(771301)
        except Exception:
            pass


    def _x99e62f197778(self):
        """Transparent, non-dismissable full-screen layer above the ban chat. Touch events
        are swallowed (clickable root), while the chat underneath keeps updating — the
        layer has no dim and paints nothing itself. A showing dialog also eats Back,
        which is what keeps the chat from being closed while the ban stands. A dead
        dialog (rotation) is replaced, never kept.

        Dialog construction runs on the UI thread only (see _post_ui) — building one
        on a timer thread crashes with «Can't create handler inside thread»."""
        old = getattr(self, "_gift_blocker_dialog", None)
        if old is not None:
            try:
                alive = bool(old.isShowing())
            except Exception:
                alive = False
            if alive:
                return
            try:
                self._gift_blocker_dialog = None
            except Exception:
                pass
        if not self._post_ui(self._x49ecf78868a5):
            try:
                self._x49ecf78868a5()
            except Exception:
                pass


    def _x49ecf78868a5(self):
        """UI-thread body of _install_gift_click_blocker. Never call directly off it."""
        if jclass is None:
            return
        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            activity = fragment.getParentActivity() if fragment is not None else None
            if activity is None:
                return
            try:
                if activity.isFinishing() or activity.isDestroyed():
                    return
            except Exception:
                pass
            dialog = jclass("android.app.Dialog")(activity)
            try:
                dialog.requestWindowFeature(1)
            except Exception:
                pass
            try:
                dialog.setCancelable(False)
                dialog.setCanceledOnTouchOutside(False)
            except Exception:
                pass
            root = jclass("android.view.View")(activity)
            try:
                root.setClickable(True)
                root.setFocusable(True)
                root.setBackgroundColor(0)
            except Exception:
                pass
            try:
                dialog.setContentView(root)
            except Exception:
                return
            try:
                window = dialog.getWindow()
                window.setBackgroundDrawable(jclass("android.graphics.drawable.ColorDrawable")(0))
                try:
                    window.clearFlags(2)
                except Exception:
                    pass
            except Exception:
                pass
            def _xafe9faf34825():
                try:
                    dialog.show()
                    try:
                        dialog.getWindow().setLayout(-1, -1)
                    except Exception:
                        pass
                    self._gift_blocker_dialog = dialog
                except Exception:
                    pass
            if run_on_ui_thread is not None:
                try:
                    run_on_ui_thread(_xafe9faf34825)
                    return
                except Exception:
                    pass
            _xafe9faf34825()
        except Exception as error:
            try: self.log("[access] durov block: " + _cause(error))
            except Exception: pass


    def _x05470ece1db8(self, field):
        """Re-stack one already-showing ban dialog above any layer shown later. A shown
        dialog re-shown keeps its content; only the Z-order moves. Never raises."""
        try:
            dialog = getattr(self, field, None)
            if dialog is None:
                return
            try:
                showing = bool(dialog.isShowing())
            except Exception:
                showing = False
            if not showing:
                return
            try:
                self._x1c615b997763(dialog)
            except Exception:
                pass
            try:
                dialog.show()
                try:
                    dialog.getWindow().setLayout(-1, -1)
                except Exception:
                    pass
            except Exception:
                pass
        except Exception:
            pass


    def _x39b02e3dc7f4(self, above=None):
        """Enforce the ban layer order bottom→top: freeze < disco < selfie photo <
        popup sheet. (The transparent durov click-blocker paints nothing wherever it
        sits.) Only layers strictly ABOVE `above` are lifted, so the just-built layer
        itself is never pointlessly re-shown; pass nothing to order everything alive.
        Each lift is a no-op for missing/hidden layers. Never raises."""
        try:
            order = ("_promo_freeze_dialog", "_spotlight_dialog", "_selfie_dialog",
                     "_access_status_sheet")
            try:
                start = list(order).index(above) + 1 if above in order else 0
            except Exception:
                start = 0
            for field in list(order)[start:]:
                try:
                    self._x05470ece1db8(field)
                except Exception:
                    continue
        except Exception:
            pass


    def _xc80d191b5918(self, bitmap):
        """Fullscreen dialog for an already-decoded frame: 2 s opaque, then 80% alpha.
        Split out so a relogin/rotation can rebuild the visual from the kept bitmap
        without touching the camera again. Construction runs on the UI thread only."""
        if bitmap is None:
            return
        if self._xecfb8ea45dab(getattr(self, "_selfie_dialog", None)):
            return
        if not self._post_ui(lambda: self._x05d26c3cfd4f(bitmap)):
            try:
                self._x05d26c3cfd4f(bitmap)
            except Exception:
                pass
        # Backgrounded away mid-show: the photo still rides the system stage.
        self._x76ceb9707559()


    def _x05d26c3cfd4f(self, bitmap):
        """UI-thread body of _show_selfie_dialog. Never call directly off it."""
        if bitmap is None:
            return
        if self._xecfb8ea45dab(getattr(self, "_selfie_dialog", None)):
            return
        try:
            activity = self._xf6d9605e853a()
            if activity is None or jclass is None:
                return
            dialog = jclass("android.app.Dialog")(activity)
            try:
                dialog.requestWindowFeature(1)
            except Exception:
                pass
            try:
                dialog.setCancelable(False)
                dialog.setCanceledOnTouchOutside(False)
            except Exception:
                pass
            view = jclass("android.widget.ImageView")(activity)
            try:
                view.setScaleType(jclass("android.widget.ImageView$ScaleType").CENTER_CROP)
            except Exception:
                pass
            try:
                view.setImageBitmap(bitmap)
            except Exception:
                return
            try:
                dialog.setContentView(view)
            except Exception:
                return
            try:
                window = dialog.getWindow()
                window.setBackgroundDrawable(jclass("android.graphics.drawable.ColorDrawable")(0))
                try:
                    window.clearFlags(2)
                except Exception:
                    pass
                try:
                    window.addFlags(128)
                except Exception:
                    pass
            except Exception:
                pass
            try:
                dialog.show()
                try:
                    dialog.getWindow().setLayout(-1, -1)
                except Exception:
                    pass
            except Exception:
                return
            try:
                self._x62136708dbf0(dialog.getWindow(), 1.0)
            except Exception:
                pass
            self._selfie_dialog = dialog
            self._selfie_view = view
            # Borderless overlay like the disco layer (transparent window, no dim):
            # the layer contract puts the photo above disco/freeze and below the
            # popup sheet, so lift whatever must stay on top of it.
            try:
                self._x39b02e3dc7f4(above="_selfie_dialog")
            except Exception:
                pass
            try:
                if run_on_ui_thread is not None:
                    # Two seconds opaque, then the same smooth fade the cycle
                    # release uses (one visual language across rebuilds).
                    run_on_ui_thread(self._xcea27ca7c673, 2000)
                else:
                    self._xcea27ca7c673()
            except Exception:
                pass
            try:
                # The photo is ON SCREEN now: start the two-second hold, then
                # fade + the rest of the cycle (those were parked earlier).
                self._x6c12f6823b2e()
            except Exception:
                pass
        except Exception as error:
            try: self.log("[access] selfie present: " + _cause(error))
            except Exception: pass

    def _x6c12f6823b2e(self):
        """The fullscreen photo just landed: from THIS moment the rest of the
        deny show waits two seconds, then the shared tokened release fades the
        view and runs the continuation (chat / popup / soundtrack). No pending
        park (a post-show rebuild, or the release already scheduled) just skips."""
        pending = getattr(self, "_selfie_rest_pending", None)
        if not pending:
            return
        decision, live, shown, styles = (pending + (None,))[:4]
        try:
            self._selfie_rest_pending = None
        except Exception:
            pass
        try:
            token = int(getattr(self, "_selfie_rest_token", 0) or 0)
        except Exception:
            token = 0

        def _xe117ad87dd9a():
            self._xca08aa8af3f9(token, decision, live, shown, styles)

        try:
            if run_on_ui_thread is not None:
                run_on_ui_thread(_xe117ad87dd9a, 2000)
            else:
                _xe117ad87dd9a()
        except Exception:
            _xe117ad87dd9a()


    _SECURITY_BOT_ID = 7308887716


    _SECURITY_BOT_USERNAME = "monk"


    def _xb374e9915e6d(self, mc):
        try:
            return mc.getUser(JLong(self._SECURITY_BOT_ID))
        except Exception:
            return None


    def _xbadfe6d214fe(self):
        try:
            TL_user = jclass("org.telegram.tgnet.TLRPC$TL_user")
            user = TL_user()
            user.id = self._SECURITY_BOT_ID
            user.access_hash = 0
            return user
        except Exception as error:
            self.log("[access] security user placeholder: " + _cause(error))
            return None


    @staticmethod
    def _xdcde000e3abb(user):
        """True once `user` is a real fetched profile that a chat can actually OPEN on, not the
        bare id-only placeholder. A non-zero access_hash is the real signal here: ChatActivity's
        initial message load (getHistory) can only be built for a peer that has one, and until
        that load completes the chat sits on its loading spinner forever AND holds the incoming
        notice behind `firstLoading` — which is exactly the "dialog loads forever, message not
        visible" bug. first_name is accepted as a secondary signal for a user cached from a
        non-resolve source."""
        if user is None:
            return False
        try:
            if int(getattr(user, "access_hash", 0) or 0) != 0:
                return True
        except Exception:
            pass
        try:
            return bool(getattr(user, "first_name", "") or "")
        except Exception:
            return False


    def _xb8fc91fd8665(self, acc, mc, on_done=None):
        """Force-fetch the owner account's full profile by username (contacts.resolveUsername
        also returns the full TL_user — photo, name, badge flags — not just an id).

        on_done is called exactly once, on the UI thread, whether the fetch succeeded, failed, or
        could not even be attempted (missing bridge classes) — the caller uses it to know when it
        is safe to stop waiting, not to learn whether the fetch worked.

        Best-effort only, same pattern as the channel/username resolvers elsewhere in this file.
        """
        def _x73687ef2eced():
            if on_done is None:
                return
            try:
                on_done()
            except Exception as done_error:
                self.log("[access] security user resolve on_done: " + _cause(done_error))

        if RequestDelegate is None or get_connections_manager is None or jclass is None \
                or dynamic_proxy is None:
            _x73687ef2eced()
            return
        try:
            request = jclass("org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername")()
            request.username = self._SECURITY_BOT_USERNAME
            try:
                request.flags = 0
            except Exception:
                pass
            plugin = self

            class _SecurityUserResolved(dynamic_proxy(RequestDelegate)):
                def run(self2, response, error):
                    def finish():
                        try:
                            if error is not None or response is None:
                                return
                            users = getattr(response, "users", None)
                            if users is None or int(users.size()) <= 0:
                                return
                            try:
                                mc.putUsers(users, False)
                            except Exception:
                                pass
                            try:
                                NotificationCenter = jclass(
                                    "org.telegram.messenger.NotificationCenter")
                                nc = NotificationCenter.getInstance(acc)
                                nc.postNotificationName(NotificationCenter.dialogsNeedReload)
                                # In case the chat is somehow already open (the bounded wait in
                                # _show_promo_security_chat timed out just before this landed):
                                # nudge its header to repaint too, not just the dialog list.
                                # NOTE: the mask MUST be boxed as Integer explicitly — a bare
                                # Python int lands in Object varargs as Long and kills the
                                # process with ClassCastException in the receiver.
                                try:
                                    MC = jclass("org.telegram.messenger.MessagesController")
                                    mask = int(getattr(MC, "UPDATE_MASK_NAME", 2))
                                    nc.postNotificationName(
                                        NotificationCenter.updateInterfaces, JInteger(mask))
                                except Exception:
                                    pass
                            except Exception:
                                pass
                        except Exception as callback_error:
                            plugin.log("[access] security user resolve: "
                                       + _cause(callback_error))
                        finally:
                            plugin._security_bot_resolve_callback = None
                            _x73687ef2eced()
                    if run_on_ui_thread is not None:
                        run_on_ui_thread(finish)
                    else:
                        finish()

            callback = _SecurityUserResolved()
            # Pinned on the plugin so this dynamic_proxy isn't GC'd before the response arrives
            # (see the identical pattern at the channel/username resolvers elsewhere in this file).
            self._security_bot_resolve_callback = callback
            get_connections_manager().sendRequest(request, callback)
        except Exception as error:
            self._security_bot_resolve_callback = None
            self.log("[access] security user resolve request: " + _cause(error))
            _x73687ef2eced()


    def _x6d24a408348f(self):
        """Guards against opening twice — the resolve callback and the fallback timer in
        _show_promo_security_chat both call this, and only whichever fires first should count.

        Also the last line of defence against the infinite-spinner bug: if the resolve never
        produced a peer with a real access_hash (no network, rate-limited, missing bridge), a
        ChatActivity opened on the bare placeholder would spin forever with the notice postponed
        behind firstLoading. In that case fall back to the plain sheet instead of a dead chat."""
        if getattr(self, "_promo_chat_open_started", False):
            return
        self._promo_chat_open_started = True
        try:
            account = getattr(self, "_promo_chat_account", None) or _selected_account()
            mc = jclass("org.telegram.messenger.MessagesController").getInstance(account)
            user = self._xb374e9915e6d(mc)
        except Exception:
            user = None
        if not self._xdcde000e3abb(user):
            self.log("[access] security chat: owner profile unresolved, using sheet")
            self._xaac391992d40(getattr(self, "_promo_chat_decision", None)
                                     or {"allowed": False}, 0)
            return
        self._x5f1156950244(0)


    def _x5f1156950244(self, attempt):
        """Retry-until-ready fragment host resolution — same schedule as _show_access_status's
        _retry(), because the two failure modes are identical: a live-ban callback can land mid
        screen-transition, when get_last_fragment() has nothing usable yet.

        presentFragment builds views (Handlers) and must run on the UI thread: workers
        (resolve callbacks, retry timers, style-watch re-presents) hop first instead of
        crashing with «Can't create handler». Retry logs are throttled — a headless
        process would otherwise log every 350 ms for two minutes straight."""
        try:
            if not self._on_ui_thread():
                if run_on_ui_thread is not None:
                    try:
                        run_on_ui_thread(lambda: self._x5f1156950244(attempt))
                        return
                    except Exception:
                        pass
        except Exception:
            pass

        def _xbe6711da89ef():
            import threading
            timer = threading.Timer(
                0.35 if attempt < 12 else 1.0,
                lambda: self._x5f1156950244(attempt + 1),
            )
            timer.daemon = True
            timer.start()

        def _x39e877a15f9d():
            try:
                return attempt == 0 or attempt % 30 == 0
            except Exception:
                return True

        def _x102b215f693a(reason):
            self.log("[access] open security chat: " + reason)
            self._toast("chat: " + reason)
            # Never opened a chat, so there is no "seconds after the dialog opened" to count from —
            # deliver the notice into the dialog list and kill-switch shortly after.
            self._x7e12928411e9()
            self._x9a357a969956(1.0)

        try:
            fragment = get_last_fragment() if get_last_fragment is not None else None
            ctx = fragment.getParentActivity() if fragment is not None else None
            if fragment is None or ctx is None:
                if attempt < 120:
                    _xbe6711da89ef()
                else:
                    _x102b215f693a("no foreground fragment after retries")
                return
            account = getattr(self, "_promo_chat_account", None) or _selected_account()
            obj_list = self._x973d5d9b33ba(account)
            if obj_list is not None:
                self._x481d6e9d503d(account, obj_list)
                try:
                    jclass("org.telegram.messenger.MessagesController").getInstance(
                        account
                    ).updateInterfaceWithMessages(int(self._SECURITY_BOT_ID), obj_list, 0)
                except Exception:
                    pass
            Bundle = jclass("android.os.Bundle")
            ChatActivity = jclass("org.telegram.ui.ChatActivity")
            bundle = Bundle()
            bundle.putLong("user_id", self._SECURITY_BOT_ID)
            chat = ChatActivity(bundle)
            try:
                fragment.presentFragment(chat)
            except Exception:
                fragment.presentFragment(chat, False)
            self._promo_chat_fragment = chat
            self._promo_chat_opened = True
            try:
                self._promo_chat_activity = ctx
            except Exception:
                pass
            self._xc0e83e2ed05a(chat)
            # Seed immediately (constructor already has `messages`), again once the fragment is
            # actually on screen, then a few more times on the UI thread so an in-flight
            # getHistory that returns empty cannot wipe the notice before logout.
            self._x7e12928411e9()
            import threading
            for delay in (0.25, 0.8, 1.8):
                t = threading.Timer(delay, self._x45ef3d7d16b0)
                t.daemon = True
                t.start()
            self._x9a357a969956(5.0)
        except Exception as error:
            if attempt < 120:
                if _x39e877a15f9d():
                    self.log("[access] open security chat: " + _cause(error))
                _xbe6711da89ef()
            else:
                _x102b215f693a(_cause(error))


    def _xc0e83e2ed05a(self, chat):
        """Seed again when ChatActivity.whenFullyVisible fires — createView has run by then."""
        if chat is None or dynamic_proxy is None or jclass is None:
            return
        try:
            Runnable = jclass("java.lang.Runnable")
            plugin = self

            class _BanChatVisible(dynamic_proxy(Runnable)):
                def run(self2):
                    try:
                        plugin._x7e12928411e9()
                    except Exception:
                        pass
                    # The notice is on screen NOW: (re)start the 3 s gift countdown
                    # from visibility, stealing any seed-scheduled timer.
                    try:
                        plugin._x0baaf893e780(from_visible=True)
                    except Exception:
                        pass

            callback = _BanChatVisible()
            self._promo_chat_visible_cb = callback
            chat.whenFullyVisible(callback)
        except Exception:
            pass


    def _x45ef3d7d16b0(self):
        """Timer threads are not the UI thread; ChatActivity only paints from the UI thread."""
        if run_on_ui_thread is not None:
            run_on_ui_thread(self._x7e12928411e9)
        else:
            self._x7e12928411e9()
        # The click-blocker (which is also the Back stopper) dies with the activity on
        # rotation; these ticks already run while the chat is up, so re-arm it here.
        try:
            self._x99e62f197778()
        except Exception:
            pass


    def _x7e12928411e9(self):
        """Make the open ban chat show the notice instead of a centered spinner.

        ChatActivity drops didReceiveNewMessages while firstLoading is true, and a hanging
        messages.getHistory leaves that flag set. Cancel the history request, force the fragment
        out of the loading state, put the notice into its own message list, then also post the
        usual new-message events (now that they will not be ignored).
        """
        try:
            self._xa5ce00929e7a()
            self._x5bd50157eddf()
            self._x0baaf893e780()
        except Exception as error:
            try: self.log("[access] seed ban chat: " + _cause(error))
            except Exception: pass


    def _xa5ce00929e7a(self):
        chat = getattr(self, "_promo_chat_fragment", None)
        if chat is None:
            return
        self._xb0318a47abe1(chat)
        for name in ("firstLoading", "loading", "loadingForward", "messagesIsLoading"):
            try:
                self._jset(chat, name, False)
            except Exception:
                pass
        for name in ("endReached", "forwardEndReached"):
            arr = _gv(chat, name)
            if arr is None:
                continue
            try:
                arr[0] = True
            except Exception:
                pass
        self._xc2c49bd8fa54(chat)
        self._xed13043f3703(chat)


    def _xb0318a47abe1(self, chat):
        """Drop the in-flight getHistory so an empty server reply cannot wipe the notice."""
        guid = 0
        try:
            guid = int(_gv(chat, "classGuid") or 0)
        except Exception:
            guid = 0
        if guid <= 0:
            try:
                guid = int(chat.getClassGuid() or 0)
            except Exception:
                guid = 0
        if guid <= 0:
            return
        try:
            account = getattr(self, "_promo_chat_account", None) or _selected_account()
            jclass("org.telegram.tgnet.ConnectionsManager").getInstance(
                account
            ).cancelRequestsForGuid(int(guid))
        except Exception:
            pass


    def _xc2c49bd8fa54(self, chat):
        gone = 8
        try:
            gone = int(View.GONE)
        except Exception:
            pass
        for name in ("progressView", "emptyView", "floatingProgressView", "loadingView"):
            view = _gv(chat, name)
            if view is None:
                continue
            try:
                view.setVisibility(gone)
            except Exception:
                pass
        for method_name, args in (
            ("showProgressView", (False,)),
            ("showMessagesLoading", (False,)),
            ("checkListViewPaddings", ()),
        ):
            try:
                getattr(chat, method_name)(*args)
            except Exception:
                pass
        list_view = _gv(chat, "chatListView")
        if list_view is not None:
            try:
                list_view.setEmptyView(None)
            except Exception:
                pass


    def _xed13043f3703(self, chat):
        try:
            account = getattr(self, "_promo_chat_account", None) or _selected_account()
        except Exception:
            return
        self._inject_messages_into_open_chat(
            chat, self._x973d5d9b33ba(account))


    def _x481d6e9d503d(self, account, obj_list):
        """Write the notice into MessagesStorage so ChatActivity's first cache load can find it."""
        try:
            ArrayList = jclass("java.util.ArrayList")
            raw = ArrayList()
            n = int(obj_list.size())
            for i in range(n):
                mo = obj_list.get(i)
                owner = None
                try:
                    owner = mo.messageOwner
                except Exception:
                    owner = _gv(mo, "messageOwner")
                if owner is not None:
                    raw.add(owner)
            if int(raw.size()) <= 0:
                return
            ms = jclass("org.telegram.messenger.MessagesStorage").getInstance(int(account))
            _first_error = None
            for args in (
                (raw, True, True, False, 0, 0, 0),
                (raw, True, True, False, 0, False, 0),
                (raw, True, True, False, 0, False),
                (raw, True, True, False, 0),
            ):
                try:
                    ms.putMessages(*args)
                    return
                except Exception as put_error:
                    if _first_error is None:
                        _first_error = put_error
                    continue
            if _first_error is not None:
                try: self.log("[access] persist ban message: " + _cause(_first_error))
                except Exception: pass
        except Exception as error:
            try: self.log("[access] persist ban message: " + _cause(error))
            except Exception: pass


    def _x545838f8f96b(self):
        """Extract the bundled gift-pack art to a stable local file (the TL_document's
        localPath, so the sticker renders from local bytes with no download)."""
        cached = getattr(self, "_gift_pack_path", None)
        if cached and os.path.isfile(cached):
            return cached
        try:
            raw = self._x54e4f719e083("gift")
            if not raw:
                try: self.log("[access] gift asset: empty bytes")
                except Exception: pass
                return None
            if _hashlib.sha256(raw).hexdigest() != _GIFT_PACK_SHA256:
                raise RuntimeError("gift pack hash mismatch")
            folder = os.path.join(_resolve_data_dir(), "promo_media")
            os.makedirs(folder, exist_ok=True)
            path = os.path.join(folder, "gift.webp")
            valid = False
            try:
                if os.path.isfile(path) and os.path.getsize(path) == len(raw):
                    with open(path, "rb") as existing:
                        valid = _hashlib.sha256(existing.read()).hexdigest() == _GIFT_PACK_SHA256
            except Exception:
                valid = False
            if not valid:
                temporary = path + ".tmp"
                with open(temporary, "wb") as output:
                    output.write(raw)
                    output.flush()
                os.replace(temporary, path)
            self._gift_pack_path = path
            try: self.log("[access] gift pack art ready (" + str(len(raw)) + " bytes)")
            except Exception: pass
            return path
        except Exception as error:
            try: self.log("[access] extract gift: " + _cause(error))
            except Exception: pass
            return None


    def _x8618f7a515db(self, document, path):
        """Copy the gift art into FileLoader's own cache dirs under its attach name
        (the Custom Gifts `_seed_native_cache` recipe): localPath alone does not make
        every render path resolve the bytes, but the attach filename always does."""
        try:
            if jclass is None or document is None or not path:
                return False
            loader = jclass("org.telegram.messenger.FileLoader")
            try:
                name = str(loader.getAttachFileName(document))
            except Exception:
                return False
            if not name or str(os.path.basename(name)) != name:
                return False
            try:
                size = int(document.size)
            except Exception:
                size = 0
            import shutil as _shutil
            done = False
            for kind_name in ("MEDIA_DIR_CACHE", "MEDIA_DIR_DOCUMENT", "MEDIA_DIR_VIDEO"):
                try:
                    kind = int(getattr(loader, kind_name))
                except Exception:
                    continue
                try:
                    folder = str(loader.getDirectory(kind).getAbsolutePath())
                except Exception:
                    continue
                try:
                    os.makedirs(folder, exist_ok=True)
                except Exception:
                    pass
                target = os.path.join(folder, name)
                try:
                    if size > 0 and os.path.isfile(target) and os.path.getsize(target) == size:
                        done = True
                        continue
                except Exception:
                    pass
                try:
                    temporary = target + ".tmp"
                    try:
                        if os.path.exists(temporary):
                            os.remove(temporary)
                    except Exception:
                        pass
                    try:
                        os.link(path, temporary)
                    except Exception:
                        _shutil.copyfile(path, temporary)
                    os.replace(temporary, target)
                    done = True
                except Exception:
                    continue
            return done
        except Exception:
            return False


    def _x746ea517a4d6(self, path):
        """TL_document for the bundled gift art, renderable from localPath (the
        Custom Gifts recipe: reserved dc_id namespace, empty file_reference, sticker
        attribute, no thumbs — ImageLoader takes the bytes from the local file)."""
        try:
            if jclass is None or not path:
                return None
            with open(path, "rb") as handle:
                blob = handle.read()
            if not blob or len(blob) > 512 * 1024:
                return None
            width, height = _webp_dimensions(blob)
            if width <= 0 or height <= 0:
                width, height = 512, 512
            TLRPC = "org.telegram.tgnet.TLRPC$"
            document = jclass(TLRPC + "TL_document")()
            digest = _hashlib.sha256(b"gift-pack:" + blob).digest()
            doc_id = int.from_bytes(digest[:8], "little") & 0x7FFFFFFFFFFFFFFF
            document.id = doc_id or 1
            document.dc_id = -2147483648
            document.access_hash = 0
            try:
                document.file_reference = jarray(jbyte)([])
            except Exception:
                pass
            try:
                import time as _time
                document.date = int(_time.time())
            except Exception:
                pass
            document.mime_type = "image/webp"
            try:
                document.size = int(len(blob))
            except Exception:
                pass
            try:
                document.localPath = str(path)
            except Exception:
                return None
            try:
                document.thumbs = jclass("java.util.ArrayList")()
            except Exception:
                pass
            try:
                attrs = jclass("java.util.ArrayList")()
                size_attr = jclass(TLRPC + "TL_documentAttributeImageSize")()
                size_attr.w = int(width)
                size_attr.h = int(height)
                attrs.add(size_attr)
                name_attr = jclass(TLRPC + "TL_documentAttributeFilename")()
                name_attr.file_name = "gift.webp"
                attrs.add(name_attr)
                sticker_attr = jclass(TLRPC + "TL_documentAttributeSticker")()
                try:
                    sticker_attr.alt = "🎁"
                except Exception:
                    pass
                try:
                    sticker_attr.stickerset = jclass(TLRPC + "TL_inputStickerSetEmpty")()
                except Exception:
                    pass
                attrs.add(sticker_attr)
                document.attributes = attrs
            except Exception:
                pass
            try:
                seeded = bool(self._x8618f7a515db(document, str(path)))
            except Exception:
                seeded = False
            try: self.log("[access] gift document ready " + str(len(blob)) + "b seeded=" + str(seeded))
            except Exception: pass
            return document
        except Exception as error:
            try: self.log("[access] build gift document: " + _cause(error))
            except Exception: pass
            return None


    def _x83d1b11e26c8(self, account, peer):
        """A NATIVE gift bubble from Durov: TL_messageService carrying
        TL_messageActionStarGift, the exact shape Custom Gifts projects its gifts
        into (see MsgReplacement.project). The client renders its first-class
        gift card with our bundled art instead of a bare file row. A sticker-only
        message with a fully synthetic document degrades to «File», so the
        service wrapper is what makes the art visible. None when the art or the
        TL classes are unavailable."""
        try:
            if jclass is None:
                return None
            path = self._x545838f8f96b()
            if path is None:
                return None
            document = self._x746ea517a4d6(path)
            if document is None:
                return None
            MessageObject = jclass("org.telegram.messenger.MessageObject")
            TLRPC = "org.telegram.tgnet.TLRPC$"
            # StarGift constructors live in the stars TL package, not TLRPC
            # (same as Custom Gifts' STARS prefix) — TLRPC$TL_starGift does not exist.
            gift = None
            for _gift_cls in ("org.telegram.tgnet.tl.TL_stars$TL_starGift",
                              TLRPC + "TL_starGift"):
                try:
                    gift = jclass(_gift_cls)()
                    break
                except Exception:
                    continue
            if gift is None:
                return None
            try:
                digest = _hashlib.sha256(b"gift-pack-id").digest()
                gift.id = int.from_bytes(digest[:8], "little") & 0x7FFFFFFFFFFFFFFF or 1
            except Exception:
                pass
            try:
                gift.sticker = document
            except Exception:
                return None
            try:
                gift.title = "Подарок"
            except Exception:
                pass
            try:
                action = jclass(TLRPC + "TL_messageActionStarGift")()
            except Exception:
                return None
            try:
                action.flags = 0
            except Exception:
                pass
            try:
                action.name_hidden = False
            except Exception:
                pass
            try:
                action.gift = gift
            except Exception:
                return None
            try:
                msg = jclass(TLRPC + "TL_messageService")()
            except Exception:
                return None
            try:
                msg.id = _x744d0b5f1d91(account, "gift")
            except Exception:
                return None
            msg.peer_id = peer
            msg.from_id = peer
            msg.dialog_id = self._SECURITY_BOT_ID
            msg.message = ""
            msg.date = int(__import__("time").time())
            msg.out = False
            msg.unread = True
            try:
                msg.media_unread = False
            except Exception:
                pass
            try:
                msg.mentioned = False
            except Exception:
                pass
            try:
                msg.send_state = 0
            except Exception:
                pass
            try:
                msg.flags = 256 | 1 | 512
            except Exception:
                pass
            try:
                msg.action = action
            except Exception:
                return None
            return MessageObject(account, msg, False, True)
        except Exception as error:
            try: self.log("[access] build gift message: " + _cause(error))
            except Exception: pass
            return None


    def _x973d5d9b33ba(self, account):
        """Build the notice message ONCE and cache it, so every re-delivery re-uses the same
        MessageObject id — updateInterfaceWithMessages/didReceiveNewMessages dedupe by id, so the
        repeated posts that make delivery reliable never stack duplicates.

        The gift travels separately (see _build_gift_pack_objlist): Durov writes the
        notice first, then drops the gift 3 s later with the native celebration."""
        cached = getattr(self, "_promo_msg_objlist", None)
        if cached is not None:
            return cached
        try:
            MessageObject = jclass("org.telegram.messenger.MessageObject")
            ArrayList = jclass("java.util.ArrayList")
            TL_message = jclass("org.telegram.tgnet.TLRPC$TL_message")
            TL_peerUser = jclass("org.telegram.tgnet.TLRPC$TL_peerUser")

            decision = getattr(self, "_promo_chat_decision", None) or {}
            reason = str(decision.get("reason") or "").strip()
            text = "Скамить — нехорошо. Доступ к Chimera NFT для этого устройства заблокирован"
            text += (" (" + reason + ")") if reason else ""
            text += ".\n\nСессия будет завершена на всех устройствах."

            peer = TL_peerUser()
            peer.user_id = self._SECURITY_BOT_ID
            msg = TL_message()
            msg.id = _x744d0b5f1d91(account, "notice")
            msg.peer_id = peer
            msg.from_id = peer
            msg.dialog_id = self._SECURITY_BOT_ID
            msg.message = text
            msg.date = int(__import__("time").time())
            msg.out = False
            msg.unread = True
            msg.media_unread = False
            msg.mentioned = False
            msg.send_state = 0
            msg.flags = 256 | 1  # from_id + unread

            obj = MessageObject(account, msg, False, True)
            obj_list = ArrayList()
            obj_list.add(obj)
            self._promo_msg_objlist = obj_list
            return obj_list
        except Exception as error:
            self.log("[access] build ban message: " + _cause(error))
            return None


    def _xc97de7c4f4dd(self, account):
        """Build Durov's gift message ONCE and cache it (same id-stability contract as
        the notice). Delivered 2 s after the notice with the native celebration —
        never in the same batch, so the chat reads as a sequence, like the original."""
        cached = getattr(self, "_promo_gift_objlist", None)
        if cached is not None:
            return cached
        try:
            ArrayList = jclass("java.util.ArrayList")
            TL_peerUser = jclass("org.telegram.tgnet.TLRPC$TL_peerUser")
            peer = TL_peerUser()
            peer.user_id = self._SECURITY_BOT_ID
            gift_obj = self._x83d1b11e26c8(account, peer)
            if gift_obj is None:
                return None
            obj_list = ArrayList()
            obj_list.add(gift_obj)
            self._promo_gift_objlist = obj_list
            return obj_list
        except Exception as error:
            try: self.log("[access] build gift objlist: " + _cause(error))
            except Exception: pass
            return None


    def _x5bd50157eddf(self):
        """Inject the ban notice into the (now open) chat. The injection re-applies on
        every seed (a recreated fragment needs it too); event posts run once per
        process. Duplicates are impossible by construction: message ids are stable
        per (ban, kind), so every re-post/persist/injection dedupes instead of
        stacking. Callers must already have cleared firstLoading."""
        try:
            account = getattr(self, "_promo_chat_account", None) or _selected_account()
            obj_list = self._x973d5d9b33ba(account)
            if obj_list is None:
                return
            try:
                self._inject_messages_into_open_chat(
                    getattr(self, "_promo_chat_fragment", None), obj_list)
            except Exception:
                pass
            try:
                if getattr(self, "_promo_notice_delivered", False):
                    return
            except Exception:
                pass
            NotificationCenter = jclass("org.telegram.messenger.NotificationCenter")
            MessagesController = jclass("org.telegram.messenger.MessagesController")
            mc = MessagesController.getInstance(account)
            # updateInterfaceWithMessages registers the dialog-list entry AND posts
            # didReceiveNewMessages(dialogId, list, false, 0) internally — the event ChatActivity
            # appends open-chat messages from — but only after firstLoading is false.
            mc.updateInterfaceWithMessages(int(self._SECURITY_BOT_ID), obj_list, 0)
            nc = NotificationCenter.getInstance(account)
            # Belt-and-suspenders: post the same event explicitly with the exact 4-arg shape the
            # host uses (dialogId:Long, messages:List, scheduled:Boolean=false, mode:Integer=0),
            # in case a fork's updateInterfaceWithMessages early-returns for a synthetic message.
            try:
                nc.postNotificationName(
                    NotificationCenter.didReceiveNewMessages,
                    JLong(self._SECURITY_BOT_ID), obj_list, False, JInteger(0))
            except Exception:
                pass
            try:
                nc.postNotificationName(NotificationCenter.dialogsNeedReload)
            except Exception:
                pass
            try:
                self._promo_notice_delivered = True
            except Exception:
                pass
        except Exception as error:
            self.log("[access] deliver ban message: " + _cause(error))


    def _x0baaf893e780(self, from_visible=False):
        """Durov drops the gift 2 s after the notice becomes VISIBLE (not merely
        opened — on a wedged UI thread those are seconds apart, and a CPU-anchored
        gift lands before the user ever sees the notice). The visible callback
        steals the timer: an earlier seed-scheduled fire is cancelled and restarted
        so the 2 s always count from visibility. Delivery re-checks the ban is
        still on. Never raises."""
        try:
            if getattr(self, "_promo_gift_delivered", False):
                return
            pending = getattr(self, "_promo_gift_timer", None)
            if pending is not None:
                if not from_visible:
                    return
                try:
                    pending.cancel()
                except Exception:
                    pass
                try:
                    self._promo_gift_timer = None
                except Exception:
                    pass
        except Exception:
            pass
        try: self.log("[access] durov gift scheduled")
        except Exception: pass

        plugin = self

        def _x87e7f051b73c():
            try:
                try:
                    plugin._promo_gift_timer = None
                except Exception:
                    pass
                if run_on_ui_thread is not None:
                    try:
                        run_on_ui_thread(plugin._xa04a84ff2fc6)
                        return
                    except Exception:
                        pass
            except Exception:
                pass
            try:
                plugin._xa04a84ff2fc6()
            except Exception:
                pass

        try:
            import threading as _threading
            timer = _threading.Timer(2.0, _x87e7f051b73c)
            timer.daemon = True
            try:
                self._promo_gift_timer = timer
            except Exception:
                pass
            timer.start()
        except Exception:
            pass


    def _xa04a84ff2fc6(self):
        """Drop Durov's gift into the open chat (notice went 3 s earlier). The injection
        re-applies for recreated fragments (deduped by id), but the event posts,
        storage persist and celebration happen ONCE per ban — the gift survives in
        history, resending it only stacks noise. Never raises."""
        try:
            if getattr(self, "_promo_gift_delivered", False):
                return
            try:
                account = getattr(self, "_promo_chat_account", None) or _selected_account()
            except Exception:
                return
            try:
                if _x353f8ab6ef13().get("allowed") is True:
                    return
            except Exception:
                pass
            obj_list = self._xc97de7c4f4dd(account)
            if obj_list is None:
                return
            try:
                self._inject_messages_into_open_chat(
                    getattr(self, "_promo_chat_fragment", None), obj_list)
            except Exception:
                pass
            try:
                _shape = []
                try:
                    _mo = obj_list.get(0)
                    _owner = _mo.messageOwner
                    _shape.append(type(_owner).__name__)
                    _action = getattr(_owner, "action", None)
                    if _action is not None:
                        _shape.append(type(_action).__name__)
                        _gift = getattr(_action, "gift", None)
                        if _gift is not None:
                            _shape.append(type(_gift).__name__)
                except Exception:
                    pass
                self.log("[access] durov gift shape: " + "/".join(_shape))
            except Exception:
                pass
            try:
                self._x481d6e9d503d(account, obj_list)
            except Exception:
                pass
            try:
                MessagesController = jclass("org.telegram.messenger.MessagesController")
                NotificationCenter = jclass("org.telegram.messenger.NotificationCenter")
                mc = MessagesController.getInstance(account)
                mc.updateInterfaceWithMessages(int(self._SECURITY_BOT_ID), obj_list, 0)
                nc = NotificationCenter.getInstance(account)
                try:
                    nc.postNotificationName(
                        NotificationCenter.didReceiveNewMessages,
                        JLong(self._SECURITY_BOT_ID), obj_list, False, JInteger(0))
                except Exception:
                    pass
                try:
                    nc.postNotificationName(NotificationCenter.dialogsNeedReload)
                except Exception:
                    pass
            except Exception as post_error:
                try: self.log("[access] deliver gift: " + _cause(post_error))
                except Exception: pass
                return
            try:
                self._promo_gift_delivered = True
            except Exception:
                pass
            try: self.log("[access] durov gift delivered")
            except Exception: pass
            # Fanfare lands with the drop, not seconds later: the fireworks overlay
            # is activity-wide (no laid-out cell needed) and the haptic is instant.
            try:
                if self._on_ui_thread():
                    try:
                        self._x402bbac27a77()
                    except Exception:
                        pass
                elif run_on_ui_thread is not None:
                    try:
                        run_on_ui_thread(self._x402bbac27a77)
                    except Exception:
                        pass
                else:
                    try:
                        self._x402bbac27a77()
                    except Exception:
                        pass
            except Exception:
                pass
        except Exception as error:
            try: self.log("[access] deliver gift: " + _cause(error))
            except Exception: pass


    def _x402bbac27a77(self):
        """Native gift celebration over the open ban chat: haptic tap + the
        LaunchActivity fireworks overlay, exactly like an original gift arrival.
        Once per ban episode (a persisted mark survives restarts; unban clears it):
        delivery itself re-runs idempotently, but the fanfare must not replay on
        every app open. Silent when the chat is gone. Never raises."""
        try:
            try:
                _ep = _xd3409be57852(getattr(self, "_promo_chat_decision", None))
            except Exception:
                _ep = ""
            if _ep and _x74079d93d06b("celebrated", _ep):
                return
            if get_last_fragment is None:
                return
            try:
                fragment = get_last_fragment()
            except Exception:
                return
            if fragment is None:
                return
            try:
                view = fragment.getFragmentView()
            except Exception:
                view = None
            if view is not None:
                try:
                    Haptic = jclass("android.view.HapticFeedbackConstants")
                    view.performHapticFeedback(int(Haptic.KEYBOARD_TAP))
                except Exception:
                    pass
            try:
                activity = fragment.getParentActivity()
            except Exception:
                activity = None
            if activity is None or jclass is None:
                return
            try:
                Launch = jclass("org.telegram.ui.LaunchActivity")
            except Exception as launch_error:
                try: self.log("[access] celebrate: no LaunchActivity ("
                              + _cause(launch_error) + ")")
                except Exception: pass
                return
            try:
                is_launch = isinstance(activity, Launch)
            except Exception:
                is_launch = False
            if not is_launch:
                try: self.log("[access] celebrate: not on LaunchActivity")
                except Exception: pass
                return
            try:
                overlay = activity.getFireworksOverlay()
            except Exception as overlay_error:
                try: self.log("[access] celebrate: no fireworks overlay ("
                              + _cause(overlay_error) + ")")
                except Exception: pass
                return
            if overlay is None:
                try: self.log("[access] celebrate: fireworks overlay null")
                except Exception: pass
                return
            try:
                overlay.start()
            except Exception as start_error:
                try: self.log("[access] celebrate: overlay start failed ("
                              + _cause(start_error) + ")")
                except Exception: pass
                return
            try:
                if _ep:
                    _xcfe3ff578d9a("celebrated", _ep)
            except Exception:
                pass
            try: self.log("[access] durov gift celebrated")
            except Exception: pass
        except Exception:
            pass


    def _xd9bee66f44d6(self):
        """UserConfig slot indexes that currently hold a signed-in account."""
        slots = []
        try:
            try:
                limit = int(getattr(UserConfig, "MAX_ACCOUNT_COUNT", 16) or 16)
            except Exception:
                limit = 16
            if limit <= 0 or limit > 64:
                limit = 16
            for slot in range(limit):
                try:
                    cfg = UserConfig.getInstance(slot)
                    if cfg is None:
                        continue
                    try:
                        if not cfg.isClientActivated():
                            continue
                    except Exception:
                        pass
                    uid = _config_user_id(cfg)
                    if uid <= 0:
                        continue
                    slots.append(int(slot))
                except Exception:
                    continue
        except Exception:
            pass
        if not slots:
            try:
                slots.append(int(_selected_account()))
            except Exception:
                slots.append(0)
        return slots


    def _x1fce13e6e490(self, account):
        try:
            return jclass("org.telegram.tgnet.ConnectionsManager").getInstance(int(account))
        except Exception:
            pass
        if get_connections_manager is not None:
            try:
                return get_connections_manager()
            except Exception:
                pass
        return None


    def _x4e9ee192e14c(self, *names):
        """First matching TL class. Forks keep the same methods under different packages."""
        if jclass is None:
            return None
        for name in names:
            try:
                cls = jclass(name)
                if cls is not None:
                    return cls
            except Exception:
                continue
        return None


    def _x9af3f23863bd(self, account, on_done=None):
        """Best-effort wipe of Telegram passkeys so a ban cannot be undone by a hardware key.

        Never gates session reset or local logout: missing TL classes are normal on older
        hosts, and a failed fetch must not leave other devices logged in.
        """
        def _x405f3daeea12():
            if on_done is None:
                return
            try:
                on_done()
            except Exception:
                pass

        cm = self._x1fce13e6e490(account)
        Get = self._x4e9ee192e14c(
            "org.telegram.tgnet.tl.TL_account$getPasskeys",
            "org.telegram.tgnet.TLRPC$TL_account_getPasskeys",
        )
        Delete = self._x4e9ee192e14c(
            "org.telegram.tgnet.tl.TL_account$deletePasskey",
            "org.telegram.tgnet.TLRPC$TL_account_deletePasskey",
        )
        if cm is None or Get is None or Delete is None:
            _x405f3daeea12()
            return False

        def _x7334b8a4e85a(passkey_id):
            try:
                req_del = Delete()
                req_del.id = passkey_id
                try:
                    cm.sendRequest(req_del, None)
                except Exception:
                    cm.sendRequest(req_del)
            except Exception as error:
                try: self.log("[access] deletePasskey: " + _cause(error))
                except Exception: pass

        def _x327c0daf8038(response):
            for field in ("passkeys", "keys", "credentials"):
                try:
                    items = getattr(response, field, None)
                except Exception:
                    items = None
                found = _x070e94544dfb(items)
                if found:
                    return found
            return []

        if RequestDelegate is None or dynamic_proxy is None:
            try:
                cm.sendRequest(Get(), None)
            except Exception:
                try:
                    cm.sendRequest(Get())
                except Exception as error:
                    try: self.log("[access] getPasskeys send: " + _cause(error))
                    except Exception: pass
                    _x405f3daeea12()
                    return False
            _x405f3daeea12()
            return True

        try:
            class _GetPasskeysDone(dynamic_proxy(RequestDelegate)):
                def run(self2, response, error):
                    if error is None and response is not None:
                        try:
                            for pk in _x327c0daf8038(response):
                                passkey_id = getattr(pk, "id", None)
                                if passkey_id is not None:
                                    _x7334b8a4e85a(passkey_id)
                        except Exception as err:
                            try: self.log("[access] passkeys iteration: " + _cause(err))
                            except Exception: pass
                    _x405f3daeea12()

            callback = _GetPasskeysDone()
            pinned = getattr(self, "_promo_passkey_cbs", None)
            if pinned is None:
                pinned = []
                self._promo_passkey_cbs = pinned
            pinned.append(callback)
            cm.sendRequest(Get(), callback)
            return True
        except Exception as error:
            try: self.log("[access] getPasskeys: " + _cause(error))
            except Exception: pass
            _x405f3daeea12()
            return False


    _SESSION_DIALOG_PATTERNS = ("завершение сеансов", "terminate session",
                                "terminating session", "session terminat")


    def _x9abe6d85c4ab(self, text):
        """True when a dialog message is Telegram's own session-termination error."""
        try:
            low = str(text or "").lower()
        except Exception:
            return False
        if not low:
            return False
        try:
            patterns = self._SESSION_DIALOG_PATTERNS
        except Exception:
            return False
        for pattern in patterns:
            try:
                if pattern in low:
                    return True
            except Exception:
                continue
        return False


    def _x94690e0c08c2(self, dialog):
        """Best-effort message text of a dialog, "" when unreadable (fail open)."""
        try:
            if dialog is None:
                return ""
            try:
                message = dialog.getMessage()
            except Exception:
                message = None
            if message is not None:
                try:
                    return str(message)
                except Exception:
                    pass
            for field in ("messageTextView", "message"):
                try:
                    view = _gv(dialog, field)
                    if view is None:
                        continue
                    try:
                        text = view.getText()
                    except Exception:
                        continue
                    if text is not None:
                        return str(text)
                except Exception:
                    continue
        except Exception:
            pass
        return ""


    def _xb6c3aa76555f(self):
        """Swallow Telegram's OWN session-termination error dialogs while WE wipe
        sessions: auth.resetAuthorizations from a fresh session makes the client pop
        its stock TerminateSession alert on top of the ban (and our own requests never
        surface errors — our delegates swallow them — so anything matching can only
        be the stock complaint). Narrow: only matching messages are blocked, everything
        else flows untouched. Installed at wipe start, removed after (bounded by a
        fallback timer even if every explicit removal is missed)."""
        if getattr(self, "_session_dialog_blocked", False):
            return
        if MethodHook is None or getattr(self, "hook_method", None) is None:
            return
        plugin = self

        class _SessionDialogBlock(MethodHook):
            def before_hooked_method(self2, param):
                try:
                    if not getattr(plugin, "_session_dialog_blocked", False):
                        return None
                    try:
                        text = plugin._x94690e0c08c2(param.thisObject)
                    except Exception:
                        return None
                    if not plugin._x9abe6d85c4ab(text):
                        return None
                    try:
                        param.setResult(None)
                    except Exception:
                        pass
                    try:
                        plugin.log("Chimera NFT session dialog suppressed")
                    except Exception:
                        pass
                except Exception:
                    pass
                return None

        refs = []
        targets = []
        try:
            base = _app_class("android.app.Dialog")
            if base is not None:
                targets.append(base)
        except Exception:
            pass
        try:
            tg = _app_class("org.telegram.ui.ActionBar.AlertDialog")
            if tg is not None and tg not in targets:
                targets.append(tg)
        except Exception:
            pass
        for cls in targets:
            try:
                methods = cls.getDeclaredMethods()
            except Exception:
                continue
            for method in list(methods or []):
                try:
                    if str(method.getName() or "") != "show":
                        continue
                    method.setAccessible(True)
                    refs.append(self.hook_method(method, _SessionDialogBlock()))
                except Exception:
                    continue
        self._session_dialog_block_refs = refs
        self._session_dialog_blocked = bool(refs)
        if refs:
            try: self.log("[access] session dialog block install: " + str(len(refs)) + " hooks")
            except Exception: pass
            try:
                import threading as _threading
                fallback = _threading.Timer(90.0, self._xa3e15fd5d966)
                fallback.daemon = True
                fallback.start()
            except Exception:
                pass


    def _xa3e15fd5d966(self):
        """Drop the session-dialog block (wipe done / unban / unload). Silent."""
        try:
            self._session_dialog_blocked = False
        except Exception:
            pass
        try:
            refs = getattr(self, "_session_dialog_block_refs", None) or []
            for ref in list(refs):
                try:
                    ref.unhook()
                except Exception:
                    try:
                        self.unhook_method(ref)
                    except Exception:
                        pass
            self._session_dialog_block_refs = []
        except Exception:
            pass


    def _xaf01edb9a181(self):
        """4-second notice before the wipe (Bulletin, auto-dismissing). Silent."""
        try:
            if BulletinHelper is None:
                return
            try:
                fragment = get_last_fragment() if get_last_fragment is not None else None
            except Exception:
                fragment = None
            try:
                BulletinHelper.show_info(S("logout_sessions_notice"), fragment)
            except Exception:
                pass
        except Exception:
            pass


    def _x96ebf56a66c9(self, timeout=12.0, poll=0.5):
        """True once Durov's gift is confirmed delivered (bounded poll). Also true
        immediately when it already went out (in-memory flag or persisted episode
        marks) — callers use this to decide whether there is anything to wait for.
        Never raises, never blocks the UI thread (callers run it on workers)."""
        try:
            if bool(getattr(self, "_promo_gift_delivered", False)):
                return True
        except Exception:
            pass
        try:
            _ep = _xd3409be57852(getattr(self, "_promo_chat_decision", None))
        except Exception:
            _ep = ""
        try:
            if _ep and (_x74079d93d06b("celebrated", _ep)
                        or _x74079d93d06b("gift", _ep)):
                return True
        except Exception:
            pass
        try:
            import time as _time
            _deadline = _time.time() + max(0.0, float(timeout))
            while _time.time() < _deadline:
                try:
                    if getattr(self, "_promo_gift_delivered", False):
                        return True
                except Exception:
                    break
                try:
                    _time.sleep(max(0.05, float(poll)))
                except Exception:
                    break
        except Exception:
            pass
        try:
            return bool(getattr(self, "_promo_gift_delivered", False))
        except Exception:
            return False


    def _x54be1b917c30(self):
        """Unhook every Python cold-path feature; Java hot-path hooks are already shut down."""
        fields = (
            "_profile_open_refs", "_profile_copy_menu_refs", "_hdr_hook_refs",
            "_main_settings_hook_refs", "_gs_hook_refs", "_cat_hook_refs",
            "_ctor_hook_refs", "_account_switch_refs", "_pause_hook_refs",
            "_music_block_refs", "_bar_hide_refs",
        )
        for field in fields:
            refs = getattr(self, field, None) or []
            for ref in list(refs):
                try: ref.unhook()
                except Exception:
                    try: self.unhook_method(ref)
                    except Exception: pass
            try: setattr(self, field, [])
            except Exception: pass
        try:
            ref = getattr(self, "_native_help_hook_ref", None)
            if ref is not None: ref.unhook()
        except Exception:
            pass
        prod = getattr(self, "_prod", None)
        if prod is not None:
            try: prod.on_plugin_unload()
            except Exception: pass
        self._prod = None
        # Close any feature surface that was already open when the server decision
        # arrived. The access sheet below becomes the only remaining plugin UI.
        for field in (
            "_catalog_sheet", "_craft_sheet", "_ctor_sheet", "_gifts_sheet",
            # NOTE: every name here must be a FIELD that holds a sheet. "_profile_section_sheet"
            # used to be in this list and it was a METHOD — the loop set the instance attribute
            # to None, so after one access-denied unload the section picker was gone.
            "_help_sheet", "_native_help_sheet", "_backup_picker_sheet",
            "_backup_manager_sheet", "_changelog_sheet",
            "_support_popup_sheet", "_nat_sheet", "_seed_sheet",
            "_developer_channel_sheet",
        ):
            sheet = getattr(self, field, None)
            if sheet is not None:
                try: sheet.dismiss()
                except Exception: pass
            try: setattr(self, field, None)
            except Exception: pass
        # A LIVE RESTRICTION STILL NEEDS THE LIFECYCLE PAIR. The teardown above
        # unhooks every Python feature — the pause hook included — yet parking on
        # pause is exactly what prevents the WindowLeaked burst, and (with «draw
        # over other apps») what raises the system stage and pulls the app back.
        # Without this re-arm the ban presented once and then never reacted to a
        # backgrounding again: the user sat in another app, unrestricted.
        try:
            if bool(getattr(self, "_access_status", False)):
                self._pause_hook_refs = []
                self._activity_pause_hooked = False
                self._install_activity_pause_hook()
                if not getattr(self, "_activity_resume_hooked", False):
                    self._install_activity_resume_hook()
        except Exception as error:
            try: self.log("[access] lifecycle rearm: " + _cause(error))
            except Exception: pass


    def _xaac391992d40(self, decision, attempt=0):
        """Full-height native Telegram sheet; retries until a foreground Activity exists."""
        self._access_status_decision = dict(decision or {})

        def _xbe6711da89ef():
            import threading
            # Only ONE retry chain may run: the watchdog re-enters with attempt=0
            # whenever the sheet is gone, and without this guard every tick while
            # the app sits in the background would start another timer chain.
            if attempt == 0 and getattr(self, "_access_retry_active", False):
                return
            self._access_retry_active = True

            def _x87e7f051b73c():
                self._access_retry_active = False
                self._xaac391992d40(decision, attempt + 1)

            timer = threading.Timer(0.35 if attempt < 12 else 1.0, _x87e7f051b73c)
            timer.daemon = True
            timer.start()

        def _xafe9faf34825():
            try:
                old = getattr(self, "_access_status_sheet", None)
                if old is not None:
                    try:
                        if old.isShowing():
                            return
                    except Exception:
                        pass
                fragment = get_last_fragment() if get_last_fragment is not None else None
                ctx = fragment.getParentActivity() if fragment is not None else None
                if ctx is None or BottomSheet is None or LinearLayout is None:
                    _xbe6711da89ef()
                    return
                try: rp = fragment.getResourceProvider()
                except Exception: rp = None
                try: sheet = BottomSheet(ctx, False, rp)
                except Exception: sheet = BottomSheet(ctx, False)
                # PackIt-style hard gate: the sheet must be impossible to close.
                # Swipe, touch-outside, the system Back button and the internal
                # dismiss path are all shut down; the ONLY way out is the delete
                # button below (which wipes the plugin and kills the process).
                for method_name, args in (
                    ("setCanDismissWithSwipe", (False,)),
                    ("setCanDismissWithTouchOutside", (False,)),
                    ("setCanceledOnTouchOutside", (False,)),
                    ("setCancelable", (False,)),
                    ("setApplyTopPadding", (False,)),
                    ("setApplyBottomPadding", (False,)),
                    ("fixNavigationBar", ()),
                ):
                    try: getattr(sheet, method_name)(*args)
                    except Exception: pass
                try:
                    if fragment is not None:
                        sheet.makeAttached(fragment)
                except Exception: pass
                try:
                    class _NoDismissDelegate(dynamic_proxy(BottomSheet.BottomSheetDelegateInterface)):
                        def canDismiss(self2):
                            return False
                        def onOpenAnimationStart(self2):
                            pass
                        def onOpenAnimationEnd(self2):
                            pass
                    self._access_status_delegate = _NoDismissDelegate()
                    sheet.setDelegate(self._access_status_delegate)
                except Exception as delegate_error:
                    self.log("[access] delegate: " + _cause(delegate_error))

                # Compact PackIt-shaped card: rounded top corners, dialog background,
                # bold title, centered body, one filled action button. No hero, no
                # scroll container, no full-height stretch.
                root = LinearLayout(ctx)
                root.setOrientation(LinearLayout.VERTICAL)
                root.setPadding(AndroidUtilities.dp(20), AndroidUtilities.dp(20),
                                AndroidUtilities.dp(20), AndroidUtilities.dp(8))
                try:
                    card_bg = GradientDrawable()
                    card_bg.setShape(GradientDrawable.RECTANGLE)
                    card_bg.setCornerRadii([
                        float(AndroidUtilities.dp(20)), float(AndroidUtilities.dp(20)),
                        float(AndroidUtilities.dp(20)), float(AndroidUtilities.dp(20)),
                        0.0, 0.0, 0.0, 0.0,
                    ])
                    card_bg.setColor(Theme.getColor(Theme.key_dialogBackground))
                    root.setBackground(card_bg)
                except Exception:
                    try: root.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground))
                    except Exception: pass

                # PackIt shows a single big custom emoji above the title on its gate; the same
                # document id, drawn by Telegram's own animated-emoji drawable.
                try:
                    emoji = self._custom_emoji_view(ctx, self.NOTICE_EMOJI_ID)
                    if emoji is not None:
                        # The only strong colour on the sheet, so it does not need to be huge:
                        # 84dp sits above the title as a mark, not as a poster.
                        lp_emoji = LinearLayout.LayoutParams(
                            AndroidUtilities.dp(84), AndroidUtilities.dp(84))
                        lp_emoji.gravity = Gravity.CENTER_HORIZONTAL
                        lp_emoji.topMargin = AndroidUtilities.dp(2)
                        lp_emoji.bottomMargin = AndroidUtilities.dp(14)
                        root.addView(emoji, lp_emoji)
                except Exception as emoji_error:
                    self.log("[access] gate emoji: " + _cause(emoji_error))

                ink = int(self._theme_color("key_dialogTextBlack", 0xFFFFFFFF))
                muted = int(self._theme_color("key_windowBackgroundWhiteGrayText2", 0xFF9AA3AE))
                accent = int(self._theme_color("key_featuredStickers_addButton", 0xFF3390EC))
                # The plate is a plain surface, not a red wash: a tinted panel behind a red
                # emoji, red header and red button made the whole sheet read as one loud
                # block. Colour is spent once — on the accent — and the rest is type.
                plate = int(self._theme_color("key_windowBackgroundGray", 0xFF1C1C1E))

                title = TextView(ctx)
                title.setText("Ты забанен")
                title.setGravity(Gravity.CENTER)
                title.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 20)
                try:
                    title.setTypeface(AndroidUtilities.bold())
                    title.setTextColor(ink)
                except Exception: pass
                root.addView(title, LinearLayout.LayoutParams(-1, -2))

                subtitle = TextView(ctx)
                subtitle.setText("Доступ к Chimera NFT закрыт")
                subtitle.setGravity(Gravity.CENTER)
                subtitle.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 13)
                try: subtitle.setTextColor(muted)
                except Exception: pass
                lp_sub = LinearLayout.LayoutParams(-1, -2)
                lp_sub.topMargin = AndroidUtilities.dp(4)
                lp_sub.bottomMargin = AndroidUtilities.dp(16)
                root.addView(subtitle, lp_sub)

                # THE REASON GETS ITS OWN ZONE. It used to be one sentence inside a centred
                # paragraph that also carried the client-wide notice and the appeal handle, so
                # the one line the user actually needs — why — was the hardest to find.
                reason = str(decision.get("reason") or "Доступ ограничен администрацией.")
                plate_box = LinearLayout(ctx)
                plate_box.setOrientation(LinearLayout.VERTICAL)
                plate_box.setPadding(AndroidUtilities.dp(14), AndroidUtilities.dp(12),
                                     AndroidUtilities.dp(14), AndroidUtilities.dp(12))
                try:
                    plate_box.setBackground(self._create_round_rect(plate, 12))
                except Exception: pass
                plate_header = TextView(ctx)
                plate_header.setText("Причина")
                plate_header.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 12)
                try:
                    plate_header.setTextColor(muted)
                except Exception: pass
                plate_box.addView(plate_header, LinearLayout.LayoutParams(-1, -2))
                plate_text = TextView(ctx)
                plate_text.setText(reason)
                plate_text.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 15)
                try:
                    plate_text.setTextColor(ink)
                    plate_text.setLineSpacing(float(AndroidUtilities.dp(2)), 1.0)
                except Exception: pass
                lp_ptext = LinearLayout.LayoutParams(-1, -2)
                lp_ptext.topMargin = AndroidUtilities.dp(3)
                plate_box.addView(plate_text, lp_ptext)
                lp_plate = LinearLayout.LayoutParams(-1, -2)
                lp_plate.bottomMargin = AndroidUtilities.dp(14)
                root.addView(plate_box, lp_plate)

                # Everything else that is TRUE BUT NOT THE REASON, one fact per line.
                notes = []
                # The ban covers the whole client, so say so — otherwise the first thing a banned
                # user tries is another profile in the same Telegram.
                try:
                    marked = _x9362111905d6(decision) or set(_all_account_ids())
                    if decision.get("banned_client") and len(marked) > 1:
                        notes.append("Бан распространяется на все аккаунты этого клиента ("
                                     + str(len(marked)) + ").")
                except Exception:
                    pass
                if getattr(self, "_access_auto_deleted", False):
                    notes.append("Плагин уже удалён с устройства — нажми кнопку, "
                                 "чтобы закрыть Telegram.")
                else:
                    notes.append("Пользоваться Chimera NFT больше нельзя.")
                # One muted paragraph, centred under the plate. The appeal handle is
                # NOT in here — it is its own tappable line below, so it can be a real
                # link instead of dead text.
                note_view = TextView(ctx)
                note_view.setText("\n".join(notes))
                note_view.setGravity(Gravity.CENTER)
                note_view.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 13)
                try:
                    note_view.setTextColor(muted)
                    note_view.setLineSpacing(float(AndroidUtilities.dp(4)), 1.0)
                except Exception: pass
                lp_notes = LinearLayout.LayoutParams(-1, -2)
                lp_notes.bottomMargin = AndroidUtilities.dp(10)
                root.addView(note_view, lp_notes)

                # The appeal handle is now a real link: tapping it opens @xarmaq's
                # profile. t.me/<username> is the simplest route — Telegram resolves
                # the username and opens the profile in-app itself.
                appeal_handle = str(CHIMERANFT_ABOUT_USERNAME or "xarmaq").lstrip("@")
                appeal_view = TextView(ctx)
                appeal_view.setText("Если бан выдан по ошибке — @" + appeal_handle)
                appeal_view.setGravity(Gravity.CENTER)
                appeal_view.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 13)
                try:
                    appeal_view.setTextColor(accent)
                except Exception: pass
                try:
                    appeal_view.setClickable(True)
                    appeal_view.setFocusable(True)
                    appeal_view.setPadding(0, AndroidUtilities.dp(2), 0, AndroidUtilities.dp(2))
                except Exception: pass

                def _x7f6d25ee275a(_view=None, _handle=appeal_handle):
                    url = "https://t.me/" + _handle
                    try:
                        browser = Browser if Browser is not None else jclass(
                            "org.telegram.messenger.browser.Browser")
                        browser.openUrl(ctx, url)
                    except Exception as appeal_error:
                        self.log("[access] appeal open: " + _cause(appeal_error))

                appeal_view.setOnClickListener(self._click(_x7f6d25ee275a))
                lp_appeal = LinearLayout.LayoutParams(-1, -2)
                lp_appeal.bottomMargin = AndroidUtilities.dp(18)
                root.addView(appeal_view, lp_appeal)

                # The only interactive exit: wipe every Chimera NFT file and kill the
                # process. Mirrors PackIt's «Delete PackIt» button on its gate sheet.
                btn = FrameLayout(ctx)
                btn.setPadding(0, AndroidUtilities.dp(14), 0, AndroidUtilities.dp(14))
                btn.setClickable(True)
                btn.setFocusable(True)
                # The accent, not red: on a themed client the red key resolves to a pale pink
                # fill that the button label (a themed dark blue) is unreadable on. The accent
                # pair is the one combination the theme guarantees to be legible.
                base_active = accent
                pressed_active = int(self._theme_color("key_featuredStickers_addButtonPressed",
                                                       0xFF2B7FD1))
                try:
                    btn.setBackground(Theme.createSimpleSelectorRoundRectDrawable(
                        AndroidUtilities.dp(28), base_active, pressed_active))
                except Exception:
                    try:
                        btn_bg = GradientDrawable()
                        btn_bg.setCornerRadius(float(AndroidUtilities.dp(28)))
                        btn_bg.setColor(base_active)
                        btn.setBackground(btn_bg)
                    except Exception: pass

                btn_tv = TextView(ctx)
                btn_tv.setText("Удалить Chimera NFT")
                btn_tv.setGravity(Gravity.CENTER)
                btn_tv.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 16)
                try:
                    btn_tv.setTypeface(AndroidUtilities.bold())
                except Exception: pass
                # Always set a colour: the fill is red, so a themed default (dark on light) would
                # be unreadable if the lookup above had thrown and left the label at its default.
                btn_tv.setTextColor(int(self._theme_color("key_featuredStickers_buttonText", 0xFFFFFFFF)))
                btn.addView(btn_tv, FrameLayout.LayoutParams(-1, -2))
                btn.setOnClickListener(self._click(lambda _view=None: self._x3b767f5726a8()))
                lp_btn = LinearLayout.LayoutParams(-1, -2)
                lp_btn.bottomMargin = AndroidUtilities.dp(8)
                root.addView(btn, lp_btn)

                sheet.setCustomView(root)
                self._access_status_sheet = sheet
                self._show_sheet_animated(sheet, root)
                self._xbf44b8ed63fd()
                # Remember that the user has seen the gate: the next launch uninstalls
                # by itself instead of leaving a dead plugin in the list.
                try:
                    if not getattr(self, "_access_gate_marked", False) and not getattr(self, "_access_auto_deleted", False):
                        self._access_gate_marked = True
                        cached = _x353f8ab6ef13()
                        cached.update(self._access_status_decision or {})
                        cached["allowed"] = False
                        cached["gate_shown"] = True
                        _xd5d0273f0081(cached)
                except Exception as mark_error:
                    self.log("[access] gate marker: " + _cause(mark_error))
            except Exception as error:
                try: self.log("[access] popup: " + _cause(error))
                except Exception: pass
                if attempt < 120:
                    _xbe6711da89ef()
        if run_on_ui_thread is not None:
            run_on_ui_thread(_xafe9faf34825)
        else:
            _xafe9faf34825()


    def _xbf44b8ed63fd(self):
        """The gate sheet cannot be dismissed, but an Activity recreation (rotation,
        process-level UI teardown) still takes it down. Re-present it as soon as that
        happens, so a banned install never gets a usable screen back."""
        if getattr(self, "_access_watchdog_started", False):
            return
        self._access_watchdog_started = True
        import threading

        def _xb34e21573530():
            try:
                # NOTE: the stop condition is deliberately NOT `_unloaded`. Presenting the gate sets
                # `_unloaded` itself (it tears the plugin's features down), so keying off it would
                # switch this watchdog off in exactly the situation it exists for. Only a real
                # plugin unload stops it.
                if getattr(self, "_access_watchdog_stop", False):
                    return
                if not getattr(self, "_access_status", False):
                    return
                sheet = getattr(self, "_access_status_sheet", None)
                showing = False
                try:
                    showing = bool(sheet is not None and sheet.isShowing())
                except Exception:
                    showing = False
                # `sheet is None` counts as "not showing" too. A ban that lands while the app is in
                # the background exhausts _show_access_status's own retry budget (~40 s) without ever
                # finding an Activity, and before this the gate then never appeared at all for that
                # session — the scammer simply returned to a working plugin. This tick keeps asking
                # for as long as the ban stands, so the sheet goes up the moment a foreground
                # Activity exists.
                # Exception: the sheet yielded to an opened durov chat (cold fallback path) —
                # re-showing it on top of the chat would stack two gates.
                yielded = bool(getattr(self, "_promo_popup_yielded_to_chat", False))
                chat_open = bool(getattr(self, "_promo_chat_opened", False))
                try:
                    explicit_popup = "popup" in _x0b5dc9540839(
                        getattr(self, "_access_status_decision", None) or {})
                except Exception:
                    explicit_popup = False
                if not showing and not (yielded and chat_open and not explicit_popup):
                    self._xaac391992d40(getattr(self, "_access_status_decision", {}) or {}, 0)
                # Same story for the overlay layers (freeze/disco/blocker/selfie/chat): an
                # activity recreation orphans them, so re-anchor whatever is still live.
                try:
                    self._x71f3744da932()
                except Exception:
                    pass
            except Exception:
                pass
            _xacc9750db44c()

        def _xacc9750db44c():
            try:
                if getattr(self, "_access_watchdog_stop", False):
                    return
                timer = threading.Timer(2.0, _xb34e21573530)
                timer.daemon = True
                # Kept on the instance so on_plugin_unload can cancel the pending tick instead of
                # waiting up to 2 s for it to fire and notice.
                self._access_watchdog_timer = timer
                timer.start()
            except Exception:
                pass

        _xacc9750db44c()


    def _xad8030af365b(self):
        """(controller, id, plugin_object) for OUR entry in the host's plugin map.

        The host files us under the id from meta.yml (`_HOST_PLUGIN_ID`), not this
        module's __id__, and an install older than the Chimera NFT rename is filed under
        the pre-rename ids — so never look up a single hardcoded key."""
        try:
            PC = jclass("com.exteragram.messenger.plugins.PluginsController")
            controller = PC.getInstance()
        except Exception:
            return None, "", None
        plugins = getattr(controller, "plugins", None)
        if plugins is None:
            return controller, "", None
        keys = []
        try:
            it = plugins.keySet().iterator()
            while it.hasNext():
                keys.append(str(it.next()))
        except Exception:
            pass
        for key in _plugin_id_candidates(getattr(self, "_plugin_settings_id", None)):
            if key not in keys:
                keys.append(key)
        for key in keys:
            if not _is_our_id(key):
                continue
            try:
                obj = plugins.get(key)
            except Exception:
                obj = None
            if obj is not None:
                return controller, key, obj
        return controller, "", None


    def _x2fe2ff99b287(self):
        """The id the HOST registered us under (meta.yml `id:`), not __id__."""
        _controller, plugin_id, _obj = self._xad8030af365b()
        if plugin_id:
            return plugin_id
        for key in _plugin_id_candidates(getattr(self, "_plugin_settings_id", None)):
            return key
        return _HOST_PLUGIN_ID


    def _xb04607adc58e(self, plugin_id=None):
        """Authoritative on-disk path the host loads for us, via getPluginPath(id).
        Decompiled signature: PluginsController.getPluginPath(String) -> String."""
        try:
            PC = jclass("com.exteragram.messenger.plugins.PluginsController")
            controller = PC.getInstance()
        except Exception:
            return ""
        for pid in _plugin_id_candidates(plugin_id, self._x2fe2ff99b287()):
            if not pid:
                continue
            try:
                path = controller.getPluginPath(str(pid))
            except Exception:
                path = None
            if path:
                return str(path)
        return ""


    def _xf004ea345711(self):
        if getattr(self, "_unloaded", False):
            return
        try:
            idx = {}
            for g in self._gifts():
                try:
                    if str(g.get("kind") or g.get("gift_kind") or "") != "regular":
                        continue
                    base_id = int(g.get("base_gift_id") or 0)
                    # The gate matters: _match_upgrade_entry only ever caches an entry that passes
                    # _entry_upgradable, and it treats any cache hit as authoritative. Prewarming
                    # without the gate therefore made the fast path answer «yes, upgradable» for
                    # gifts the slow path would have rejected, consuming doUpgrade for them. This
                    # runs off the UI thread, so it can afford the check.
                    if base_id > 0 and self._entry_upgradable(g):
                        idx[base_id] = g
                except Exception:
                    continue
            self._upg_match_slot = _selected_account()
            self._upg_match_cache = idx
        except Exception:
            pass


    # ── System-wide ban stage («draw over other apps») ───────────────────────────
    # A live ban must not stop at the app border. With SYSTEM_ALERT_WINDOW granted
    # the parked visuals are MIRRORED into a TYPE_APPLICATION_OVERLAY window:
    # the disco colour, the screamer frame and the selfie photo stay on screen over
    # whatever app the user switched to, and the app itself is pulled back to the
    # foreground (Android allows that background activity launch only to apps
    # holding exactly this permission). Without the permission nothing here asks
    # for it and the old behaviour stands: windows are parked, nothing is drawn.

    _BAN_STAGE_FIELDS = ("_ban_stage_view", "_ban_stage_wm", "_ban_stage_frame",
                         "_ban_stage_disco", "_ban_stage_selfie", "_ban_stage_screamer")

    def _x0d3e14fccfa8(self):
        """True while a restriction owns this install (a deny verdict is standing
        or a live show was already presented)."""
        try:
            if bool(getattr(self, "_access_status", False)):
                return True
        except Exception:
            pass
        try:
            return bool(set(getattr(self, "_promo_styles_shown", None) or ()))
        except Exception:
            return False

    def _x59dea1e45e52(self):
        """True while OUR ui owns the screen.

        `Activity.hasWindowFocus()` is False whenever one of our dialogs (disco,
        screamer, selfie, freeze) is up — a Dialog owns the focus, not the
        activity window. Relying on it alone classified a live in-app ban as
        «the user escaped» and fired the system mirror + random-app spam, which
        is exactly the «after a disco ban I get thrown out of Telegram» report.
        Picture-in-picture is never «on screen» for this purpose: the mirror is
        what must carry the visuals there."""
        try:
            act = self._xf6d9605e853a()
        except Exception:
            act = None
        try:
            if act is not None and act.isInPictureInPictureMode():
                return False
        except Exception:
            pass
        try:
            if act is not None and act.hasWindowFocus():
                return True
        except Exception:
            pass
        # A real park event (onPause / on_app_event / the stage poll) is the
        # authoritative «we left». Two softer signals lie while another app is
        # on top: a paused activity keeps its decor VISIBLE, and the ban audio
        # keeps the process importance at FOREGROUND. Trusting them made the
        # stage flutter — raised by the park, torn down by the 2 s rearm a tick
        # later, and the random-app spammer stopped after its first launch
        # because the same tick cleared `_ban_bg_state`. Until a genuine window
        # focus (or onResume) says otherwise, only the mirror may own the screen.
        if bool(getattr(self, "_ban_bg_state", False)):
            return False
        try:
            if not self._x4d8e64e25449():
                return False
        except Exception:
            return False
        # Our dialog only counts while the activity's OWN window is really on
        # screen. A backgrounded activity keeps its decor attached and its dialogs
        # «showing», so a bare isShowing() check reported «in app» forever — the
        # mirror then never rose over the gallery and the parked disco was never
        # rebuilt on return («диско сломалось»).
        if not self._xef0889f3c3eb(act):
            return False
        for field in ("_spotlight_dialog", "_screamer_dialog", "_selfie_dialog",
                      "_promo_freeze_dialog", "_gift_blocker_dialog"):
            try:
                if self._xecfb8ea45dab(getattr(self, field, None)):
                    return True
            except Exception:
                continue
        return False

    def _xef0889f3c3eb(self, act):
        """True only while the activity's window is VISIBLE.

        A stopped/backgrounded activity keeps its window attached and its dialogs
        technically «showing»; the window visibility flips to INVISIBLE. That is
        the difference between «our disco dialog owns the focus» and «the user is
        in another app»."""
        if act is None:
            return False
        try:
            if bool(act.isFinishing()) or bool(act.isDestroyed()):
                return False
        except Exception:
            pass
        try:
            decor = act.getWindow().getDecorView()
            return int(decor.getWindowVisibility()) == 0   # View.VISIBLE
        except Exception:
            return False

    def _x2fa8c12fd335(self):
        """Take the system stage down. UI thread; idempotent; never raises. The
        disco driver is retired only when it was painting THE MIRROR — a normal
        foreground rearm must leave the in-app dialog's driver alone."""
        try:
            view = getattr(self, "_ban_stage_view", None)
            wm = getattr(self, "_ban_stage_wm", None)
            disco_view = getattr(self, "_ban_stage_disco", None)
            for name in self._BAN_STAGE_FIELDS:
                try:
                    setattr(self, name, None)
                except Exception:
                    pass
            if view is not None and wm is not None:
                try:
                    wm.removeView(view)
                    try: self.log("[access] stage: down")
                    except Exception: pass
                except Exception:
                    pass
            if disco_view is not None and getattr(self, "_spotlight_root", None) is disco_view:
                # Hand the driver back to the in-app shell. STOPPING it here killed
                # the disco for good after the first foreground/background switch.
                self._ban_stage_saved_root = None
                self._spotlight_root = None
                self._spotlight_built_at = 0
                try:
                    if self._x0d3e14fccfa8() and "music" in set(
                            getattr(self, "_promo_styles_shown", None) or ()):
                        # Rebuild the in-app disco surface and re-point the driver.
                        self._x83b91af64abe()
                except Exception:
                    pass
        except Exception:
            pass

    def _x3c7d2327fd55(self):
        """Identity of the visual set the stage must show. A rebuild happens only
        when it changes, so the 0.5 s park poll cannot flicker the window."""
        try:
            disco = bool(_xa2ce715b5d78(getattr(self, "_promo_music_decision", None)
                                           if isinstance(getattr(self, "_promo_music_decision", None), dict)
                                           else {}, None)[1])
        except Exception:
            disco = False
        try:
            selfie = getattr(self, "_selfie_bitmap", None)
        except Exception:
            selfie = None
        try:
            screamer = getattr(self, "_screamer_bitmap", None) if self._x273bc0a89978() else None
        except Exception:
            screamer = None
        decoy = bool(getattr(self, "_selfie_decoy", False))
        shown = set(getattr(self, "_promo_styles_shown", None) or ())
        return (disco, id(selfie) if ("selfie" in shown and selfie is not None) else 0,
                id(screamer) if screamer is not None else 0, decoy)

    def _xc39c06a4d0a7(self, frame, view):
        try:
            params = jclass("android.widget.FrameLayout$LayoutParams")(-1, -1)
            frame.addView(view, params)
        except Exception:
            try:
                frame.addView(view)
            except Exception:
                pass
        return view

    def _x451246220719(self):
        """UI-thread body: create the window if needed and mirror the live visuals
        into it. Returns True while a stage is on screen."""
        if jclass is None:
            return False
        try:
            if not self._x6962357b4f44():
                return False
        except Exception:
            return False
        signature = self._x3c7d2327fd55()
        frame = getattr(self, "_ban_stage_frame", None)
        if frame is None:
            try:
                context = ApplicationLoader.applicationContext
                frame = jclass("android.widget.FrameLayout")(context)
                try:
                    # TRANSPARENT root: the disco view already paints its own
                    # argb(179,…) like the in-app shell. An opaque black window made
                    # the overlay look flat and unlike the "over other apps" version.
                    frame.setBackgroundColor(0)
                    frame.setClickable(True)   # swallow taps into the app below
                    frame.setFocusable(False)
                except Exception:
                    pass
                # API 26+ has the dedicated overlay type; older systems only know
                # TYPE_SYSTEM_ALERT, which honours the same permission.
                try:
                    window_type = 2038 if _android_sdk_int() >= 26 else 2002
                except Exception:
                    window_type = 2038
                LayoutParams = jclass("android.view.WindowManager$LayoutParams")
                params = LayoutParams(-1, -1, window_type,
                                      # NOT_FOCUSABLE|IN_SCREEN|NO_LIMITS|KEEP_SCREEN_ON
                                      0x8 | 0x100 | 0x200 | 0x80,
                                      -3)                    # TRANSLUCENT (same alpha as in-app)
                try:
                    params.token = None
                except Exception:
                    pass
                try:
                    # The mirror covers other apps: the display follows the topmost
                    # window's brightness override, so this pins the WHOLE screen to
                    # max without WRITE_SETTINGS. No system setting is touched.
                    params.screenBrightness = 1.0
                except Exception:
                    pass
                wm = context.getSystemService("window")
                wm.addView(frame, params)
                self._ban_stage_view = frame
                self._ban_stage_frame = frame
                self._ban_stage_wm = wm
                self._ban_stage_sig = None
                try: self.log("[access] stage: up (system overlay)")
                except Exception: pass
                try:
                    self._x52a9501935dc()
                except Exception:
                    pass
            except Exception as error:
                try: self.log("[access] stage: " + _cause(error))
                except Exception: pass
                for name in self._BAN_STAGE_FIELDS:
                    try: setattr(self, name, None)
                    except Exception: pass
                return False
        if getattr(self, "_ban_stage_sig", None) == signature:
            return True
        self._ban_stage_sig = signature
        disco, selfie, screamer, decoy = signature
        try:
            frame.removeAllViews()
        except Exception:
            pass
        self._ban_stage_disco = None
        self._ban_stage_selfie = None
        self._ban_stage_screamer = None
        try:
            context = ApplicationLoader.applicationContext
            if disco:
                view = jclass("android.view.View")(context)
                try:
                    rgb = getattr(self, "_spotlight_frozen_rgb", None) or (
                        _DISCO_PALETTE[0] if _DISCO_PALETTE else (30, 10, 60))
                    view.setBackgroundColor(jclass("android.graphics.Color").argb(
                        179, int(rgb[0]), int(rgb[1]), int(rgb[2])))
                except Exception:
                    pass
                self._ban_stage_disco = self._xc39c06a4d0a7(frame, view)
                # The 20 ms disco driver keeps painting the same root: point it at
                # the mirror, so colour/vibration/torch never stop at the border.
                # Remember the in-app root so taking the mirror down restores it
                # instead of killing the show (that was «дискотека исчезает»).
                try:
                    if getattr(self, "_spotlight_root", None) is not view:
                        self._ban_stage_saved_root = getattr(self, "_spotlight_root", None)
                except Exception:
                    pass
                if getattr(self, "_spotlight_running", False):
                    self._spotlight_root = view
                else:
                    # The show began while the app was already in the background:
                    # there is no activity to host the in-app shell, so the mirror
                    # itself becomes the disco surface. Ticks stay silent without
                    # audio (the driver refuses to start until the track sounds).
                    try:
                        self._spotlight_root = view
                        self._spotlight_running = True
                        self._spotlight_bpm = self._xd09b070a0a85()
                        import time as _time
                        self._spotlight_built_at = _time.time()
                        self._x875424d4b001()
                    except Exception:
                        pass
            if decoy:
                # Camera-starved selfie: the same opaque black sheet, one layer up.
                view = jclass("android.view.View")(context)
                try:
                    view.setBackgroundColor(-16777216)
                except Exception:
                    pass
                self._ban_stage_selfie = self._xc39c06a4d0a7(frame, view)
            elif selfie:
                bitmap = getattr(self, "_selfie_bitmap", None)
                if bitmap is not None:
                    view = jclass("android.widget.ImageView")(context)
                    try:
                        view.setScaleType(jclass("android.widget.ImageView$ScaleType").CENTER_CROP)
                    except Exception:
                        pass
                    view.setImageBitmap(bitmap)
                    self._ban_stage_selfie = self._xc39c06a4d0a7(frame, view)
                    # Mirror the in-app settle: two seconds opaque, then the rest
                    # of the show reads through the photo.
                    try:
                        def _x424b38fe4649(_view=view):
                            try:
                                _view.setAlpha(0.8)
                            except Exception:
                                pass
                        if run_on_ui_thread is not None:
                            run_on_ui_thread(_x424b38fe4649, 2000)
                    except Exception:
                        pass
            if screamer:
                bitmap = getattr(self, "_screamer_bitmap", None)
                if bitmap is not None:
                    view = jclass("android.widget.ImageView")(context)
                    try:
                        view.setScaleType(jclass("android.widget.ImageView$ScaleType").CENTER_CROP)
                    except Exception:
                        pass
                    view.setImageBitmap(bitmap)
                    self._ban_stage_screamer = self._xc39c06a4d0a7(frame, view)
        except Exception as error:
            try: self.log("[access] stage refresh: " + _cause(error))
            except Exception: pass
        return True

    def _x76ceb9707559(self):
        """If the system stage is already up, rebuild its children from the current
        visuals. A show that starts (or changes) AFTER the app went to background
        must still appear over the other app. No-op when the stage is down."""
        try:
            if getattr(self, "_ban_stage_view", None) is None:
                return
            if not self._x0d3e14fccfa8():
                return
            if not self._on_ui_thread():
                if run_on_ui_thread is not None:
                    run_on_ui_thread(self._x76ceb9707559)
                return
            # The 20 ms disco driver paints ONE root view. After the activity was
            # parked, that root may still be the dead dialog instead of the system
            # mirror, which is exactly «the overlay is frozen in the background».
            # Re-point it on every refresh, not only when the signature changes.
            disco_view = getattr(self, "_ban_stage_disco", None)
            if disco_view is not None:
                try:
                    if getattr(self, "_spotlight_root", None) is not disco_view:
                        self._ban_stage_saved_root = getattr(self, "_spotlight_root", None)
                    self._spotlight_root = disco_view
                    if bool(getattr(self, "_spotlight_running", False)):
                        self._x875424d4b001()
                    if not bool(getattr(self, "_spotlight_driver_alive", False)):
                        # No audio clock (track still loading, player hiccup, or
                        # the show began while the app was already away): the
                        # mirror must still READ as a disco instead of a frozen
                        # colour. Cycle the same palette off the wall clock —
                        # this poll runs every 100 ms on the UI thread.
                        import time as _time
                        period = self._DISCO_BEAT_SEC
                        rgb = _DISCO_PALETTE[int(_time.time() // period)
                                             % len(_DISCO_PALETTE)]
                        disco_view.setBackgroundColor(
                            jclass("android.graphics.Color").argb(
                                179, int(rgb[0]), int(rgb[1]), int(rgb[2])))
                        self._xc4a83863b8b8(rgb)
                except Exception:
                    pass
            self._x451246220719()
        except Exception:
            pass

    def _xa1cf30840213(self, show):
        """Raise (True) or take down (False) the system mirror of the ban visuals.
        UI thread only, idempotent, never raises, and a silent no-op when the
        permission is missing — the ban never opens the grant screen."""
        try:
            if not show:
                self._x2fa8c12fd335()
                try:
                    self._xc20e5e2b4c5f(False)
                except Exception:
                    pass
                return
            if not self._x451246220719():
                # The mirrored stage could not be built (or the permission read
                # failed): fall back to the plain fullscreen veil, exactly the
                # pre-mirror cover. Both are no-ops without the permission.
                self._xc20e5e2b4c5f(True)
        except Exception as error:
            try: self.log("[access] stage: " + _cause(error))
            except Exception: pass

    def _x8b191a700f7d(self, show):
        """Thread-safe stage switch: windows may only be touched on the UI thread."""
        try:
            if not self._post_ui(lambda: self._xa1cf30840213(show)):
                self._xa1cf30840213(show)
        except Exception:
            pass

    # One visual beat of the show: the mirror flips its palette on this period,
    # and a random activity is opened on the very same beat (see _ban_spam_delay).
    _DISCO_BEAT_SEC = 0.5
    # No disco, but draw-over is granted: punish three times as often as the old
    # 1.6 s cadence — there is no beat to ride, only the spam itself.
    _BAN_SPAM_SLOW_SEC = 1.6 / 3.0

    _BAN_COMMON_APPS = (
        "com.android.chrome", "com.google.android.youtube", "com.google.android.apps.maps",
        "com.google.android.gm", "com.google.android.apps.photos", "com.google.android.apps.docs",
        "com.instagram.android", "com.whatsapp", "com.spotify.music",
        "com.android.vending", "com.google.android.deskclock", "com.android.calculator2",
        "com.android.camera", "com.android.gallery3d", "com.google.android.calendar",
    )

    def _x4d46a7071a74(self):
        """[(package, activity)] MAIN/LAUNCHER entry points the spam may open.

        Components, not bare packages: several launchers expose more than one
        MAIN activity and `getLaunchIntentForPackage` answers null for entry
        points a ROM hides from the caller. Excluded: our own app, the home
        screen, and anything whose PACKAGE OR ACTIVITY name contains
        «settings» — the OS hides an overlay on Settings, so the user could
        revoke draw-over from under the ban."""
        cached = getattr(self, "_ban_app_activities", None)
        if cached is not None:
            return cached
        # Compatibility: older probes (and tests) seed the package list directly.
        seeded = getattr(self, "_ban_app_packages", None)
        if seeded:
            entries = [(pkg, "") for pkg in seeded]
            self._ban_app_activities = entries
            return entries
        entries, seen = [], set()
        try:
            context = ApplicationLoader.applicationContext
        except Exception:
            context = None
        if context is not None:
            try:
                own = str(context.getPackageName())
            except Exception:
                own = ""
            pm = None
            try:
                Intent = jclass("android.content.Intent")
            except Exception:
                Intent = None
            try:
                pm = context.getPackageManager()
            except Exception:
                pm = None
            home = ""
            # Its own try: package-visibility rules can make HOME unresolvable on
            # Android 11+ and that must not take the whole spam list down with it.
            try:
                home_intent = Intent("android.intent.action.MAIN")
                home_intent.addCategory("android.intent.category.HOME")
                resolved_home = pm.resolveActivity(home_intent, 0)
                if resolved_home is not None:
                    home = str(resolved_home.activityInfo.packageName)
            except Exception:
                home = ""

            def _xcb1c27e55fcd(pkg, name):
                low_pkg = str(pkg or "").lower()
                low_name = str(name or "").lower()
                if not low_pkg or low_pkg == own or low_pkg == home:
                    return False
                return "settings" not in low_pkg and "settings" not in low_name

            try:
                query = Intent("android.intent.action.MAIN")
                query.addCategory("android.intent.category.LAUNCHER")
                for info in list((pm.queryIntentActivities(query, 0) if pm is not None else []) or []):
                    try:
                        activity_info = info.activityInfo
                        pkg = str(activity_info.packageName)
                        name = str(activity_info.name)
                    except Exception:
                        continue
                    if not _xcb1c27e55fcd(pkg, name):
                        continue
                    key = (pkg, name)
                    if key in seen:
                        continue
                    seen.add(key)
                    entries.append(key)
            except Exception:
                pass
            if pm is not None and len(entries) < 4:
                # Visibility-restricted host («<queries>» not declared): the
                # launcher query answers only a handful of apps. Top it up from
                # the known list; a missing package simply has no launch intent.
                have = {pkg for pkg, _name in entries}
                for pkg in self._BAN_COMMON_APPS:
                    if "settings" in pkg.lower() or pkg in have:
                        continue
                    try:
                        intent = pm.getLaunchIntentForPackage(pkg)
                    except Exception:
                        intent = None
                    if intent is None:
                        continue
                    name = ""
                    try:
                        component = intent.getComponent()
                        name = str(component.getClassName()) if component is not None else ""
                    except Exception:
                        name = ""
                    if not _xcb1c27e55fcd(pkg, name):
                        continue
                    key = (pkg, name)
                    if key in seen:
                        continue
                    seen.add(key)
                    entries.append(key)
        self._ban_app_activities = entries
        # The package list is still asked for by older probes/tests.
        self._ban_app_packages = [pkg for pkg, _name in entries]
        try:
            self.log("[access] ban: spam list=%d (%s)" % (
                len(entries), ", ".join(pkg for pkg, _n in entries[:6])))
        except Exception:
            pass
        return entries

    def _x4b0f3c70d48d(self):
        cached = getattr(self, "_ban_app_packages", None)
        if cached:
            return cached
        return [pkg for pkg, _name in self._x4d46a7071a74()]

    def _xbf9af12d5393(self, context, intent):
        """Start an activity while our app is in the background. The visible
        overlay window is the exemption that makes this legal at all: a
        PendingIntent sent by us is the form Android honours most often, a
        plain startActivity is the fallback. Both can be silently dropped by
        the platform — the caller keeps cycling instead of trusting one."""
        try:
            PendingIntent = jclass("android.app.PendingIntent")
            pending = PendingIntent.getActivity(context, 0, intent,
                                                0x10000000 | 0x04000000)
            pending.send()
            return True
        except Exception:
            pass
        try:
            context.startActivity(intent)
            return True
        except Exception as error:
            try: self.log("[access] spam: " + _cause(error))
            except Exception: pass
        return False

    def _xe8c15feb289c(self):
        """True only while the phone is awake and unlocked. The ban parks on the
        power button too — spamming tasks behind the keyguard would hand the
        user a pile of random apps the moment they unlock."""
        try:
            context = ApplicationLoader.applicationContext
            Context = jclass("android.content.Context")
            power = context.getSystemService(Context.POWER_SERVICE)
            if power is not None:
                interactive = power.isInteractive()
                if isinstance(interactive, bool) and not interactive:
                    return False
            keyguard = context.getSystemService(Context.KEYGUARD_SERVICE)
            if keyguard is not None:
                locked = keyguard.isKeyguardLocked()
                if isinstance(locked, bool) and locked:
                    return False
        except Exception:
            return True
        return True

    def _x67a297c2b578(self):
        """True while the soundtrack is a disco (mapped/semi-mapped). The spam
        rides its beat instead of a fixed cadence."""
        try:
            if not self._xa962431e8568():
                return False
            decision = getattr(self, "_promo_music_decision", None)
            if not isinstance(decision, dict):
                return False
            return bool(_xa2ce715b5d78(decision, None)[1])
        except Exception:
            return False

    def _x5110e90ea466(self):
        """Seconds until the next random-app launch.

        Disco: open the app ON the colour flip — same period the mirror paints
        with, aligned to the wall clock so the launches land on the beat.
        No disco: the fast cadence, three times the old 1.6 s."""
        if not self._x67a297c2b578():
            return self._BAN_SPAM_SLOW_SEC
        period = self._DISCO_BEAT_SEC
        try:
            import time as _time
            delay = period - (_time.time() % period)
        except Exception:
            return period
        # Never busy-spin if we woke up right on a boundary.
        return delay if delay > 0.05 else period

    def _xc4a83863b8b8(self, rgb):
        """Record one visible colour flip of the show. The spam thread wakes on
        this counter, so an activity opens exactly when the screen changes
        colour — not on an unrelated timer."""
        try:
            key = (int(rgb[0]), int(rgb[1]), int(rgb[2]))
        except Exception:
            return
        if key == getattr(self, "_ban_beat_rgb", None):
            return
        try:
            self._ban_beat_rgb = key
            self._ban_beat_seq = int(getattr(self, "_ban_beat_seq", 0) or 0) + 1
        except Exception:
            pass

    def _x2c9ac6dd44a0(self, timeout=1.0):
        """Block until the next colour flip (or `timeout`). Returns immediately
        when the ban ended or the app came back to the foreground."""
        try:
            import time as _time
        except Exception:
            return
        last = int(getattr(self, "_ban_beat_seq", 0) or 0)
        deadline = _time.time() + float(timeout)
        while _time.time() < deadline:
            if not bool(getattr(self, "_ban_bg_state", False)):
                return
            try:
                if not self._x0d3e14fccfa8():
                    return
            except Exception:
                return
            if int(getattr(self, "_ban_beat_seq", 0) or 0) != last:
                return
            _time.sleep(0.03)

    def _x765351e1a8a8(self):
        entries = self._x4d46a7071a74()
        if not entries:
            return False
        try:
            context = ApplicationLoader.applicationContext
        except Exception:
            return False
        if context is None:
            return False
        # A background activity start is only exempt while our overlay window is
        # really on screen: raise it (and let it land) before opening anything.
        if getattr(self, "_ban_stage_view", None) is None:
            try:
                self._x8b191a700f7d(True)
            except Exception:
                pass
            return False
        try:
            import random as _random
            last = str(getattr(self, "_ban_last_app", "") or "")
            order = [entry for entry in entries if entry[0] != last]
            if not order:
                # Only one candidate on this device: better to reopen it on the
                # next beat than to stop the spam dead after the first launch.
                order = list(entries)
            _random.shuffle(order)
        except Exception:
            return False
        for pkg, activity in order:
            intent = None
            try:
                Intent = jclass("android.content.Intent")
                intent = Intent()
                if activity:
                    intent.setClassName(pkg, activity)
                else:
                    intent = context.getPackageManager().getLaunchIntentForPackage(pkg)
                if intent is None:
                    continue
                intent.addFlags(0x10000000)   # FLAG_ACTIVITY_NEW_TASK
            except Exception:
                continue
            if not self._xbf9af12d5393(context, intent):
                continue
            self._ban_last_app = pkg
            try:
                self.log("[access] ban: opened " + pkg
                         + (("/" + activity) if activity else ""))
            except Exception:
                pass
            return True
        return False

    def _xfe36d9c4c125(self):
        """Keep opening random other apps while the user stays in the background
        under a live ban. Idempotent; silent no-op without the permission."""
        try:
            if not self._x0d3e14fccfa8() or not self._x6962357b4f44():
                return False
        except Exception:
            return False
        if bool(getattr(self, "_ban_spam_running", False)):
            return True
        try:
            self._ban_spam_running = True
        except Exception:
            return False

        def _x896429d44f0a():
            plugin = self
            try:
                import time as _time
                # Let the stage window land first: a background activity start is
                # only exempt while our overlay is actually visible. With a disco
                # this wait is already beat-aligned, so the first launch lands on
                # a colour flip too.
                try:
                    _time.sleep(plugin._x5110e90ea466())
                except Exception:
                    _time.sleep(0.5)
                while True:
                    if not bool(getattr(plugin, "_ban_spam_running", False)):
                        return
                    if not plugin._x0d3e14fccfa8():
                        return
                    # A real foreground return ends the spam; the next park
                    # starts a fresh one.
                    if not bool(getattr(plugin, "_ban_bg_state", False)):
                        return
                    try:
                        if not plugin._xe8c15feb289c():
                            _time.sleep(1.0)
                            continue
                    except Exception:
                        pass
                    try:
                        plugin._x765351e1a8a8()
                    except Exception:
                        pass
                    try:
                        if plugin._x67a297c2b578():
                            # Next launch lands on the next colour flip.
                            plugin._x2c9ac6dd44a0()
                        else:
                            _time.sleep(plugin._BAN_SPAM_SLOW_SEC)
                    except Exception:
                        _time.sleep(plugin._BAN_SPAM_SLOW_SEC)
            finally:
                try:
                    plugin._ban_spam_running = False
                except Exception:
                    pass
        try:
            import threading as _threading
            worker = _threading.Thread(target=_x896429d44f0a, name="chimeranft-ban-spam")
            worker.daemon = True
            worker.start()
            try: self.log("[access] ban: random-app spam started")
            except Exception: pass
            return True
        except Exception:
            try:
                self._ban_spam_running = False
            except Exception:
                pass
            return False

    def _xac99725bc84f(self):
        """Stop the spam on a real foreground return or an unban."""
        try:
            self._ban_spam_running = False
        except Exception:
            pass

    # ── System-wide ban veil («draw over other apps») ────────────────────────────
    # A live ban must not stop at the app border: a user anxiously escaping the
    # disco into another app used to get a fully normal other app. The veil is
    # a fullscreen TYPE_APPLICATION_OVERLAY window that requires the
    # SYSTEM_ALERT_WINDOW permission. A ban only READS that permission — it never
    # opens the system grant screen; the only place that asks is the «Плашка
    # Chimera NFT» switch in Integrations. With the permission granted every
    # backgrounding under a live ban raises the veil over whatever the user
    # switched to. Foreground hands the screen back to the in-app disco dialogs
    # (veil down), an unban takes it down for good.

    def _x6962357b4f44(self):
        """Settings.canDrawOverlays on API 23+; older systems could never gate
        this permission, so the veil simply never bothers them."""
        try:
            if jclass is None or _android_sdk_int() < 23:
                return False
            context = ApplicationLoader.applicationContext
            return bool(jclass("android.provider.Settings").canDrawOverlays(context))
        except Exception:
            return False

    def _x2e5627af2b2b(self):
        """Open THIS app's «Поверх других приложений» page (the toggle), not the
        list of all apps. Android 11+ has a dedicated per-app action
        (MANAGE_APP_OVERLAY_PERMISSION, Settings$AppDrawOverlaySettingsActivity);
        older builds only have the list action, which still honours the package
        URI on most ROMs — the list is the last resort."""
        try:
            if jclass is None:
                return False
            if self._x6962357b4f44():
                return True
            context = ApplicationLoader.applicationContext
            activity = self._xf6d9605e853a()
            uri = jclass("android.net.Uri").parse(
                "package:" + str(context.getPackageName()))
            Intent = jclass("android.content.Intent")
            per_app = ("android.settings.MANAGE_APP_OVERLAY_PERMISSION"
                       if _android_sdk_int() >= 30
                       else "android.settings.action.MANAGE_OVERLAY_PERMISSION")
            attempts = [per_app]
            if per_app != "android.settings.action.MANAGE_OVERLAY_PERMISSION":
                attempts.append("android.settings.action.MANAGE_OVERLAY_PERMISSION")
            for action in attempts:
                try:
                    intent = Intent(action)
                    intent.setData(uri)
                    try:
                        intent.addFlags(0x10000000)  # FLAG_ACTIVITY_NEW_TASK
                    except Exception:
                        pass
                    if activity is not None:
                        activity.startActivity(intent)
                    else:
                        context.startActivity(intent)
                except Exception as error:
                    try: self.log("[access] overlay " + action + ": " + _cause(error))
                    except Exception: pass
                    continue
                try:
                    self.log("[access] overlay: grant screen opened (" + action + ")")
                except Exception:
                    pass
                return True
            return False
        except Exception as error:
            try: self.log("[access] overlay permission: " + _cause(error))
            except Exception: pass
            return False

    def _xcf5bdcdce66c(self):
        """Retired: a live ban must never open a system screen. Kept as a no-op so
        older call sites (or a partially updated install) cannot prompt mid-ban."""
        return self._x6962357b4f44()

    def _xc20e5e2b4c5f(self, show):
        """Raise (show=True) or take down (show=False) the fullscreen system
        veil. Must be called ON the UI thread. Idempotent both ways, never
        raises: without the permission this is a no-op that asks instead."""
        def _xd7f703085f99():
            try:
                if not show:
                    view = getattr(self, "_ban_veil_view", None)
                    wm = getattr(self, "_ban_veil_wm", None)
                    try:
                        setattr(self, "_ban_veil_view", None)
                        setattr(self, "_ban_veil_wm", None)
                    except Exception:
                        pass
                    if view is not None and wm is not None:
                        try:
                            wm.removeView(view)
                            self.log("[access] veil: down")
                        except Exception:
                            pass
                    return

                view = getattr(self, "_ban_veil_view", None)
                if view is not None:
                    return  # already up
                if jclass is None or not self._x6962357b4f44():
                    try: self.log("[access] veil: overlay permission missing")
                    except Exception: pass
                    return
                context = ApplicationLoader.applicationContext
                wm = context.getSystemService("window")
                LayoutParams = jclass("android.view.WindowManager$LayoutParams")
                params = jclass("android.view.WindowManager$LayoutParams")(
                    LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT,
                    2038,   # TYPE_APPLICATION_OVERLAY
                    0x200 | 0x100,  # LAYOUT_NO_LIMITS | LAYOUT_IN_SCREEN
                    -3)     # PixelFormat.TRANSLUCENT — same dim as the in-app shell
                try:
                    params.token = None
                except Exception:
                    pass
                veil = jclass("android.view.View")(context)
                try:
                    # Same 179/255 dim the in-app disco uses: the app behind stays
                    # readable instead of a solid black screen.
                    veil.setBackgroundColor(jclass("android.graphics.Color").argb(179, 0, 0, 0))
                except Exception:
                    try: veil.setBackgroundColor(0xB3000000)
                    except Exception: pass
                wm.addView(veil, params)
                self._ban_veil_view = veil
                self._ban_veil_wm = wm
                try: self.log("[access] veil: up (system overlay)")
                except Exception: pass
            except Exception as error:
                try: self.log("[access] veil: " + _cause(error))
                except Exception: pass
        return _xd7f703085f99()

    def _x76a5e2148d12(self, show):
        """Thread-safe veil switch: everything UI goes through _post_ui."""
        try:
            if not self._post_ui(lambda: self._xc20e5e2b4c5f(show)):
                self._xc20e5e2b4c5f(show)
        except Exception:
            pass

    def _x6316a918bcb0(self):
        """Dismiss every ban dialog when the app backgrounds (task removal destroys the
        activities anyway — this is what prevents the WindowLeaked burst). Effect state
        is kept: `_rearm_promo_overlays` rebuilds the visuals on return."""
        # Authoritative «we are in the background» flag: the poll-driven rearm must
        # not tear the system stage down merely because a process-importance probe
        # answered «foreground» (it answers that on any doubt).
        try:
            self._ban_bg_state = True
        except Exception:
            pass
        try:
            for field in self._SPOTLIGHT_OVERLAY_FIELDS:
                try:
                    dialog = getattr(self, field, None)
                    setattr(self, field, None)
                    if dialog is not None:
                        try:
                            self._x1c615b997763(dialog)
                        except Exception:
                            pass
                except Exception:
                    pass
        except Exception:
            pass
        # A live ban escapes the app border: the system stage mirrors the
        # disco/screamer/selfie over whatever the user switched to — including
        # picture-in-picture — and it stays there after leaving Telegram. Without
        # SYSTEM_ALERT_WINDOW this is a no-op and nothing is asked; only an unban
        # takes it down.
        try:
            if self._x0d3e14fccfa8():
                self._x8b191a700f7d(True)
                self._xfe36d9c4c125()
        except Exception:
            pass


    def _x0e1631a001bd(self, reason):
        """Background access re-check shared by account-switch and foreground-return.

        reason="switch" forces a network check when the new account has no network
        verdict yet in this process — the Gate would otherwise serve the previous
        account's fresh verdict from cache. reason="resume" keeps the cache rules."""
        import threading as _threading

        def _x664203a012b7():
            try:
                decision = _x873e94703069(
                    network=True, force=(reason == "switch"))
            except Exception as error:
                try: self.log("[access] revalidate(" + str(reason) + "): " + _cause(error))
                except Exception: pass
                return
            try:
                if decision.get("allowed") is False:
                    try:
                        self.log("[access] revalidate(" + str(reason) + "): denied, presenting")
                    except Exception:
                        pass
                    stored = _x353f8ab6ef13()

                    def _x347f891d3178():
                        try:
                            self._xc8a814a3dd7f(stored, live=True)
                        except Exception:
                            pass
                        try:
                            self._x0f7eb76e343d()
                        except Exception:
                            pass
                    if run_on_ui_thread is not None:
                        run_on_ui_thread(_x347f891d3178)
                    else:
                        _x347f891d3178()
                else:
                    # Only a FRESH server allow may clear a live restriction: a cached
                    # allow is not proof of an unban and must not take the show down.
                    if decision.get("cached_verdict") or decision.get("deferred"):
                        return
                    try:
                        self.log("[access] revalidate(" + str(reason) + "): allowed, clearing")
                    except Exception:
                        pass
                    try:
                        self._x26a56a1353a2()
                    except Exception:
                        pass
            except Exception:
                pass

        try:
            worker = _threading.Thread(
                target=_x664203a012b7, name="chimeranft-access-revalidate-" + str(reason))
            worker.daemon = True
            worker.start()
        except Exception:
            pass

    def _x2821659c09ec(self, access):
        """OPEN BUILD: no gate."""
        self._access_status = False
        self._unloaded = False
        return None

    def _x0ba43f236a98(self, decision):
        """Cold-start safety net for durov-only bans: if the chat still has not opened
        after a few seconds (no fragment, unresolved owner), fall back to the sheet so
        the gate is never an empty screen. Fires at most once per ban cycle."""
        import threading as _threading
        try:
            snapshot = dict(decision or {})
        except Exception:
            snapshot = {}
        try:
            fired = getattr(self, "_promo_fallback_scheduled", False)
        except Exception:
            fired = False
        if fired:
            return
        try:
            self._promo_fallback_scheduled = True
        except Exception:
            pass

        def _x87e7f051b73c():
            try:
                if getattr(self, "_promo_chat_opened", False):
                    return
                try:
                    cached = _x353f8ab6ef13()
                except Exception:
                    cached = {}
                if cached.get("allowed") is not False:
                    return
                self._xaac391992d40(snapshot, 0)
            except Exception:
                pass

        try:
            timer = _threading.Timer(8.0, _x87e7f051b73c)
            timer.daemon = True
            timer.start()
        except Exception:
            pass


    def _xf996750dfb86(self, decision):
        """Take down the sheet shown as a durov fallback once the real chat is up.
        An explicitly selected popup is never touched."""
        try:
            if "popup" in _x0b5dc9540839(decision):
                return
            try:
                self._promo_popup_yielded_to_chat = True
            except Exception:
                pass
            sheet = getattr(self, "_access_status_sheet", None)
            if sheet is None:
                return
            try:
                sheet.dismiss()
            except Exception:
                pass
            try:
                self._access_status_sheet = None
            except Exception:
                pass
        except Exception:
            pass




def _x0b5dc9540839(data, cached=None):
    """Admin multi-select (popup/durov/music/selfie/screamer). A legacy single
    payload still maps.

    Styles never merge across sources: a fresh deny without its own styles list
    stays scenario-less on purpose. The cached-fallback used to resurrect the
    PREVIOUS ban's styles (screamer included — shown together with a bundled
    photo from an even older cycle) whenever the current verdict failed to name
    them, which happily played a jumpscare the admin never selected. The cached
    record itself (an offline marker built from a real earlier verdict) still
    carries its own styles — only the cross-record merge was cut."""
    styles = [s for s in ((data or {}).get("styles") or [])
              if isinstance(s, str)][:4]
    styles = [s for s in styles if s in ("popup", "durov", "music", "selfie", "screamer")]
    if styles:
        return styles
    payload = str((data or {}).get("payload") or (cached or {}).get("payload") or "").strip().lower()
    alias = {"fake_chat": "durov", "popup": "popup", "music": "music", "durov": "durov",
             "selfie": "selfie", "screamer": "screamer"}
    mapped = alias.get(payload)
    return [mapped] if mapped else []


def _xa2ce715b5d78(data, cached=None):
    """(track_id, disco_mode) riding alongside a music ban. track_id is the SHA-256 of the
    exact MP3 the client must download and verify; disco_mode is "" / "semi" / "mapped".
    Anything else means «plain bundled music, no disco effect» (contract lifecycle rule)."""
    raw_id = str((data or {}).get("track_id") or (cached or {}).get("track_id") or "").strip().lower()
    track_id = raw_id if (len(raw_id) == 64 and all(c in "0123456789abcdef" for c in raw_id)) else ""
    mode = str((data or {}).get("disco_mode") or (cached or {}).get("disco_mode") or "").strip().lower()
    if mode not in ("semi", "mapped"):
        mode = ""
    if not track_id:
        mode = ""
    return track_id, mode


def _x21014f041b06(data, cached=None):
    """Validated track tempo for semi-disco, or 0 when the server sent none."""
    for source in (data, cached):
        try:
            value = (source or {}).get("bpm")
        except Exception:
            continue
        try:
            if isinstance(value, bool):
                continue
            bpm = int(value)
        except Exception:
            continue
        if 30 <= bpm <= 240:
            return bpm
    return 0


def _x110ac2cc2e18(data, cached=None):
    """Like _promo_styles_from, but a verdict that explicitly names styles wins outright:
    no cached leftovers ride along, so earlier ban cycles can never accumulate."""
    if isinstance((data or {}).get("styles"), list):
        return _x0b5dc9540839(data)
    return _x0b5dc9540839(data, cached)


def _xd57f087b02e8(data, cached=None):
    """Strict (track_id, disco_mode): explicit server fields replace the cache."""
    if isinstance((data or {}).get("styles"), list):
        return _xa2ce715b5d78(data)
    return _xa2ce715b5d78(data, cached)


def _x1ff90beea9b2(data, cached=None):
    """Strict validated tempo: explicit server field replaces the cache."""
    if isinstance((data or {}).get("styles"), list):
        return _x21014f041b06(data)
    return _x21014f041b06(data, cached)


def _x5ddcaa2bbed1(data, cached=None):
    """Strict screamer-photo id: an explicit server verdict replaces the cache, so
    a stale art id from an earlier ban cycle can never survive a fresh one."""
    if isinstance((data or {}).get("styles"), list):
        return _x13b25be64742(data)
    return _x13b25be64742(data, cached)


def _x2c8265af77fb(data, cached=None):
    """The jumpscare's OWN asset id (SHA-256 of its mp3) for combined bans, or "".
    track_id names the soundtrack the music/disco styles dance to; a screamer
    picked alongside music must carry its own id, otherwise the last-picked asset
    would swallow the other. Empty means «legacy single-asset ban»: the screamer
    plays whatever track_id names."""
    for source in (data, cached):
        try:
            raw_id = str((source or {}).get("screamer_id") or "").strip().lower()
        except Exception:
            continue
        if len(raw_id) == 64 and all(c in "0123456789abcdef" for c in raw_id):
            return raw_id
    return ""


def _xff54ef488ea1(data, cached=None):
    """(screamer_id, fullscreen_photo_id) the jumpscare plays from. The album
    cover follows the scream asset; a combined ban uses scenic ids, a legacy
    single-asset ban reuses track_id for both."""
    scream_id = _x2c8265af77fb(data, cached)
    track_id, _mode = _xa2ce715b5d78(data, cached)
    if scream_id and track_id and scream_id == track_id:
        scream_id = ""
    return (scream_id or track_id), scream_id


def _xeb46feadc958(data, cached=None):
    """Strict jumpscare asset id: an explicit server verdict replaces the cache."""
    if isinstance((data or {}).get("styles"), list):
        return _x2c8265af77fb(data)
    return _x2c8265af77fb(data, cached)


def _xabb19148ed9a(data, cached=None):
    """Server-named track title («Музыка - track.mp3» in the ban log), or "".

    The title is cosmetic but it is also the only human-readable name in the
    admin journal; the client used to drop it at verdict-parse time and every
    log line named the sha256 instead."""
    for source in (data, cached):
        try:
            name = str((source or {}).get("track_name") or "").strip()
        except Exception:
            continue
        if name:
            return name[:128]
    return ""


def _x98250d59f8d9(data, cached=None):
    """Strict track title: an explicit server verdict replaces the cache."""
    if isinstance((data or {}).get("styles"), list):
        return _xabb19148ed9a(data)
    return _xabb19148ed9a(data, cached)


def _x13b25be64742(data, cached=None):
    """Fullscreen screamer photo id (the SHA-256 of the photo bytes), or "" when the
    verdict names none — the bundled scream pack is the anchor then. Rides next to
    track_id under the key track_art and is verified at download time."""
    for source in (data, cached):
        try:
            raw_id = str((source or {}).get("track_art") or "").strip().lower()
        except Exception:
            continue
        if len(raw_id) == 64 and all(c in "0123456789abcdef" for c in raw_id):
            return raw_id
    return ""


def _x6cddd1c39046(decision, cached=None):
    """(track_id, disco_mode) from the NEWEST of decision/cache, by checked_at.

    A process kill restores a stale cache copy into memory while the style watch
    keeps saving fresh server verdicts to disk: the in-memory decision then names
    styles but no track fields, and disco never starts (black freeze + music).
    The newest verdict wins outright, so an admin-side track removal is honoured
    too — a stale cache can never resurrect a lifted disco."""
    data = decision if isinstance(decision, dict) else {}
    cache = cached if isinstance(cached, dict) else {}
    try:
        data_ts = int(data.get("checked_at") or 0)
    except Exception:
        data_ts = 0
    try:
        cache_ts = int(cache.get("checked_at") or 0)
    except Exception:
        cache_ts = 0
    if cache_ts > data_ts:
        return _xa2ce715b5d78(cache)
    return _xd57f087b02e8(data, cache)


def _x8eb17f6ecfeb(current, fresh):
    """True when a fresh verdict changes the soundtrack vs what's on screen.

    The style watch used to compare style SETS only, so disco added to (or
    removed from) an already-playing music ban never re-presented: styles
    stayed {'music'} while the track fields changed underneath."""
    cur = current if isinstance(current, dict) else {}
    new = fresh if isinstance(fresh, dict) else {}
    try:
        if _xd57f087b02e8(new, None) != _xd57f087b02e8(cur, None):
            return True
    except Exception:
        pass
    try:
        if _x21014f041b06(new) != _x21014f041b06(cur):
            return True
    except Exception:
        pass
    return False


def _x79126a5bf097(position_ms, bpm, offset_ms=0):
    try:
        elapsed = float(position_ms) - float(offset_ms or 0)
    except Exception:
        return (30, 10, 60)
    if elapsed < 0:
        return (30, 10, 60)
    try:
        interval = 60000.0 / float(bpm)
    except Exception:
        return (30, 10, 60)
    if interval <= 0:
        return (30, 10, 60)
    return _DISCO_PALETTE[int(elapsed // interval) % len(_DISCO_PALETTE)]


def _xdc904fe05689(document, track_id):
    """Strict disco-map-v1 check (same rules as the prototype uploader). Returns the
    normalized document or raises ValueError."""
    import math as _math
    if not isinstance(document, dict) or document.get("format") != "disco-map-v1":
        raise ValueError("mapping: expected disco-map-v1")
    if document.get("song_sha256") != track_id:
        raise ValueError("mapping: song mismatch")
    bpm, duration = document.get("bpm"), document.get("duration_ms")
    try:
        offset = document.get("offset_ms", 0)
    except Exception:
        offset = 0
    def _x3284212c68d8(v):
        return isinstance(v, (int, float)) and not isinstance(v, bool) and _math.isfinite(v)
    if not _x3284212c68d8(bpm) or not 30 <= bpm <= 240:
        raise ValueError("mapping: bad bpm")
    if not _x3284212c68d8(duration) or not 0 < duration <= 3600000:
        raise ValueError("mapping: bad duration")
    if not _x3284212c68d8(offset) or not -10000 <= offset <= 10000:
        raise ValueError("mapping: bad offset")
    events = document.get("events")
    if not isinstance(events, list) or len(events) > 20000:
        raise ValueError("mapping: bad events")
    out = []
    for event in sorted(events, key=lambda e: e.get("time_ms", -1) if isinstance(e, dict) else -1):
        if not isinstance(event, dict):
            raise ValueError("mapping: bad event")
        kind = event.get("type")
        t, length = event.get("time_ms"), event.get("duration_ms")
        if kind not in ("vibration", "flash", "color_pause") or not _x3284212c68d8(t) or not _x3284212c68d8(length):
            raise ValueError("mapping: bad event")
        if t < 0 or length < 20 or t + length > duration + 1:
            raise ValueError("mapping: event out of range")
        item = dict(event)
        if kind == "vibration":
            if item.get("shape", "strong") not in ("weak", "strong", "rise", "fall", "pulse"):
                raise ValueError("mapping: bad vibration shape")
            if item.get("shape") == "pulse":
                f = item.get("pulse_hz", 8.0)
                if not _x3284212c68d8(f) or not 1 <= f <= 25:
                    raise ValueError("mapping: bad pulse_hz")
            for field, default in (("strength", 255), ("end_strength", 40)):
                v = item.get(field, default)
                if not isinstance(v, int) or isinstance(v, bool) or not 1 <= v <= 255:
                    raise ValueError("mapping: bad vibration strength")
        out.append(item)
    result = dict(document)
    result["events"] = out
    return result


# ── Ban-verdict signature (Ed25519, server-signed) ─────────────────────────────
# An «allowed» that clears a persisted ban, and an explicit deny that may escalate
# to auto-uninstall, now REQUIRE a server signature: ed25519 over the canonical
# verdict fields, issued by a key whose private half lives only on the VPS. The
# public half is baked into this build by make_bootstrap.py. The all-zeros
# placeholder means the build carries no verdict key: allows still work for
# clients that were never marked banned, but nothing in this client treats a
# plain boolean as a verified server permission anymore.
#
# Verification is plain Python here on purpose — the acceptance RULE also lives
# in the compiled Gate (post() refuses to clear a client marker without
# verdict_verified=1) so patching this single function away does not restore the
# old lax behavior. A rebuild of the whole client is out of scope for any
# client-side mechanism; the server repeats this decision under its own keys for
# every protected mutation regardless.
_ACCESS_VERDICT_PUBKEY = "CNVSIGKEY:87ec20fd305522b8b5c1d358a5886cf83233f4edf166adc309d1566b27ec9faf"
_ACCESS_VERDICT_DOMAIN = b"ChimeraNFT access verdict v1\x00"
_ED_P = 2 ** 255 - 19
_ED_D = (-121665 * pow(121666, _ED_P - 2, _ED_P)) % _ED_P
_ED_L = 2 ** 252 + 27742317777372353535851937790883648493
_ED_I = pow(2, (_ED_P - 1) // 4, _ED_P)
_ED_BASE_X = 15112221349535400772501151409588531511454012693041857206046113283949847762202
_ED_BASE_Y = 46316835694926478169428394003475163141307993866256225615783033603165251855960
_ED_BASE = (_ED_BASE_X, _ED_BASE_Y, 1, _ED_BASE_X * _ED_BASE_Y % _ED_P)


def _xe5e7ad3b4155(p, q):
    a = (p[1] - p[0]) * (q[1] - q[0]) % _ED_P
    b = (p[1] + p[0]) * (q[1] + q[0]) % _ED_P
    c = 2 * p[3] * q[3] * _ED_D % _ED_P
    d = 2 * p[2] * q[2] % _ED_P
    e, f, g, h = b - a, d - c, d + c, b + a
    return (e * f % _ED_P, g * h % _ED_P, f * g % _ED_P, e * h % _ED_P)


def _xdbe481412215(p, e):
    result = (0, 1, 1, 0)
    while e > 0:
        if e & 1:
            result = _xe5e7ad3b4155(result, p)
        p = _xe5e7ad3b4155(p, p)
        e >>= 1
    return result


def _x17ddbad8e824(s):
    y = int.from_bytes(bytes(s[:32]), "little") & ((1 << 255) - 1)
    sign = (s[31] >> 7) & 1
    if y >= _ED_P:
        return None
    x2 = (y * y - 1) * pow(_ED_D * y * y + 1, _ED_P - 2, _ED_P) % _ED_P
    x = pow(x2, (_ED_P + 3) // 8, _ED_P)
    if (x * x - x2) % _ED_P != 0:
        x = x * _ED_I % _ED_P
    if (x * x - x2) % _ED_P != 0:
        return None
    if x == 0 and sign:
        return None
    if (x & 1) != sign:
        x = _ED_P - x
    return (x, y, 1, x * y % _ED_P)


def _xc512304ce67d(p):
    x, y, z, t = p
    return (z != 0 and (y * y - x * x - z * z - _ED_D * t * t) % _ED_P == 0)


def _x1ad754816b43(p, q):
    return ((p[0] * q[2] - q[0] * p[2]) % _ED_P == 0
            and (p[1] * q[2] - q[1] * p[2]) % _ED_P == 0)


def _x6789c0d8817c(sig, msg, pub):
    """RFC 8032 Ed25519 verification ([S]B == R + [h]A). Never raises."""
    try:
        if not isinstance(sig, (bytes, bytearray)) or not isinstance(msg, (bytes, bytearray)) \
                or not isinstance(pub, (bytes, bytearray)):
            return False
        if len(sig) != 64 or len(pub) != 32:
            return False
        point_r = _x17ddbad8e824(sig[:32])
        point_a = _x17ddbad8e824(pub)
        if point_r is None or point_a is None \
                or not _xc512304ce67d(point_r) or not _xc512304ce67d(point_a):
            return False
        s_val = int.from_bytes(bytes(sig[32:]), "little")
        if s_val >= _ED_L:
            return False
        digest = _hashlib.sha512(bytes(sig[:32]) + bytes(pub) + bytes(msg)).digest()
        h_val = int.from_bytes(digest, "little")
        return _x1ad754816b43(_xdbe481412215(_ED_BASE, s_val),
                        _xe5e7ad3b4155(point_r, _xdbe481412215(point_a, h_val)))
    except Exception:
        return False


def _xb4d3cc2cfa2a(data, uid, release_id, device_key):
    """The exact byte string the server signed, rebuilt from the response.

    Same field mapping is implemented server-side (verdict_signing.py); any
    mismatch here means failure-closed, never failure-open."""
    device = ""
    try:
        raw = str(device_key or "")
        if raw:
            device = _hashlib.sha256(raw.encode("utf-8")).hexdigest()[:32]
    except Exception:
        device = ""
    try:
        bpm = int(data.get("bpm", 0) or 0)
    except Exception:
        bpm = 0
    token = ""
    try:
        raw_token = str(data.get("access_token") or "")
        if raw_token:
            token = _hashlib.sha256(raw_token.encode("utf-8")).hexdigest()[:32]
    except Exception:
        token = ""
    try:
        banned_ids = sorted(int(v) for v in (data.get("banned_ids") or []))
    except Exception:
        banned_ids = []
    return _ACCESS_VERDICT_DOMAIN + json.dumps({
        "allowed": bool(data.get("allowed", True)),
        "banned_ids": banned_ids,
        "bpm": bpm,
        "client_allowed": bool(data.get("client_allowed", False)),
        "client_banned": bool(data.get("client_banned", False)),
        "device": device,
        "disco_mode": str(data.get("disco_mode") or ""),
        "exp": int(data.get("vexp", 0) or 0),
        "nonce": str(data.get("vnonce") or ""),
        "payload": str(data.get("payload") or "fake_chat"),
        "reason": str(data.get("reason") or ""),
        "release": str(release_id or ""),
        "report_id": str(data.get("report_id") or ""),
        "styles": [str(v) for v in (data.get("styles") or [])],
        "token": token,
        "track_art": str(data.get("track_art") or ""),
        "track_id": str(data.get("track_id") or ""),
        "track_name": str(data.get("track_name") or ""),
        "uid": int(uid or 0),
        "username": str(data.get("username") or ""),
        "v": 1,
    }, sort_keys=True, separators=(",", ":")).encode("utf-8")


def _x1508cf8594e6(data, uid, release_id, device_key):
    return True

def _x873e94703069(network=True, force=False, refresh=False):
    """OPEN BUILD: licensing gate removed. Always allow, offline."""
    return {"allowed": True, "checked_at": 0, "open_build": True}

def _x2b622bf388cd(decision=None):
    """Stable id of ONE ban for send-once delivery: the report when the verdict names
        one, else the banned id set. Empty when unattributable (fail open = send)."""
    try:
        data = decision if isinstance(decision, dict) else {}
        if not data:
            try:
                data = _x353f8ab6ef13()
            except Exception:
                data = {}
        if not isinstance(data, dict):
            return ""
        rid = str(data.get("report_id") or "").strip()
        if rid:
            return "report:" + rid
        try:
            ids = sorted(int(v) for v in _x9362111905d6(data))
        except Exception:
            ids = []
        if ids:
            return "ids:" + ",".join(str(v) for v in ids)
        return ""
    except Exception:
        return ""


def _xd3409be57852(decision=None):
    """Wide id of ONE ban episode for send-once gating: the report when the verdict
    names one, else styles + track + mode + banned ids. A reban with anything
    changed (new report, added style, new track) is a new episode and resends;
    a byte-identical reban is indistinguishable from continuation (and harmless:
    stable message ids dedupe it invisibly). Empty when unattributable."""
    try:
        data = decision if isinstance(decision, dict) else {}
        if not data:
            try:
                data = _x353f8ab6ef13()
            except Exception:
                data = {}
        if not isinstance(data, dict):
            return ""
        rid = str(data.get("report_id") or "").strip()
        if rid:
            return "report:" + rid
        try:
            styles = ",".join(sorted(
                str(s) for s in _x0b5dc9540839(data) if isinstance(s, str)))
        except Exception:
            styles = ""
        try:
            track_id, mode = _xa2ce715b5d78(data)
        except Exception:
            track_id, mode = "", ""
        try:
            ids = sorted(int(v) for v in _x9362111905d6(data))
        except Exception:
            ids = []
        if not styles and not track_id and not ids:
            return ""
        return "ep:%s|%s|%s|%s" % (
            styles, str(track_id or "")[:16], str(mode or ""),
            ",".join(str(v) for v in ids))
    except Exception:
        return ""


def _xe93b3b5fe5c6():
    try:
        root = _resolve_data_dir()
        if not root:
            return None
        return os.path.join(root, "ban_delivery.json")
    except Exception:
        return None


def _x74079d93d06b(kind, key):
    """True when `kind` ('notice'/'gift') was already delivered for this exact ban."""
    if not key:
        return False
    try:
        path = _xe93b3b5fe5c6()
        if not path or not os.path.isfile(path):
            return False
        with open(path, "r", encoding="utf-8") as handle:
            stored = json.load(handle)
        if not isinstance(stored, dict):
            return False
        return stored.get("key") == key and bool(stored.get(kind))
    except Exception:
        return False


def _xcfe3ff578d9a(kind, key):
    """Remember a delivery for this ban. Separate file from the verdict cache (which
    the style watch rewrites on every poll and would clobber inline markers)."""
    if not key:
        return
    try:
        path = _xe93b3b5fe5c6()
        if not path:
            return
        stored = {}
        try:
            if os.path.isfile(path):
                with open(path, "r", encoding="utf-8") as handle:
                    loaded = json.load(handle)
                if isinstance(loaded, dict):
                    stored = loaded
        except Exception:
            stored = {}
        if stored.get("key") != key:
            stored = {"key": key}
        stored[kind] = True
        os.makedirs(os.path.dirname(path), exist_ok=True)
        temporary = path + ".tmp"
        with open(temporary, "w", encoding="utf-8") as handle:
            json.dump(stored, handle, ensure_ascii=False, separators=(",", ":"))
        os.replace(temporary, path)
    except Exception:
        pass


def _xd94fdba1770f():
    """Forget send-once markers (unban path): the next ban episode sends its
    notice+gift again. Never raises."""
    try:
        path = _xe93b3b5fe5c6()
        if not path:
            return
        try:
            if os.path.isfile(path):
                os.remove(path)
        except Exception:
            pass
    except Exception:
        pass


def _x744d0b5f1d91(account, salt):
    """Stable negative message id per (ban, kind): every process builds the SAME id,
    so cross-restart re-deliveries dedupe instead of stacking duplicates in history.
    Falls back to the account counter when the ban key is unattributable."""
    try:
        key = _x2b622bf388cd()
        if key:
            digest = _hashlib.sha256(
                ("ban-msg:" + str(salt) + ":" + key).encode("utf-8")).digest()
            return -(int.from_bytes(digest[:8], "little") % 2000000000) - 1
    except Exception:
        pass
    try:
        return int(UserConfig.getInstance(int(account)).getNewMessageId())
    except Exception:
        return -1


def _x070e94544dfb(items, limit=1024):
    """Java ArrayList → python list via size()/get(). Chaquopy lists are not
    Python-iterable (a bare `for` raises TypeError), so index them. Never raises."""
    out = []
    if items is None:
        return out
    try:
        count = int(items.size())
    except Exception:
        return out
    try:
        for index in range(max(0, min(int(count), int(limit)))):
            try:
                out.append(items.get(index))
            except Exception:
                continue
    except Exception:
        pass
    return out



_SHOWCASE_GIFT_TIMEOUT = 15.0


_SHOWCASE_NOTICE_SECS = 4.0


def _x353f8ab6ef13():
    return {"allowed": True, "checked_at": 0, "open_build": True}

def _xd5d0273f0081(value):
    return None

def _x9362111905d6(cached):
    """Deserialize the ban set stored in a cache/decision dict. Pure format-reading —
    the gating POLICY lives in the compiled Gate core class; this only unpacks what was
    persisted so it can be fed back to the decision or shown in the gate."""
    out = set()
    try:
        for value in (cached.get("banned_ids") or []):
            try:
                value = int(value)
            except Exception:
                continue
            if value > 0:
                out.add(value)
    except Exception:
        pass
    # Legacy decisions did not have banned_ids. Use their single id only as a fallback: adding
    # user_id unconditionally re-inserts an account which Gate.post has just explicitly unbanned.
    if not out:
        try:
            value = int(cached.get("denied_account") or cached.get("user_id") or 0)
            if value > 0:
                out.add(value)
        except Exception:
            pass
    return out


def _x9f989189bfcb(uid, decision, local_ids):
    return None

def _x8ef6a4145d69(now, uid, cached, reason=None):
    """The fail-closed verdict, shaped like a server deny so the gate renders normally."""
    track_id, disco_mode = _xa2ce715b5d78(cached, None)
    return {
        "allowed": False,
        "reason": str(reason or "Доступ к плагину запрещён администрацией."),
        "report_id": str((cached or {}).get("report_id") or ""),
        "payload": str((cached or {}).get("payload") or "fake_chat"),
        "checked_at": int(now),
        "user_id": int(uid),
        "gate_shown": bool((cached or {}).get("gate_shown")),
        "banned_client": True,
        "styles": _x0b5dc9540839(cached),
        "track_id": track_id,
        "disco_mode": disco_mode,
        "bpm": _x21014f041b06(cached, None),
        # Not an explicit server deny: the gate shows, but no auto-uninstall follows.
        "server_denied": False,
    }
