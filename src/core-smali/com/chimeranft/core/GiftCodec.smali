.class public final Lcom/chimeranft/core/GiftCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AVAILABILITY:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final INSTANCE:Lcom/chimeranft/core/GiftCodec;

.field private static final MCACHE:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final SAVED:Ljava/lang/String;

.field private static final SERDATA:Ljava/lang/String;

.field public static lastError:Ljava/lang/String;

.field private static volatile serCtorBytes:Ljava/lang/reflect/Constructor;

.field private static volatile serCtorInt:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/GiftCodec;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftCodec;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftCodec;->INSTANCE:Lcom/chimeranft/core/GiftCodec;

    .line 19
    const-string v0, "org.telegram.tgnet.tl.TL_stars$TL_savedStarGift"

    sput-object v0, Lcom/chimeranft/core/GiftCodec;->SAVED:Ljava/lang/String;

    .line 20
    const-string v0, "org.telegram.tgnet.SerializedData"

    sput-object v0, Lcom/chimeranft/core/GiftCodec;->SERDATA:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftCodec;->MCACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftCodec;->AVAILABILITY:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 279
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_36

    const/4 v2, 0x0

    .line 281
    :goto_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    add-int v3, v1, v2

    .line 282
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 285
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return v0
.end method

.method public static final deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 68
    const-string p0, "deserialize: null b64"

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    return-object v0

    .line 73
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/chimeranft/core/GiftCodec$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/Base64$Decoder;

    move-result-object v1

    sget-object v2, Lcom/chimeranft/core/GiftCodec;->INSTANCE:Lcom/chimeranft/core/GiftCodec;

    invoke-direct {v2, p0}, Lcom/chimeranft/core/GiftCodec;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/chimeranft/core/GiftCodec$$ExternalSyntheticApiModelOutline1;->m(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    move-result-object p0

    .line 74
    sget-object v1, Lcom/chimeranft/core/GiftCodec;->SAVED:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 75
    sget-object v3, Lcom/chimeranft/core/GiftCodec;->SERDATA:Ljava/lang/String;

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v1, :cond_ad

    if-nez v3, :cond_28

    goto/16 :goto_ad

    .line 81
    :cond_28
    invoke-direct {v2, v3}, Lcom/chimeranft/core/GiftCodec;->serCtorBytes(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-nez v3, :cond_2f

    return-object v0

    :cond_2f
    const/4 v4, 0x1

    .line 84
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 85
    invoke-direct {v2, v5}, Lcom/chimeranft/core/GiftCodec;->readInt32(Ljava/lang/Object;)I

    move-result v7

    .line 86
    const-string v8, "TLdeserialize"

    const/4 v9, 0x3

    invoke-direct {v2, v1, v8, v9}, Lcom/chimeranft/core/GiftCodec;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_7b

    const/4 v10, 0x2

    if-eqz v8, :cond_7d

    .line 91
    :try_start_47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v6

    aput-object v7, v9, v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v9, v10

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 92
    invoke-direct {v2, v5}, Lcom/chimeranft/core/GiftCodec;->hasInnerGift(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_60

    if-eqz v2, :cond_7d

    return-object v5

    :catchall_60
    move-exception v2

    .line 95
    :try_start_61
    sget-object v5, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v5, v2}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TLdeser: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    goto :goto_7d

    :catchall_7b
    move-exception p0

    goto :goto_b2

    .line 101
    :cond_7d
    :goto_7d
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 102
    sget-object v2, Lcom/chimeranft/core/GiftCodec;->INSTANCE:Lcom/chimeranft/core/GiftCodec;

    invoke-direct {v2, p0}, Lcom/chimeranft/core/GiftCodec;->readInt32(Ljava/lang/Object;)I

    .line 103
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 104
    const-string v5, "readParams"

    invoke-direct {v2, v1, v5, v10}, Lcom/chimeranft/core/GiftCodec;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 107
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p0, v5, v6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p0, v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-direct {v2, v3}, Lcom/chimeranft/core/GiftCodec;->hasInnerGift(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a8

    return-object v3

    .line 110
    :cond_a8
    const-string p0, "no inner gift"

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    return-object v0

    .line 77
    :cond_ad
    :goto_ad
    const-string p0, "no SAVED/SERDATA cls"

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;
    :try_end_b1
    .catchall {:try_start_61 .. :try_end_b1} :catchall_7b

    return-object v0

    .line 114
    :goto_b2
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deserialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public static final ensureAvailability(Ljava/lang/Object;)V
    .registers 10

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability$default(Ljava/lang/Object;JJJILjava/lang/Object;)V

    return-void
.end method

.method public static final ensureAvailability(Ljava/lang/Object;J)V
    .registers 12

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v8}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability$default(Ljava/lang/Object;JJJILjava/lang/Object;)V

    return-void
.end method

.method public static final ensureAvailability(Ljava/lang/Object;JJ)V
    .registers 14

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v8}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability$default(Ljava/lang/Object;JJJILjava/lang/Object;)V

    return-void
.end method

.method public static final ensureAvailability(Ljava/lang/Object;JJJ)V
    .registers 28

    move-object/from16 v1, p0

    .line 184
    const-string v8, "availability_issued"

    const-string v9, "availability_total"

    if-eqz v1, :cond_e5

    :try_start_8
    sget-object v0, Lcom/chimeranft/core/GiftCodec;->INSTANCE:Lcom/chimeranft/core/GiftCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unique"

    invoke-direct {v0, v2, v3}, Lcom/chimeranft/core/GiftCodec;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_e5

    .line 185
    :cond_1c
    invoke-static {v1, v9}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    .line 186
    invoke-static {v1, v8}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v6, p1, v10

    if-lez v6, :cond_2d

    move-wide/from16 v6, p1

    goto :goto_33

    .line 187
    :cond_2d
    const-string v6, "gift_id"

    invoke-static {v1, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    :goto_33
    cmp-long v12, v2, v10

    if-gtz v12, :cond_39

    move-wide/from16 v2, p5

    :cond_39
    cmp-long v12, v4, v10

    if-gtz v12, :cond_3f

    move-wide/from16 v4, p3

    :cond_3f
    cmp-long v12, v6, v10

    if-lez v12, :cond_50

    .line 190
    sget-object v13, Lcom/chimeranft/core/GiftCodec;->AVAILABILITY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    goto :goto_51

    :cond_50
    const/4 v13, 0x0

    :goto_51
    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v13, :cond_61

    cmp-long v16, v4, v10

    if-gtz v16, :cond_5b

    .line 193
    aget-wide v4, v13, v15

    :cond_5b
    cmp-long v16, v2, v10

    if-gtz v16, :cond_61

    .line 194
    aget-wide v2, v13, v14

    :cond_61
    cmp-long v13, v2, v10

    if-lez v13, :cond_72

    cmp-long v16, v4, v10

    if-lez v16, :cond_72

    move-wide/from16 v19, v6

    move-wide v6, v2

    move-wide/from16 v2, v19

    .line 198
    invoke-direct/range {v0 .. v7}, Lcom/chimeranft/core/GiftCodec;->stampAvailability(Ljava/lang/Object;JJJ)V

    return-void

    :cond_72
    move-wide/from16 v19, v6

    move-wide v6, v2

    move-wide/from16 v2, v19

    if-gtz v12, :cond_7a

    goto :goto_e5

    .line 202
    :cond_7a
    const-string v12, "org.telegram.messenger.UserConfig"

    move-wide/from16 v16, v10

    const-string v10, "selectedAccount"

    invoke-static {v12, v10, v15}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 203
    const-string v11, "org.telegram.ui.Stars.StarsController"

    const-string v12, "getInstance"

    const/16 p1, 0x0

    .line 204
    new-array v15, v14, [Ljava/lang/Class;

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v15, p1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v10, v14, p1

    .line 203
    invoke-static {v11, v12, v15, v14}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_9f

    goto :goto_e5

    .line 206
    :cond_9f
    invoke-direct {v0, v10, v2, v3}, Lcom/chimeranft/core/GiftCodec;->findBaseGift(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_a6

    goto :goto_e5

    :cond_a6
    if-gtz v13, :cond_ac

    .line 208
    invoke-static {v10, v9}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    :cond_ac
    cmp-long v9, v4, v16

    if-gtz v9, :cond_b4

    .line 209
    invoke-static {v10, v8}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    :cond_b4
    cmp-long v8, v4, v16

    if-gtz v8, :cond_cc

    cmp-long v8, v6, v16

    if-lez v8, :cond_cc

    .line 212
    const-string v8, "availability_remains"

    invoke-static {v10, v8}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v8, v16

    if-ltz v10, :cond_cc

    cmp-long v10, v8, v6

    if-gtz v10, :cond_cc

    sub-long v4, v6, v8

    :cond_cc
    cmp-long v8, v4, v16

    if-gtz v8, :cond_e2

    cmp-long v8, v6, v16

    if-lez v8, :cond_e2

    .line 217
    const-string v8, "num"

    invoke-static {v1, v8}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v8, v16

    if-lez v10, :cond_e2

    .line 218
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 220
    :cond_e2
    invoke-direct/range {v0 .. v7}, Lcom/chimeranft/core/GiftCodec;->stampAvailability(Ljava/lang/Object;JJJ)V
    :try_end_e5
    .catchall {:try_start_8 .. :try_end_e5} :catchall_e5

    :catchall_e5
    :cond_e5
    :goto_e5
    return-void
.end method

.method public static synthetic ensureAvailability$default(Ljava/lang/Object;JJJILjava/lang/Object;)V
    .registers 11

    and-int/lit8 p8, p7, 0x2

    const-wide/16 v0, 0x0

    if-eqz p8, :cond_7

    move-wide p1, v0

    :cond_7
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_c

    move-wide p3, v0

    :cond_c
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_11

    move-wide p5, v0

    .line 179
    :cond_11
    invoke-static/range {p0 .. p6}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability(Ljava/lang/Object;JJJ)V

    return-void
.end method

.method private final findBaseGift(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 239
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :catchall_10
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 241
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getStarGift"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v2}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_31

    goto :goto_10

    .line 242
    :cond_31
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v3

    .line 243
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v6, :cond_45

    const-class v6, Ljava/lang/Integer;

    if-ne v4, v6, :cond_40

    goto :goto_45

    .line 246
    :cond_40
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4a

    :cond_45
    :goto_45
    long-to-int v4, p2

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_ac

    .line 249
    :goto_4a
    :try_start_4a
    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 250
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_10

    if-eqz v2, :cond_10

    return-object v2

    .line 256
    :cond_58
    :try_start_58
    const-string v1, "starGifts"

    const-string v2, "starGiftsById"

    const-string v4, "gifts"

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    :goto_62
    const/4 v2, 0x3

    if-ge v3, v2, :cond_ac

    aget-object v2, v1, v3

    .line 258
    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 259
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_8a

    .line 261
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_87

    .line 262
    check-cast v2, Ljava/util/Map;

    long-to-int v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_87
    if-eqz v4, :cond_a9

    return-object v4

    .line 265
    :cond_8a
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_a9

    .line 267
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 268
    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_a4
    .catchall {:try_start_58 .. :try_end_a4} :catchall_ac

    cmp-long v7, v5, p2

    if-nez v7, :cond_94

    return-object v4

    :cond_a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :catchall_ac
    :cond_ac
    return-object v0
.end method

.method private final findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 323
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    sget-object v2, Lcom/chimeranft/core/GiftCodec;->MCACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2d

    return-object v2

    .line 326
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 328
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-static {v3}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v5

    if-ne v5, p3, :cond_35

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 331
    sget-object p1, Lcom/chimeranft/core/GiftCodec;->MCACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 335
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 337
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-static {v2}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v3

    if-ne v3, p3, :cond_63

    .line 339
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 340
    sget-object p1, Lcom/chimeranft/core/GiftCodec;->MCACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_88
    return-object v0
.end method

.method private final hasInnerGift(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 317
    :cond_4
    const-string v1, "gift"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    return v0
.end method

.method private final readInt32(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    .line 303
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "readInt32"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/chimeranft/core/GiftCodec;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_f

    return v0

    .line 305
    :cond_f
    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 306
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_24

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    return p1

    :catchall_24
    :cond_24
    return v0
.end method

.method private final serCtorBytes(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5

    .line 45
    sget-object v0, Lcom/chimeranft/core/GiftCodec;->serCtorBytes:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_17

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 49
    sput-object p1, Lcom/chimeranft/core/GiftCodec;->serCtorBytes:Ljava/lang/reflect/Constructor;

    return-object p1

    :cond_17
    return-object v0
.end method

.method private final serCtorInt(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5

    .line 56
    sget-object v0, Lcom/chimeranft/core/GiftCodec;->serCtorInt:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_17

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const/4 v0, 0x1

    .line 59
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 60
    sput-object p1, Lcom/chimeranft/core/GiftCodec;->serCtorInt:Ljava/lang/reflect/Constructor;

    return-object p1

    :cond_17
    return-object v0
.end method

.method public static final serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const/16 v9, 0xe

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p0

    .line 131
    :try_start_e
    invoke-static/range {v2 .. v10}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability$default(Ljava/lang/Object;JJJILjava/lang/Object;)V

    .line 132
    sget-object p0, Lcom/chimeranft/core/GiftCodec;->SAVED:Ljava/lang/String;

    invoke-static {p0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 133
    sget-object v0, Lcom/chimeranft/core/GiftCodec;->SERDATA:Ljava/lang/String;

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p0, :cond_b3

    if-nez v0, :cond_23

    goto/16 :goto_b3

    .line 138
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 139
    const-string v4, "gift"

    invoke-static {v3, v4, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 140
    const-string p0, "ser: cannot set gift"

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    return-object v1

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b8

    .line 144
    :cond_38
    sget-object v2, Lcom/chimeranft/core/GiftCodec;->INSTANCE:Lcom/chimeranft/core/GiftCodec;

    const-string v4, "getObjectSize"

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v5}, Lcom/chimeranft/core/GiftCodec;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 146
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 147
    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_52

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_54

    :cond_52
    const/16 v4, 0x2000

    .line 149
    :goto_54
    invoke-direct {v2, v0}, Lcom/chimeranft/core/GiftCodec;->serCtorInt(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_5b

    return-object v1

    :cond_5b
    const/16 v6, 0x100

    .line 150
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v5

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    const-string v4, "serializeToStream"

    invoke-direct {v2, p0, v4, v6}, Lcom/chimeranft/core/GiftCodec;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_7b

    .line 153
    const-string p0, "ser: no serializeToStream"

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    return-object v1

    .line 156
    :cond_7b
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "toByteArray"

    invoke-direct {v2, p0, v3, v5}, Lcom/chimeranft/core/GiftCodec;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_93

    .line 159
    const-string p0, "ser: no toByteArray"

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    return-object v1

    .line 162
    :cond_93
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, [B

    if-eqz v0, :cond_9e

    check-cast p0, [B

    goto :goto_9f

    :cond_9e
    move-object p0, v1

    :goto_9f
    if-nez p0, :cond_a2

    return-object v1

    .line 163
    :cond_a2
    array-length v0, p0

    if-nez v0, :cond_aa

    .line 164
    const-string p0, "ser: empty bytes"

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    return-object v1

    .line 167
    :cond_aa
    invoke-static {}, Lcom/chimeranft/core/GiftCodec$$ExternalSyntheticApiModelOutline2;->m()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/chimeranft/core/GiftCodec$$ExternalSyntheticApiModelOutline3;->m(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_b3
    :goto_b3
    const-string p0, "ser: no SAVED/SERDATA cls"

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;
    :try_end_b7
    .catchall {:try_start_e .. :try_end_b7} :catchall_34

    return-object v1

    .line 170
    :goto_b8
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    return-object v1
.end method

.method private final stampAvailability(Ljava/lang/Object;JJJ)V
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p6, v0

    if-lez v2, :cond_b

    .line 227
    const-string v3, "availability_total"

    invoke-static {p1, v3, p6, p7}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    :cond_b
    cmp-long v3, p4, v0

    if-lez v3, :cond_14

    .line 228
    const-string v3, "availability_issued"

    invoke-static {p1, v3, p4, p5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    :cond_14
    cmp-long p1, p2, v0

    if-lez p1, :cond_30

    if-lez v2, :cond_30

    .line 230
    sget-object p1, Lcom/chimeranft/core/GiftCodec;->AVAILABILITY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    const/4 p5, 0x2

    new-array p5, p5, [J

    const/4 v0, 0x0

    aput-wide p3, p5, v0

    const/4 p3, 0x1

    aput-wide p6, p5, p3

    invoke-virtual {p1, p2, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void
.end method

.method private final trimAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    .line 294
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-le v0, v1, :cond_1f

    add-int/lit8 v3, v0, -0x1

    .line 295
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1f
    if-nez v1, :cond_28

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_28

    return-object p1

    .line 297
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final trimAvailability()V
    .registers 1

    .line 40
    sget-object v0, Lcom/chimeranft/core/GiftCodec;->AVAILABILITY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
