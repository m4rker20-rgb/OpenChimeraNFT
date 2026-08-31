.class public final Lcom/chimeranft/core/Store;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTO_BACKUP_KEEP:I

.field public static final Companion:Lcom/chimeranft/core/Store$Companion;

.field private static final DELETED_GIFT_IDS:Ljava/lang/String;

.field private static final DELETED_VISUAL_TRANSACTION_IDS:Ljava/lang/String;

.field private static final EXTERNAL_MERGE_KEYS:[Ljava/lang/String;

.field private static final GIFT_BOOL_KEYS:[Ljava/lang/String;

.field private static final GIFT_CFG_KEYS:[Ljava/lang/String;

.field private static final GIFT_DELETION_EPOCH:Ljava/lang/String;

.field private static final GIFT_INT_KEYS:[Ljava/lang/String;

.field private static final GIFT_STR_KEYS:[Ljava/lang/String;

.field private static final MAX_APPLIED_TRANSFERS:I

.field private static final NUMBER_PRICES:Ljava/lang/String;

.field public static final SALE_COMMISSION_PERCENT:J = 0x14L

.field private static final SAVED_AT:Ljava/lang/String;

.field private static final TRANSACTION_ID_BYTES:I

.field private static final UNION_EXCLUDED:Ljava/util/HashSet;

.field private static final USERNAME_PRICES:Ljava/lang/String;

.field private static final VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

.field private static final VISUAL_TRANSACTIONS:Ljava/lang/String;

.field private static final VISUAL_TRANSACTIONS_KEEP:I


# instance fields
.field private final cacheFile:Ljava/io/File;

.field private final dataDir:Ljava/lang/String;

.field private volatile duplicatesBlocked:J

.field private volatile lastHistoryBackupMs:J

.field private volatile lastWriteError:Ljava/lang/String;

.field private liveVerified:Z

.field private loadedFromDisk:Z

.field private pinnedSnapshotSource:Lorg/json/JSONObject;

.field private pinnedSnapshotText:Ljava/lang/String;

.field private pinnedSnapshotVersion:J

.field private volatile pinnedWrapperShared:Lorg/json/JSONObject;

.field private volatile pinnedWrapperSource:Lorg/json/JSONObject;

.field private volatile pinnedWrapperVersion:J

.field private root:Lorg/json/JSONObject;

.field private final sendOutboxFile:Ljava/io/File;

.field private final uid:J

.field private volatile visualTxIds:Ljava/util/HashSet;

.field private volatile visualTxIdsVersion:J

.field private volatile writableProbe:I

.field private volatile writeBlocked:Z

.field private volatile writeVersion:J


# direct methods
.method static constructor <clinit>()V
    .registers 18

    new-instance v0, Lcom/chimeranft/core/Store$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/Store$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const/16 v0, 0xc

    .line 2964
    sput v0, Lcom/chimeranft/core/Store;->AUTO_BACKUP_KEEP:I

    .line 2965
    const-string v7, "deleted_gift_ids"

    sput-object v7, Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;

    .line 2966
    const-string v8, "gift_deletion_epoch"

    sput-object v8, Lcom/chimeranft/core/Store;->GIFT_DELETION_EPOCH:Ljava/lang/String;

    .line 2967
    const-string v2, "visual_market_transactions"

    sput-object v2, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    .line 2968
    const-string v3, "visual_state_updated_at"

    sput-object v3, Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

    .line 2969
    const-string v0, "deleted_visual_transaction_ids"

    sput-object v0, Lcom/chimeranft/core/Store;->DELETED_VISUAL_TRANSACTION_IDS:Ljava/lang/String;

    const/16 v0, 0x64

    .line 2970
    sput v0, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS_KEEP:I

    .line 2972
    const-string v9, "store_saved_at"

    sput-object v9, Lcom/chimeranft/core/Store;->SAVED_AT:Ljava/lang/String;

    .line 3119
    new-instance v0, Ljava/util/HashSet;

    .line 3121
    const-string v5, "visual_gram_nanos"

    const-string v6, "visual_balance_configured"

    .line 3122
    const-string v1, "gift_library"

    const-string v4, "visual_stars_nanos"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 3120
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3119
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/chimeranft/core/Store;->UNION_EXCLUDED:Ljava/util/HashSet;

    .line 3299
    const-string v0, "nft_username_prices"

    sput-object v0, Lcom/chimeranft/core/Store;->USERNAME_PRICES:Ljava/lang/String;

    .line 3300
    const-string v0, "nft_number_prices"

    sput-object v0, Lcom/chimeranft/core/Store;->NUMBER_PRICES:Ljava/lang/String;

    const/16 v0, 0x62

    .line 3344
    sput v0, Lcom/chimeranft/core/Store;->TRANSACTION_ID_BYTES:I

    const/16 v0, 0x1f4

    .line 3442
    sput v0, Lcom/chimeranft/core/Store;->MAX_APPLIED_TRANSFERS:I

    .line 3525
    const-string v16, "regular_gifts"

    const-string v17, "_regular_gifts_seq"

    const-string v1, "build_config"

    const-string v2, "identity_config"

    const-string v3, "value_config"

    const-string v4, "gift_stars_config"

    const-string v5, "wear_status_data"

    const-string v6, "wear_active"

    const-string v7, "wear_collectible_id"

    const-string v8, "inject_active"

    const-string v9, "nft_collectible_template_b64"

    const-string v10, "nft_number_collectible_template_b64"

    const-string v11, "cached_gift_id"

    const-string v12, "gift_id"

    const-string v13, "title"

    const-string v14, "slug"

    const-string v15, "num"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Store;->EXTERNAL_MERGE_KEYS:[Ljava/lang/String;

    .line 3575
    const-string v10, "custom_comment"

    const-string v11, "ton_address"

    const-string v1, "title"

    const-string v2, "slug"

    const-string v3, "key"

    const-string v4, "gift_kind"

    const-string v5, "source_gift_kind"

    const-string v6, "custom_from"

    const-string v7, "custom_from_name"

    const-string v8, "custom_from_username"

    const-string v9, "custom_date"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Store;->GIFT_STR_KEYS:[Ljava/lang/String;

    .line 3576
    const-string v12, "created_at"

    const-string v13, "custom_date_ts"

    const-string v1, "num"

    const-string v2, "base_gift_id"

    const-string v3, "unique_id"

    const-string v4, "saved_id"

    const-string v5, "standard_price_stars"

    const-string v6, "upgrade_stars"

    const-string v7, "avail_total"

    const-string v8, "avail_issued"

    const-string v9, "limit_total"

    const-string v10, "order_hint"

    const-string v11, "updated_at"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Store;->GIFT_INT_KEYS:[Ljava/lang/String;

    .line 3577
    const-string v8, "upgradable"

    const-string v9, "can_upgrade"

    const-string v1, "inject"

    const-string v2, "limited_flag"

    const-string v3, "pinned_override"

    const-string v4, "hidden_override"

    const-string v5, "official_import"

    const-string v6, "local_only"

    const-string v7, "crafted"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Store;->GIFT_BOOL_KEYS:[Ljava/lang/String;

    .line 3578
    const-string v8, "legacy_meta"

    const-string v9, "resale_config"

    const-string v1, "wear_status_data"

    const-string v2, "build_config"

    const-string v3, "identity_config"

    const-string v4, "value_config"

    const-string v5, "gift_stars_config"

    const-string v6, "ton_display_config"

    const-string v7, "local_upgrade_state"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Store;->GIFT_CFG_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 9

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/Store;->dataDir:Ljava/lang/String;

    iput-wide p2, p0, Lcom/chimeranft/core/Store;->uid:J

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/chimeranft/core/Store;->pinnedSnapshotText:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 216
    iput-wide v1, p0, Lcom/chimeranft/core/Store;->pinnedSnapshotVersion:J

    .line 221
    iput-wide v1, p0, Lcom/chimeranft/core/Store;->pinnedWrapperVersion:J

    .line 319
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/Store;->visualTxIds:Ljava/util/HashSet;

    .line 320
    iput-wide v1, p0, Lcom/chimeranft/core/Store;->visualTxIdsVersion:J

    .line 364
    iput-object v0, p0, Lcom/chimeranft/core/Store;->lastWriteError:Ljava/lang/String;

    .line 397
    const-string v0, ".json"

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stolen_cache_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    :cond_40
    const-string v3, "stolen_cache.json"

    .line 398
    :goto_42
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    cmp-long v3, p2, v1

    if-lez v3, :cond_62

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send_outbox_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_64

    :cond_62
    const-string p2, "send_outbox.json"

    .line 400
    :goto_64
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/chimeranft/core/Store;->sendOutboxFile:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$getDELETED_GIFT_IDS$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDELETED_VISUAL_TRANSACTION_IDS$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->DELETED_VISUAL_TRANSACTION_IDS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getGIFT_DELETION_EPOCH$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->GIFT_DELETION_EPOCH:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNUMBER_PRICES$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->NUMBER_PRICES:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSAVED_AT$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->SAVED_AT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTRANSACTION_ID_BYTES$cp()I
    .registers 1

    .line 26
    sget v0, Lcom/chimeranft/core/Store;->TRANSACTION_ID_BYTES:I

    return v0
.end method

.method public static final synthetic access$getUNION_EXCLUDED$cp()Ljava/util/HashSet;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->UNION_EXCLUDED:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$getUSERNAME_PRICES$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->USERNAME_PRICES:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getVISUAL_STATE_UPDATED_AT$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getVISUAL_TRANSACTIONS$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getVISUAL_TRANSACTIONS_KEEP$cp()I
    .registers 1

    .line 26
    sget v0, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS_KEEP:I

    return v0
.end method

.method private final anyDataFileExists()Z
    .registers 10

    const/4 v0, 0x0

    .line 608
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->latestAutomaticBackupFile()Ljava/io/File;

    move-result-object v3

    .line 611
    iget-object v4, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const-wide/16 v5, 0x2

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-gtz v4, :cond_7b

    .line 612
    :cond_51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-gtz v1, :cond_7b

    .line 613
    :cond_5f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v4, v1, v5

    if-gtz v4, :cond_7b

    .line 614
    :cond_6d
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_7c

    cmp-long v3, v1, v5

    if-lez v3, :cond_7c

    :cond_7b
    const/4 v0, 0x1

    :catchall_7c
    :cond_7c
    return v0
.end method

.method private final appendDeletedIds(Ljava/util/Set;)V
    .registers 11

    .line 1655
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1656
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2c

    .line 1658
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_2c

    .line 1660
    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J
    invoke-static {v6, v1, v5}, Lcom/chimeranft/core/Store$Companion;->access$arrayLong(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;I)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-lez v8, :cond_29

    .line 1661
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_2c
    if-eqz p1, :cond_31

    .line 1663
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1664
    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/16 v1, 0x200

    if-le p1, v1, :cond_45

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1665
    :cond_45
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1666
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4e
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_4e

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4e

    .line 1667
    :cond_6a
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v1, Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private final appendVisualTransaction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move-wide/from16 v3, p9

    move-wide/from16 v5, p11

    .line 1199
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v7

    if-eqz v7, :cond_e7

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gtz v9, :cond_1c

    cmp-long v9, v5, v7

    if-gtz v9, :cond_1c

    goto/16 :goto_e7

    .line 1200
    :cond_1c
    iget-object v9, v0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v10, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1201
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1202
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1204
    sget-object v14, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    if-nez p1, :cond_39

    move-object/from16 v15, p2

    goto :goto_3b

    :cond_39
    move-object/from16 v15, p1

    :goto_3b
    # invokes: Lcom/chimeranft/core/Store$Companion;->realisticTransactionId(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v14, v12, v13, v15}, Lcom/chimeranft/core/Store$Companion;->access$realisticTransactionId(Lcom/chimeranft/core/Store$Companion;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "id"

    invoke-virtual {v11, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v16, 0x3e8

    .line 1205
    div-long v12, v12, v16

    const-string v8, "date"

    invoke-virtual {v11, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1206
    const-string v8, ""

    if-nez p1, :cond_53

    move-object v12, v8

    goto :goto_55

    :cond_53
    move-object/from16 v12, p1

    :goto_55
    const-string v13, "b64"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p2, :cond_5f

    .line 1207
    const-string v12, "NFT"

    goto :goto_61

    :cond_5f
    move-object/from16 v12, p2

    :goto_61
    const-string v13, "title"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1208
    const-string v12, "seller_id"

    move-object v13, v7

    move-object v15, v8

    move-wide/from16 v7, p3

    invoke-virtual {v11, v12, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-nez v1, :cond_73

    move-object v1, v15

    goto :goto_77

    .line 1209
    :cond_73
    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v14, v1}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_77
    const-string v7, "seller_name"

    invoke-virtual {v11, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1210
    const-string v1, "recipient_id"

    move-wide/from16 v7, p6

    invoke-virtual {v11, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-nez v2, :cond_87

    move-object v8, v15

    goto :goto_8b

    .line 1211
    :cond_87
    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v14, v2}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_8b
    const-string v1, "recipient_name"

    invoke-virtual {v11, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1212
    const-string v1, "stars"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v11, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1213
    const-string v1, "nanoton"

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v11, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1214
    invoke-interface/range {p13 .. p13}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_ab

    goto :goto_b2

    :cond_ab
    const-string v1, "type"

    move-object/from16 v2, p13

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1215
    :goto_b2
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v9, :cond_e0

    const/4 v1, 0x0

    .line 1219
    :goto_b8
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_e0

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    sget v3, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS_KEEP:I

    if-ge v2, v3, :cond_e0

    .line 1221
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_dd

    .line 1222
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dd

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_dd
    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 1226
    :cond_e0
    iget-object v1, v0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e7
    :goto_e7
    return-void
.end method

.method static synthetic appendVisualTransaction$default(Lcom/chimeranft/core/Store;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)V
    .registers 31

    move/from16 v0, p14

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1b

    .line 1198
    const-string v0, ""

    move-object v14, v0

    :goto_9
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    goto :goto_1e

    :cond_1b
    move-object/from16 v14, p13

    goto :goto_9

    .line 1194
    :goto_1e
    invoke-direct/range {v1 .. v14}, Lcom/chimeranft/core/Store;->appendVisualTransaction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method private final automaticBackupDir()Ljava/io/File;
    .registers 4

    .line 2917
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->dataDir:Ljava/lang/String;

    const-string v2, "auto_backups"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final automaticBackupPrefix()Ljava/lang/String;
    .registers 6

    .line 2920
    iget-wide v0, p0, Lcom/chimeranft/core/Store;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    const-string v0, "profile_local_"

    return-object v0
.end method

.method private final buildGiftCollections(Z)Lorg/json/JSONArray;
    .registers 11

    .line 2167
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_collections"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2168
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-nez v0, :cond_10

    goto :goto_4a

    .line 2170
    :cond_10
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_4a

    .line 2172
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 2174
    const-string v6, "id"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "collection_id"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_47

    .line 2178
    :try_start_2c
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2180
    const-string v5, "gifts_count"

    invoke-direct {p0, v6, p1}, Lcom/chimeranft/core/Store;->countGiftsInCollection(IZ)I

    move-result v6

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2181
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_45

    goto :goto_47

    .line 2183
    :catchall_45
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_4a
    :goto_4a
    return-object v1
.end method

.method static synthetic buildGiftCollections$default(Lcom/chimeranft/core/Store;ZILjava/lang/Object;)Lorg/json/JSONArray;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 2166
    :cond_5
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->buildGiftCollections(Z)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private final buildSyncGifts(J)Lorg/json/JSONArray;
    .registers 19

    .line 2541
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v1, p0

    .line 2542
    iget-object v2, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "gift_library"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_13

    goto/16 :goto_102

    .line 2545
    :cond_13
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1a
    if-ge v5, v3, :cond_102

    .line 2547
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_fe

    .line 2550
    const-string v8, "hidden_override"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_fe

    .line 2551
    const-string v8, "b64"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3a

    .line 2552
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_40

    :cond_3a
    const-string v10, "payload_b64"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_40
    if-eqz v10, :cond_fe

    .line 2553
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x10

    if-ge v11, v12, :cond_4c

    goto/16 :goto_fe

    .line 2557
    :cond_4c
    const-string v11, "identity_config"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_5d

    .line 2558
    const-string v14, "to_user_id"

    invoke-virtual {v11, v14, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    goto :goto_5e

    :cond_5d
    move-wide v14, v12

    :goto_5e
    cmp-long v11, p1, v12

    if-lez v11, :cond_6a

    cmp-long v11, v14, v12

    if-lez v11, :cond_6a

    cmp-long v11, v14, p1

    if-nez v11, :cond_fe

    .line 2561
    :cond_6a
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2562
    invoke-virtual {v11, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2563
    sget-object v8, Lcom/chimeranft/core/Store;->GIFT_STR_KEYS:[Ljava/lang/String;

    array-length v10, v8

    const/4 v12, 0x0

    :goto_76
    if-ge v12, v10, :cond_8d

    aget-object v13, v8, v12

    .line 2565
    invoke-virtual {v7, v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8a

    .line 2566
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_87

    goto :goto_8a

    :cond_87
    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8a
    :goto_8a
    add-int/lit8 v12, v12, 0x1

    goto :goto_76

    .line 2568
    :cond_8d
    sget-object v8, Lcom/chimeranft/core/Store;->GIFT_INT_KEYS:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_91
    if-ge v10, v9, :cond_a9

    aget-object v12, v8, v10

    .line 2570
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 2571
    instance-of v14, v13, Ljava/lang/Number;

    if-eqz v14, :cond_a6

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_a6
    add-int/lit8 v10, v10, 0x1

    goto :goto_91

    .line 2573
    :cond_a9
    sget-object v8, Lcom/chimeranft/core/Store;->GIFT_BOOL_KEYS:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_ad
    if-ge v10, v9, :cond_c1

    aget-object v12, v8, v10

    .line 2575
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_be

    invoke-virtual {v7, v12, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_be
    add-int/lit8 v10, v10, 0x1

    goto :goto_ad

    .line 2577
    :cond_c1
    sget-object v8, Lcom/chimeranft/core/Store;->GIFT_CFG_KEYS:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_c5
    if-ge v10, v9, :cond_db

    aget-object v12, v8, v10

    .line 2579
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_d8

    .line 2580
    sget-object v14, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->scalarCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    invoke-static {v14, v13}, Lcom/chimeranft/core/Store$Companion;->access$scalarCopy(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d8
    add-int/lit8 v10, v10, 0x1

    goto :goto_c5

    .line 2582
    :cond_db
    const-string v8, "collection_ids"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_f5

    .line 2583
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_f5

    .line 2584
    new-instance v9, Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2585
    :cond_f5
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x40

    if-ge v6, v7, :cond_102

    :cond_fe
    :goto_fe
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1a

    :cond_102
    :goto_102
    return-object v0
.end method

.method private final clearDeletedIdsForEntry(Lorg/json/JSONObject;)V
    .registers 14

    if-nez p1, :cond_3

    goto :goto_54

    .line 1673
    :cond_3
    const-string v0, "saved_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1674
    const-string v0, "unique_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p1, v3, v1

    if-gtz p1, :cond_1a

    cmp-long p1, v5, v1

    if-gtz p1, :cond_1a

    goto :goto_54

    .line 1676
    :cond_1a
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v0, Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_54

    .line 1678
    :cond_25
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1679
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v7, :cond_4d

    .line 1681
    sget-object v9, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J
    invoke-static {v9, p1, v8}, Lcom/chimeranft/core/Store$Companion;->access$arrayLong(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;I)J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-lez v11, :cond_4a

    cmp-long v11, v9, v3

    if-eqz v11, :cond_4a

    cmp-long v11, v9, v5

    if-eqz v11, :cond_4a

    .line 1682
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 1686
    :cond_4d
    :try_start_4d
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v1, Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_54

    :catchall_54
    :goto_54
    return-void
.end method

.method private final collect(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 907
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 908
    const-string v2, ""

    const/4 v3, 0x0

    if-eqz p1, :cond_28

    .line 910
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_28

    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {p1, v5, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/chimeranft/core/Store$Companion;->addUnique(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/lang/String;)V
    invoke-static {v6, v0, v1, v7}, Lcom/chimeranft/core/Store$Companion;->access$addUnique(Lcom/chimeranft/core/Store$Companion;Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 912
    :cond_28
    sget-object p1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v4, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/chimeranft/core/Store$Companion;->addUnique(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/lang/String;)V
    invoke-static {p1, v0, v1, p2}, Lcom/chimeranft/core/Store$Companion;->access$addUnique(Lcom/chimeranft/core/Store$Companion;Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/lang/String;)V

    .line 913
    new-array p1, v3, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final countGiftsInCollection(IZ)I
    .registers 12

    .line 2191
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 2193
    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v2, :cond_38

    .line 2195
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_35

    if-eqz p2, :cond_24

    .line 2196
    const-string v6, "hidden_override"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_35

    .line 2197
    :cond_24
    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v7, "collection_ids"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    int-to-long v7, p1

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayContains(Lorg/json/JSONArray;J)Z
    invoke-static {v6, v5, v7, v8}, Lcom/chimeranft/core/Store$Companion;->access$arrayContains(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;J)Z

    move-result v5

    if-eqz v5, :cond_35

    add-int/lit8 v4, v4, 0x1

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_38
    return v4
.end method

.method private final creditVisualBalance(JJ)V
    .registers 11

    .line 1109
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4a

    :cond_7
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v0

    if-lez v4, :cond_2b

    .line 1113
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store;->netProceedsNanos(J)J

    move-result-wide p1

    .line 1114
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualStarsNanos()J

    move-result-wide p3

    .line 1115
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sub-long v4, v2, p3

    cmp-long v1, p1, v4

    if-lez v1, :cond_23

    goto :goto_25

    :cond_23
    add-long v2, p3, p1

    :goto_25
    const-string p1, "visual_stars_nanos"

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void

    :cond_2b
    cmp-long p1, p3, v0

    if-lez p1, :cond_4a

    const-wide/16 p1, 0x64

    .line 1121
    div-long/2addr p3, p1

    const-wide/16 p1, 0x50

    mul-long p3, p3, p1

    .line 1122
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualGramNanos()J

    move-result-wide p1

    .line 1123
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sub-long v4, v2, p1

    cmp-long v1, p3, v4

    if-lez v1, :cond_43

    goto :goto_45

    :cond_43
    add-long v2, p1, p3

    :goto_45
    const-string p1, "visual_gram_nanos"

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4a
    :goto_4a
    return-void
.end method

.method private final deductVisualBalance(JJ)V
    .registers 11

    .line 1077
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_56

    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3a

    const-wide p3, 0x225c17d04L

    cmp-long v2, p1, p3

    if-lez v2, :cond_1c

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_21

    :cond_1c
    const-wide/32 p3, 0x3b9aca00

    mul-long p1, p1, p3

    .line 1084
    :goto_21
    iget-object p3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualStarsNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualStarsNanos()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-string p4, "visual_stars_nanos"

    invoke-virtual {p3, p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void

    :cond_3a
    cmp-long p1, p3, v0

    if-lez p1, :cond_56

    .line 1088
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualGramNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualGramNanos()J

    move-result-wide v4

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    sub-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-string p4, "visual_gram_nanos"

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_56
    :goto_56
    return-void
.end method

.method private final deleteAutomaticBackups()I
    .registers 7

    const/4 v0, 0x0

    .line 2710
    :try_start_1
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_c

    return v0

    .line 2712
    :cond_c
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupPrefix()Ljava/lang/String;

    move-result-object v2

    .line 2713
    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :catchall_14
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_14

    .line 2715
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/chimeranft/core/Store$Companion;->startsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v2}, Lcom/chimeranft/core/Store$Companion;->access$startsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_42

    if-nez v4, :cond_35

    goto :goto_14

    .line 2718
    :cond_35
    :try_start_35
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_14

    if-eqz v3, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3e
    const-wide/16 v1, 0x0

    .line 2723
    :try_start_40
    iput-wide v1, p0, Lcom/chimeranft/core/Store;->lastHistoryBackupMs:J
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_42

    :catchall_42
    return v0
.end method

.method private final ensureCollectionMetadata(I)V
    .registers 8

    .line 2291
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_collections"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_14

    .line 2293
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2294
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2296
    :cond_14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    const-string v4, "collection_id"

    if-ge v3, v1, :cond_2e

    .line 2297
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 2298
    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, p1, :cond_2b

    return-void

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2300
    :cond_2e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2301
    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2302
    const-string p1, "title"

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2303
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public static final formatWearTitle(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->formatWearTitle(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final inspect(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Store$Companion;->inspect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final latestAutomaticBackupFile()Ljava/io/File;
    .registers 4

    .line 2923
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupPrefix()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "latest.json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2924
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private final netProceedsNanos(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    const-wide v0, 0x2af31dc46L

    cmp-long v2, p1, v0

    if-lez v2, :cond_16

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    :cond_16
    const-wide/32 v0, 0x2faf0800

    mul-long p1, p1, v0

    return-wide p1
.end method

.method private final normalizeVisualTransactionIds()V
    .registers 3

    .line 1340
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/Store$Companion;->normalizeVisualTransactionIds(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/Store$Companion;->access$normalizeVisualTransactionIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final normalizeWearStatus(JLorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 24

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    if-nez v2, :cond_c

    .line 772
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_12

    :cond_c
    sget-object v3, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->scalarCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    invoke-static {v3, v2}, Lcom/chimeranft/core/Store$Companion;->access$scalarCopy(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 773
    :goto_12
    const-string v3, "num"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 774
    const-string v8, "title"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p0

    .line 775
    iget-object v12, v11, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v13, "gift_library"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 776
    const-string v13, "collectible_id"

    if-eqz v12, :cond_43

    cmp-long v14, v6, v4

    if-lez v14, :cond_47

    if-eqz v10, :cond_47

    sget-object v15, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v15, v10}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_43

    goto :goto_47

    :cond_43
    move-wide/from16 v18, v6

    goto/16 :goto_d0

    .line 778
    :cond_47
    :goto_47
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/16 v16, 0x0

    const/4 v4, 0x0

    :goto_4e
    if-ge v4, v15, :cond_43

    .line 780
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move/from16 v16, v4

    if-eqz v5, :cond_c2

    .line 782
    const-string v4, "wear_status_data"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-wide/from16 v18, v6

    .line 783
    const-string v6, "unique_id"

    move-object/from16 p3, v12

    const-wide/16 v11, 0x0

    invoke-virtual {v5, v6, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v17, v6, v11

    if-gtz v17, :cond_74

    .line 784
    const-string v6, "saved_id"

    invoke-virtual {v5, v6, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    :cond_74
    cmp-long v17, v6, v11

    if-gtz v17, :cond_7e

    if-eqz v4, :cond_7e

    .line 786
    invoke-virtual {v4, v13, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    :cond_7e
    cmp-long v17, v0, v11

    if-lez v17, :cond_86

    cmp-long v17, v6, v0

    if-nez v17, :cond_c6

    :cond_86
    if-gtz v14, :cond_97

    .line 790
    invoke-virtual {v5, v3, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v14, v6, v11

    if-gtz v14, :cond_99

    if-eqz v4, :cond_99

    .line 791
    invoke-virtual {v4, v3, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_99

    :cond_97
    move-wide/from16 v6, v18

    :cond_99
    :goto_99
    if-eqz v10, :cond_a7

    .line 793
    sget-object v11, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v11, v10}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_bf

    .line 795
    :cond_a7
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b9

    .line 796
    sget-object v5, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v10}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_bf

    :cond_b9
    if-eqz v4, :cond_bf

    .line 797
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_bf
    :goto_bf
    const-wide/16 v11, 0x0

    goto :goto_d3

    :cond_c2
    move-wide/from16 v18, v6

    move-object/from16 p3, v12

    :cond_c6
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v6, v18

    goto/16 :goto_4e

    :goto_d0
    move-wide/from16 v6, v18

    goto :goto_bf

    :goto_d3
    cmp-long v4, v0, v11

    if-lez v4, :cond_e2

    .line 804
    :try_start_d7
    invoke-virtual {v2, v13, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v9, v4, v11

    if-gtz v9, :cond_e2

    invoke-virtual {v2, v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_e2
    cmp-long v0, v6, v11

    if-lez v0, :cond_e9

    .line 805
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_e9
    if-eqz v10, :cond_f7

    .line 806
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v10}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f9

    :cond_f7
    if-lez v0, :cond_102

    .line 807
    :cond_f9
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v0, v10, v6, v7}, Lcom/chimeranft/core/Store$Companion;->formatWearTitle(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_102
    .catchall {:try_start_d7 .. :try_end_102} :catchall_102

    :catchall_102
    :cond_102
    return-object v2
.end method

.method private final pricesCopy(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 967
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Store;->getCollectiblePrices(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object v0

    .line 970
    :catchall_e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private final readBestEffort()Ljava/lang/String;
    .registers 14

    .line 645
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bak"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 648
    iget-object v3, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupDir()Ljava/io/File;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 653
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_8a

    .line 655
    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_5a

    .line 656
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 657
    sget-object v4, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/chimeranft/core/Store$Companion;->startsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v1}, Lcom/chimeranft/core/Store$Companion;->access$startsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".json"

    # invokes: Lcom/chimeranft/core/Store$Companion;->endsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/chimeranft/core/Store$Companion;->access$endsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 658
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_8a
    const/4 v0, 0x0

    .line 659
    new-array v1, v0, [Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    .line 660
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 661
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 662
    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :cond_a1
    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_a1

    .line 666
    :try_start_af
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_bc

    goto :goto_a1

    .line 667
    :cond_bc
    sget-object v5, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->readFile(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/chimeranft/core/Store$Companion;->access$readFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a1

    .line 668
    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_cf

    goto :goto_a1

    .line 669
    :cond_cf
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 674
    # invokes: Lcom/chimeranft/core/Store$Companion;->normalizeVisualTransactionIds(Lorg/json/JSONObject;)V
    invoke-static {v5, v7}, Lcom/chimeranft/core/Store$Companion;->access$normalizeVisualTransactionIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)V

    .line 675
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dd
    .catchall {:try_start_af .. :try_end_dd} :catchall_de

    goto :goto_a1

    :catchall_de
    nop

    goto :goto_a1

    .line 681
    :cond_e0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_e8

    return-object v4

    .line 682
    :cond_e8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 683
    sget-object v5, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->newestGeneration(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    invoke-static {v5, v2, v3}, Lcom/chimeranft/core/Store$Companion;->access$newestGeneration(Lcom/chimeranft/core/Store$Companion;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v6

    # invokes: Lcom/chimeranft/core/Store$Companion;->collectDeletedIds(Lorg/json/JSONObject;Ljava/util/Set;)V
    invoke-static {v5, v6, v1}, Lcom/chimeranft/core/Store$Companion;->access$collectDeletedIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 688
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, -0x1

    move-object v7, v4

    move-object v8, v7

    :goto_fd
    if-ge v0, v5, :cond_11f

    .line 692
    :try_start_ff
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 693
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 694
    sget-object v11, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->filterDeletedGifts(Lorg/json/JSONObject;Ljava/util/Set;)V
    invoke-static {v11, v9, v1}, Lcom/chimeranft/core/Store$Companion;->access$filterDeletedGifts(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 695
    # invokes: Lcom/chimeranft/core/Store$Companion;->deduplicateLibraryObject(Lorg/json/JSONObject;)I
    invoke-static {v11, v9}, Lcom/chimeranft/core/Store$Companion;->access$deduplicateLibraryObject(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)I

    .line 696
    # invokes: Lcom/chimeranft/core/Store$Companion;->richness(Lorg/json/JSONObject;)I
    invoke-static {v11, v9}, Lcom/chimeranft/core/Store$Companion;->access$richness(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)I

    move-result v11
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_11c

    if-le v11, v6, :cond_11c

    move-object v7, v9

    move-object v8, v10

    move v6, v11

    :catchall_11c
    :cond_11c
    add-int/lit8 v0, v0, 0x1

    goto :goto_fd

    :cond_11f
    if-eqz v7, :cond_16a

    .line 710
    :try_start_121
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 711
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->unionMissingKeys(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v1, v0, v2, v3}, Lcom/chimeranft/core/Store$Companion;->access$unionMissingKeys(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    .line 715
    # invokes: Lcom/chimeranft/core/Store$Companion;->newestGeneration(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/Store$Companion;->access$newestGeneration(Lcom/chimeranft/core/Store$Companion;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_15e

    .line 718
    sget-object v5, Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_14f

    .line 719
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_14f

    .line 720
    new-instance v9, Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    :cond_14f
    sget-object v5, Lcom/chimeranft/core/Store;->GIFT_DELETION_EPOCH:Ljava/lang/String;

    const-wide/16 v9, 0x0

    invoke-virtual {v4, v5, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-lez v4, :cond_15e

    .line 722
    invoke-virtual {v0, v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 724
    :cond_15e
    # invokes: Lcom/chimeranft/core/Store$Companion;->mergeVisualState(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v1, v0, v2, v3}, Lcom/chimeranft/core/Store$Companion;->access$mergeVisualState(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    .line 725
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_165
    .catchall {:try_start_121 .. :try_end_165} :catchall_166

    goto :goto_16a

    .line 728
    :catchall_166
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_16a
    :goto_16a
    if-eqz v4, :cond_19c

    if-eqz v8, :cond_19c

    .line 732
    iget-object v0, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v8, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c

    .line 738
    :try_start_176
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".promo"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v1, v0, v4}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_19c
    .catchall {:try_start_176 .. :try_end_19c} :catchall_19c

    :catchall_19c
    :cond_19c
    return-object v4
.end method

.method private final readSendOutbox()Lorg/json/JSONArray;
    .registers 6

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Store;->sendOutboxFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/chimeranft/core/Store;->sendOutboxFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_15

    goto :goto_23

    .line 460
    :cond_15
    new-instance v0, Lorg/json/JSONArray;

    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v2, p0, Lcom/chimeranft/core/Store;->sendOutboxFile:Ljava/io/File;

    # invokes: Lcom/chimeranft/core/Store$Companion;->readFile(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/chimeranft/core/Store$Companion;->access$readFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 459
    :cond_23
    :goto_23
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-object v0

    .line 463
    :catchall_29
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method private final refreshBackup(Ljava/io/File;)V
    .registers 5

    .line 2900
    iget-object v0, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    .line 2903
    :cond_9
    :try_start_9
    iget-boolean v0, p0, Lcom/chimeranft/core/Store;->liveVerified:Z

    if-eqz v0, :cond_15

    .line 2905
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    # invokes: Lcom/chimeranft/core/Store$Companion;->copyFileBytes(Ljava/io/File;Ljava/io/File;)V
    invoke-static {v0, v1, p1}, Lcom/chimeranft/core/Store$Companion;->access$copyFileBytes(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/io/File;)V

    return-void

    .line 2908
    :cond_15
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    # invokes: Lcom/chimeranft/core/Store$Companion;->readFile(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/chimeranft/core/Store$Companion;->access$readFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 2909
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2910
    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_25

    :catchall_25
    :goto_25
    return-void
.end method

.method private final rememberAppliedTransfer(Ljava/lang/String;)V
    .registers 7

    .line 1793
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "applied_transfers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1795
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1796
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1798
    :cond_14
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1799
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    sget v2, Lcom/chimeranft/core/Store;->MAX_APPLIED_TRANSFERS:I

    if-le p1, v2, :cond_40

    .line 1801
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1802
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_2d
    if-ge v3, v2, :cond_3b

    .line 1804
    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1806
    :cond_3b
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_40
    return-void
.end method

.method private final writeAutomaticBackup(Ljava/lang/String;)V
    .registers 11

    .line 2932
    :try_start_0
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupDir()Ljava/io/File;

    move-result-object v0

    .line 2933
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_a6

    .line 2934
    :cond_12
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-direct {p0}, Lcom/chimeranft/core/Store;->latestAutomaticBackupFile()Ljava/io/File;

    move-result-object v2

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v1, v2, p1}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V

    .line 2935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2936
    iget-wide v4, p0, Lcom/chimeranft/core/Store;->lastHistoryBackupMs:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v8, v4, v6

    if-gez v8, :cond_2b

    goto/16 :goto_a6

    .line 2937
    :cond_2b
    iput-wide v2, p0, Lcom/chimeranft/core/Store;->lastHistoryBackupMs:J

    .line 2938
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupPrefix()Ljava/lang/String;

    move-result-object v4

    .line 2939
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v1, v5, p1}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V

    .line 2940
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_54

    goto :goto_a6

    .line 2942
    :cond_54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2943
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_5d
    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5d

    sget-object v2, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/chimeranft/core/Store$Companion;->startsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$startsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_latest.json"

    # invokes: Lcom/chimeranft/core/Store$Companion;->endsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v5}, Lcom/chimeranft/core/Store$Companion;->access$endsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 2944
    :cond_8b
    new-instance p1, Lcom/chimeranft/core/Store$writeAutomaticBackup$1;

    invoke-direct {p1}, Lcom/chimeranft/core/Store$writeAutomaticBackup$1;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2949
    :catchall_93
    :goto_93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v1, Lcom/chimeranft/core/Store;->AUTO_BACKUP_KEEP:I

    if-le p1, v1, :cond_a6

    const/4 p1, 0x0

    .line 2950
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_a2
    .catchall {:try_start_0 .. :try_end_a2} :catchall_a6

    .line 2953
    :try_start_a2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_93

    goto :goto_93

    :catchall_a6
    :cond_a6
    :goto_a6
    return-void
.end method

.method private final writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 2775
    const-string v0, "store.write"

    invoke-static {v0}, Lcom/chimeranft/core/UiGuard;->mustNotBlock(Ljava/lang/String;)V

    .line 2776
    iget-boolean v0, p0, Lcom/chimeranft/core/Store;->writeBlocked:Z

    const-string v1, ".recover"

    const-string v2, "FAIL "

    if-eqz v0, :cond_6c

    .line 2780
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2782
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->reload()Ljava/lang/String;

    move-result-object v3

    .line 2785
    :try_start_17
    sget-object v4, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v4, v5, v0}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_37

    goto :goto_38

    :catchall_37
    nop

    .line 2794
    :goto_38
    iget-boolean v0, p0, Lcom/chimeranft/core/Store;->writeBlocked:Z

    if-eqz v0, :cond_54

    .line 2796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " BLOCKED (cache unreadable at load; wrote .recover, live file kept) "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2801
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " RETRY (cache became readable; mutation not applied, wrote .recover) "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2805
    :cond_6c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2806
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v5, Lcom/chimeranft/core/Store;->SAVED_AT:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v6

    if-gtz v0, :cond_82

    add-long v3, v6, v8

    .line 2808
    :cond_82
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2809
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2810
    iget-boolean v3, p0, Lcom/chimeranft/core/Store;->loadedFromDisk:Z

    if-nez v3, :cond_d3

    sget-object v3, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/Store$Companion;->richness(Lorg/json/JSONObject;)I
    invoke-static {v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$richness(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)I

    move-result v4

    if-nez v4, :cond_d3

    invoke-direct {p0}, Lcom/chimeranft/core/Store;->anyDataFileExists()Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 2815
    :try_start_a1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v3, v4, v0}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_a1 .. :try_end_be} :catchall_be

    .line 2819
    :catchall_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " BLOCKED (empty root would wipe existing cache; wrote .recover)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2821
    :cond_d3
    iget-wide v1, p0, Lcom/chimeranft/core/Store;->writeVersion:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/chimeranft/core/Store;->writeVersion:J

    .line 2822
    iget-object v1, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_e9

    .line 2823
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e9

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2824
    :cond_e9
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2825
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bak"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2826
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v3

    .line 2827
    sget-object v4, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v4, v1, v0}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v8, v4, v6

    if-eqz v8, :cond_189

    .line 2836
    :try_start_13b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_13e

    .line 2840
    :catchall_13e
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": short write "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Store;->lastWriteError:Ljava/lang/String;

    .line 2841
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 2842
    iget-object v4, p0, Lcom/chimeranft/core/Store;->dataDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FAIL (short write "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; live file kept) dir="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2844
    :cond_189
    invoke-direct {p0, v2}, Lcom/chimeranft/core/Store;->refreshBackup(Ljava/io/File;)V

    .line 2845
    iget-object v2, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1a1

    .line 2851
    :try_start_194
    iget-object v3, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2852
    iget-object v3, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_19f
    .catchall {:try_start_194 .. :try_end_19f} :catchall_1a0

    goto :goto_1a1

    :catchall_1a0
    nop

    :cond_1a1
    :goto_1a1
    if-eqz v2, :cond_1ae

    .line 2857
    iget-object v1, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v3, v6

    if-eqz v1, :cond_1ae

    const/4 v2, 0x0

    .line 2859
    :cond_1ae
    iput-boolean v2, p0, Lcom/chimeranft/core/Store;->liveVerified:Z

    if-eqz v2, :cond_1bd

    const/4 v1, 0x1

    .line 2862
    iput-boolean v1, p0, Lcom/chimeranft/core/Store;->loadedFromDisk:Z

    .line 2863
    const-string v1, ""

    iput-object v1, p0, Lcom/chimeranft/core/Store;->lastWriteError:Ljava/lang/String;

    .line 2864
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->writeAutomaticBackup(Ljava/lang/String;)V

    goto :goto_1d9

    .line 2868
    :cond_1bd
    iget-object v0, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": rename/verify failed at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Store;->lastWriteError:Ljava/lang/String;

    :goto_1d9
    if-eqz v2, :cond_1f6

    .line 2871
    iget-object v0, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OK -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_210

    .line 2873
    :cond_1f6
    iget-object v0, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rename FAIL -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_210
    return-object p1
.end method


# virtual methods
.method public final declared-synchronized addGiftEntries(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    monitor-enter p0

    .line 1481
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1482
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_20

    .line 1484
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1485
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "gift_library"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_20

    :catchall_1d
    move-exception p1

    goto/16 :goto_9d

    .line 1489
    :cond_20
    :goto_20
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_27
    if-ge v2, v1, :cond_4c

    .line 1491
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 1494
    invoke-direct {p0, v5}, Lcom/chimeranft/core/Store;->clearDeletedIdsForEntry(Lorg/json/JSONObject;)V

    .line 1495
    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->containsStableGift(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z
    invoke-static {v6, p1, v5}, Lcom/chimeranft/core/Store$Companion;->access$containsStableGift(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_44

    add-int/lit8 v4, v4, 0x1

    .line 1497
    iget-wide v5, p0, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    goto :goto_49

    .line 1500
    :cond_44
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_4c
    if-gtz v3, :cond_6d

    .line 1504
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGifts duplicate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_1d

    monitor-exit p0

    return-object p1

    .line 1505
    :cond_6d
    :try_start_6d
    const-string v0, "addGifts"

    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " added="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " duplicate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " total="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_9b
    .catchall {:try_start_6d .. :try_end_9b} :catchall_1d

    monitor-exit p0

    return-object p1

    .line 1508
    :goto_9d
    :try_start_9d
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGifts FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b4
    .catchall {:try_start_9d .. :try_end_b4} :catchall_b6

    monitor-exit p0

    return-object p1

    :catchall_b6
    move-exception p1

    :try_start_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p1
.end method

.method public final declared-synchronized addGiftEntry(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 1455
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1456
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->clearDeletedIdsForEntry(Lorg/json/JSONObject;)V

    .line 1457
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_22

    .line 1459
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1460
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "gift_library"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_22

    :catchall_20
    move-exception p1

    goto :goto_6b

    .line 1462
    :cond_22
    :goto_22
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->containsStableGift(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z
    invoke-static {v1, p1, v0}, Lcom/chimeranft/core/Store$Companion;->access$containsStableGift(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1463
    iget-wide v0, p0, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    .line 1464
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGift duplicate total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_20

    monitor-exit p0

    return-object p1

    .line 1466
    :cond_48
    :try_start_48
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1467
    const-string v0, "addGift"

    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " total="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_20

    monitor-exit p0

    return-object p1

    .line 1470
    :goto_6b
    :try_start_6b
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGift FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_6b .. :try_end_82} :catchall_84

    monitor-exit p0

    return-object p1

    :catchall_84
    move-exception p1

    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p1
.end method

.method public final declared-synchronized addPurchasedGiftEntry(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 31

    move-object/from16 v1, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    monitor-enter p0

    .line 1167
    :try_start_7
    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "addPurchasedGift FAIL: visual balance off"
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    goto/16 :goto_aa

    .line 1168
    :cond_14
    :try_start_14
    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/chimeranft/core/Store;->canAffordVisualBalance(JJ)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1169
    const-string v0, "addPurchasedGift FAIL: insufficient balance"
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    monitor-exit p0

    return-object v0

    .line 1170
    :cond_1e
    :try_start_1e
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1171
    invoke-direct {v1, v0}, Lcom/chimeranft/core/Store;->clearDeletedIdsForEntry(Lorg/json/JSONObject;)V

    .line 1172
    iget-object v2, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "gift_library"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 1174
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1175
    iget-object v3, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "gift_library"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1177
    :cond_3e
    sget-object v3, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->containsStableGift(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z
    invoke-static {v3, v2, v0}, Lcom/chimeranft/core/Store$Companion;->access$containsStableGift(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1178
    iget-wide v3, v1, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    .line 1179
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPurchasedGift duplicate total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_1e .. :try_end_62} :catchall_11

    monitor-exit p0

    return-object v0

    .line 1181
    :cond_64
    :try_start_64
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1182
    invoke-direct {v1, v10, v11, v12, v13}, Lcom/chimeranft/core/Store;->deductVisualBalance(JJ)V

    const/16 v15, 0x100

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p7

    move-wide/from16 v4, p8

    move-object/from16 v6, p10

    move-wide/from16 v7, p11

    move-object/from16 v9, p13

    move-object v0, v2

    move-object/from16 v2, p6

    .line 1183
    invoke-static/range {v1 .. v16}, Lcom/chimeranft/core/Store;->appendVisualTransaction$default(Lcom/chimeranft/core/Store;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 1185
    iget-object v2, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v3, Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1186
    const-string v2, "addPurchasedGift"

    invoke-direct {v1, v2}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " total="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a8
    .catchall {:try_start_64 .. :try_end_a8} :catchall_11

    monitor-exit p0

    return-object v0

    .line 1189
    :goto_aa
    :try_start_aa
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPurchasedGift FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c1
    .catchall {:try_start_aa .. :try_end_c1} :catchall_c3

    monitor-exit p0

    return-object v0

    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method public final declared-synchronized applyIncomingPremiumGift(IJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    monitor-enter p0

    .line 1736
    :try_start_1
    invoke-virtual {p0, p5}, Lcom/chimeranft/core/Store;->isTransferApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "duplicate-event "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_6a

    .line 1737
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_premium_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1738
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_premium_configured"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-lez p1, :cond_34

    .line 1739
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "premium_gift_months"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_34
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_41

    .line 1740
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v0, "premium_gift_from_id"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_41
    if-eqz p4, :cond_51

    .line 1741
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_51

    :cond_4a
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string p2, "premium_gift_from_name"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1742
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string p2, "premium_gift_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1743
    invoke-direct {p0, p5}, Lcom/chimeranft/core/Store;->rememberAppliedTransfer(Ljava/lang/String;)V

    .line 1744
    const-string p1, "premium-in"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_68
    .catchall {:try_start_1c .. :try_end_68} :catchall_1a

    monitor-exit p0

    return-object p1

    .line 1747
    :goto_6a
    :try_start_6a
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "applyPremium FAIL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_83

    monitor-exit p0

    return-object p1

    :catchall_83
    move-exception p1

    :try_start_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p1
.end method

.method public final declared-synchronized applyIncomingTransfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    monitor-enter p0

    .line 1708
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/Store;->isTransferApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicate-event "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_7b

    .line 1709
    :cond_1c
    :try_start_1c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1710
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->clearDeletedIdsForEntry(Lorg/json/JSONObject;)V

    .line 1711
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_3a

    .line 1713
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1714
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "gift_library"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1716
    :cond_3a
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->containsStableGift(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z
    invoke-static {v1, p1, v0}, Lcom/chimeranft/core/Store$Companion;->access$containsStableGift(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1717
    iget-wide v2, p0, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    :cond_49
    if-nez v1, :cond_4e

    .line 1718
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1719
    :cond_4e
    invoke-direct {p0, p2}, Lcom/chimeranft/core/Store;->rememberAppliedTransfer(Ljava/lang/String;)V

    .line 1720
    const-string p2, "xfer-in"

    invoke-direct {p0, p2}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_5c

    const-string v0, " duplicate-gift"

    goto :goto_5e

    :cond_5c
    const-string v0, " added"

    :goto_5e
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " total="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_79
    .catchall {:try_start_1c .. :try_end_79} :catchall_1a

    monitor-exit p0

    return-object p1

    .line 1723
    :goto_7b
    :try_start_7b
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyXfer FAIL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_92
    .catchall {:try_start_7b .. :try_end_92} :catchall_94

    monitor-exit p0

    return-object p1

    :catchall_94
    move-exception p1

    :try_start_95
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw p1
.end method

.method public final declared-synchronized applyMarketSoldNotice(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1757
    :try_start_5
    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Store;->isTransferApplied(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate-event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    :catchall_1e
    move-exception v0

    goto/16 :goto_de

    .line 1758
    :cond_21
    :try_start_21
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1759
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1760
    const-string v4, "saved_id"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1761
    const-string v4, "unique_id"

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v4, v7, v5

    if-lez v4, :cond_46

    .line 1762
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_46
    cmp-long v4, v9, v5

    if-lez v4, :cond_55

    cmp-long v4, v9, v7

    if-eqz v4, :cond_55

    .line 1763
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1764
    :cond_55
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_65

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chimeranft/core/Store;->removeGiftsByIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_63
    move-object v15, v3

    goto :goto_68

    :cond_65
    const-string v3, "no stable id"

    goto :goto_63

    .line 1768
    :goto_68
    const-string v3, "resale_config"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_72

    move-wide v7, v5

    goto :goto_78

    .line 1769
    :cond_72
    const-string v4, "stars"

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    :goto_78
    if-nez v3, :cond_7c

    move-wide v3, v5

    goto :goto_82

    .line 1770
    :cond_7c
    const-string v4, "nanoton"

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    :goto_82
    cmp-long v9, v7, v5

    if-gtz v9, :cond_8a

    cmp-long v9, v3, v5

    if-lez v9, :cond_b4

    .line 1773
    :cond_8a
    invoke-direct {v1, v7, v8, v3, v4}, Lcom/chimeranft/core/Store;->creditVisualBalance(JJ)V

    .line 1777
    const-string v5, "b64"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    const-string v9, "NFT"

    invoke-virtual {v2, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1778
    const-string v6, ""

    .line 1779
    invoke-virtual {v1, v7, v8}, Lcom/chimeranft/core/Store;->netSaleStars(J)J

    move-result-wide v10

    invoke-virtual {v1, v3, v4}, Lcom/chimeranft/core/Store;->netSaleNanoTon(J)J

    move-result-wide v12

    const-string v14, "sale"

    move-object v3, v2

    move-object v2, v5

    const-wide/16 v4, 0x0

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    .line 1777
    invoke-direct/range {v1 .. v14}, Lcom/chimeranft/core/Store;->appendVisualTransaction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V

    .line 1781
    :cond_b4
    invoke-direct {v1, v0}, Lcom/chimeranft/core/Store;->rememberAppliedTransfer(Ljava/lang/String;)V

    .line 1782
    iget-object v0, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1783
    const-string v0, "market-sold"

    invoke-direct {v1, v0}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_dc
    .catchall {:try_start_21 .. :try_end_dc} :catchall_1e

    monitor-exit p0

    return-object v0

    .line 1786
    :goto_de
    :try_start_de
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "marketSold FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f5
    .catchall {:try_start_de .. :try_end_f5} :catchall_f7

    monitor-exit p0

    return-object v0

    :catchall_f7
    move-exception v0

    :try_start_f8
    monitor-exit p0
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw v0
.end method

.method public final declared-synchronized buildSyncSnapshot(J)Lorg/json/JSONObject;
    .registers 14

    monitor-enter p0

    .line 2458
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_23e

    .line 2461
    :try_start_6
    const-string v1, "plugin_id"

    const-string v2, "eblannft"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2462
    const-string v1, "updated_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2463
    const-string v1, "hide_official_gifts"

    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "hide_official_gifts_local"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2464
    const-string v1, "local_premium"

    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "local_premium_enabled"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2465
    const-string v1, "local_premium_configured"

    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "local_premium_configured"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2467
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "wear_active"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "wear_collectible_id"

    invoke-virtual {v1, v3, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-lez v1, :cond_5f

    const/4 v1, 0x1

    goto :goto_60

    :catchall_5c
    move-exception p1

    goto/16 :goto_22e

    :cond_5f
    const/4 v1, 0x0

    .line 2468
    :goto_60
    const-string v3, "wear_active"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2469
    const-string v3, "wear_collectible_id"

    if-eqz v1, :cond_72

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v8, "wear_collectible_id"

    invoke-virtual {v7, v8, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_73

    :cond_72
    move-wide v7, v5

    :goto_73
    invoke-virtual {v0, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v1, :cond_7d

    .line 2473
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getWearStatusData()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_7e

    :cond_7d
    const/4 v1, 0x0

    .line 2474
    :goto_7e
    const-string v3, "wear_status_data"

    if-eqz v1, :cond_89

    sget-object v7, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->scalarCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    invoke-static {v7, v1}, Lcom/chimeranft/core/Store$Companion;->access$scalarCopy(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_8e

    :cond_89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_8e
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2476
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftUsernames()[Ljava/lang/String;

    move-result-object v1

    .line 2477
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2478
    const-string v7, "enabled"

    iget-object v8, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v9, "nft_username_enabled"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_ab

    array-length v8, v1

    if-lez v8, :cond_ab

    const/4 v8, 0x1

    goto :goto_ac

    :cond_ab
    const/4 v8, 0x0

    :goto_ac
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2479
    const-string v7, "tokens"

    sget-object v8, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->toJsonArray([Ljava/lang/String;)Lorg/json/JSONArray;
    invoke-static {v8, v1}, Lcom/chimeranft/core/Store$Companion;->access$toJsonArray(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2480
    const-string v1, "replace_original"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v9, "nft_username_replace_original"

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2481
    const-string v1, "price_ton"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v9, "nft_username_price_ton"

    const-string v10, "0"

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2482
    const-string v1, "price_usd"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v9, "nft_username_price_usd"

    const-string v10, "0"

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2483
    const-string v1, "purchase_date"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v9, "nft_username_purchase_date"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2486
    const-string v1, "prices"

    const-string v7, "username"

    invoke-direct {p0, v7}, Lcom/chimeranft/core/Store;->pricesCopy(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2487
    const-string v1, "username_state"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2489
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftNumbers()[Ljava/lang/String;

    move-result-object v1

    .line 2490
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2491
    const-string v7, "enabled"

    iget-object v9, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v10, "nft_number_enabled"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_11e

    array-length v9, v1

    if-lez v9, :cond_11e

    const/4 v9, 0x1

    goto :goto_11f

    :cond_11e
    const/4 v9, 0x0

    :goto_11f
    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2492
    const-string v7, "tokens"

    # invokes: Lcom/chimeranft/core/Store$Companion;->toJsonArray([Ljava/lang/String;)Lorg/json/JSONArray;
    invoke-static {v8, v1}, Lcom/chimeranft/core/Store$Companion;->access$toJsonArray(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2493
    const-string v1, "price_ton"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v8, "nft_number_price_ton"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2494
    const-string v1, "price_usd"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v8, "nft_number_price_usd"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2495
    const-string v1, "purchase_date"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v8, "nft_number_purchase_date"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2496
    const-string v1, "prices"

    const-string v7, "number"

    invoke-direct {p0, v7}, Lcom/chimeranft/core/Store;->pricesCopy(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2497
    const-string v1, "number_state"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2499
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2500
    const-string v3, "enabled"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v8, "local_rating_enabled"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2501
    const-string v3, "value"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v8, "local_rating_value"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2502
    const-string v3, "level"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v8, "local_rating_level"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2503
    const-string v3, "next_goal"

    iget-object v7, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v8, "local_rating_next_goal"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2504
    const-string v3, "rating_state"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2505
    const-string v1, "pinned_channel"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->pinnedChannelPublicState()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2509
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "pin_order"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1cd

    .line 2510
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1cd

    .line 2511
    const-string v3, "pin_order"

    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2512
    :cond_1cd
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "collection_order"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1eb

    .line 2513
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1eb

    .line 2514
    const-string v3, "collection_order"

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2516
    :cond_1eb
    const-string v1, "gifts"

    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store;->buildSyncGifts(J)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2517
    const-string p1, "gift_collections"

    invoke-direct {p0, v2}, Lcom/chimeranft/core/Store;->buildGiftCollections(Z)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2518
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object p2, Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_219

    .line 2519
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_219

    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2520
    :cond_219
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object p2, Lcom/chimeranft/core/Store;->GIFT_DELETION_EPOCH:Ljava/lang/String;

    invoke-virtual {p1, p2, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-lez p1, :cond_23c

    .line 2523
    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2524
    const-string p1, "authoritative_gift_state"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_22d
    .catchall {:try_start_6 .. :try_end_22d} :catchall_5c

    goto :goto_23c

    .line 2530
    :goto_22e
    :try_start_22e
    const-string p2, "error"

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_239
    .catchall {:try_start_22e .. :try_end_239} :catchall_23a

    goto :goto_23c

    .line 2532
    :catchall_23a
    :try_start_23a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23c
    .catchall {:try_start_23a .. :try_end_23c} :catchall_23e

    .line 2536
    :cond_23c
    :goto_23c
    monitor-exit p0

    return-object v0

    :catchall_23e
    move-exception p1

    :try_start_23f
    monitor-exit p0
    :try_end_240
    .catchall {:try_start_23f .. :try_end_240} :catchall_23e

    throw p1
.end method

.method public final canAffordVisualBalance(JJ)Z
    .registers 10

    .line 815
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_2d

    const-wide p3, 0x225c17d04L

    cmp-long v2, p1, p3

    if-lez v2, :cond_1e

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_23

    :cond_1e
    const-wide/32 p3, 0x3b9aca00

    mul-long p1, p1, p3

    .line 822
    :goto_23
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualStarsNanos()J

    move-result-wide p3

    cmp-long v2, p3, p1

    if-ltz v2, :cond_2c

    return v0

    :cond_2c
    return v1

    :cond_2d
    cmp-long p1, p3, v2

    if-lez p1, :cond_3a

    .line 824
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualGramNanos()J

    move-result-wide p1

    cmp-long v2, p1, p3

    if-ltz v2, :cond_3a

    return v0

    :cond_3a
    return v1
.end method

.method public final declared-synchronized craftGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    monitor-enter p0

    .line 1605
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    if-nez p1, :cond_b

    const-string p1, "[]"

    goto :goto_b

    :catchall_8
    move-exception p1

    goto/16 :goto_101

    :cond_b
    :goto_b
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1606
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1607
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    const-wide/16 v4, 0x0

    if-ge v3, v1, :cond_31

    .line 1609
    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J
    invoke-static {v6, v0, v3}, Lcom/chimeranft/core/Store$Companion;->access$arrayLong(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;I)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_2e

    .line 1610
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1612
    :cond_31
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fd

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_40

    goto/16 :goto_fd

    .line 1613
    :cond_40
    new-instance v0, Lorg/json/JSONObject;

    if-nez p2, :cond_46

    const-string p2, "{}"

    :cond_46
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1614
    const-string p2, "b64"

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f9

    .line 1615
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_5d

    goto/16 :goto_f9

    .line 1617
    :cond_5d
    iget-object p2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 1618
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_ad

    .line 1622
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v6, 0x0

    :goto_71
    if-ge v2, v3, :cond_ac

    .line 1624
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1625
    sget-object v8, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->giftMatchesIds(Lorg/json/JSONObject;Ljava/util/Set;)Z
    invoke-static {v8, v7, p1}, Lcom/chimeranft/core/Store$Companion;->access$giftMatchesIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_a4

    add-int/lit8 v6, v6, 0x1

    .line 1628
    const-string v8, "saved_id"

    invoke-virtual {v7, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1629
    const-string v10, "unique_id"

    invoke-virtual {v7, v10, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v7, v8, v4

    if-lez v7, :cond_98

    .line 1630
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_98
    cmp-long v7, v10, v4

    if-lez v7, :cond_a9

    .line 1631
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    :cond_a4
    if-eqz v7, :cond_a9

    .line 1635
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a9
    :goto_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_ac
    move v2, v6

    :cond_ad
    if-gtz v2, :cond_b3

    .line 1639
    const-string p1, "craftGifts: ingredients not found"
    :try_end_b1
    .catchall {:try_start_1 .. :try_end_b1} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1640
    :cond_b3
    :try_start_b3
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->appendDeletedIds(Ljava/util/Set;)V

    .line 1641
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->clearDeletedIdsForEntry(Lorg/json/JSONObject;)V

    .line 1642
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1643
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string p2, "gift_library"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1644
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object p2, Lcom/chimeranft/core/Store;->GIFT_DELETION_EPOCH:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1645
    const-string p1, "craftGifts"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " burned="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_f7
    .catchall {:try_start_b3 .. :try_end_f7} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1615
    :cond_f9
    :goto_f9
    :try_start_f9
    const-string p1, "craftGifts: invalid result"
    :try_end_fb
    .catchall {:try_start_f9 .. :try_end_fb} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1612
    :cond_fd
    :goto_fd
    :try_start_fd
    const-string p1, "craftGifts: need 1..4 ids"
    :try_end_ff
    .catchall {:try_start_fd .. :try_end_ff} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1648
    :goto_101
    :try_start_101
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "craftGifts FAIL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_118
    .catchall {:try_start_101 .. :try_end_118} :catchall_11a

    monitor-exit p0

    return-object p1

    :catchall_11a
    move-exception p1

    :try_start_11b
    monitor-exit p0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw p1
.end method

.method public final declared-synchronized deleteGiftCollection(I)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    .line 2238
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_collections"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2239
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    .line 2241
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_35

    .line 2243
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 2244
    const-string v6, "collection_id"

    const-string v7, "id"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, p1, :cond_32

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_32

    :catchall_30
    move-exception p1

    goto :goto_63

    :cond_32
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2246
    :cond_35
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "gift_collections"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2247
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 2248
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_4a
    if-ge v2, v1, :cond_5b

    sget-object v3, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "collection_ids"

    int-to-long v6, p1

    # invokes: Lcom/chimeranft/core/Store$Companion;->removeArrayValue(Lorg/json/JSONObject;Ljava/lang/String;J)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/chimeranft/core/Store$Companion;->access$removeArrayValue(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 2249
    :cond_5b
    const-string p1, "deleteCollection"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_30

    monitor-exit p0

    return-object p1

    .line 2252
    :goto_63
    :try_start_63
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteCollection FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_7c

    monitor-exit p0

    return-object p1

    :catchall_7c
    move-exception p1

    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p1
.end method

.method public final declared-synchronized enqueueSend(Lorg/json/JSONObject;)Z
    .registers 11

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 405
    monitor-exit p0

    return v0

    .line 408
    :cond_6
    :try_start_6
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->readSendOutbox()Lorg/json/JSONArray;

    move-result-object v1

    .line 409
    const-string v2, "event_id"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3a

    .line 412
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_37

    .line 413
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_27

    goto :goto_37

    :cond_27
    const-string v7, "event_id"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_53

    if-eqz v6, :cond_37

    monitor-exit p0

    return v5

    :cond_37
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 415
    :cond_3a
    :try_start_3a
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 416
    sget-object p1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v2, p0, Lcom/chimeranft/core/Store;->sendOutboxFile:Ljava/io/File;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeSmallAtomic(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {p1, v2, v1}, Lcom/chimeranft/core/Store$Companion;->access$writeSmallAtomic(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_53

    .line 417
    monitor-exit p0

    return v5

    .line 420
    :catchall_53
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized exportProfileSectionsJson()Ljava/lang/String;
    .registers 9

    monitor-enter p0

    .line 1937
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_258

    .line 1941
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1942
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "gift_library"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1943
    const-string v3, "gift_library"

    if-nez v2, :cond_20

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_20

    :catchall_1d
    move-exception v1

    goto/16 :goto_244

    :cond_20
    :goto_20
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1944
    const-string v2, "inject_active"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "inject_active"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1945
    const-string v2, "wear_active"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "wear_active"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1946
    const-string v2, "wear_collectible_id"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "wear_collectible_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1947
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getWearStatusData()Lorg/json/JSONObject;

    move-result-object v2

    .line 1948
    const-string v3, "wear_status_data"

    if-nez v2, :cond_5a

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_5a
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1949
    const-string v2, "local_premium_enabled"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_premium_enabled"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1950
    const-string v2, "local_premium_configured"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_premium_configured"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1951
    const-string v2, "cached_gift_id"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "cached_gift_id"

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1952
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "gift_collections"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1953
    const-string v3, "gift_collections"

    if-eqz v2, :cond_9a

    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_9f

    :cond_9a
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_9f
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1954
    sget-object v2, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v3, "build_config"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "build_config"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    # invokes: Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v2, v1, v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1955
    const-string v3, "identity_config"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "identity_config"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    # invokes: Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v2, v1, v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1956
    const-string v3, "value_config"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "value_config"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    # invokes: Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v2, v1, v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1957
    const-string v3, "gift_stars_config"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "gift_stars_config"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    # invokes: Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v2, v1, v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1958
    const-string v3, "nft_gifts"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1961
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1962
    const-string v3, "enabled"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_enabled"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1963
    const-string v3, "tokens"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftUsernames()[Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/chimeranft/core/Store$Companion;->toJsonArray([Ljava/lang/String;)Lorg/json/JSONArray;
    invoke-static {v2, v4}, Lcom/chimeranft/core/Store$Companion;->access$toJsonArray(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1964
    const-string v3, "selected"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1965
    const-string v3, "replace_original"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_replace_original"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1966
    const-string v3, "price_ton"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_price_ton"

    const-string v7, "10.8"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1967
    const-string v3, "price_usd"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_price_usd"

    const-string v7, "14.68"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1968
    const-string v3, "purchase_date"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_purchase_date"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1969
    const-string v3, "prices"

    const-string v4, "username"

    invoke-direct {p0, v4}, Lcom/chimeranft/core/Store;->pricesCopy(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1970
    const-string v3, "template_b64"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_collectible_template_b64"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1971
    const-string v3, "nft_usernames"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1974
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1975
    const-string v3, "enabled"

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_number_enabled"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1976
    const-string v3, "tokens"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftNumbers()[Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/chimeranft/core/Store$Companion;->toJsonArray([Ljava/lang/String;)Lorg/json/JSONArray;
    invoke-static {v2, v4}, Lcom/chimeranft/core/Store$Companion;->access$toJsonArray(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1977
    const-string v2, "selected"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "nft_number"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1978
    const-string v2, "price_ton"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "nft_number_price_ton"

    const-string v6, "10.8"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1979
    const-string v2, "price_usd"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "nft_number_price_usd"

    const-string v6, "14.68"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1980
    const-string v2, "purchase_date"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "nft_number_purchase_date"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1981
    const-string v2, "prices"

    const-string v3, "number"

    invoke-direct {p0, v3}, Lcom/chimeranft/core/Store;->pricesCopy(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1982
    const-string v2, "template_b64"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "nft_number_collectible_template_b64"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1983
    const-string v2, "nft_number"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1986
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1987
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_enabled"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1988
    const-string v2, "value"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_value"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1989
    const-string v2, "level"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_level"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1990
    const-string v2, "next_goal"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_next_goal"

    const/16 v6, 0x1388

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1991
    const-string v2, "local_rating"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1993
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1994
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_premium_enabled"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1995
    const-string v2, "configured"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_premium_configured"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1996
    const-string v2, "local_premium"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_243
    .catchall {:try_start_6 .. :try_end_243} :catchall_1d

    goto :goto_252

    .line 2001
    :goto_244
    :try_start_244
    const-string v2, "error"

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_24f
    .catchall {:try_start_244 .. :try_end_24f} :catchall_250

    goto :goto_252

    .line 2003
    :catchall_250
    :try_start_250
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2007
    :goto_252
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_256
    .catchall {:try_start_250 .. :try_end_256} :catchall_258

    monitor-exit p0

    return-object v0

    :catchall_258
    move-exception v0

    :try_start_259
    monitor-exit p0
    :try_end_25a
    .catchall {:try_start_259 .. :try_end_25a} :catchall_258

    throw v0
.end method

.method public final getAllGiftEntries()[Lorg/json/JSONObject;
    .registers 7

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "gift_library"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 78
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_23

    .line 80
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 81
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 84
    :cond_23
    new-array v1, v2, [Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/json/JSONObject;

    return-object v0
.end method

.method public final declared-synchronized getCollectiblePrice(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    monitor-enter p0

    .line 981
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Store;->getCollectiblePrices(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_6e

    .line 982
    :cond_f
    :goto_f
    invoke-static {p1, p2}, Lcom/chimeranft/core/Collectible;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 983
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->legacyPrefix(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/chimeranft/core/Store$Companion;->access$legacyPrefix(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 985
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "price_ton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 986
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "price_usd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 987
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "purchase_date"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 984
    invoke-static {p2, v0, v1, p1}, Lcom/chimeranft/core/Collectible;->resolve(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_d

    monitor-exit p0

    return-object p1

    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_d

    throw p1
.end method

.method public final declared-synchronized getCollectiblePrices(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    monitor-enter p0

    .line 959
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->pricesKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/chimeranft/core/Store$Companion;->access$pricesKey(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_17

    .line 960
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_19

    :cond_17
    :goto_17
    monitor-exit p0

    return-object p1

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    throw p1
.end method

.method public final declared-synchronized getCollectionOrder(I)Lorg/json/JSONArray;
    .registers 4

    monitor-enter p0

    .line 2357
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "collection_order"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 p1, 0x0

    goto :goto_15

    .line 2358
    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_15
    if-nez p1, :cond_1f

    .line 2359
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_21

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-object p1

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1d

    throw p1
.end method

.method public final getDuplicatesBlocked()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    return-wide v0
.end method

.method public final getGiftCount()I
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public final getInjectableEntries()[Lorg/json/JSONObject;
    .registers 9

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "gift_library"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 107
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_3d

    .line 110
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 111
    const-string v6, "inject"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_3a

    .line 112
    :cond_26
    const-string v6, "b64"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3a

    .line 113
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_37

    goto :goto_3a

    .line 114
    :cond_37
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 117
    :cond_3d
    new-array v1, v2, [Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getLastSyncServer()Ljava/lang/String;
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "last_sync_server"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastWriteError()Ljava/lang/String;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/chimeranft/core/Store;->lastWriteError:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalRatingLevel()I
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_rating_level"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getLocalRatingNextGoal()I
    .registers 2

    .line 281
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getLocalRatingLevel()I

    move-result v0

    invoke-static {v0}, Lcom/chimeranft/core/Rating;->nextGoalForLevel(I)I

    move-result v0

    return v0
.end method

.method public final getLocalRatingValue()I
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_rating_value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_14

    .line 277
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getLocalRatingLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Rating;->clampValue(II)I

    move-result v0

    return v0

    :cond_14
    return v2
.end method

.method public final getLocalVerificationMode()I
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_verification_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getNftNumbers()[Ljava/lang/String;
    .registers 3

    .line 180
    const-string v0, "nft_numbers"

    const-string v1, "nft_number"

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/Store;->collect(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNftUsernames()[Ljava/lang/String;
    .registers 3

    .line 176
    const-string v0, "nft_usernames"

    const-string v1, "nft_username"

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/Store;->collect(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getPinOrder()Lorg/json/JSONArray;
    .registers 3

    monitor-enter p0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "pin_order"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_15

    :cond_13
    :goto_13
    monitor-exit p0

    return-object v0

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw v0
.end method

.method public final declared-synchronized getPinnedChannelState()Lorg/json/JSONObject;
    .registers 7

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "pinned_channel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_12

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_33

    monitor-exit p0

    return-object v0

    .line 200
    :cond_12
    :try_start_12
    iget-wide v1, p0, Lcom/chimeranft/core/Store;->pinnedSnapshotVersion:J

    iget-wide v3, p0, Lcom/chimeranft/core/Store;->writeVersion:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1e

    iget-object v1, p0, Lcom/chimeranft/core/Store;->pinnedSnapshotSource:Lorg/json/JSONObject;

    if-eq v1, v0, :cond_2a

    .line 202
    :cond_1e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/Store;->pinnedSnapshotText:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/chimeranft/core/Store;->pinnedSnapshotSource:Lorg/json/JSONObject;

    .line 204
    iget-wide v0, p0, Lcom/chimeranft/core/Store;->writeVersion:J

    iput-wide v0, p0, Lcom/chimeranft/core/Store;->pinnedSnapshotVersion:J

    .line 206
    :cond_2a
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->pinnedSnapshotText:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v0

    .line 209
    :catchall_33
    :try_start_33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-object v0

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public final getPinnedChannelWrapperShared()Lorg/json/JSONObject;
    .registers 9

    .line 238
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "pinned_channel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 239
    iget-wide v2, p0, Lcom/chimeranft/core/Store;->writeVersion:J

    .line 240
    iget-object v4, p0, Lcom/chimeranft/core/Store;->pinnedWrapperShared:Lorg/json/JSONObject;

    if-eqz v4, :cond_19

    .line 241
    iget-wide v5, p0, Lcom/chimeranft/core/Store;->pinnedWrapperVersion:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_19

    iget-object v5, p0, Lcom/chimeranft/core/Store;->pinnedWrapperSource:Lorg/json/JSONObject;

    if-ne v5, v0, :cond_19

    return-object v4

    .line 245
    :cond_19
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-nez v0, :cond_26

    .line 248
    :try_start_20
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_27

    :cond_26
    move-object v5, v0

    :goto_27
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2a

    .line 252
    :catchall_2a
    iput-object v0, p0, Lcom/chimeranft/core/Store;->pinnedWrapperSource:Lorg/json/JSONObject;

    .line 253
    iput-wide v2, p0, Lcom/chimeranft/core/Store;->pinnedWrapperVersion:J

    .line 254
    iput-object v4, p0, Lcom/chimeranft/core/Store;->pinnedWrapperShared:Lorg/json/JSONObject;

    return-object v4
.end method

.method public final getRemoteSnapshotFile()Ljava/io/File;
    .registers 6

    .line 59
    iget-wide v0, p0, Lcom/chimeranft/core/Store;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote_snapshots_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".json"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_1f
    const-string v0, "remote_snapshots.json"

    .line 60
    :goto_21
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chimeranft/core/Store;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getVisualGramNanos()J
    .registers 7

    .line 161
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "visual_gram_nanos"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v4, 0x71afd498d0000L

    .line 163
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVisualStarsNanos()J
    .registers 7

    .line 155
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "visual_stars_nanos"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v4, 0x71afd498d0000L

    .line 157
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized getVisualTransactions()[Lorg/json/JSONObject;
    .registers 7

    monitor-enter p0

    .line 306
    :try_start_1
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->normalizeVisualTransactionIds()V

    .line 307
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v1, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 308
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_3b

    .line 309
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_31

    .line 312
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 313
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :catchall_2c
    move-exception v0

    goto :goto_3f

    :cond_2e
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 315
    :cond_31
    new-array v0, v1, [Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/json/JSONObject;
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_2c

    monitor-exit p0

    return-object v0

    .line 308
    :cond_3b
    :goto_3b
    :try_start_3b
    new-array v0, v1, [Lorg/json/JSONObject;
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_2c

    monitor-exit p0

    return-object v0

    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_2c

    throw v0
.end method

.method public final getWearCollectibleId()J
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "wear_collectible_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized getWearStatusData()Lorg/json/JSONObject;
    .registers 5

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "wear_collectible_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 143
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "wear_status_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 142
    invoke-direct {p0, v0, v1, v2}, Lcom/chimeranft/core/Store;->normalizeWearStatus(JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final getWriteVersion()J
    .registers 3

    .line 37
    iget-wide v0, p0, Lcom/chimeranft/core/Store;->writeVersion:J

    return-wide v0
.end method

.method public final declared-synchronized giftCollectionsJson()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 2164
    :try_start_2
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->buildGiftCollections(Z)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final declared-synchronized giftLibraryJson()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2156
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2157
    const-string v0, "[]"

    goto :goto_14

    :catchall_e
    move-exception v0

    goto :goto_3a

    :cond_10
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    :goto_14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xea60

    if-le v1, v2, :cond_38

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "...<truncated>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_e

    :cond_38
    monitor-exit p0

    return-object v0

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_e

    throw v0
.end method

.method public final hasPinnedChannelConfigured()Z
    .registers 8

    .line 849
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "pinned_channel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 850
    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "last_managed_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    return v0

    :cond_21
    return v1
.end method

.method public final declared-synchronized hasVisualTransaction(Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    .line 1293
    :try_start_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_41

    .line 1294
    :cond_b
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->normalizeVisualTransactionIds()V

    .line 1295
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_38

    if-nez v1, :cond_1a

    .line 1296
    monitor-exit p0

    return v0

    .line 1297
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_3d

    .line 1299
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 1300
    const-string v5, "id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_38

    if-eqz v4, :cond_3a

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_38
    move-exception p1

    goto :goto_3f

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1302
    :cond_3d
    monitor-exit p0

    return v0

    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_38

    throw p1

    .line 1293
    :cond_41
    :goto_41
    monitor-exit p0

    return v0
.end method

.method public final hasVisualTransactionFast(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    .line 1265
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4f

    .line 1266
    :cond_a
    iget-wide v1, p0, Lcom/chimeranft/core/Store;->writeVersion:J

    .line 1267
    iget-object v3, p0, Lcom/chimeranft/core/Store;->visualTxIds:Ljava/util/HashSet;

    .line 1268
    iget-wide v4, p0, Lcom/chimeranft/core/Store;->visualTxIdsVersion:J

    cmp-long v6, v4, v1

    if-eqz v6, :cond_4a

    .line 1270
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1273
    :try_start_19
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v5, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_25

    const/4 v5, 0x0

    goto :goto_29

    .line 1274
    :cond_25
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_29
    if-ge v0, v5, :cond_46

    .line 1277
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 1279
    const-string v7, "id"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1280
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_40

    goto :goto_43

    :cond_40
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_46

    :cond_43
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1286
    :catchall_46
    :cond_46
    iput-object v3, p0, Lcom/chimeranft/core/Store;->visualTxIds:Ljava/util/HashSet;

    .line 1287
    iput-wide v1, p0, Lcom/chimeranft/core/Store;->visualTxIdsVersion:J

    .line 1289
    :cond_4a
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4f
    :goto_4f
    return v0
.end method

.method public final declared-synchronized importProfileSections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    monitor-enter p0

    .line 2016
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2017
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_51

    const/4 v2, 0x0

    .line 2021
    :goto_f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_51

    move v3, v2

    .line 2023
    :goto_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2a

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :catchall_27
    move-exception p1

    goto/16 :goto_2ee

    .line 2024
    :cond_2a
    sget-object v4, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    sub-int v6, v3, v2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2025
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_45

    goto :goto_48

    :cond_45
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2026
    :goto_48
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_51

    add-int/lit8 v2, v3, 0x1

    goto :goto_f

    .line 2032
    :cond_51
    const-string p2, "nft_gifts"

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_129

    .line 2034
    const-string p2, "nft_gifts"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_129

    .line 2037
    const-string v3, "gift_library"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2038
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "gift_library"

    if-nez v3, :cond_73

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :cond_73
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2039
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "inject_active"

    const-string v5, "inject_active"

    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2040
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "wear_active"

    const-string v5, "wear_active"

    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2041
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "wear_collectible_id"

    const-string v5, "wear_collectible_id"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2042
    const-string v3, "wear_status_data"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 2043
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "wear_status_data"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2044
    :cond_ae
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_premium_enabled"

    const-string v5, "local_premium_enabled"

    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2045
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_premium_configured"

    const-string v5, "local_premium_configured"

    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2046
    const-string v3, "cached_gift_id"

    invoke-virtual {p2, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-lez v5, :cond_d9

    .line 2047
    iget-object v5, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "cached_gift_id"

    invoke-virtual {v5, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2048
    :cond_d9
    const-string v3, "gift_collections"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_f1

    .line 2049
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "gift_collections"

    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2050
    :cond_f1
    sget-object v3, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "build_config"

    const-string v6, "build_config"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    # invokes: Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v3, v4, v5, v6}, Lcom/chimeranft/core/Store$Companion;->access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2051
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "identity_config"

    const-string v6, "identity_config"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    # invokes: Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v3, v4, v5, v6}, Lcom/chimeranft/core/Store$Companion;->access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2052
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "value_config"

    const-string v6, "value_config"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    # invokes: Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v3, v4, v5, v6}, Lcom/chimeranft/core/Store$Companion;->access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2053
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "gift_stars_config"

    const-string v6, "gift_stars_config"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    # invokes: Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v3, v4, v5, p2}, Lcom/chimeranft/core/Store$Companion;->access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    goto :goto_12a

    :cond_129
    const/4 p2, 0x0

    .line 2057
    :goto_12a
    const-string v3, "nft_usernames"

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1db

    .line 2059
    const-string v3, "nft_usernames"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1db

    .line 2062
    const-string v4, "tokens"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2063
    iget-object v5, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_usernames"

    if-nez v4, :cond_14c

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    goto :goto_14d

    :cond_14c
    move-object v7, v4

    :goto_14d
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2064
    iget-object v5, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username"

    sget-object v7, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v8, "selected"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/chimeranft/core/Store$Companion;->firstToken(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v4, v8}, Lcom/chimeranft/core/Store$Companion;->access$firstToken(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2065
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_username_enabled"

    const-string v6, "enabled"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2066
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_username_replace_original"

    const-string v6, "replace_original"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2067
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_username_price_ton"

    const-string v6, "price_ton"

    const-string v7, "10.8"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2068
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_username_price_usd"

    const-string v6, "price_usd"

    const-string v7, "14.68"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2069
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_username_purchase_date"

    const-string v6, "purchase_date"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2070
    const-string v4, "prices"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2071
    iget-object v5, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v6, Lcom/chimeranft/core/Store;->USERNAME_PRICES:Ljava/lang/String;

    if-eqz v4, :cond_1c2

    .line 2072
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1c7

    .line 2074
    :cond_1c2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 2071
    :goto_1c7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2075
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_collectible_template_b64"

    const-string v6, "template_b64"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 p2, p2, 0x1

    .line 2079
    :cond_1db
    const-string v3, "nft_number"

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27f

    .line 2081
    const-string v3, "nft_number"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_27f

    .line 2084
    const-string v4, "tokens"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2085
    iget-object v5, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_numbers"

    if-nez v4, :cond_1fd

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1fe

    :cond_1fd
    move-object v7, v4

    :goto_1fe
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2086
    iget-object v5, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_number"

    sget-object v7, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v8, "selected"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/chimeranft/core/Store$Companion;->firstToken(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v4, v8}, Lcom/chimeranft/core/Store$Companion;->access$firstToken(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2087
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_number_enabled"

    const-string v6, "enabled"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2088
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_number_price_ton"

    const-string v6, "price_ton"

    const-string v7, "10.8"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2089
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_number_price_usd"

    const-string v6, "price_usd"

    const-string v7, "14.68"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2090
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_number_purchase_date"

    const-string v6, "purchase_date"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2091
    const-string v4, "prices"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2092
    iget-object v5, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v6, Lcom/chimeranft/core/Store;->NUMBER_PRICES:Ljava/lang/String;

    if-eqz v4, :cond_266

    .line 2093
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_26b

    .line 2095
    :cond_266
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 2092
    :goto_26b
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2096
    iget-object v4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v5, "nft_number_collectible_template_b64"

    const-string v6, "template_b64"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 p2, p2, 0x1

    .line 2100
    :cond_27f
    const-string v3, "local_rating"

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2cc

    .line 2102
    const-string p1, "local_rating"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2cc

    .line 2105
    const-string v0, "value"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2106
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_value"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2107
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_level"

    const-string v5, "level"

    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2108
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_next_goal"

    const-string v5, "next_goal"

    const/16 v6, 0x1388

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2109
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_enabled"

    const-string v5, "enabled"

    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2c7

    if-lez v0, :cond_2c7

    const/4 v1, 0x1

    :cond_2c7
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 p2, p2, 0x1

    :cond_2cc
    if-nez p2, :cond_2d2

    .line 2113
    const-string p1, "importProfile: nothing to import"
    :try_end_2d0
    .catchall {:try_start_1 .. :try_end_2d0} :catchall_27

    monitor-exit p0

    return-object p1

    .line 2114
    :cond_2d2
    :try_start_2d2
    const-string p1, "importProfile"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sections="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2ec
    .catchall {:try_start_2d2 .. :try_end_2ec} :catchall_27

    monitor-exit p0

    return-object p1

    .line 2117
    :goto_2ee
    :try_start_2ee
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "importProfile FAIL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_305
    .catchall {:try_start_2ee .. :try_end_305} :catchall_307

    monitor-exit p0

    return-object p1

    :catchall_307
    move-exception p1

    :try_start_308
    monitor-exit p0
    :try_end_309
    .catchall {:try_start_308 .. :try_end_309} :catchall_307

    throw p1
.end method

.method public final isDataDirWritable()Z
    .registers 9

    .line 371
    iget v0, p0, Lcom/chimeranft/core/Store;->writableProbe:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-lez v0, :cond_9

    return v2

    :cond_9
    return v1

    .line 376
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/chimeranft/core/Store;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1d

    :catchall_1b
    nop

    goto :goto_45

    .line 378
    :cond_1d
    :goto_1d
    new-instance v3, Ljava/io/File;

    const-string v4, ".chimeranft_write_probe"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v4, "1"

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0, v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_1b

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    .line 383
    :goto_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_44

    .line 385
    :catchall_42
    :try_start_42
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_1b

    :goto_44
    move v1, v0

    :goto_45
    if-eqz v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v2, -0x1

    .line 392
    :goto_49
    iput v2, p0, Lcom/chimeranft/core/Store;->writableProbe:I

    return v1
.end method

.method public final isHideOfficialGifts()Z
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "hide_official_gifts_local"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isLocalPremiumEnabled()Z
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_premium_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isLocalRatingActive()Z
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_rating_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getLocalRatingValue()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    return v2
.end method

.method public final declared-synchronized isLocallyEmpty()Z
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/Store$Companion;->richness(Lorg/json/JSONObject;)I
    invoke-static {v0, v1}, Lcom/chimeranft/core/Store$Companion;->access$richness(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final isMarketSpendEnabled()Z
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "market_spend_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isNftNumberEnabled()Z
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "nft_number_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isNftNumberEnabledRaw()Z
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "nft_number_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isNftUsernameEnabled()Z
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "nft_username_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isNftUsernameEnabledRaw()Z
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "nft_username_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isPickerWarnShown()Z
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "picker_warn_shown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isReplaceOriginalUsernames()Z
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "nft_username_replace_original"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isShowUnavailableGifts()Z
    .registers 4

    .line 332
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "show_unavailable_gifts_local"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSmoothModeEnabled()Z
    .registers 4

    .line 324
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "smooth_mode_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSyncEnabled()Z
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "sync_enabled_local"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized isTransferApplied(Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 1695
    :try_start_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_36

    .line 1696
    :cond_b
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "applied_transfers"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_30

    if-nez v1, :cond_17

    .line 1697
    monitor-exit p0

    return v0

    .line 1698
    :cond_17
    :try_start_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_32

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_30

    if-eqz v4, :cond_2d

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catchall_30
    move-exception p1

    goto :goto_34

    .line 1699
    :cond_32
    monitor-exit p0

    return v0

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_30

    throw p1

    .line 1695
    :cond_36
    :goto_36
    monitor-exit p0

    return v0
.end method

.method public final isVisualBalanceConfigured()Z
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "visual_balance_configured"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isWearActive()Z
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "wear_active"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final load()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/chimeranft/core/Store;->liveVerified:Z

    .line 560
    :try_start_3
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->readBestEffort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 563
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    .line 564
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->normalizeVisualTransactionIds()V

    const/4 v1, 0x1

    .line 565
    iput-boolean v1, p0, Lcom/chimeranft/core/Store;->loadedFromDisk:Z

    .line 566
    iput-boolean v0, p0, Lcom/chimeranft/core/Store;->writeBlocked:Z

    goto :goto_21

    :catchall_19
    move-exception v0

    goto :goto_26

    .line 572
    :cond_1b
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->anyDataFileExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/chimeranft/core/Store;->writeBlocked:Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_19

    .line 580
    :goto_21
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->summary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 576
    :goto_26
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->anyDataFileExists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/chimeranft/core/Store;->writeBlocked:Z

    .line 577
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load FAIL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final markPickerWarnShown()V
    .registers 4

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "picker_warn_shown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 765
    const-string v0, "pickerwarn"

    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Store;->saveRoot(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_d

    :catchall_d
    return-void
.end method

.method public final declared-synchronized mergeExternalState(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    if-eqz p1, :cond_79

    .line 2130
    :try_start_3
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    goto :goto_79

    .line 2131
    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2133
    sget-object p1, Lcom/chimeranft/core/Store;->EXTERNAL_MERGE_KEYS:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v2, v1, :cond_57

    aget-object v4, p1, v2

    .line 2135
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 2136
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 2137
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    goto :goto_54

    .line 2138
    :cond_34
    iget-object v6, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4d

    .line 2141
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_4d

    :catchall_4b
    move-exception p1

    goto :goto_7d

    .line 2142
    :cond_4d
    :goto_4d
    iget-object v6, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_57
    if-nez v3, :cond_5d

    .line 2145
    const-string p1, "mergeState: no change"
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_4b

    monitor-exit p0

    return-object p1

    .line 2146
    :cond_5d
    :try_start_5d
    const-string p1, "mergeState"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " keys="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_4b

    monitor-exit p0

    return-object p1

    .line 2130
    :cond_79
    :goto_79
    :try_start_79
    const-string p1, "mergeState: empty"
    :try_end_7b
    .catchall {:try_start_79 .. :try_end_7b} :catchall_4b

    monitor-exit p0

    return-object p1

    .line 2149
    :goto_7d
    :try_start_7d
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeState FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_94
    .catchall {:try_start_7d .. :try_end_94} :catchall_96

    monitor-exit p0

    return-object p1

    :catchall_96
    move-exception p1

    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p1
.end method

.method public final netSaleNanoTon(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    const-wide/16 v0, 0x64

    .line 1136
    div-long/2addr p1, v0

    const-wide/16 v0, 0x50

    mul-long p1, p1, v0

    return-wide p1
.end method

.method public final netSaleStars(J)J
    .registers 5

    .line 1130
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store;->netProceedsNanos(J)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final declared-synchronized pendingSends()[Lorg/json/JSONObject;
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 445
    :try_start_2
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->readSendOutbox()Lorg/json/JSONArray;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lorg/json/JSONObject;

    .line 447
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_1c

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1e

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 448
    :cond_1c
    monitor-exit p0

    return-object v2

    .line 451
    :catchall_1e
    :try_start_1e
    new-array v0, v0, [Lorg/json/JSONObject;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public final declared-synchronized pinnedChannelPublicState()Lorg/json/JSONObject;
    .registers 3

    monitor-enter p0

    .line 836
    :try_start_1
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getPinnedChannelState()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    .line 839
    :try_start_5
    const-string v1, "access_hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 840
    const-string v1, "access_account"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_f

    .line 844
    :catchall_f
    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final rawJson()Ljava/lang/String;
    .registers 4

    .line 2594
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2595
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_29

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "...<truncated>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    return-object v0
.end method

.method public final declared-synchronized recordVisualTransfer(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 23

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1235
    :try_start_3
    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "visual balance off"
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_5b

    :cond_f
    const-wide/16 v2, 0x19

    const-wide/16 v4, 0x0

    .line 1236
    :try_start_13
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chimeranft/core/Store;->deductVisualBalance(JJ)V

    .line 1237
    const-string v6, ""

    const/16 v15, 0x100

    const/16 v16, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x19

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v16}, Lcom/chimeranft/core/Store;->appendVisualTransaction$default(Lcom/chimeranft/core/Store;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 1238
    iget-object v0, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3a

    const/4 v0, 0x0

    goto :goto_3f

    :cond_3a
    const/4 v2, 0x0

    .line 1239
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_3f
    if-eqz v0, :cond_48

    .line 1240
    const-string v2, "type"

    const-string v3, "transfer"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1241
    :cond_48
    iget-object v0, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1242
    const-string v0, "giftTransferFee"

    invoke-direct {v1, v0}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_59
    .catchall {:try_start_13 .. :try_end_59} :catchall_d

    monitor-exit p0

    return-object v0

    .line 1245
    :goto_5b
    :try_start_5b
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "giftTransferFee FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_74

    monitor-exit p0

    return-object v0

    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0
.end method

.method public final declared-synchronized recoverFromSyncSnapshot(Lorg/json/JSONObject;)Z
    .registers 14

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_298

    .line 470
    :try_start_4
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/Store$Companion;->richness(Lorg/json/JSONObject;)I
    invoke-static {v1, v2}, Lcom/chimeranft/core/Store$Companion;->access$richness(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)I

    move-result v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_295

    if-lez v1, :cond_10

    goto/16 :goto_298

    .line 473
    :cond_10
    :try_start_10
    const-string v1, "gifts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 474
    const-string v2, "username_state"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 475
    const-string v3, "number_state"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 476
    const-string v4, "rating_state"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v1, :cond_30

    .line 477
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_61

    .line 478
    :cond_30
    const-string v5, "wear_active"

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_61

    if-eqz v2, :cond_42

    .line 479
    const-string v5, "enabled"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_61

    :cond_42
    if-eqz v3, :cond_4c

    .line 480
    const-string v5, "enabled"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_61

    :cond_4c
    if-eqz v4, :cond_56

    .line 481
    const-string v5, "enabled"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_61

    .line 482
    :cond_56
    const-string v5, "local_premium"

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_5c
    .catchall {:try_start_10 .. :try_end_5c} :catchall_293

    if-eqz v5, :cond_5f

    goto :goto_61

    .line 483
    :cond_5f
    monitor-exit p0

    return v0

    :cond_61
    :goto_61
    const/4 v5, 0x1

    if-eqz v1, :cond_ad

    .line 487
    :try_start_64
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 488
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_6e
    if-ge v8, v7, :cond_a6

    .line 490
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_a3

    .line 492
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 493
    const-string v9, "b64"

    const-string v11, ""

    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 494
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_8e

    goto :goto_93

    :cond_8e
    const-string v11, "payload_b64"

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    :goto_93
    const-string v9, "inject"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a0

    const-string v9, "inject"

    invoke-virtual {v10, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 496
    :cond_a0
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 498
    :cond_a6
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v7, "gift_library"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    :cond_ad
    const-string v1, "wear_active"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_c3

    const-string v1, "wear_collectible_id"

    invoke-virtual {p1, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-lez v1, :cond_c3

    const/4 v1, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v1, 0x0

    .line 501
    :goto_c4
    iget-object v8, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v9, "wear_active"

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 502
    iget-object v8, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v9, "wear_collectible_id"

    if-eqz v1, :cond_d7

    const-string v1, "wear_collectible_id"

    invoke-virtual {p1, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    :cond_d7
    invoke-virtual {v8, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 503
    const-string v1, "wear_status_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f2

    .line 504
    iget-object v6, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v7, "wear_status_data"

    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f2
    if-eqz v2, :cond_166

    .line 507
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_enabled"

    const-string v7, "enabled"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 508
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_usernames"

    sget-object v7, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v8, "tokens"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    # invokes: Lcom/chimeranft/core/Store$Companion;->copyArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    invoke-static {v7, v8}, Lcom/chimeranft/core/Store$Companion;->access$copyArray(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_replace_original"

    const-string v7, "replace_original"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 510
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_price_ton"

    const-string v7, "price_ton"

    const-string v8, "0"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_price_usd"

    const-string v7, "price_usd"

    const-string v8, "0"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v6, "nft_username_purchase_date"

    const-string v7, "purchase_date"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v1, "prices"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_166

    .line 514
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v6, Lcom/chimeranft/core/Store;->USERNAME_PRICES:Ljava/lang/String;

    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_166
    if-eqz v3, :cond_1cd

    .line 518
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "nft_number_enabled"

    const-string v6, "enabled"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 519
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "nft_numbers"

    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v7, "tokens"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    # invokes: Lcom/chimeranft/core/Store$Companion;->copyArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    invoke-static {v6, v7}, Lcom/chimeranft/core/Store$Companion;->access$copyArray(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "nft_number_price_ton"

    const-string v6, "price_ton"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "nft_number_price_usd"

    const-string v6, "price_usd"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "nft_number_purchase_date"

    const-string v6, "purchase_date"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v1, "prices"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1cd

    .line 525
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v3, Lcom/chimeranft/core/Store;->NUMBER_PRICES:Ljava/lang/String;

    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1cd
    if-eqz v4, :cond_203

    .line 529
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "local_rating_enabled"

    const-string v3, "enabled"

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 530
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "local_rating_value"

    const-string v3, "value"

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 531
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "local_rating_level"

    const-string v3, "level"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 532
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "local_rating_next_goal"

    const-string v3, "next_goal"

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 534
    :cond_203
    const-string v1, "pinned_channel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_21b

    .line 535
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "pinned_channel"

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    :cond_21b
    const-string v1, "gift_collections"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_233

    .line 537
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "gift_collections"

    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    :cond_233
    const-string v1, "pin_order"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_24b

    .line 539
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "pin_order"

    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    :cond_24b
    const-string v1, "collection_order"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_263

    .line 541
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "collection_order"

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    :cond_263
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "local_premium_enabled"

    const-string v3, "local_premium"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 543
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "local_premium_configured"

    const-string v3, "local_premium_configured"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 544
    sget-object p1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/Store$Companion;->deduplicateLibraryObject(Lorg/json/JSONObject;)I
    invoke-static {p1, v1}, Lcom/chimeranft/core/Store$Companion;->access$deduplicateLibraryObject(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)I

    .line 545
    const-string v1, "serverRecovery"

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAIL"

    # invokes: Lcom/chimeranft/core/Store$Companion;->containsText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v1, v2}, Lcom/chimeranft/core/Store$Companion;->access$containsText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_290
    .catchall {:try_start_64 .. :try_end_290} :catchall_293

    xor-int/2addr p1, v5

    monitor-exit p0

    return p1

    .line 548
    :catchall_293
    monitor-exit p0

    return v0

    :catchall_295
    move-exception p1

    :try_start_296
    monitor-exit p0
    :try_end_297
    .catchall {:try_start_296 .. :try_end_297} :catchall_295

    throw p1

    .line 470
    :cond_298
    :goto_298
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized reload()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 586
    :try_start_2
    iput-boolean v0, p0, Lcom/chimeranft/core/Store;->liveVerified:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_4c

    .line 589
    :try_start_4
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->readBestEffort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 592
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    .line 593
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->normalizeVisualTransactionIds()V

    const/4 v1, 0x1

    .line 594
    iput-boolean v1, p0, Lcom/chimeranft/core/Store;->loadedFromDisk:Z

    .line 595
    iput-boolean v0, p0, Lcom/chimeranft/core/Store;->writeBlocked:Z

    goto :goto_1c

    :catchall_1a
    move-exception v0

    goto :goto_33

    .line 597
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->summary()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 600
    :goto_33
    :try_start_33
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reload FAIL (kept previous root): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return-object v0

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public final declared-synchronized removeGiftById(J)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 1550
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_16

    .line 1551
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_20

    .line 1552
    :cond_16
    :goto_16
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Store;->removeGiftsByIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_14

    monitor-exit p0

    return-object p1

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_14

    throw p1
.end method

.method public final declared-synchronized removeGiftsByIds(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    monitor-enter p0

    .line 1560
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    if-nez p1, :cond_b

    const-string p1, "[]"

    goto :goto_b

    :catchall_8
    move-exception p1

    goto/16 :goto_bf

    :cond_b
    :goto_b
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1561
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1562
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    const-wide/16 v4, 0x0

    if-ge v3, v1, :cond_31

    .line 1564
    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J
    invoke-static {v6, v0, v3}, Lcom/chimeranft/core/Store$Companion;->access$arrayLong(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;I)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_2e

    .line 1565
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1567
    :cond_31
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string p1, "removeGifts: no ids"
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1568
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1569
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_8b

    .line 1573
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v6, 0x0

    :goto_4f
    if-ge v2, v3, :cond_8a

    .line 1575
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1576
    sget-object v8, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->giftMatchesIds(Lorg/json/JSONObject;Ljava/util/Set;)Z
    invoke-static {v8, v7, p1}, Lcom/chimeranft/core/Store$Companion;->access$giftMatchesIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_82

    add-int/lit8 v6, v6, 0x1

    .line 1579
    const-string v8, "saved_id"

    invoke-virtual {v7, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1580
    const-string v10, "unique_id"

    invoke-virtual {v7, v10, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v7, v8, v4

    if-lez v7, :cond_76

    .line 1581
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_76
    cmp-long v7, v10, v4

    if-lez v7, :cond_87

    .line 1582
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_82
    if-eqz v7, :cond_87

    .line 1585
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_8a
    move v2, v6

    .line 1588
    :cond_8b
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "gift_library"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1589
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->appendDeletedIds(Ljava/util/Set;)V

    .line 1590
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v0, Lcom/chimeranft/core/Store;->GIFT_DELETION_EPOCH:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1591
    const-string p1, "removeGifts"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " removed="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_bd
    .catchall {:try_start_3b .. :try_end_bd} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1594
    :goto_bf
    :try_start_bf
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeGifts FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_d6
    .catchall {:try_start_bf .. :try_end_d6} :catchall_d8

    monitor-exit p0

    return-object p1

    :catchall_d8
    move-exception p1

    :try_start_d9
    monitor-exit p0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw p1
.end method

.method public final declared-synchronized removeSend(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    if-eqz p1, :cond_44

    .line 426
    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_41

    if-nez v0, :cond_a

    goto :goto_44

    .line 429
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->readSendOutbox()Lorg/json/JSONArray;

    move-result-object v0

    .line 430
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 431
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_34

    .line 433
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 434
    const-string v5, "event_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 436
    :cond_34
    sget-object p1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    iget-object v0, p0, Lcom/chimeranft/core/Store;->sendOutboxFile:Ljava/io/File;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeSmallAtomic(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/chimeranft/core/Store$Companion;->access$writeSmallAtomic(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_3f

    .line 440
    :catchall_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1

    .line 426
    :cond_44
    :goto_44
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized removeVisualTransaction(Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    .line 1306
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Store;->hasVisualTransaction(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8e

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p0

    return v1

    .line 1309
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1310
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_18
    if-eqz v0, :cond_3a

    .line 1312
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 1314
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 1315
    const-string v5, "id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1318
    :cond_3a
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v3, Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1319
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->DELETED_VISUAL_TRANSACTION_IDS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_55

    .line 1321
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1322
    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1325
    :cond_55
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v2, :cond_6c

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    goto :goto_6f

    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 1329
    :cond_6c
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1330
    :goto_6f
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v0, Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1331
    sget-object p1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v0, "deleteVisualTransaction"

    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FAIL"

    # invokes: Lcom/chimeranft/core/Store$Companion;->containsText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v2}, Lcom/chimeranft/core/Store$Companion;->access$containsText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_88
    .catchall {:try_start_a .. :try_end_88} :catchall_8c

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    .line 1334
    :catchall_8c
    monitor-exit p0

    return v1

    :catchall_8e
    move-exception p1

    :try_start_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p1
.end method

.method public final declared-synchronized reorderGiftCollections(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    monitor-enter p0

    .line 2309
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    if-nez p1, :cond_b

    const-string p1, "[]"

    goto :goto_b

    :catchall_8
    move-exception p1

    goto/16 :goto_8d

    :cond_b
    :goto_b
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2310
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_collections"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2311
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-nez p1, :cond_21

    .line 2312
    const-string p1, "reorderCollections: empty"
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_8

    monitor-exit p0

    return-object p1

    .line 2313
    :cond_21
    :try_start_21
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2314
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v3, :cond_5b

    .line 2316
    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J
    invoke-static {v6, v0, v5}, Lcom/chimeranft/core/Store$Companion;->access$arrayLong(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;I)J

    move-result-wide v6

    long-to-int v7, v6

    .line 2317
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v8, 0x0

    :goto_3a
    if-ge v8, v6, :cond_58

    .line 2318
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_55

    .line 2319
    const-string v10, "collection_id"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_55

    .line 2320
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2321
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_58
    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 2326
    :cond_5b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_60
    if-ge v3, v0, :cond_7e

    .line 2327
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 2328
    const-string v6, "collection_id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7b

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 2330
    :cond_7e
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v0, "gift_collections"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2331
    const-string p1, "reorderCollections"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_21 .. :try_end_8b} :catchall_8

    monitor-exit p0

    return-object p1

    .line 2334
    :goto_8d
    :try_start_8d
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reorderCollections FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_a6

    monitor-exit p0

    return-object p1

    :catchall_a6
    move-exception p1

    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw p1
.end method

.method public final declared-synchronized replaceGiftEntry(JLjava/lang/String;)Ljava/lang/String;
    .registers 15

    monitor-enter p0

    .line 1520
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1521
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Store;->clearDeletedIdsForEntry(Lorg/json/JSONObject;)V

    .line 1522
    iget-object p3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 1523
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    if-eqz p3, :cond_4d

    .line 1527
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1e
    if-ge v2, v3, :cond_4c

    .line 1529
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_49

    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-lez v8, :cond_46

    .line 1531
    const-string v8, "saved_id"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v10, v8, p1

    if-eqz v10, :cond_43

    const-string v8, "unique_id"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v8, v6, p1

    if-nez v8, :cond_46

    goto :goto_43

    :catchall_41
    move-exception p1

    goto :goto_7f

    :cond_43
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 1535
    :cond_46
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_4c
    move v2, v4

    .line 1538
    :cond_4d
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1539
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string p2, "gift_library"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1540
    const-string p1, "replaceGift"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " removed="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_41

    monitor-exit p0

    return-object p1

    .line 1543
    :goto_7f
    :try_start_7f
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "replaceGift FAIL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_96
    .catchall {:try_start_7f .. :try_end_96} :catchall_98

    monitor-exit p0

    return-object p1

    :catchall_98
    move-exception p1

    :try_start_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p1
.end method

.method public final declared-synchronized resetLocalProfile()Ljava/lang/String;
    .registers 11

    monitor-enter p0

    .line 2676
    :try_start_1
    iget-boolean v0, p0, Lcom/chimeranft/core/Store;->writeBlocked:Z

    if-eqz v0, :cond_c

    .line 2677
    const-string v0, "FAIL reset BLOCKED (cache unreadable at load; restart Telegram and retry)"
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    goto/16 :goto_cd

    .line 2678
    :cond_c
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 2679
    iput-boolean v0, p0, Lcom/chimeranft/core/Store;->loadedFromDisk:Z

    .line 2680
    const-string v1, "resetLocalProfile"

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2681
    sget-object v2, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v3, "FAIL"

    # invokes: Lcom/chimeranft/core/Store$Companion;->containsText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v1, v3}, Lcom/chimeranft/core/Store$Companion;->access$containsText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_9

    if-eqz v2, :cond_28

    monitor-exit p0

    return-object v1

    .line 2683
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2684
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bak"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2685
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".recover"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".promo"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chimeranft/core/Store;->sendOutboxFile:Ljava/io/File;

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/io/File;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    aput-object v4, v8, v0

    const/4 v0, 0x2

    aput-object v5, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    const/4 v0, 0x4

    aput-object v2, v8, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_9b
    if-ge v0, v7, :cond_b0

    .line 2686
    aget-object v3, v8, v0
    :try_end_9f
    .catchall {:try_start_28 .. :try_end_9f} :catchall_9

    .line 2690
    :try_start_9f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_a9
    .catchall {:try_start_9f .. :try_end_a9} :catchall_ad

    if-eqz v3, :cond_ad

    add-int/lit8 v2, v2, 0x1

    :catchall_ad
    :cond_ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 2695
    :cond_b0
    :try_start_b0
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->deleteAutomaticBackups()I

    move-result v0

    add-int/2addr v2, v0

    .line 2696
    iput-boolean v9, p0, Lcom/chimeranft/core/Store;->liveVerified:Z

    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wiped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_cb
    .catchall {:try_start_b0 .. :try_end_cb} :catchall_9

    monitor-exit p0

    return-object v0

    .line 2700
    :goto_cd
    :try_start_cd
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAIL reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e4
    .catchall {:try_start_cd .. :try_end_e4} :catchall_e6

    monitor-exit p0

    return-object v0

    :catchall_e6
    move-exception v0

    :try_start_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v0
.end method

.method public final declared-synchronized saveRoot(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2738
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveRoot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object p1

    :catchall_1d
    move-exception p1

    .line 2741
    :try_start_1e
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveRoot FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object p1

    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final declared-synchronized saveWear(JLorg/json/JSONObject;)Ljava/lang/String;
    .registers 9

    monitor-enter p0

    .line 2639
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "wear_active"

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2640
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "wear_collectible_id"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p3, :cond_28

    .line 2641
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "wear_status_data"

    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Store;->normalizeWearStatus(JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_28

    :catchall_26
    move-exception p1

    goto :goto_3f

    .line 2642
    :cond_28
    :goto_28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveWear cid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_26

    monitor-exit p0

    return-object p1

    .line 2645
    :goto_3f
    :try_start_3f
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "saveWear FAIL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object p1

    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public final selfTestPersist()Ljava/lang/String;
    .registers 10

    .line 2603
    const-string v0, "marker"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chimeranft/core/Store;->dataDir:Ljava/lang/String;

    const-string v3, "dex_store_selftest.json.tmp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/chimeranft/core/Store;->dataDir:Ljava/lang/String;

    const-string v4, "dex_store_selftest.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3e8

    int-to-long v3, v3

    .line 2607
    :try_start_17
    iget-wide v5, p0, Lcom/chimeranft/core/Store;->uid:J

    rem-long/2addr v5, v3

    add-long/2addr v3, v5

    .line 2608
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2609
    invoke-virtual {v5, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2610
    const-string v6, "uid"

    iget-wide v7, p0, Lcom/chimeranft/core/Store;->uid:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2611
    const-string v6, "note"

    const-string v7, "phase1 round-trip"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2613
    sget-object v6, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v6, v1, v5}, Lcom/chimeranft/core/Store$Companion;->access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_46

    :catchall_44
    move-exception v0

    goto :goto_8d

    .line 2615
    :cond_46
    :goto_46
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2616
    const-string v0, "selftest FAIL: rename"

    return-object v0

    .line 2618
    :cond_4f
    new-instance v1, Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/Store$Companion;->readFile(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v6, v2}, Lcom/chimeranft/core/Store$Companion;->access$readFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    .line 2619
    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-nez v5, :cond_65

    .line 2621
    const-string v3, "OK"

    goto :goto_67

    :cond_65
    const-string v3, "MISMATCH"

    .line 2622
    :goto_67
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selftest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " marker="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8c
    .catchall {:try_start_17 .. :try_end_8c} :catchall_44

    return-object v0

    .line 2625
    :goto_8d
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selftest FAIL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized setCollectiblePrice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 15

    monitor-enter p0

    .line 1000
    :try_start_1
    invoke-static {p1, p2}, Lcom/chimeranft/core/Collectible;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1001
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_12

    const-string p1, "setCollectiblePrice FAIL: no token"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    goto/16 :goto_15e

    .line 1002
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->pricesKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/chimeranft/core/Store$Companion;->access$pricesKey(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 1004
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1005
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/Store$Companion;->pricesKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/chimeranft/core/Store$Companion;->access$pricesKey(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1007
    :cond_2e
    # invokes: Lcom/chimeranft/core/Store$Companion;->decimalOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/chimeranft/core/Store$Companion;->access$decimalOrEmpty(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1008
    # invokes: Lcom/chimeranft/core/Store$Companion;->decimalOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p4}, Lcom/chimeranft/core/Store$Companion;->access$decimalOrEmpty(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1009
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_61

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_61

    .line 1011
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1012
    const-string p1, "clearCollectiblePrice"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cleared="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_f

    monitor-exit p0

    return-object p1

    :cond_61
    if-eqz p5, :cond_77

    .line 1014
    :try_start_63
    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p5}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6e

    goto :goto_77

    .line 1017
    :cond_6e
    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p5}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    # invokes: Lcom/chimeranft/core/Store$Companion;->upperAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p5}, Lcom/chimeranft/core/Store$Companion;->access$upperAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_79

    .line 1015
    :cond_77
    :goto_77
    const-string p5, "USD"

    .line 1018
    :goto_79
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1019
    const-string v3, "ton"

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "0"

    goto :goto_8a

    :cond_89
    move-object v4, p3

    :goto_8a
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1020
    const-string v3, "fiat"

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_97

    const-string p4, "0"

    :cond_97
    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1021
    const-string p4, "currency"

    invoke-virtual {v2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1022
    const-string p4, "date"

    const-wide/16 v3, 0x0

    cmp-long p5, p6, v3

    if-lez p5, :cond_a8

    goto :goto_b0

    :cond_a8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    const-wide/16 v5, 0x3e8

    div-long p6, p5, v5

    :goto_b0
    invoke-virtual {v2, p4, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1023
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1027
    # invokes: Lcom/chimeranft/core/Store$Companion;->isNumberKind(Ljava/lang/String;)Z
    invoke-static {v1, p1}, Lcom/chimeranft/core/Store$Companion;->access$isNumberKind(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_c1

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftNumbers()[Ljava/lang/String;

    move-result-object p4

    goto :goto_c5

    :cond_c1
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftUsernames()[Ljava/lang/String;

    move-result-object p4

    .line 1028
    :goto_c5
    array-length p5, p4

    if-lez p5, :cond_135

    const/4 p5, 0x0

    aget-object p4, p4, p5

    invoke-static {p1, p4}, Lcom/chimeranft/core/Collectible;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_135

    .line 1030
    # invokes: Lcom/chimeranft/core/Store$Companion;->legacyPrefix(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/chimeranft/core/Store$Companion;->access$legacyPrefix(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1031
    iget-object p4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "price_ton"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "ton"

    const-string p7, "0"

    invoke-virtual {v2, p6, p7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1032
    iget-object p4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "price_usd"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "fiat"

    const-string p7, "0"

    invoke-virtual {v2, p6, p7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    iget-object p4, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "purchase_date"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "date"

    invoke-virtual {v2, p5, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1035
    :cond_135
    const-string p1, "setCollectiblePrice"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " TON"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_15c
    .catchall {:try_start_63 .. :try_end_15c} :catchall_f

    monitor-exit p0

    return-object p1

    .line 1038
    :goto_15e
    :try_start_15e
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCollectiblePrice FAIL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_175
    .catchall {:try_start_15e .. :try_end_175} :catchall_177

    monitor-exit p0

    return-object p1

    :catchall_177
    move-exception p1

    :try_start_178
    monitor-exit p0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    throw p1
.end method

.method public final declared-synchronized setGiftCollectionMembership(JIZ)Ljava/lang/String;
    .registers 24

    move-object/from16 v1, p0

    move/from16 v0, p3

    monitor-enter p0

    if-eqz p4, :cond_10

    if-lez v0, :cond_10

    .line 2260
    :try_start_9
    invoke-direct {v1, v0}, Lcom/chimeranft/core/Store;->ensureCollectionMetadata(I)V

    goto :goto_10

    :catchall_d
    move-exception v0

    goto/16 :goto_a3

    .line 2261
    :cond_10
    :goto_10
    iget-object v2, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "gift_library"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 2264
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_20
    if-ge v5, v4, :cond_92

    .line 2266
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3e

    .line 2267
    const-string v8, "saved_id"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v8, v11, p1

    if-eqz v8, :cond_41

    const-string v8, "unique_id"

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v8, v11, p1

    if-eqz v8, :cond_41

    :cond_3e
    move/from16 v17, v4

    goto :goto_8d

    .line 2268
    :cond_41
    const-string v8, "collection_ids"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 2269
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    if-eqz v8, :cond_72

    .line 2271
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_53
    if-ge v13, v12, :cond_72

    .line 2273
    sget-object v14, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J
    invoke-static {v14, v8, v13}, Lcom/chimeranft/core/Store$Companion;->access$arrayLong(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;I)J

    move-result-wide v14

    cmp-long v16, v14, v9

    move/from16 v17, v4

    if-lez v16, :cond_6d

    int-to-long v3, v0

    cmp-long v18, v14, v3

    if-eqz v18, :cond_6d

    .line 2274
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6d
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v17

    goto :goto_53

    :cond_72
    move/from16 v17, v4

    if-eqz p4, :cond_86

    .line 2276
    sget-object v3, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    int-to-long v8, v0

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayContains(Lorg/json/JSONArray;J)Z
    invoke-static {v3, v11, v8, v9}, Lcom/chimeranft/core/Store$Companion;->access$arrayContains(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;J)Z

    move-result v3

    if-nez v3, :cond_86

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2277
    :cond_86
    const-string v3, "collection_ids"

    invoke-virtual {v7, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v6, v6, 0x1

    :goto_8d
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v17

    goto :goto_20

    :cond_92
    move v3, v6

    goto :goto_95

    :cond_94
    const/4 v3, 0x0

    :goto_95
    if-nez v3, :cond_9b

    .line 2280
    const-string v0, "collectionMembership: no gift"
    :try_end_99
    .catchall {:try_start_9 .. :try_end_99} :catchall_d

    monitor-exit p0

    return-object v0

    .line 2281
    :cond_9b
    :try_start_9b
    const-string v0, "collectionMembership"

    invoke-direct {v1, v0}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_d

    monitor-exit p0

    return-object v0

    .line 2284
    :goto_a3
    :try_start_a3
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collectionMembership FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_ba
    .catchall {:try_start_a3 .. :try_end_ba} :catchall_bc

    monitor-exit p0

    return-object v0

    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v0
.end method

.method public final declared-synchronized setGiftHidden(JZ)Ljava/lang/String;
    .registers 14

    monitor-enter p0

    .line 1837
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1838
    const-string p1, "setGiftHidden: no library"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    goto :goto_5b

    .line 1840
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v2, v1, :cond_3f

    .line 1842
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 1844
    const-string v5, "saved_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-eqz v5, :cond_35

    const-string v5, "unique_id"

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_3c

    .line 1846
    :cond_35
    const-string v5, "hidden_override"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1850
    :cond_3f
    const-string p1, "giftVisibility"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " matched="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_11 .. :try_end_59} :catchall_f

    monitor-exit p0

    return-object p1

    .line 1853
    :goto_5b
    :try_start_5b
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setGiftHidden FAIL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_74

    monitor-exit p0

    return-object p1

    :catchall_74
    move-exception p1

    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p1
.end method

.method public final declared-synchronized setGiftInject(JZ)Ljava/lang/String;
    .registers 14

    monitor-enter p0

    .line 1814
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1815
    const-string p1, "setInject: no library"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    goto :goto_5b

    .line 1817
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v2, v1, :cond_3f

    .line 1819
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 1820
    const-string v5, "saved_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-eqz v5, :cond_35

    const-string v5, "unique_id"

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_3c

    .line 1821
    :cond_35
    const-string v5, "inject"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1825
    :cond_3f
    const-string p1, "setInject"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " matched="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_11 .. :try_end_59} :catchall_f

    monitor-exit p0

    return-object p1

    .line 1828
    :goto_5b
    :try_start_5b
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setInject FAIL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_74

    monitor-exit p0

    return-object p1

    :catchall_74
    move-exception p1

    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p1
.end method

.method public final declared-synchronized setHideOfficialGifts(Z)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1380
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "hide_official_gifts_local"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1381
    const-string p1, "setHideGifts"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 1384
    :try_start_11
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHideGifts FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final declared-synchronized setLastSyncServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1440
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "last_sync_server"

    if-nez p1, :cond_c

    const-string p1, ""

    goto :goto_c

    :catchall_a
    move-exception p1

    goto :goto_17

    :cond_c
    :goto_c
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1441
    const-string p1, "setLastSyncServer"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_a

    monitor-exit p0

    return-object p1

    .line 1444
    :goto_17
    :try_start_17
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLastSyncServer FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-object p1

    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final declared-synchronized setLocalPremium(Z)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 1046
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_premium_enabled"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1047
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_premium_configured"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalPremium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    .line 1051
    :try_start_28
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalPremium FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-object p1

    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public final declared-synchronized setLocalVerificationMode(I)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 920
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "local_verification_mode"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    move v2, p1

    :goto_e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object p1

    :catchall_28
    move-exception p1

    .line 924
    :try_start_29
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVerif FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object p1

    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public final declared-synchronized setMarketSpendEnabled(Z)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1404
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "market_spend_enabled"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1405
    const-string p1, "marketSpend"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 1408
    :try_start_11
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMarketSpend FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final declared-synchronized setNftNumber(Z[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 1346
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "nft_number_enabled"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1347
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v0, "nft_numbers"

    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->toArr([Ljava/lang/String;)Lorg/json/JSONArray;
    invoke-static {v1, p2}, Lcom/chimeranft/core/Store$Companion;->access$toArr(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1348
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v0, "nft_number"

    if-eqz p2, :cond_24

    array-length v1, p2

    if-lez v1, :cond_24

    const/4 v1, 0x0

    aget-object p2, p2, v1

    goto :goto_26

    :catchall_22
    move-exception p1

    goto :goto_31

    :cond_24
    const-string p2, ""

    :goto_26
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1349
    const-string p1, "setNumber"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_22

    monitor-exit p0

    return-object p1

    .line 1352
    :goto_31
    :try_start_31
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNumber FAIL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_4a

    monitor-exit p0

    return-object p1

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public final declared-synchronized setNftUsername(Z[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 934
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "nft_username_enabled"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 935
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v0, "nft_usernames"

    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->toArr([Ljava/lang/String;)Lorg/json/JSONArray;
    invoke-static {v1, p2}, Lcom/chimeranft/core/Store$Companion;->access$toArr(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 936
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v0, "nft_username"

    if-eqz p2, :cond_24

    array-length v1, p2

    if-lez v1, :cond_24

    const/4 v1, 0x0

    aget-object p2, p2, v1

    goto :goto_26

    :catchall_22
    move-exception p1

    goto :goto_31

    :cond_24
    const-string p2, ""

    :goto_26
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 937
    const-string p1, "setUsername"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_22

    monitor-exit p0

    return-object p1

    .line 940
    :goto_31
    :try_start_31
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUsername FAIL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_4a

    monitor-exit p0

    return-object p1

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public final declared-synchronized setPinOrder(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 2343
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "pin_order"

    sget-object v2, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->cleanIdList(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    invoke-static {v2, p1}, Lcom/chimeranft/core/Store$Companion;->access$cleanIdList(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2344
    const-string p1, "pinOrder"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    .line 2347
    :try_start_17
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPinOrder FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-object p1

    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final declared-synchronized setPinnedChannel(ZJLjava/lang/String;Ljava/lang/String;IIJJ)Ljava/lang/String;
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    monitor-enter p0

    .line 858
    :try_start_7
    iget-object v3, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "pinned_channel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_15

    move-wide v6, v4

    goto :goto_21

    .line 862
    :cond_15
    const-string v6, "id"

    const-string v7, "last_managed_id"

    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    :goto_21
    if-nez p1, :cond_2d

    cmp-long v8, v6, v4

    if-gtz v8, :cond_2d

    cmp-long v8, p2, v4

    if-lez v8, :cond_2d

    move-wide/from16 v6, p2

    .line 867
    :cond_2d
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_4e

    cmp-long v11, p2, v4

    if-lez v11, :cond_4e

    if-eqz v0, :cond_4e

    .line 868
    sget-object v11, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v11, v0}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_49

    goto :goto_4e

    :cond_49
    const/4 v11, 0x1

    goto :goto_4f

    :catchall_4b
    move-exception v0

    goto/16 :goto_f9

    :cond_4e
    :goto_4e
    const/4 v11, 0x0

    .line 869
    :goto_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-nez v3, :cond_57

    move-wide v14, v4

    goto :goto_5d

    .line 870
    :cond_57
    const-string v14, "updated_at"

    invoke-virtual {v3, v14, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    :goto_5d
    cmp-long v3, v12, v14

    if-gtz v3, :cond_64

    const-wide/16 v12, 0x1

    add-long/2addr v12, v14

    .line 872
    :cond_64
    const-string v3, "enabled"

    invoke-virtual {v8, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 873
    const-string v3, "id"

    if-eqz v11, :cond_70

    move-wide/from16 v14, p2

    goto :goto_71

    :cond_70
    move-wide v14, v4

    :goto_71
    invoke-virtual {v8, v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 874
    const-string v3, "username"

    if-eqz v11, :cond_85

    sget-object v14, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v14, v0}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x40

    # invokes: Lcom/chimeranft/core/Store$Companion;->removeChar(Ljava/lang/String;C)Ljava/lang/String;
    invoke-static {v14, v0, v15}, Lcom/chimeranft/core/Store$Companion;->access$removeChar(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    :cond_85
    const-string v0, ""

    :goto_87
    invoke-virtual {v8, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    const-string v0, "title"

    if-eqz v11, :cond_97

    if-eqz v2, :cond_97

    sget-object v3, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_99

    :cond_97
    const-string v2, ""

    :goto_99
    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 876
    const-string v0, "participants_count"

    if-eqz v11, :cond_a7

    move/from16 v2, p6

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_a8

    :cond_a7
    const/4 v2, 0x0

    :goto_a8
    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 877
    const-string v0, "message_id"

    if-eqz v11, :cond_b5

    move/from16 v2, p7

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_b5
    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 883
    const-string v0, "access_hash"

    if-eqz v11, :cond_bf

    move-wide/from16 v2, p8

    goto :goto_c0

    :cond_bf
    move-wide v2, v4

    :goto_c0
    invoke-virtual {v8, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 884
    const-string v0, "access_account"

    if-eqz v11, :cond_ca

    move-wide/from16 v2, p10

    goto :goto_cb

    :cond_ca
    move-wide v2, v4

    :goto_cb
    invoke-virtual {v8, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 890
    const-string v0, "managed"

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 891
    const-string v0, "last_managed_id"

    if-eqz v11, :cond_d9

    move-wide/from16 v6, p2

    :cond_d9
    invoke-virtual {v8, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 892
    const-string v0, "updated_at"

    invoke-virtual {v8, v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 893
    const-string v0, "removed_at"

    if-eqz v11, :cond_e6

    goto :goto_e7

    :cond_e6
    move-wide v4, v12

    :goto_e7
    invoke-virtual {v8, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 894
    iget-object v0, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "pinned_channel"

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    const-string v0, "setPinnedChannel"

    invoke-direct {v1, v0}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f7
    .catchall {:try_start_7 .. :try_end_f7} :catchall_4b

    monitor-exit p0

    return-object v0

    .line 898
    :goto_f9
    :try_start_f9
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPinnedChannel FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_110
    .catchall {:try_start_f9 .. :try_end_110} :catchall_112

    monitor-exit p0

    return-object v0

    :catchall_112
    move-exception v0

    :try_start_113
    monitor-exit p0
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    throw v0
.end method

.method public final declared-synchronized setRating(ZIII)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    const/16 p4, 0x64

    .line 1360
    :try_start_3
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 p4, 0x1

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v0, 0x0

    if-lez p2, :cond_16

    .line 1364
    invoke-static {p2, p3}, Lcom/chimeranft/core/Rating;->clampValue(II)I

    move-result p2

    goto :goto_17

    :catchall_14
    move-exception p1

    goto :goto_45

    :cond_16
    const/4 p2, 0x0

    .line 1365
    :goto_17
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "local_rating_enabled"

    if-eqz p1, :cond_20

    if-lez p2, :cond_20

    goto :goto_21

    :cond_20
    const/4 p4, 0x0

    :goto_21
    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1366
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string p4, "local_rating_value"

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1367
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string p2, "local_rating_level"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1368
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string p2, "local_rating_next_goal"

    invoke-static {p3}, Lcom/chimeranft/core/Rating;->nextGoalForLevel(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1369
    const-string p1, "setRating"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_14

    monitor-exit p0

    return-object p1

    .line 1372
    :goto_45
    :try_start_45
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setRating FAIL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5c
    .catchall {:try_start_45 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-object p1

    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public final declared-synchronized setReplaceOriginalUsernames(Z)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 948
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "nft_username_replace_original"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 949
    const-string p1, "setUsernameReplace"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 952
    :try_start_11
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsernameReplace FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final declared-synchronized setShowUnavailableGifts(Z)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1416
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "show_unavailable_gifts_local"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1417
    const-string p1, "showUnavailableGifts"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 1420
    :try_start_11
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowUnavailableGifts FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final declared-synchronized setSmoothModeEnabled(Z)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1392
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "smooth_mode_enabled"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1393
    const-string p1, "smoothMode"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 1396
    :try_start_11
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmoothMode FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final declared-synchronized setSyncEnabled(Z)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1428
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "sync_enabled_local"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1429
    const-string p1, "setSyncEnabled"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 1432
    :try_start_11
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSyncEnabled FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final declared-synchronized setVisualBalances(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 1060
    :try_start_1
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->decimalToNanos(Ljava/lang/String;)J
    invoke-static {v0, p1}, Lcom/chimeranft/core/Store$Companion;->access$decimalToNanos(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)J

    move-result-wide v1

    .line 1061
    # invokes: Lcom/chimeranft/core/Store$Companion;->decimalToNanos(Ljava/lang/String;)J
    invoke-static {v0, p2}, Lcom/chimeranft/core/Store$Companion;->access$decimalToNanos(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_41

    cmp-long v0, p1, v3

    if-gez v0, :cond_16

    goto :goto_41

    .line 1063
    :cond_16
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "visual_stars_nanos"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1064
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "visual_gram_nanos"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1065
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string p2, "visual_balance_configured"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1066
    iget-object p1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object p2, Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1067
    const-string p1, "setVisualBalances"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-object p1

    :catchall_3f
    move-exception p1

    goto :goto_45

    .line 1062
    :cond_41
    :goto_41
    :try_start_41
    const-string p1, "setVisualBalances FAIL: invalid number"
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_3f

    monitor-exit p0

    return-object p1

    .line 1070
    :goto_45
    :try_start_45
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVisualBalances FAIL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5c
    .catchall {:try_start_45 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-object p1

    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public final declared-synchronized settingsJson()Ljava/lang/String;
    .registers 9

    monitor-enter p0

    .line 2402
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_178

    .line 2405
    :try_start_6
    const-string v1, "username_enabled"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isNftUsernameEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2406
    const-string v1, "username_tokens"

    sget-object v2, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftUsernames()[Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/chimeranft/core/Store$Companion;->toArr([Ljava/lang/String;)Lorg/json/JSONArray;
    invoke-static {v2, v3}, Lcom/chimeranft/core/Store$Companion;->access$toArr(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2407
    const-string v1, "username_replace_original"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isReplaceOriginalUsernames()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2408
    const-string v1, "number_enabled"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isNftNumberEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2409
    const-string v1, "number_tokens"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftNumbers()[Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/chimeranft/core/Store$Companion;->toArr([Ljava/lang/String;)Lorg/json/JSONArray;
    invoke-static {v2, v3}, Lcom/chimeranft/core/Store$Companion;->access$toArr(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2410
    const-string v1, "rating_enabled"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "local_rating_enabled"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2411
    const-string v1, "rating_value"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getLocalRatingValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2412
    const-string v1, "rating_level"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getLocalRatingLevel()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2413
    const-string v1, "rating_next_goal"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getLocalRatingNextGoal()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2414
    const-string v1, "verification_mode"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getLocalVerificationMode()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2415
    const-string v1, "hide_official_gifts"

    iget-object v3, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v4, "hide_official_gifts_local"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2416
    const-string v1, "local_premium"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isLocalPremiumEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2417
    const-string v1, "visual_balance_configured"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2418
    const-string v1, "market_spend_enabled"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isMarketSpendEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2419
    const-string v1, "visual_stars"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualStarsNanos()J

    move-result-wide v3

    # invokes: Lcom/chimeranft/core/Store$Companion;->nanosToDecimal(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$nanosToDecimal(Lcom/chimeranft/core/Store$Companion;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2420
    const-string v1, "visual_grams"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getVisualGramNanos()J

    move-result-wide v3

    # invokes: Lcom/chimeranft/core/Store$Companion;->nanosToDecimal(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Store$Companion;->access$nanosToDecimal(Lcom/chimeranft/core/Store$Companion;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2421
    const-string v1, "wear_active"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isWearActive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2422
    const-string v1, "wear_collectible_id"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getWearCollectibleId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2423
    const-string v1, "pinned_channel"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getPinnedChannelState()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2424
    const-string v1, "sync_enabled"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isSyncEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2425
    const-string v1, "gift_count"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getGiftCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2426
    const-string v1, "duplicates_blocked"

    iget-wide v2, p0, Lcom/chimeranft/core/Store;->duplicatesBlocked:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2427
    const-string v1, "smooth_mode"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isSmoothModeEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2428
    const-string v1, "show_unavailable_gifts"

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isShowUnavailableGifts()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2429
    const-string v1, "collection_count"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v5, v3, v2}, Lcom/chimeranft/core/Store;->buildGiftCollections$default(Lcom/chimeranft/core/Store;ZILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2430
    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupDir()Ljava/io/File;

    move-result-object v1

    .line 2431
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_149

    .line 2433
    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :cond_114
    :goto_114
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_149

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_114

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_114

    sget-object v4, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/chimeranft/core/Store;->automaticBackupPrefix()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/chimeranft/core/Store$Companion;->startsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v6, v7}, Lcom/chimeranft/core/Store$Companion;->access$startsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_114

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, ".json"

    # invokes: Lcom/chimeranft/core/Store$Companion;->endsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v2, v6}, Lcom/chimeranft/core/Store$Companion;->access$endsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_114

    add-int/lit8 v5, v5, 0x1

    goto :goto_114

    :catchall_147
    move-exception v1

    goto :goto_164

    .line 2434
    :cond_149
    const-string v1, "auto_backup_enabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2435
    const-string v1, "auto_backup_count"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2436
    const-string v1, "auto_backup_time"

    invoke-direct {p0}, Lcom/chimeranft/core/Store;->latestAutomaticBackupFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_163
    .catchall {:try_start_6 .. :try_end_163} :catchall_147

    goto :goto_172

    .line 2441
    :goto_164
    :try_start_164
    const-string v2, "error"

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16f
    .catchall {:try_start_164 .. :try_end_16f} :catchall_170

    goto :goto_172

    .line 2443
    :catchall_170
    :try_start_170
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2447
    :goto_172
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_176
    .catchall {:try_start_170 .. :try_end_176} :catchall_178

    monitor-exit p0

    return-object v0

    :catchall_178
    move-exception v0

    :try_start_179
    monitor-exit p0
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    throw v0
.end method

.method public final declared-synchronized spendVisualBalance(JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 30

    monitor-enter p0

    .line 1146
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "visual balance off"
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4a

    .line 1147
    :cond_f
    :try_start_f
    invoke-virtual/range {p0 .. p4}, Lcom/chimeranft/core/Store;->canAffordVisualBalance(JJ)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "marketSpend FAIL: insufficient balance"
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_b

    monitor-exit p0

    return-object v0

    .line 1148
    :cond_19
    :try_start_19
    invoke-direct/range {p0 .. p4}, Lcom/chimeranft/core/Store;->deductVisualBalance(JJ)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_b

    const/16 v15, 0x100

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-wide/from16 v7, p10

    move-object/from16 v9, p12

    .line 1149
    :try_start_33
    invoke-static/range {v1 .. v16}, Lcom/chimeranft/core/Store;->appendVisualTransaction$default(Lcom/chimeranft/core/Store;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 1151
    iget-object v0, v1, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    sget-object v2, Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1152
    const-string v0, "marketSpend"

    invoke-direct {v1, v0}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-object v0

    :catchall_49
    move-exception v0

    .line 1155
    :goto_4a
    :try_start_4a
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "marketSpend FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_63

    monitor-exit p0

    return-object v0

    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0
.end method

.method public final declared-synchronized stageCollectionOrder(ILorg/json/JSONArray;)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-gtz p1, :cond_6

    .line 2364
    monitor-exit p0

    return v0

    .line 2367
    :cond_6
    :try_start_6
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->cleanIdList(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    invoke-static {v1, p2}, Lcom/chimeranft/core/Store$Companion;->access$cleanIdList(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p2

    .line 2368
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "collection_order"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_22

    .line 2370
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2371
    iget-object v2, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v3, "collection_order"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2373
    :cond_22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 2374
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_46

    if-eqz v2, :cond_3c

    monitor-exit p0

    return v0

    .line 2375
    :cond_3c
    :try_start_3c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_46

    .line 2376
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 2379
    :catchall_46
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized stagePinOrder(Lorg/json/JSONArray;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 2388
    :try_start_2
    sget-object v1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->cleanIdList(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    invoke-static {v1, p1}, Lcom/chimeranft/core/Store$Companion;->access$cleanIdList(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2389
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "pin_order"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 2390
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_2c

    if-eqz v1, :cond_22

    monitor-exit p0

    return v0

    .line 2391
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "pin_order"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2c

    .line 2392
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 2395
    :catchall_2c
    monitor-exit p0

    return v0
.end method

.method public final summary()Ljava/lang/String;
    .registers 14

    .line 749
    iget-object v0, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 750
    iget-object v1, p0, Lcom/chimeranft/core/Store;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 751
    iget-boolean v2, p0, Lcom/chimeranft/core/Store;->loadedFromDisk:Z

    .line 752
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isDataDirWritable()Z

    move-result v3

    const-string v4, "]"

    const-string v5, ""

    if-eqz v3, :cond_1a

    move-object v3, v5

    goto :goto_30

    :cond_1a
    iget-object v3, p0, Lcom/chimeranft/core/Store;->dataDir:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " DIR-NOT-WRITABLE["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 753
    :goto_30
    iget-object v6, p0, Lcom/chimeranft/core/Store;->lastWriteError:Ljava/lang/String;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3a

    move-object v4, v5

    goto :goto_50

    :cond_3a
    iget-object v6, p0, Lcom/chimeranft/core/Store;->lastWriteError:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " LASTWRITEFAIL["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 754
    :goto_50
    iget-boolean v6, p0, Lcom/chimeranft/core/Store;->writeBlocked:Z

    if-eqz v6, :cond_56

    const-string v5, " WRITE-BLOCKED"

    .line 755
    :cond_56
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getGiftCount()I

    move-result v6

    .line 756
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isWearActive()Z

    move-result v7

    .line 757
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isNftUsernameEnabled()Z

    move-result v8

    .line 758
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->isNftNumberEnabled()Z

    move-result v9

    .line 759
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getLocalRatingValue()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exists="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " loaded="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gifts="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " wear="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " username="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " number="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " rating="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized updateGiftEntries(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    monitor-enter p0

    .line 1899
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    if-nez p1, :cond_b

    const-string p1, "[]"

    goto :goto_b

    :catchall_8
    move-exception p1

    goto/16 :goto_a0

    :cond_b
    :goto_b
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1900
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1901
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_31

    .line 1903
    sget-object v4, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J
    invoke-static {v4, v0, v3}, Lcom/chimeranft/core/Store$Companion;->access$arrayLong(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2e

    .line 1904
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1906
    :cond_31
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string p1, "updateGifts: no ids"
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1907
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_49

    .line 1908
    const-string p1, "updateGifts: no library"
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1909
    :cond_49
    :try_start_49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v3, 0x0

    :goto_53
    if-ge v2, p2, :cond_7e

    .line 1913
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1914
    sget-object v5, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->giftMatchesIds(Lorg/json/JSONObject;Ljava/util/Set;)Z
    invoke-static {v5, v4, p1}, Lcom/chimeranft/core/Store$Companion;->access$giftMatchesIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1915
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1916
    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1917
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1918
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_65

    :cond_79
    add-int/lit8 v3, v3, 0x1

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_7e
    if-nez v3, :cond_84

    .line 1922
    const-string p1, "updateGifts: matched=0"
    :try_end_82
    .catchall {:try_start_49 .. :try_end_82} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1923
    :cond_84
    :try_start_84
    const-string p1, "updateGifts"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " matched="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_9e
    .catchall {:try_start_84 .. :try_end_9e} :catchall_8

    monitor-exit p0

    return-object p1

    .line 1926
    :goto_a0
    :try_start_a0
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateGifts FAIL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b7
    .catchall {:try_start_a0 .. :try_end_b7} :catchall_b9

    monitor-exit p0

    return-object p1

    :catchall_b9
    move-exception p1

    :try_start_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw p1
.end method

.method public final declared-synchronized updateGiftEntry(JLjava/lang/String;)Ljava/lang/String;
    .registers 14

    monitor-enter p0

    .line 1863
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1864
    const-string p1, "updateGift: no library"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    goto :goto_73

    .line 1865
    :cond_11
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v2, p3, :cond_57

    .line 1869
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 1871
    const-string v5, "saved_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-eqz v5, :cond_3a

    const-string v5, "unique_id"

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_54

    .line 1873
    :cond_3a
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1874
    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1875
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1876
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3e

    :cond_52
    add-int/lit8 v3, v3, 0x1

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1881
    :cond_57
    const-string p1, "updateGift"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " matched="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_71
    .catchall {:try_start_11 .. :try_end_71} :catchall_f

    monitor-exit p0

    return-object p1

    .line 1884
    :goto_73
    :try_start_73
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateGift FAIL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_8a
    .catchall {:try_start_73 .. :try_end_8a} :catchall_8c

    monitor-exit p0

    return-object p1

    :catchall_8c
    move-exception p1

    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p1
.end method

.method public final declared-synchronized upsertGiftCollection(ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    if-gtz p1, :cond_9

    .line 2206
    :try_start_3
    const-string p1, "collection: invalid id"
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    goto :goto_6f

    .line 2207
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v1, "gift_collections"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 2209
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2210
    iget-object v1, p0, Lcom/chimeranft/core/Store;->root:Lorg/json/JSONObject;

    const-string v2, "gift_collections"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2213
    :cond_1f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v1, :cond_3f

    .line 2215
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 2216
    const-string v5, "collection_id"

    const-string v6, "id"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, p1, :cond_3c

    goto :goto_40

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    if-nez v4, :cond_4a

    .line 2222
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2223
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2225
    :cond_4a
    const-string v0, "collection_id"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_67

    .line 2226
    sget-object p1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_67

    :cond_5e
    const-string v0, "title"

    # invokes: Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/chimeranft/core/Store$Companion;->access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2227
    :cond_67
    :goto_67
    const-string p1, "upsertCollection"

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store;->writeRootAtomic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6d
    .catchall {:try_start_9 .. :try_end_6d} :catchall_7

    monitor-exit p0

    return-object p1

    .line 2230
    :goto_6f
    :try_start_6f
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upsertCollection FAIL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_88

    monitor-exit p0

    return-object p1

    :catchall_88
    move-exception p1

    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p1
.end method
