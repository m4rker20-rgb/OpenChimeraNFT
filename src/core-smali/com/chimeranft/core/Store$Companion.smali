.class public final Lcom/chimeranft/core/Store$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/Store$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$addUnique(Lcom/chimeranft/core/Store$Companion;Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4

    .line 2963
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Store$Companion;->addUnique(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$arrayContains(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;J)Z
    .registers 4

    .line 2963
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Store$Companion;->arrayContains(Lorg/json/JSONArray;J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$arrayLong(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;I)J
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$cleanIdList(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->cleanIdList(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$collectDeletedIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/Set;)V
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->collectDeletedIds(Lorg/json/JSONObject;Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$containsStableGift(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;Lorg/json/JSONObject;)Z
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->containsStableGift(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$containsText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->containsText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$copyArray(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->copyArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$copyFileBytes(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/io/File;)V
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->copyFileBytes(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$decimalOrEmpty(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->decimalOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$decimalToNanos(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)J
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->decimalToNanos(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$deduplicateLibraryObject(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)I
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->deduplicateLibraryObject(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$endsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->endsWithText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterDeletedGifts(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/Set;)V
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->filterDeletedGifts(Lorg/json/JSONObject;Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$firstToken(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->firstToken(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$giftMatchesIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/Set;)Z
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->giftMatchesIds(Lorg/json/JSONObject;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isNumberKind(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Z
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->isNumberKind(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$legacyPrefix(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->legacyPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mergeVisualState(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 2963
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Store$Companion;->mergeVisualState(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$nanosToDecimal(Lcom/chimeranft/core/Store$Companion;J)Ljava/lang/String;
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->nanosToDecimal(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$newestGeneration(Lcom/chimeranft/core/Store$Companion;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->newestGeneration(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$normalizeVisualTransactionIds(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)V
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->normalizeVisualTransactionIds(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic access$pricesKey(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->pricesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$putIfObj(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 2963
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Store$Companion;->putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic access$readFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$realisticTransactionId(Lcom/chimeranft/core/Store$Companion;JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2963
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Store$Companion;->realisticTransactionId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeArrayValue(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/lang/String;J)V
    .registers 5

    .line 2963
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/Store$Companion;->removeArrayValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic access$removeChar(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;C)Ljava/lang/String;
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$richness(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)I
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->richness(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$scalarCopy(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->scalarCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startsWithText(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->startsWithText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$toArr(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->toArr([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toJsonArray(Lcom/chimeranft/core/Store$Companion;[Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->toJsonArray([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$trimAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$unionMissingKeys(Lcom/chimeranft/core/Store$Companion;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 2963
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Store$Companion;->unionMissingKeys(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$upperAscii(Lcom/chimeranft/core/Store$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2963
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->upperAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeFile(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$writeSmallAtomic(Lcom/chimeranft/core/Store$Companion;Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion;->writeSmallAtomic(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private final addUnique(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 5

    if-eqz p3, :cond_16

    .line 3287
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3288
    :cond_9
    invoke-direct {p0, p3}, Lcom/chimeranft/core/Store$Companion;->lowerAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3289
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method private final arrayContains(Lorg/json/JSONArray;J)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 3543
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_18

    invoke-direct {p0, p1, v2}, Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-nez v5, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return v0
.end method

.method private final arrayLong(Lorg/json/JSONArray;I)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 3218
    :cond_5
    :try_start_5
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 3219
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_14

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_14
    if-eqz p1, :cond_1f

    .line 3220
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-wide p1

    :catchall_1f
    :cond_1f
    return-wide v0
.end method

.method private final cleanIdList(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 10

    .line 3548
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3549
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_39

    const/4 v2, 0x0

    .line 3553
    :goto_d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_39

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_39

    .line 3555
    invoke-direct {p0, p1, v2}, Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_36

    .line 3556
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_39
    return-object v0
.end method

.method private final collectDeletedIds(Lorg/json/JSONObject;Ljava/util/Set;)V
    .registers 10

    if-eqz p1, :cond_2b

    if-nez p2, :cond_5

    goto :goto_2b

    .line 3198
    :cond_5
    # getter for: Lcom/chimeranft/core/Store;->DELETED_GIFT_IDS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getDELETED_GIFT_IDS$cp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_2b

    .line 3200
    :cond_10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_2b

    .line 3202
    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_28

    .line 3203
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2b
    :goto_2b
    return-void
.end method

.method private final containsStableGift(Lorg/json/JSONArray;Lorg/json/JSONObject;)Z
    .registers 7

    .line 3460
    invoke-direct {p0, p2}, Lcom/chimeranft/core/Store$Companion;->stableGiftKey(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 3461
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    if-nez p1, :cond_f

    :goto_e
    return v1

    .line 3462
    :cond_f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_29

    .line 3464
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/chimeranft/core/Store$Companion;->stableGiftKey(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_29
    return v1
.end method

.method private final containsText(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 3666
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3668
    :goto_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_35

    const/4 v3, 0x0

    .line 3670
    :goto_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2b

    add-int v4, v2, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 3671
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_32

    return v1

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_35
    return v0
.end method

.method private final copyArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 3

    if-nez p1, :cond_8

    .line 3008
    :try_start_2
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    :cond_8
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    return-object v0

    .line 3011
    :catchall_12
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method private final copyFileBytes(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    .line 3778
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3781
    :try_start_5
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_31

    const/16 p2, 0x4000

    .line 3784
    :try_start_c
    new-array p2, p2, [B

    .line 3787
    :goto_e
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x0

    .line 3789
    invoke-virtual {p1, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_e

    :catchall_1a
    move-exception p2

    goto :goto_2d

    .line 3791
    :cond_1c
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1a

    .line 3794
    :try_start_1f
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_26

    .line 3804
    :catchall_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_29

    .line 3815
    :catchall_29
    :try_start_29
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2c

    :catchall_2c
    return-void

    .line 3804
    :goto_2d
    :try_start_2d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_30

    .line 3806
    :catchall_30
    :try_start_30
    throw p2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p1

    .line 3815
    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_35

    .line 3817
    :catchall_35
    throw p1
.end method

.method private final decimalOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3318
    const-string v0, ""

    if-nez p1, :cond_6

    move-object p1, v0

    goto :goto_18

    :cond_6
    :try_start_6
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-direct {p0, p1, v1, v2}, Lcom/chimeranft/core/Store$Companion;->replaceChar(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/Store$Companion;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 3319
    :goto_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1f

    return-object v0

    .line 3320
    :cond_1f
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-gtz p1, :cond_2b

    return-object v0

    .line 3322
    :cond_2b
    invoke-static {v1}, Lcom/chimeranft/core/Store$Companion$$ExternalSyntheticBackportWithForwarding2;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_34

    return-object p1

    :catchall_34
    return-object v0
.end method

.method private final decimalToNanos(Ljava/lang/String;)J
    .registers 5

    .line 3268
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    if-nez p1, :cond_7

    const-string p1, "0"

    goto :goto_13

    :cond_7
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-direct {p0, p1, v1, v2}, Lcom/chimeranft/core/Store$Companion;->replaceChar(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    :goto_13
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-gez p1, :cond_1e

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 3270
    :cond_1e
    new-instance p1, Ljava/math/BigDecimal;

    const-string v1, "1000000000"

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3271
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "2000000000000000"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3272
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_3e

    move-object p1, v0

    .line 3273
    :cond_3e
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    return-wide v0

    :catchall_43
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private final deduplicateLibraryObject(Lorg/json/JSONObject;)I
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 3471
    :cond_4
    const-string v1, "gift_library"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 3472
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_14

    goto :goto_4b

    .line 3473
    :cond_14
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3474
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 3476
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_23
    if-ge v0, v5, :cond_45

    .line 3478
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_42

    .line 3480
    invoke-direct {p0, v7}, Lcom/chimeranft/core/Store$Companion;->stableGiftKey(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    .line 3481
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

    .line 3485
    :cond_3f
    :goto_3f
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_45
    if-lez v6, :cond_4a

    .line 3489
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

.method private final endsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 3655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    return v2

    .line 3656
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3658
    :goto_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2c

    add-int v3, v0, v1

    .line 3659
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_29

    return v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    const/4 p1, 0x1

    return p1
.end method

.method private final filterDeletedGifts(Lorg/json/JSONObject;Ljava/util/Set;)V
    .registers 10

    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    .line 3228
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_35

    .line 3229
    :cond_b
    const-string v0, "gift_library"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_35

    .line 3231
    :cond_14
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3232
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_32

    .line 3234
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 3235
    invoke-direct {p0, v5, p2}, Lcom/chimeranft/core/Store$Companion;->giftMatchesIds(Lorg/json/JSONObject;Ljava/util/Set;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 3239
    :cond_32
    :try_start_32
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_35

    :catchall_35
    :cond_35
    :goto_35
    return-void
.end method

.method private final firstToken(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3530
    const-string v0, ""

    if-eqz p1, :cond_1a

    :try_start_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    .line 3532
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 3533
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    if-nez v1, :cond_18

    goto :goto_1a

    :cond_18
    return-object p1

    :catchall_19
    nop

    :cond_1a
    :goto_1a
    if-nez p2, :cond_1d

    move-object p2, v0

    :cond_1d
    return-object p2
.end method

.method private final generationStamp(Lorg/json/JSONObject;Ljava/io/File;)J
    .registers 9

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 3050
    :cond_5
    # getter for: Lcom/chimeranft/core/Store;->SAVED_AT:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getSAVED_AT$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_12

    return-wide v2

    .line 3052
    :cond_12
    # getter for: Lcom/chimeranft/core/Store;->GIFT_DELETION_EPOCH:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getGIFT_DELETION_EPOCH$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 3053
    # getter for: Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_STATE_UPDATED_AT$cp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3054
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gtz p1, :cond_35

    if-eqz p2, :cond_35

    .line 3055
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    return-wide p1

    :cond_35
    return-wide v2
.end method

.method private final giftMatchesIds(Lorg/json/JSONObject;Ljava/util/Set;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    .line 3208
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_38

    .line 3209
    :cond_c
    const-string v1, "saved_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3210
    const-string v1, "unique_id"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p1, v4, v2

    if-lez p1, :cond_28

    .line 3211
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    :cond_28
    cmp-long p1, v6, v2

    if-lez p1, :cond_38

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_36
    const/4 p1, 0x1

    return p1

    :cond_38
    :goto_38
    return v0
.end method

.method private final isLegacyNumericTransactionId(Ljava/lang/String;)Z
    .registers 7

    .line 3382
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    return v2

    .line 3383
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-ltz v3, :cond_2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-lez v3, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2d
    :goto_2d
    return v2

    :cond_2e
    const/4 p1, 0x1

    return p1
.end method

.method private final isNumberKind(Ljava/lang/String;)Z
    .registers 3

    .line 3303
    const-string v0, "number"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final lastIndexOfChar(Ljava/lang/String;C)I
    .registers 5

    .line 3678
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 3680
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    const/4 p1, -0x1

    return p1
.end method

.method private final legacyPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3311
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->isNumberKind(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "nft_number_"

    return-object p1

    :cond_9
    const-string p1, "nft_username_"

    return-object p1
.end method

.method private final lowerAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3728
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 3729
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3732
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final mergeVisualState(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .registers 30

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v0, :cond_1ac

    if-nez v1, :cond_c

    goto/16 :goto_1ac

    .line 3132
    :cond_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3133
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 3136
    # getter for: Lcom/chimeranft/core/Store;->DELETED_VISUAL_TRANSACTION_IDS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getDELETED_VISUAL_TRANSACTION_IDS$cp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 3138
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    :goto_37
    if-ge v8, v9, :cond_1a

    .line 3140
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3141
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_44

    goto :goto_47

    :cond_44
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 3144
    :cond_4a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const-wide/high16 v9, -0x8000000000000000L

    const/4 v11, 0x0

    :goto_52
    const-string v12, "visual_balance_configured"

    if-ge v11, v5, :cond_114

    .line 3146
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 3147
    invoke-virtual {v13, v12, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_6f

    # getter for: Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_TRANSACTIONS$cp()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v12, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v12, 0x1

    .line 3148
    :goto_70
    # getter for: Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_STATE_UPDATED_AT$cp()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v16, v9

    const-wide/16 v8, 0x0

    invoke-virtual {v13, v14, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 3149
    # getter for: Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_TRANSACTIONS$cp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_e2

    .line 3151
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    move-wide/from16 v20, v18

    const/4 v15, 0x0

    :goto_8d
    if-ge v15, v14, :cond_d7

    .line 3153
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_c6

    .line 3155
    const-string v9, "id"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3156
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-nez v18, :cond_a2

    goto :goto_ab

    :cond_a2
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_ab

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    :cond_ab
    :goto_ab
    const-string v9, "date"

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    const-wide/16 v3, 0x0

    invoke-virtual {v8, v9, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v18, 0x3e8

    mul-long v8, v8, v18

    move-wide/from16 v22, v3

    move-wide/from16 v3, v20

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-wide/from16 v20, v3

    goto :goto_ce

    :cond_c6
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v3, v20

    const-wide/16 v22, 0x0

    :goto_ce
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, v22

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto :goto_8d

    :cond_d7
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-wide/from16 v3, v20

    move-wide/from16 v18, v3

    :goto_df
    move-wide/from16 v22, v8

    goto :goto_e7

    :cond_e2
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    goto :goto_df

    :goto_e7
    cmp-long v3, v18, v22

    if-gtz v3, :cond_ff

    if-eqz v12, :cond_ff

    if-eqz v2, :cond_ff

    .line 3159
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_ff

    .line 3160
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    :cond_ff
    if-eqz v12, :cond_109

    cmp-long v3, v18, v16

    if-lez v3, :cond_109

    move-object v6, v13

    move-wide/from16 v9, v18

    goto :goto_10b

    :cond_109
    move-wide/from16 v9, v16

    :goto_10b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    const/4 v8, 0x0

    goto/16 :goto_52

    :cond_114
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    if-eqz v6, :cond_13c

    .line 3169
    :try_start_11a
    const-string v1, "visual_stars_nanos"

    const-string v2, "visual_gram_nanos"

    # getter for: Lcom/chimeranft/core/Store;->VISUAL_STATE_UPDATED_AT:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_STATE_UPDATED_AT$cp()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v12, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_127
    const/4 v3, 0x4

    if-ge v2, v3, :cond_13c

    aget-object v3, v1, v2

    .line 3171
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_139

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_139
    add-int/lit8 v2, v2, 0x1

    goto :goto_127

    .line 3173
    :cond_13c
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3174
    new-instance v2, Lcom/chimeranft/core/Store$Companion$mergeVisualState$1;

    invoke-direct {v2}, Lcom/chimeranft/core/Store$Companion$mergeVisualState$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3179
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_157
    if-ge v8, v3, :cond_16f

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v8, v8, 0x1

    check-cast v4, Lorg/json/JSONObject;

    .line 3181
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    # getter for: Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS_KEEP:I
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_TRANSACTIONS_KEEP$cp()I

    move-result v6

    if-ge v5, v6, :cond_16f

    .line 3182
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_157

    .line 3184
    :cond_16f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_17f

    # getter for: Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_TRANSACTIONS$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_186

    :cond_17f
    # getter for: Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_TRANSACTIONS$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3185
    :cond_186
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1ac

    .line 3187
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3188
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_195
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_195

    .line 3189
    :cond_1a5
    # getter for: Lcom/chimeranft/core/Store;->DELETED_VISUAL_TRANSACTION_IDS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getDELETED_VISUAL_TRANSACTION_IDS$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ac
    .catchall {:try_start_11a .. :try_end_1ac} :catchall_1ac

    :catchall_1ac
    :cond_1ac
    :goto_1ac
    return-void
.end method

.method private final nanosToDecimal(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_9

    .line 3282
    const-string p1, "0"

    return-object p1

    .line 3283
    :cond_9
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lcom/chimeranft/core/Store$Companion$$ExternalSyntheticBackportWithForwarding2;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final newestGeneration(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 13

    .line 3063
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    move-object v5, v1

    :goto_9
    if-ge v4, v0, :cond_2c

    .line 3065
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 3066
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1e

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    goto :goto_1f

    :cond_1e
    move-object v7, v1

    :goto_1f
    invoke-direct {p0, v6, v7}, Lcom/chimeranft/core/Store$Companion;->generationStamp(Lorg/json/JSONObject;Ljava/io/File;)J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-lez v9, :cond_29

    move-object v5, v6

    move-wide v2, v7

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_2c
    return-object v5
.end method

.method private final normalizeVisualTransactionIds(Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3392
    const-string v2, "id"

    if-nez v1, :cond_a

    goto/16 :goto_be

    .line 3393
    :cond_a
    :try_start_a
    # getter for: Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_TRANSACTIONS$cp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_16

    goto/16 :goto_be

    .line 3395
    :cond_16
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3396
    # getter for: Lcom/chimeranft/core/Store;->DELETED_VISUAL_TRANSACTION_IDS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getDELETED_VISUAL_TRANSACTION_IDS$cp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_be

    const/4 v6, 0x0

    .line 3397
    const-string v7, ""

    if-eqz v5, :cond_40

    .line 3398
    :try_start_28
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_2d
    if-ge v9, v8, :cond_40

    .line 3400
    invoke-virtual {v5, v9, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3401
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 3403
    :cond_40
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 3404
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    :goto_49
    if-ge v6, v8, :cond_b7

    .line 3406
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_b4

    .line 3408
    invoke-virtual {v9, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3413
    const-string v11, "eblannft:"

    invoke-direct {v0, v10, v11}, Lcom/chimeranft/core/Store$Companion;->startsWithText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6d

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_64

    goto :goto_6d

    .line 3414
    :cond_64
    invoke-direct {v0, v10}, Lcom/chimeranft/core/Store$Companion;->isLegacyNumericTransactionId(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6b

    goto :goto_6d

    :cond_6b
    move-object v11, v10

    goto :goto_a5

    .line 3416
    :cond_6d
    :goto_6d
    const-string v11, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v9, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    move-wide/from16 v16, v14

    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    mul-long v11, v11, v16

    .line 3417
    const-string v13, "b64"

    invoke-virtual {v9, v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v11, v12, v13}, Lcom/chimeranft/core/Store$Companion;->realisticTransactionId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3418
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3420
    :goto_a5
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b4

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b4

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_b4
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 3422
    :cond_b7
    # getter for: Lcom/chimeranft/core/Store;->VISUAL_TRANSACTIONS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getVISUAL_TRANSACTIONS$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_be
    .catchall {:try_start_28 .. :try_end_be} :catchall_be

    :catchall_be
    :goto_be
    return-void
.end method

.method private final pricesKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3307
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->isNumberKind(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/chimeranft/core/Store$Companion;->getNUMBER_PRICES()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p0}, Lcom/chimeranft/core/Store$Companion;->getUSERNAME_PRICES()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final putIfObj(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p3, :cond_5

    .line 3500
    :try_start_2
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_5

    :catchall_5
    :cond_5
    return-void
.end method

.method private final readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 3749
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3752
    :try_start_5
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 3753
    new-array v1, v1, [B

    .line 3755
    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x0

    .line 3757
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :catchall_1a
    move-exception p1

    goto :goto_2b

    :cond_1c
    new-instance v1, Ljava/lang/String;

    .line 3759
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_1a

    .line 3764
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :goto_2b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1
.end method

.method private final realisticTransactionId(JLjava/lang/String;)Ljava/lang/String;
    .registers 14

    const-wide/16 v0, 0x1

    .line 3347
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 3348
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_e

    const-string p3, ""

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3351
    :try_start_22
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 3352
    # getter for: Lcom/chimeranft/core/Store;->TRANSACTION_ID_BYTES:I
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getTRANSACTION_ID_BYTES$cp()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_31
    if-ge v5, v2, :cond_65

    .line 3357
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 3358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3359
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v8, "getBytes(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3358
    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 3360
    array-length v8, v7

    sub-int v9, v2, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3361
    invoke-static {v7, v4, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 3365
    :cond_65
    invoke-static {}, Lcom/chimeranft/core/Store$Companion$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-static {v0}, Lcom/chimeranft/core/Store$Companion$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/Base64$Encoder;)Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/chimeranft/core/GiftCodec$$ExternalSyntheticApiModelOutline3;->m(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_71
    .catchall {:try_start_22 .. :try_end_71} :catchall_72

    return-object p1

    .line 3370
    :catchall_72
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    int-to-long v0, p3

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    .line 3371
    rem-long/2addr v0, v2

    .line 3372
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    .line 3373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3374
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    :goto_90
    const/4 p2, 0x6

    if-ge p1, p2, :cond_9b

    const/16 p2, 0x30

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_90

    .line 3375
    :cond_9b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final removeArrayValue(Lorg/json/JSONObject;Ljava/lang/String;J)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 3566
    :cond_3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3567
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_2d

    .line 3568
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_2d

    .line 3569
    invoke-direct {p0, v0, v3}, Lcom/chimeranft/core/Store$Companion;->arrayLong(Lorg/json/JSONArray;I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2a

    cmp-long v6, v4, p3

    if-eqz v6, :cond_2a

    .line 3570
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3572
    :cond_2d
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private final removeChar(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3689
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_14

    .line 3690
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p2, :cond_11

    add-int/lit8 v2, v2, 0x1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3693
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_1b

    return-object p1

    .line 3694
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3696
    :goto_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 3697
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, p2, :cond_2f

    .line 3698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 3701
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final replaceChar(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3707
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 3708
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_2f

    .line 3715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3717
    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 3718
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_24

    move v2, p3

    .line 3719
    :cond_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 3722
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_32
    return-object p1
.end method

.method private final richness(Lorg/json/JSONObject;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 3023
    :cond_4
    :try_start_4
    const-string v1, "gift_library"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 3024
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_48

    mul-int/lit8 v1, v1, 0x4

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 3025
    :goto_14
    :try_start_14
    const-string v2, "nft_username_enabled"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v1, v1, 0x2

    .line 3026
    :cond_1e
    const-string v2, "nft_number_enabled"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v1, v1, 0x2

    .line 3027
    :cond_28
    const-string v2, "local_rating_enabled"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_32

    add-int/lit8 v1, v1, 0x1

    .line 3028
    :cond_32
    const-string v2, "wear_active"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v1, v1, 0x1

    .line 3029
    :cond_3c
    const-string v2, "local_premium_enabled"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_47

    if-eqz p1, :cond_46

    add-int/lit8 v1, v1, 0x1

    :cond_46
    return v1

    :catchall_47
    move v0, v1

    :catchall_48
    return v0
.end method

.method private final scalarCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    .line 3582
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_8

    goto :goto_3b

    .line 3584
    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_3b

    .line 3586
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3588
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3589
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 3590
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 3591
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_35

    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_35

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_f

    .line 3595
    :cond_35
    :try_start_35
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_f

    :catchall_39
    nop

    goto :goto_f

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method private final stableGiftKey(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    .line 3449
    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    .line 3450
    :cond_5
    const-string v1, "unique_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_23

    .line 3451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "u:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3452
    :cond_23
    const-string v1, "saved_id"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_3f

    .line 3453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "s:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3454
    :cond_3f
    const-string v1, "slug"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 3455
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_52

    goto :goto_6c

    :cond_52
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->lowerAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6c
    :goto_6c
    return-object v0
.end method

.method private final startsWithText(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 3645
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    .line 3647
    :goto_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 3648
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method private final toArr([Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    .line 3429
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_24

    .line 3430
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_b

    :cond_20
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_24
    return-object v0
.end method

.method private final toJsonArray([Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    .line 3605
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_24

    .line 3606
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_b

    :cond_20
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_24
    return-object v0
.end method

.method private final trimAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 3637
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    .line 3638
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-le v0, v1, :cond_1f

    add-int/lit8 v3, v0, -0x1

    .line 3639
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1f
    if-nez v1, :cond_28

    .line 3640
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_28

    return-object p1

    .line 3641
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final unionMissingKeys(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .registers 12

    if-eqz p1, :cond_9d

    if-nez p2, :cond_6

    goto/16 :goto_9d

    .line 3086
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_19

    .line 3087
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 3088
    :cond_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [J

    .line 3089
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_43

    .line 3090
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_39

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    goto :goto_3a

    :cond_39
    const/4 v7, 0x0

    :goto_3a
    invoke-direct {p0, v6, v7}, Lcom/chimeranft/core/Store$Companion;->generationStamp(Lorg/json/JSONObject;Ljava/io/File;)J

    move-result-wide v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 3091
    :cond_43
    new-instance p3, Lcom/chimeranft/core/Store$Companion$unionMissingKeys$1;

    invoke-direct {p3, v3}, Lcom/chimeranft/core/Store$Companion$unionMissingKeys$1;-><init>([J)V

    invoke-static {v1, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_4b
    if-ge v2, v0, :cond_9d

    .line 3096
    aget-object p3, v1, v2

    if-eqz p3, :cond_9a

    .line 3098
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    if-eqz p3, :cond_9a

    if-ne p3, p1, :cond_60

    goto :goto_9a

    .line 3100
    :cond_60
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_64
    :goto_64
    if-eqz v3, :cond_9a

    .line 3101
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 3103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_64

    .line 3104
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    goto :goto_64

    .line 3105
    :cond_7b
    # getter for: Lcom/chimeranft/core/Store;->UNION_EXCLUDED:Ljava/util/HashSet;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getUNION_EXCLUDED$cp()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 3106
    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 3107
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    goto :goto_64

    .line 3110
    :cond_94
    :try_start_94
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_64

    :catchall_98
    nop

    goto :goto_64

    :cond_9a
    :goto_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_9d
    :goto_9d
    return-void
.end method

.method private final upperAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3738
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 3739
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3742
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final writeFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 3824
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez p2, :cond_c

    .line 3827
    :try_start_7
    const-string p2, ""

    goto :goto_c

    :catchall_a
    move-exception p1

    goto :goto_28

    :cond_c
    :goto_c
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3828
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_a

    .line 3833
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_24

    .line 3841
    :catchall_24
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :goto_28
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p1
.end method

.method private final writeSmallAtomic(Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    .line 2976
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2977
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2978
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

    .line 2979
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2982
    :try_start_2e
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v2, "getBytes(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2983
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_6f

    .line 2986
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_46

    .line 2996
    :catchall_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4b

    :catchall_4a
    nop

    .line 3001
    :goto_4b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_60

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_58

    goto :goto_60

    :cond_58
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "outbox replace failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3002
    :cond_60
    :goto_60
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_67

    return-void

    :cond_67
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "outbox rename failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_6f
    move-exception p1

    .line 2996
    :try_start_70
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_73

    .line 2998
    :catchall_73
    throw p1
.end method


# virtual methods
.method public final formatWearTitle(Ljava/lang/String;J)Ljava/lang/String;
    .registers 11

    if-nez p1, :cond_5

    .line 3246
    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3247
    :goto_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "NFT"

    :cond_11
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_18

    return-object p1

    :cond_18
    const/16 v0, 0x23

    .line 3249
    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/Store$Companion;->lastIndexOfChar(Ljava/lang/String;C)I

    move-result v0

    if-lez v0, :cond_5c

    add-int/lit8 v1, v0, 0x1

    .line 3252
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3253
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_39

    const/4 v3, 0x1

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    :goto_3a
    xor-int/2addr v3, v5

    const/4 v5, 0x0

    .line 3255
    :goto_3c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4f

    if-eqz v3, :cond_4f

    .line 3257
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_4f
    if-eqz v3, :cond_5c

    .line 3260
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Store$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3262
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getNUMBER_PRICES()Ljava/lang/String;
    .registers 2

    .line 3300
    # getter for: Lcom/chimeranft/core/Store;->NUMBER_PRICES:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getNUMBER_PRICES$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUSERNAME_PRICES()Ljava/lang/String;
    .registers 2

    .line 3299
    # getter for: Lcom/chimeranft/core/Store;->USERNAME_PRICES:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Store;->access$getUSERNAME_PRICES$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final inspect(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 3612
    const-string v0, "("

    .line 3614
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3615
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_b1

    .line 3616
    :cond_15
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Store$Companion;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3617
    const-string v1, "gift_library"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3618
    const-string v2, "nft_usernames"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3619
    const-string v3, "nft_numbers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_39

    .line 3620
    :cond_35
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 3621
    :goto_39
    const-string v5, "wear_active"

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 3622
    const-string v6, "nft_username_enabled"

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v2, :cond_49

    const/4 v2, 0x0

    goto :goto_4d

    .line 3623
    :cond_49
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 3624
    :goto_4d
    const-string v7, "nft_number_enabled"

    invoke-virtual {p1, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v3, :cond_57

    const/4 v3, 0x0

    goto :goto_5b

    .line 3625
    :cond_57
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 3626
    :goto_5b
    const-string v8, "local_rating_value"

    invoke-virtual {p1, v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 3627
    const-string v8, "cache_user_id"

    const-wide/16 v9, 0x0

    invoke-virtual {p1, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gifts="

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wear="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " username="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") number="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") rating="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cache_uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_af
    move-exception p1

    goto :goto_b4

    .line 3615
    :cond_b1
    :goto_b1
    const-string p1, "missing"
    :try_end_b3
    .catchall {:try_start_2 .. :try_end_b3} :catchall_af

    return-object p1

    .line 3630
    :goto_b4
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inspect FAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
