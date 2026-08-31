.class public final Lcom/chimeranft/core/GiftForge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/GiftForge;

.field private static final SAVED:Ljava/lang/String; = "org.telegram.tgnet.tl.TL_stars$TL_savedStarGift"

.field private static final UNIQUE:Ljava/lang/String; = "org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique"


# direct methods
.method public static synthetic $r8$lambda$2U5rrC2mF7T_VETWASEXAiN3WOI(Lcom/chimeranft/core/GiftForge$Base;Lcom/chimeranft/core/GiftForge$Base;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/GiftForge;->catalog$lambda$0(Lcom/chimeranft/core/GiftForge$Base;Lcom/chimeranft/core/GiftForge$Base;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/GiftForge;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftForge;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final catalog$lambda$0(Lcom/chimeranft/core/GiftForge$Base;Lcom/chimeranft/core/GiftForge$Base;)I
    .registers 4

    .line 86
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getStars()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/chimeranft/core/GiftForge$Base;->getStars()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private final collect(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 12

    .line 169
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Ljava/util/List;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-nez p1, :cond_d

    goto/16 :goto_83

    .line 170
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 172
    const-string v2, "name"

    invoke-static {v0, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2a

    check-cast v2, Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v2, v1

    :goto_2b
    if-eqz v2, :cond_36

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    :cond_36
    move-object v2, v1

    :goto_37
    if-nez v2, :cond_3b

    const-string v2, ""

    .line 173
    :cond_3b
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_42

    goto :goto_11

    .line 174
    :cond_42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    const-string v4, "model"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 177
    :cond_63
    const-string v4, "backdrop"

    invoke-static {v3, v4, v5, v6, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 178
    :cond_6f
    const-string v4, "pattern"

    invoke-static {v3, v4, v5, v6, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "symbol"

    invoke-static {v3, v4, v5, v6, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_7f
    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_83
    :goto_83
    return-void
.end method

.method private final controller()Lorg/telegram/ui/Stars/StarsController;
    .registers 2

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftForge;->account()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private final describe(Ljava/lang/Object;)Lcom/chimeranft/core/GiftForge$Base;
    .registers 22

    move-object/from16 v0, p1

    .line 91
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_10

    return-object v3

    .line 93
    :cond_10
    const-string v6, "availability_total"

    invoke-static {v0, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    .line 94
    const-string v6, "availability_remains"

    invoke-static {v0, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v12

    .line 95
    const-string v6, "availability_issued"

    invoke-static {v0, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v10, v6, v4

    if-gtz v10, :cond_34

    cmp-long v10, v8, v4

    if-lez v10, :cond_34

    cmp-long v10, v4, v12

    if-gtz v10, :cond_34

    cmp-long v4, v12, v8

    if-gtz v4, :cond_34

    sub-long v6, v8, v12

    :cond_34
    move-wide v10, v6

    .line 97
    new-instance v4, Lcom/chimeranft/core/GiftForge$Base;

    .line 99
    const-string v5, "title"

    invoke-static {v0, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_44

    check-cast v5, Ljava/lang/String;

    goto :goto_45

    :cond_44
    move-object v5, v3

    :goto_45
    if-eqz v5, :cond_4f

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4f
    if-nez v3, :cond_53

    const-string v3, ""

    .line 100
    :cond_53
    const-string v5, "stars"

    invoke-static {v0, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    .line 101
    const-string v7, "upgrade_stars"

    invoke-static {v0, v7}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v14

    .line 105
    const-string v7, "sold_out"

    invoke-static {v0, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-wide/from16 v16, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 106
    const-string v2, "sticker"

    invoke-static {v0, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-wide/from16 v18, v16

    move-object/from16 v16, v0

    move-object v0, v4

    move-wide v4, v5

    move-wide v6, v14

    move v14, v1

    move-object v15, v2

    move-wide/from16 v1, v18

    .line 97
    invoke-direct/range {v0 .. v16}, Lcom/chimeranft/core/GiftForge$Base;-><init>(JLjava/lang/String;JJJJJZLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final failed(Ljava/lang/String;)Z
    .registers 6

    .line 470
    const-string v0, "FATAL"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "FAIL"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "(not initialized)"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return v1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method private final freshId()J
    .registers 5

    .line 472
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41cad2747f800000L    # 8.99999999E8

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/32 v2, 0x5f5e100

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final freshNumber(Lcom/chimeranft/core/GiftForge$Base;)J
    .registers 8

    if-eqz p1, :cond_11

    .line 475
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getIssued()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getIssued()J

    move-result-wide v0

    goto :goto_14

    :cond_11
    const-wide/32 v0, 0xf423f

    .line 476
    :goto_14
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    mul-double v2, v2, v0

    double-to-long v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private final size(Ljava/util/ArrayList;)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 482
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    return p1

    :catchall_8
    :cond_8
    return v0
.end method

.method private final slug(Ljava/lang/String;J)Ljava/lang/String;
    .registers 10

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 480
    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final split(Ljava/lang/Object;)Lcom/chimeranft/core/GiftForge$Pools;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 157
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 159
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/chimeranft/core/GiftForge;->collect(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 161
    new-instance p1, Lcom/chimeranft/core/GiftForge$Pools;

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lcom/chimeranft/core/GiftForge$Pools;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 162
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Pools;->getEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    return-object v0

    :cond_2e
    return-object p1
.end method


# virtual methods
.method public final account()I
    .registers 4

    .line 58
    const-string v0, "selectedAccount"

    const/4 v1, 0x0

    const-string v2, "org.telegram.messenger.UserConfig"

    invoke-static {v2, v0, v1}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final addRegular(Lcom/chimeranft/core/GiftForge$Base;Ljava/lang/String;I)Lcom/chimeranft/core/GiftForge$Result;
    .registers 15

    const/16 v0, 0x63

    const/4 v1, 0x1

    .line 205
    invoke-static {p3, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p3

    .line 206
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getObj()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chimeranft/core/GiftCodec;->serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    .line 207
    sget-object p1, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1b

    const-string p1, "serialize failed"

    :cond_1b
    move-object v2, p1

    new-instance v0, Lcom/chimeranft/core/GiftForge$Result;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 208
    :cond_26
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_40

    const-string p2, "Gift"

    .line 209
    :cond_40
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_47
    if-ge v4, p3, :cond_b6

    .line 212
    :try_start_49
    invoke-direct {p0}, Lcom/chimeranft/core/GiftForge;->freshId()J

    move-result-wide v5

    .line 213
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 214
    const-string v8, "b64"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v8, "inject"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    const-string v8, "title"

    invoke-virtual {v7, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v8, "slug"

    invoke-direct {p0, p2, v5, v6}, Lcom/chimeranft/core/GiftForge;->slug(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v8, "num"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v8, "unique_id"

    invoke-virtual {v7, v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 220
    const-string v5, "base_gift_id"

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 221
    const-string v5, "gift_kind"

    const-string v6, "regular"

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getUpgradeStars()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-lez v10, :cond_a0

    .line 223
    const-string v5, "upgradable"

    invoke-virtual {v7, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 224
    const-string v5, "upgrade_stars"

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getUpgradeStars()J

    move-result-wide v8

    invoke-virtual {v7, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_a0

    :catchall_9d
    move-exception v0

    move-object p1, v0

    goto :goto_a6

    .line 226
    :cond_a0
    :goto_a0
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a3
    .catchall {:try_start_49 .. :try_end_a3} :catchall_9d

    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 229
    :goto_a6
    new-instance v0, Lcom/chimeranft/core/GiftForge$Result;

    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 231
    :cond_b6
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chimeranft/core/Main$Companion;->addGifts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 232
    new-instance p2, Lcom/chimeranft/core/GiftForge$Result;

    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftForge;->failed(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p2, v0, p1, p3}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;I)V

    return-object p2
.end method

.method public final addUnique(Lcom/chimeranft/core/GiftForge$Base;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;JI)Lcom/chimeranft/core/GiftForge$Result;
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    if-nez v5, :cond_22

    if-nez p5, :cond_22

    if-nez p6, :cond_22

    .line 246
    new-instance v0, Lcom/chimeranft/core/GiftForge$Result;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "no attributes chosen"

    const/4 v6, 0x0

    move-object/from16 p1, v0

    move-object/from16 p6, v3

    move-object/from16 p3, v5

    const/16 p2, 0x0

    const/16 p4, 0x0

    const/16 p5, 0x4

    invoke-direct/range {p1 .. p6}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_22
    const/16 v0, 0xc8

    const/4 v13, 0x1

    move/from16 v2, p10

    .line 248
    invoke-static {v2, v13, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 249
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_32
    if-ge v15, v0, :cond_fa

    .line 252
    :try_start_34
    invoke-direct {v1}, Lcom/chimeranft/core/GiftForge;->freshId()J

    move-result-wide v9

    const-wide/16 v2, 0x0

    cmp-long v4, p8, v2

    if-lez v4, :cond_47

    int-to-long v2, v15

    add-long v2, p8, v2

    :goto_41
    move-wide v11, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    goto :goto_4c

    .line 253
    :cond_47
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/GiftForge;->freshNumber(Lcom/chimeranft/core/GiftForge$Base;)J

    move-result-wide v2

    goto :goto_41

    .line 254
    :goto_4c
    invoke-virtual {v1, v2, v5, v3}, Lcom/chimeranft/core/GiftForge;->buildName(Lcom/chimeranft/core/GiftForge$Base;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 255
    invoke-virtual/range {v1 .. v12}, Lcom/chimeranft/core/GiftForge;->buildUnique(Lcom/chimeranft/core/GiftForge$Base;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;JJ)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_76

    .line 256
    new-instance v0, Lcom/chimeranft/core/GiftForge$Result;

    const-string v2, "cannot build TL_starGiftUnique"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p1, v0

    move-object/from16 p3, v2

    move-object/from16 p6, v4

    const/16 p2, 0x0

    const/16 p4, 0x0

    const/16 p5, 0x4

    invoke-direct/range {p1 .. p6}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :catchall_74
    move-exception v0

    goto :goto_dc

    .line 258
    :cond_76
    invoke-static/range {v16 .. v16}, Lcom/chimeranft/core/GiftCodec;->serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9e

    .line 259
    sget-object v0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_86

    const-string v0, "serialize failed"

    :cond_86
    new-instance v2, Lcom/chimeranft/core/GiftForge$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 p3, v0

    move-object/from16 p1, v2

    move-object/from16 p6, v6

    const/16 p2, 0x0

    const/16 p4, 0x0

    const/16 p5, 0x4

    invoke-direct/range {p1 .. p6}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    return-object v0

    .line 261
    :cond_9e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 262
    const-string v4, "b64"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v2, "inject"

    invoke-virtual {v3, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 264
    const-string v2, "title"

    invoke-virtual {v3, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v2, "slug"

    invoke-direct {v1, v8, v11, v12}, Lcom/chimeranft/core/GiftForge;->slug(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v2, "num"

    invoke-virtual {v3, v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 267
    const-string v2, "unique_id"

    invoke-virtual {v3, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 268
    const-string v2, "base_gift_id"

    move-wide/from16 v4, p2

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 269
    const-string v2, "gift_kind"

    const-string v6, "local_upgraded"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d6
    .catchall {:try_start_34 .. :try_end_d6} :catchall_74

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p4

    goto/16 :goto_32

    .line 273
    :goto_dc
    new-instance v2, Lcom/chimeranft/core/GiftForge$Result;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p3, v0

    move-object/from16 p1, v2

    move-object/from16 p6, v4

    const/16 p2, 0x0

    const/16 p4, 0x0

    const/16 p5, 0x4

    invoke-direct/range {p1 .. p6}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    return-object v0

    .line 275
    :cond_fa
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chimeranft/core/Main$Companion;->addGifts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    new-instance v3, Lcom/chimeranft/core/GiftForge$Result;

    invoke-direct {v1, v2}, Lcom/chimeranft/core/GiftForge;->failed(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v13

    invoke-direct {v3, v4, v2, v0}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;I)V

    return-object v3
.end method

.method public final buildName(Lcom/chimeranft/core/GiftForge$Base;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 312
    invoke-static {p3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 313
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_28

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_22
    move-object p1, v2

    :goto_23
    if-nez p1, :cond_27

    move-object p3, v1

    goto :goto_28

    :cond_27
    move-object p3, p1

    .line 314
    :cond_28
    :goto_28
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4b

    const-string p1, "name"

    invoke-static {p2, p1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3b

    check-cast p1, Ljava/lang/String;

    goto :goto_3c

    :cond_3b
    move-object p1, v2

    :goto_3c
    if-eqz p1, :cond_46

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_46
    if-nez v2, :cond_49

    goto :goto_4a

    :cond_49
    move-object v1, v2

    :goto_4a
    move-object p3, v1

    .line 315
    :cond_4b
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_54

    const-string p1, "NFT"

    return-object p1

    :cond_54
    return-object p3
.end method

.method public final buildUnique(Lcom/chimeranft/core/GiftForge$Base;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;JJ)Ljava/lang/Object;
    .registers 15

    .line 289
    const-string v0, "org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 290
    :cond_a
    const-string v2, "id"

    invoke-static {v0, v2, p8, p9}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    const-wide/16 p8, 0x0

    cmp-long v2, p2, p8

    if-lez v2, :cond_1a

    .line 291
    const-string v2, "gift_id"

    invoke-static {v0, v2, p2, p3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 292
    :cond_1a
    const-string v2, "num"

    invoke-static {v0, v2, p10, p11}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 293
    const-string v2, "title"

    invoke-static {v0, v2, p7}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    const-string v2, "slug"

    invoke-direct {p0, p7, p10, p11}, Lcom/chimeranft/core/GiftForge;->slug(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p7

    invoke-static {v0, v2, p7}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    new-instance p7, Ljava/util/ArrayList;

    const/4 p10, 0x3

    invoke-direct {p7, p10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p4, :cond_38

    .line 297
    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    if-eqz p5, :cond_3d

    .line 298
    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    if-eqz p6, :cond_42

    .line 299
    invoke-virtual {p7, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_42
    const-string p5, "attributes"

    invoke-static {v0, p5, p7}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4b

    return-object v1

    .line 304
    :cond_4b
    const-string p5, "document"

    invoke-static {p4, p5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_5a

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getSticker()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5b

    :cond_5a
    move-object v1, p4

    :cond_5b
    :goto_5b
    if-eqz v1, :cond_62

    .line 305
    const-string p4, "sticker"

    invoke-static {v0, p4, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_62
    if-eqz p1, :cond_69

    .line 307
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getIssued()J

    move-result-wide p4

    goto :goto_6a

    :cond_69
    move-wide p4, p8

    :goto_6a
    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getTotal()J

    move-result-wide p8

    :cond_70
    move-wide p6, p8

    move-object p1, v0

    invoke-static/range {p1 .. p7}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability(Ljava/lang/Object;JJJ)V

    return-object p1
.end method

.method public final catalog(Z)Ljava/util/List;
    .registers 8

    .line 76
    invoke-direct {p0}, Lcom/chimeranft/core/GiftForge;->controller()Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    goto :goto_3c

    .line 77
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :try_start_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_33

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1e

    goto :goto_30

    .line 81
    :cond_1e
    invoke-direct {p0, v4}, Lcom/chimeranft/core/GiftForge;->describe(Ljava/lang/Object;)Lcom/chimeranft/core/GiftForge$Base;

    move-result-object v4

    if-nez v4, :cond_25

    goto :goto_30

    :cond_25
    if-eqz p1, :cond_2d

    .line 82
    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Base;->getUpgradable()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 83
    :cond_2d
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_33

    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 86
    :catchall_33
    :cond_33
    new-instance p1, Lcom/chimeranft/core/GiftForge$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/chimeranft/core/GiftForge$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1

    .line 76
    :cond_3c
    :goto_3c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final chanceOf(Lorg/json/JSONObject;)I
    .registers 4

    .line 341
    const-string v0, "craft_chance_permille"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_f

    const/16 v0, 0x3e9

    if-ge p1, v0, :cond_f

    return p1

    :cond_f
    const/16 p1, 0xfa

    return p1
.end method

.method public final collections()Ljava/util/List;
    .registers 11

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/Main$Companion;->getGiftCollectionsJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_40

    .line 457
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1f

    goto :goto_3d

    .line 458
    :cond_1f
    const-string v6, "collection_id"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_3d

    .line 460
    new-instance v7, Lcom/chimeranft/core/GiftForge$Collection;

    const-string v8, "title"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "gifts_count"

    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v7, v6, v8, v5}, Lcom/chimeranft/core/GiftForge$Collection;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_40

    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :catchall_40
    :cond_40
    return-object v0
.end method

.method public final craft(JLjava/util/List;)Lcom/chimeranft/core/GiftForge$Result;
    .registers 30

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    .line 385
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v2, Lcom/chimeranft/core/GiftForge$Result;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "no ingredients"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_16
    const/4 v0, 0x4

    move-object/from16 v2, p3

    .line 386
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 387
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 388
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chimeranft/core/GiftForge$Ingredient;

    invoke-virtual {v5}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_26

    .line 389
    :cond_3e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/chimeranft/core/GiftForge$Ingredient;

    invoke-virtual {v7}, Lcom/chimeranft/core/GiftForge$Ingredient;->getChancePermille()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_44

    :cond_56
    const/16 v2, 0x3e8

    invoke-static {v6, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 391
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v10

    double-to-int v6, v6

    const/4 v10, 0x1

    if-lt v6, v2, :cond_80

    .line 392
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chimeranft/core/Main$Companion;->removeGifts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v2, Lcom/chimeranft/core/GiftForge$Result;

    invoke-direct {v1, v0}, Lcom/chimeranft/core/GiftForge;->failed(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v10

    invoke-direct {v2, v3, v0, v5}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;I)V

    return-object v2

    .line 396
    :cond_80
    invoke-virtual/range {p0 .. p2}, Lcom/chimeranft/core/GiftForge;->serverPools(J)Lcom/chimeranft/core/GiftForge$Pools;

    move-result-object v2

    if-nez v2, :cond_93

    .line 397
    new-instance v11, Lcom/chimeranft/core/GiftForge$Result;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v12, 0x0

    const-string v13, "craft attributes unavailable"

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    .line 398
    :cond_93
    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getModels()Ljava/util/List;

    move-result-object v6

    .line 486
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a0
    :goto_a0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v11, "crafted"

    if-eqz v8, :cond_c3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lkotlin/Pair;

    .line 398
    invoke-virtual {v12}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 487
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 399
    :cond_c3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2ac

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getPatterns()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2ac

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getBackdrops()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_df

    goto/16 :goto_2ac

    .line 402
    :cond_df
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v14, v6

    mul-double v12, v12, v14

    double-to-int v6, v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    .line 403
    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getPatterns()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getPatterns()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-double v14, v8

    mul-double v12, v12, v14

    double-to-int v8, v12

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getPatterns()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-static {v8, v12}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    .line 404
    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getBackdrops()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getBackdrops()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    int-to-double v14, v14

    mul-double v12, v12, v14

    double-to-int v12, v12

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Pools;->getBackdrops()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-static {v12, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    .line 406
    invoke-virtual/range {p0 .. p2}, Lcom/chimeranft/core/GiftForge;->find(J)Lcom/chimeranft/core/GiftForge$Base;

    move-result-object v8

    .line 407
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chimeranft/core/GiftForge$Ingredient;

    invoke-virtual {v12}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide v12

    .line 408
    invoke-direct {v1, v8}, Lcom/chimeranft/core/GiftForge;->freshNumber(Lcom/chimeranft/core/GiftForge$Base;)J

    move-result-wide v14

    .line 409
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chimeranft/core/GiftForge$Ingredient;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftForge$Ingredient;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_176

    if-eqz v8, :cond_171

    invoke-virtual {v8}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_172

    :cond_171
    const/4 v0, 0x0

    :goto_172
    if-nez v0, :cond_176

    const-string v0, ""

    :cond_176
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17e

    const-string v0, "NFT"

    .line 410
    :cond_17e
    const-string v5, "org.telegram.tgnet.tl.TL_stars$TL_starGiftUnique"

    invoke-static {v5}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_196

    new-instance v16, Lcom/chimeranft/core/GiftForge$Result;

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v17, 0x0

    const-string v18, "no TL_starGiftUnique"

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v16

    .line 411
    :cond_196
    const-string v10, "id"

    invoke-static {v5, v10, v12, v13}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 412
    const-string v10, "gift_id"

    invoke-static {v5, v10, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 413
    const-string v10, "num"

    invoke-static {v5, v10, v14, v15}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-object/from16 v16, v9

    .line 414
    const-string v9, "title"

    invoke-static {v5, v9, v0}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v17, v2

    .line 415
    invoke-direct {v1, v0, v14, v15}, Lcom/chimeranft/core/GiftForge;->slug(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v18, v12

    const-string v12, "slug"

    invoke-static {v5, v12, v2}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 416
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v11, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v11, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    const/4 v13, 0x3

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual/range {v17 .. v17}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const-string v7, "attributes"

    invoke-static {v5, v7, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f8

    new-instance v20, Lcom/chimeranft/core/GiftForge$Result;

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v21, 0x0

    const-string v22, "cannot set attributes"

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v25}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v20

    .line 423
    :cond_1f8
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    const-string v6, "document"

    invoke-static {v2, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_209

    const-string v6, "sticker"

    invoke-static {v5, v6, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_209
    const-wide/16 v6, 0x0

    if-eqz v8, :cond_212

    .line 424
    invoke-virtual {v8}, Lcom/chimeranft/core/GiftForge$Base;->getIssued()J

    move-result-wide v20

    goto :goto_214

    :cond_212
    move-wide/from16 v20, v6

    :goto_214
    if-eqz v8, :cond_21a

    invoke-virtual {v8}, Lcom/chimeranft/core/GiftForge$Base;->getTotal()J

    move-result-wide v6

    :cond_21a
    move-object v2, v5

    move-wide v7, v6

    move-wide/from16 v5, v20

    invoke-static/range {v2 .. v8}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability(Ljava/lang/Object;JJJ)V

    .line 425
    invoke-static {v2}, Lcom/chimeranft/core/GiftCodec;->serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23c

    .line 426
    sget-object v0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_231

    const-string v0, "serialize failed"

    :cond_231
    move-object v4, v0

    new-instance v2, Lcom/chimeranft/core/GiftForge$Result;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 428
    :cond_23c
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 430
    :try_start_241
    const-string v6, "b64"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string v2, "inject"

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 432
    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    invoke-direct {v1, v0, v14, v15}, Lcom/chimeranft/core/GiftForge;->slug(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    invoke-virtual {v5, v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 435
    const-string v0, "unique_id"

    move-wide/from16 v6, v18

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 436
    const-string v0, "saved_id"

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 437
    const-string v0, "base_gift_id"

    invoke-virtual {v5, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 438
    const-string v0, "gift_kind"

    const-string v2, "local_crafted"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x1

    .line 439
    invoke-virtual {v5, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 440
    const-string v0, "created_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_281
    .catchall {:try_start_241 .. :try_end_281} :catchall_29b

    .line 444
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/chimeranft/core/Main$Companion;->craftGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v2, Lcom/chimeranft/core/GiftForge$Result;

    invoke-direct {v1, v0}, Lcom/chimeranft/core/GiftForge;->failed(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    xor-int/2addr v3, v6

    invoke-direct {v2, v3, v0, v6}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;I)V

    return-object v2

    :catchall_29b
    move-exception v0

    .line 442
    new-instance v2, Lcom/chimeranft/core/GiftForge$Result;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 400
    :cond_2ac
    :goto_2ac
    new-instance v3, Lcom/chimeranft/core/GiftForge$Result;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v5, "craft attributes unavailable"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public final craftCandidates(J)Ljava/util/List;
    .registers 22

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_b

    .line 351
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 352
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 355
    :try_start_17
    new-instance v5, Lorg/json/JSONArray;

    sget-object v6, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v6}, Lcom/chimeranft/core/Main$Companion;->getGiftDisplayJson()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_28
    if-ge v8, v6, :cond_93

    .line 357
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_34

    :cond_30
    :goto_30
    move-object/from16 v10, p0

    goto/16 :goto_b2

    .line 358
    :cond_34
    const-string v10, "base_gift_id"

    invoke-virtual {v9, v10, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v12, v10, p1

    if-nez v12, :cond_30

    .line 359
    const-string v10, "unique_id"

    invoke-virtual {v9, v10, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v12, v10, v0

    if-lez v12, :cond_4a

    :goto_48
    move-wide v13, v10

    goto :goto_51

    :cond_4a
    const-string v10, "saved_id"

    invoke-virtual {v9, v10, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_48

    :goto_51
    cmp-long v10, v13, v0

    if-lez v10, :cond_30

    .line 361
    const-string v10, "crafted"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_30

    .line 362
    const-string v10, "ton_address"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_6c

    goto :goto_30

    .line 363
    :cond_6c
    const-string v10, "locked_until_date"

    invoke-virtual {v9, v10, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v12, v10, v3

    if-gtz v12, :cond_30

    .line 364
    const-string v10, "resale_config"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_96

    .line 365
    const-string v11, "stars"

    invoke-virtual {v10, v11, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v15, v11, v0

    if-gtz v15, :cond_30

    const-string v11, "nanoton"

    invoke-virtual {v10, v11, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v12, v10, v0

    if-lez v12, :cond_96

    goto :goto_30

    :catchall_93
    :cond_93
    move-object/from16 v10, p0

    goto :goto_b6

    .line 366
    :cond_96
    new-instance v12, Lcom/chimeranft/core/GiftForge$Ingredient;

    .line 368
    const-string v10, "title"

    const-string v11, "Gift"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 369
    const-string v10, "num"

    invoke-virtual {v9, v10, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16
    :try_end_a6
    .catchall {:try_start_17 .. :try_end_a6} :catchall_93

    move-object/from16 v10, p0

    .line 370
    :try_start_a8
    invoke-virtual {v10, v9}, Lcom/chimeranft/core/GiftForge;->chanceOf(Lorg/json/JSONObject;)I

    move-result v18

    .line 366
    invoke-direct/range {v12 .. v18}, Lcom/chimeranft/core/GiftForge$Ingredient;-><init>(JLjava/lang/String;JI)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_b6

    :goto_b2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_28

    :catchall_b6
    :goto_b6
    return-object v2
.end method

.method public final ensureLoaded()I
    .registers 3

    .line 65
    invoke-direct {p0}, Lcom/chimeranft/core/GiftForge;->controller()Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/chimeranft/core/GiftForge;->size(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_13

    .line 67
    :try_start_10
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->loadStarGifts()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_13

    :catchall_13
    :cond_13
    return v1
.end method

.method public final find(J)Lcom/chimeranft/core/GiftForge$Base;
    .registers 11

    .line 112
    invoke-direct {p0}, Lcom/chimeranft/core/GiftForge;->controller()Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    goto :goto_2c

    .line 114
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_2c

    .line 115
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1a

    goto :goto_29

    .line 116
    :cond_1a
    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_29

    invoke-direct {p0, v4}, Lcom/chimeranft/core/GiftForge;->describe(Ljava/lang/Object;)Lcom/chimeranft/core/GiftForge$Base;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2c

    return-object p1

    :cond_29
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catchall_2c
    :cond_2c
    :goto_2c
    return-object v1
.end method

.method public final label(Ljava/lang/Object;)Ljava/lang/String;
    .registers 11

    .line 189
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Ljava/lang/String;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-eqz v0, :cond_19

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_19
    if-nez v2, :cond_1d

    const-string v2, ""

    .line 190
    :cond_1d
    const-string v0, "rarity"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "permille"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_35

    .line 191
    const-string v0, "rarity_permille"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    :cond_35
    cmp-long p1, v0, v3

    if-gtz p1, :cond_3a

    return-object v2

    :cond_3a
    const-wide/16 v5, 0xa

    .line 193
    div-long v7, v0, v5

    .line 194
    rem-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-nez p1, :cond_48

    .line 195
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final libraryPools()Lcom/chimeranft/core/GiftForge$Pools;
    .registers 10

    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 140
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    :try_start_f
    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v4}, Lcom/chimeranft/core/Main$Companion;->getGiftDisplayJson()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_53

    .line 144
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_28

    goto :goto_50

    .line 145
    :cond_28
    const-string v7, "b64"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_37

    goto :goto_50

    .line 147
    :cond_37
    invoke-static {v6}, Lcom/chimeranft/core/GiftCodec;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3e

    goto :goto_50

    .line 148
    :cond_3e
    const-string v7, "gift"

    invoke-static {v6, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_47

    goto :goto_50

    .line 149
    :cond_47
    const-string v7, "attributes"

    invoke-static {v6, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/chimeranft/core/GiftForge;->collect(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_53

    :goto_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 152
    :catchall_53
    :cond_53
    new-instance v3, Lcom/chimeranft/core/GiftForge$Pools;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lcom/chimeranft/core/GiftForge$Pools;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method public final nextCollectionId()I
    .registers 5

    .line 467
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftForge;->collections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    goto :goto_3b

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chimeranft/core/GiftForge$Collection;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftForge$Collection;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chimeranft/core/GiftForge$Collection;

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge$Collection;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1e

    move-object v1, v2

    goto :goto_1e

    :cond_3a
    move-object v0, v1

    :goto_3b
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final pollAttributes(J)Ljava/lang/String;
    .registers 3

    .line 127
    invoke-static {p1, p2}, Lcom/chimeranft/core/UpgradeAttrs;->poll(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final serverPools(J)Lcom/chimeranft/core/GiftForge$Pools;
    .registers 3

    .line 130
    invoke-static {p1, p2}, Lcom/chimeranft/core/UpgradeAttrs;->take(J)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftForge;->split(Ljava/lang/Object;)Lcom/chimeranft/core/GiftForge$Pools;

    move-result-object p1

    return-object p1
.end method

.method public final startAttributes(J)Ljava/lang/String;
    .registers 3

    .line 125
    invoke-static {p1, p2}, Lcom/chimeranft/core/UpgradeAttrs;->start(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final wrapForDisplay(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 326
    :cond_4
    const-string v1, "org.telegram.tgnet.tl.TL_stars$TL_savedStarGift"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    .line 327
    :cond_d
    const-string v2, "gift"

    invoke-static {v1, v2, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    return-object v1

    :cond_16
    return-object v0
.end method
