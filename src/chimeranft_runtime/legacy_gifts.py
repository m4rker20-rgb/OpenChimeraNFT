LEGACY_GIFT_REGISTRY = {
    # base_gift_id: metadata
    # Extend this map as more historical gifts need dedicated labels/styles.
}


def get_legacy_gift_meta(base_gift_id=0):
    try:
        gid = int(base_gift_id or 0)
    except Exception:
        gid = 0
    if gid <= 0:
        return {}
    raw = LEGACY_GIFT_REGISTRY.get(gid)
    if not isinstance(raw, dict):
        return {}
    return dict(raw)
