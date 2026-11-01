# Сборка OpenChimeraNFT

OpenChimeraNFT 1.1.3 собирается скриптом **`build_open_113_v2.py`** из репозитория [ChimeraNFT_src](https://github.com/m4rker20-rgb/ChimeraNFT_src):

1. Клонируйте ChimeraNFT_src — там лежат оригинальные исходники 1.1.3 (`src/loader/113/`), распакованное ядро и инструменты.
2. Скрипт `tools/build_open_113_v2.py` применяет патчи к `loader.py` (хосты → `127.0.0.1:9`, seed зашит, feature-модули из `res/modules`, обход нативного hash-check, identity-bypass, иммунитет к старым deny-кэшам, пункт «Спонсоры») и к `check_code.py` (гейт → локальный allow, deny-презентаторы → no-op).
3. На выходе — `OpenChimeraNFT-113-v2.eaf` (≈30.5 МБ, 35 entries), готовый к установке в exteraGram.

Требования: Python 3.8+, исходный `.eaf` оригинала Chimera NFT 1.1.3 и снятые с устройства feature-DEX (пути прописаны в скрипте).
