.class public final Lcom/chimeranft/core/SyncClient$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$joinIds(Lcom/chimeranft/core/SyncClient$Companion;[JJ)Ljava/lang/String;
    .registers 4

    .line 2448
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/SyncClient$Companion;->joinIds([JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$keyFor(Lcom/chimeranft/core/SyncClient$Companion;J)Ljava/lang/String;
    .registers 3

    .line 2448
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/SyncClient$Companion;->keyFor(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$normalizeAccessUsername(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2448
    invoke-direct {p0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->normalizeAccessUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$normalizeRemoteGifts(Lcom/chimeranft/core/SyncClient$Companion;Lorg/json/JSONObject;)I
    .registers 2

    .line 2448
    invoke-direct {p0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->normalizeRemoteGifts(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I
    .registers 2

    .line 2448
    invoke-direct {p0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$readPersistentFile(Lcom/chimeranft/core/SyncClient$Companion;Ljava/io/File;)Lorg/json/JSONObject;
    .registers 2

    .line 2448
    invoke-direct {p0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->readPersistentFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readStream(Lcom/chimeranft/core/SyncClient$Companion;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .line 2448
    invoke-direct {p0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$remoteGiftKey(Lcom/chimeranft/core/SyncClient$Companion;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    .line 2448
    invoke-direct {p0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftKey(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$snapshotEmpty(Lcom/chimeranft/core/SyncClient$Companion;Lorg/json/JSONObject;)Z
    .registers 2

    .line 2448
    invoke-direct {p0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->snapshotEmpty(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$trimUrl(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2448
    invoke-direct {p0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->trimUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 2448
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writePersistentAtomic(Lcom/chimeranft/core/SyncClient$Companion;Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 2448
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/SyncClient$Companion;->writePersistentAtomic(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private final joinIds([JJ)Ljava/lang/String;
    .registers 12

    .line 2552
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2553
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_2b

    .line 2555
    aget-wide v3, p1, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_28

    cmp-long v5, v3, p2

    if-nez v5, :cond_18

    goto :goto_28

    .line 2556
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_23

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2557
    :cond_23
    aget-wide v3, p1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2559
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final keyFor(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1a

    .line 2491
    # getter for: Lcom/chimeranft/core/SyncClient;->USER_KEY_PREFIX:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/SyncClient;->access$getUSER_KEY_PREFIX$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    # getter for: Lcom/chimeranft/core/SyncClient;->CHANNEL_KEY_PREFIX:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/SyncClient;->access$getCHANNEL_KEY_PREFIX$cp()Ljava/lang/String;

    move-result-object v0

    neg-long p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f
.end method

.method private final normalizeAccessUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2497
    const-string v0, ""

    if-nez p1, :cond_6

    move-object p1, v0

    goto :goto_e

    :cond_6
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_e
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2498
    const-string v3, "@"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "substring(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    .line 2499
    :cond_24
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[^A-Za-z0-9_]+"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final normalizeRemoteGifts(Lorg/json/JSONObject;)I
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2565
    :cond_4
    const-string v1, "gifts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 2566
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_14

    goto :goto_4b

    .line 2567
    :cond_14
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2568
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 2570
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_23
    if-ge v0, v5, :cond_45

    .line 2572
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_42

    .line 2574
    invoke-direct {p0, v7}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftKey(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    .line 2575
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_36

    goto :goto_3f

    :cond_36
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 2579
    :cond_3f
    :goto_3f
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_45
    if-lez v6, :cond_4a

    .line 2583
    :try_start_47
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4a

    :catchall_4a
    :cond_4a
    return v6

    :cond_4b
    :goto_4b
    return v0
.end method

.method private final parseInt(Ljava/lang/String;)I
    .registers 2

    .line 2699
    :try_start_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    const/4 p1, -0x1

    return p1
.end method

.method private final readPersistentFile(Ljava/io/File;)Lorg/json/JSONObject;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_66

    .line 2602
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v5, v1, v3

    if-ltz v5, :cond_66

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2000000

    cmp-long v5, v1, v3

    if-lez v5, :cond_1f

    goto :goto_66

    .line 2606
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_5f

    .line 2607
    :try_start_24
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p1, v3

    invoke-direct {v2, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 p1, 0x2000

    .line 2608
    new-array p1, p1, [B

    .line 2609
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    :goto_3d
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4b

    const/4 v4, 0x0

    .line 2611
    invoke-virtual {v2, p1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2612
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    goto :goto_3d

    :catchall_49
    nop

    goto :goto_61

    .line 2614
    :cond_4b
    new-instance p1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_24 .. :try_end_5b} :catchall_49

    .line 2623
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5e

    :catchall_5e
    return-object p1

    :catchall_5f
    nop

    move-object v1, v0

    :goto_61
    if-eqz v1, :cond_66

    :try_start_63
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_66

    :catchall_66
    :cond_66
    :goto_66
    return-object v0
.end method

.method private final readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .line 2685
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    .line 2686
    new-array v1, v1, [B

    .line 2687
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x0

    .line 2689
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2690
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_d

    .line 2692
    :cond_19
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance p1, Ljava/lang/String;

    .line 2693
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method private final remoteGiftKey(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    .line 2591
    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    .line 2592
    :cond_5
    const-string v1, "unique_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_23

    .line 2593
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "u:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2594
    :cond_23
    const-string v1, "saved_id"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_3f

    .line 2595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "s:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2596
    :cond_3f
    const-string v1, "slug"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7b

    .line 2597
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_56

    goto :goto_7b

    :cond_56
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7b
    :goto_7b
    return-object v0
.end method

.method private final snapshotEmpty(Lorg/json/JSONObject;)Z
    .registers 8

    const/4 v0, 0x0

    .line 2518
    :try_start_1
    const-string v1, "authoritative_gift_state"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_93

    const-string v1, "gift_deletion_epoch"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_17

    goto/16 :goto_93

    .line 2520
    :cond_17
    const-string v1, "gifts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 2521
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_26

    return v0

    .line 2522
    :cond_26
    const-string v1, "wear_active"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    return v0

    .line 2523
    :cond_2f
    const-string v1, "local_premium"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_38

    return v0

    .line 2524
    :cond_38
    const-string v1, "local_premium_configured"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_41

    return v0

    .line 2525
    :cond_41
    const-string v1, "username_state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_93

    .line 2526
    const-string v4, "enabled"

    if-eqz v1, :cond_52

    :try_start_4b
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_52

    return v0

    .line 2527
    :cond_52
    const-string v1, "number_state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 2528
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_61

    return v0

    .line 2529
    :cond_61
    const-string v1, "rating_state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 2530
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_70

    return v0

    .line 2534
    :cond_70
    const-string v1, "pinned_channel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_91

    .line 2535
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_90

    .line 2536
    const-string v1, "removed_at"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_90

    .line 2537
    const-string v1, "managed"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_8e
    .catchall {:try_start_4b .. :try_end_8e} :catchall_93

    if-eqz p1, :cond_91

    :cond_90
    return v0

    :cond_91
    const/4 p1, 0x1

    return p1

    :catchall_93
    :cond_93
    :goto_93
    return v0
.end method

.method private final trimUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2503
    const-string v0, "http://0.0.0.0:8787/00000"

    if-nez p1, :cond_5

    return-object v0

    .line 2504
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    :goto_c
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2505
    const-string v2, "/"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_27
    return-object p1
.end method

.method private final trunc(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    .line 2708
    const-string p1, "null"

    return-object p1

    .line 2709
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_c

    return-object p1

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "substring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final writePersistentAtomic(Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .line 2632
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2633
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2634
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2635
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2636
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2639
    :try_start_49
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v3, "getBytes(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2640
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2641
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_a2

    .line 2644
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_62

    goto :goto_63

    :catchall_62
    nop

    .line 2652
    :goto_63
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2654
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_84

    .line 2656
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_75

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2657
    :cond_75
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_7c

    goto :goto_84

    :cond_7c
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "remote cache backup rename failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2659
    :cond_84
    :goto_84
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_a1

    .line 2661
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_99

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_99

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2662
    :cond_99
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "remote cache promote rename failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a1
    return-void

    :catchall_a2
    move-exception p1

    .line 2652
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw p1
.end method


# virtual methods
.method public final remoteGiftCount(Lorg/json/JSONObject;)I
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2668
    :cond_4
    const-string v1, "gifts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_d

    return v0

    .line 2671
    :cond_d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v2, v1, :cond_48

    .line 2673
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 2675
    const-string v5, "hidden_override"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_45

    .line 2676
    const-string v5, "b64"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 2677
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_39

    :cond_33
    const-string v5, "payload_b64"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_39
    if-eqz v5, :cond_45

    .line 2678
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_45

    add-int/lit8 v3, v3, 0x1

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_48
    return v3
.end method
