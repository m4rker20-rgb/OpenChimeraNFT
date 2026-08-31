# Сборка OpenChimeraNFT

Пайплайн полностью воспроизводим: нужен **Python 3.8+** и исходный архив сборки `chimeranft.elyx.zip` (незашифрованная сборка Chimera NFT 1.1.1, формат ElyxBuilder).

## Что делает build_noserver.py

Один скрипт применяет все патчи и собирает финальный `.eaf`:

### Патчи Python-части (loader)

| Патч | Что отключает |
|---|---|
| `_check_plugin_access()` → мгновенный `{"allowed": True, "offline": True}` | доступ к серверу гейта + локальную консультацию Gate |
| `_report_banned_client()` → ранний return | донос всех аккаунтов клиента на сервер |
| `_load_access_cache()` → `{}` / `_save_access_cache()` → no-op | чтение/запись ban-маркеров |
| `_install_access_denied_callback()` / `_start_deferred_access_check()` → no-op | мосты DEX→Python для бана |
| `_handle_live_access_denied()` / `_show_access_denied()` / `_start_access_denied_watchdog()` → no-op | шторка бана + watchdog |
| удаление `plugin_access.json*` при старте | старые ban-маркеры на устройстве |
| `setAccessUsername` → pass | username не передаётся ban-машине |
| `CHIMERANFT_API_BASE` / `CHIMERANFT_UPDATE_BASE` → `127.0.0.1:9` | все адреса сервера автора |

### Патчи Python-runtime (payload)

| Патч | Что отключает |
|---|---|
| `plugin.py` `_sync_get_settings()` → `enabled: False` | SyncClient не создаётся: нет пушей подарков/юзернеймов каждые 12 сек |
| `plugin.py` `_updates_bootstrap()` → `return False` | updater никогда не стартует |
| `sync_client.py` / `updater.py` URL → `127.0.0.1:9` | страховочные мёртвые адреса |
| `updater.py` `_UPDATE_CHANNEL_USERNAME` → `""` | канал обновлений нейтрализован |

### Патчи Java-ядра (engine.dex)

Same-length байт-патчи в строковой таблице DEX (безопасно для формата: длины и оффсеты не меняются):

- `http://128.140.65.15:8787` → `http://0.0.0.0:8787/00000` (числовой IP — без DNS, коннект мгновенно отклоняется)
- `/api/v1/access/report` и `/api/v1/access/` → `/api/v1/xxx…` (ban-эндпоинты обнулены)

Патч применяется к **обеим** копиям DEX: файлу `chimeranft/java/engine.dex` и зашитому в загрузчик `_DEX_B64`.

### Ребрендинг

`Chimera NFT` → `OpenChimeraNFT` во всех display-строках (loader, локали, meta.yml). Регистрозависимо: lowercase-идентификаторы (`chimeranft`, `com.chimeranft.core`, `chimeranft_runtime`) не затрагиваются.

### Упаковка

1. `chimeranft_runtime/` → `runtime_payload.zip`
2. base64 payload вшивается в загрузчик, пересчитывается `_PAYLOAD_SHA256`
3. патченный `engine.dex` вшивается в `_DEX_B64`
4. финальный zip собирается в порядке оригинального `.eaf` (refmap.yml первой записью, meta с вложенным блоком `elyxbuilder:`)

## Запуск

```bash
python tools/build_noserver.py
```

Скрипт сам проверяет: уникальность якорей каждого патча, отсутствие `128.140.65.15` / `eblannftlogs` в итоговых файлах, синтаксис всех `.py`, совпадение SHA-256 payload/DEX в обеих копиях (файл + зашитая base64), и печатает хеши.

Выход: `OpenChimeraNFT.elyx.zip` (исходный архив) и `OpenChimeraNFT.eaf` (устанавливаемый).

## Разбор DEX (опционально)

```bash
java -cp "tools/m2/*" org.jf.baksmali.Main disassemble engine.dex -o core_smali
java -cp "tools/m2/*" org.jf.smali.Main assemble core_smali -o engine.dex
```

## Проверка «чистоты»

В финальных артефактах не должно быть:

- IP-адреса сервера и пути `/api/v1/access` (скан loader.py, payload, engine.dex),
- упоминаний канала `eblannftlogs`,
- активных `urlopen` в гейт/синк/апдейт-путях,
- строки `"Chimera NFT"` (если делали ребрендинг).

## Установка

Полученный `OpenChimeraNFT.eaf` ставится через **Настройки → Плагины → «+»** в exteraGram. Расширение `.eaf` обязательно: файлы с другими расширениями движок читает как текст и падает с `UnicodeDecodeError`.
