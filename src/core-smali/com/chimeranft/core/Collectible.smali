.class public final Lcom/chimeranft/core/Collectible;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_TON:Ljava/lang/String; = "10.8"

.field private static final FALLBACK_TON_USD:D

.field public static final INSTANCE:Lcom/chimeranft/core/Collectible;

.field public static final KIND_NUMBER:Ljava/lang/String; = "number"

.field public static final KIND_USERNAME:Ljava/lang/String; = "username"

.field private static final TL_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/Collectible;

    invoke-direct {v0}, Lcom/chimeranft/core/Collectible;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Collectible;->INSTANCE:Lcom/chimeranft/core/Collectible;

    .line 30
    const-string v0, "org.telegram.tgnet.tl.TL_fragment$TL_collectibleInfo"

    sput-object v0, Lcom/chimeranft/core/Collectible;->TL_INFO:Ljava/lang/String;

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 34
    sput-wide v0, Lcom/chimeranft/core/Collectible;->FALLBACK_TON_USD:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildInfo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 16

    .line 297
    const-string v0, "0"

    const/4 v1, 0x0

    if-nez p2, :cond_6

    return-object v1

    .line 298
    :cond_6
    :try_start_6
    sget-object v2, Lcom/chimeranft/core/Collectible;->TL_INFO:Ljava/lang/String;

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    return-object v1

    .line 300
    :cond_f
    const-string v3, "fiat"

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chimeranft/core/Collectible;->minorUnits(Ljava/lang/String;)J

    move-result-wide v3

    .line 301
    const-string v5, "ton"

    invoke-virtual {p2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chimeranft/core/Collectible;->nanoTon(Ljava/lang/String;)J

    move-result-wide v5

    .line 302
    const-string v0, "date"

    const-wide/16 v7, 0x0

    invoke-virtual {p2, v0, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-gtz v0, :cond_36

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 304
    :cond_36
    const-string v0, "purchase_date"

    invoke-static {v2, v0, v9, v10}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_68

    .line 307
    const-string v0, "currency"

    cmp-long v9, v3, v7

    if-lez v9, :cond_48

    :try_start_41
    const-string v7, "USD"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4a

    :cond_48
    const-string p2, ""

    :goto_4a
    invoke-static {v2, v0, p2}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    const-string p2, "amount"

    invoke-static {v2, p2, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 309
    const-string p2, "crypto_currency"

    const-string v0, "TON"

    invoke-static {v2, p2, v0}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    const-string p2, "crypto_amount"

    invoke-static {v2, p2, v5, v6}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 311
    const-string p2, "url"

    invoke-static {p0, p1}, Lcom/chimeranft/core/Collectible;->fragmentUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p2, p0}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_67
    .catchall {:try_start_41 .. :try_end_67} :catchall_68

    return-object v2

    :catchall_68
    return-object v1
.end method

.method private final deriveFiat(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 224
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-direct {p0, p1, v1, v2}, Lcom/chimeranft/core/Collectible;->replaceChar(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 225
    new-instance p1, Ljava/math/BigDecimal;

    sget-wide v1, Lcom/chimeranft/core/Collectible;->FALLBACK_TON_USD:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 226
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p1

    .line 229
    :catchall_28
    const-string p1, "0"

    return-object p1
.end method

.method public static final digits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    .line 63
    const-string p0, ""

    .line 64
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2e

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    .line 68
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-ltz v4, :cond_2b

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gtz v4, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 70
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final fragmentUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 282
    const-string v0, "number"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 283
    invoke-static {p1}, Lcom/chimeranft/core/Collectible;->digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://fragment.com/number/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_1e
    invoke-static {p1}, Lcom/chimeranft/core/Collectible;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://fragment.com/username/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isBlankAmount(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 176
    :cond_4
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Collectible;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 180
    :cond_f
    :try_start_f
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x2c

    const/16 v3, 0x2e

    invoke-direct {p0, p1, v2, v3}, Lcom/chimeranft/core/Collectible;->replaceChar(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result p1
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    if-gtz p1, :cond_23

    return v0

    :cond_23
    const/4 p1, 0x0

    return p1

    :catchall_25
    return v0
.end method

.method public static final key(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 47
    const-string p0, ""

    return-object p0

    .line 48
    :cond_5
    sget-object v0, Lcom/chimeranft/core/Collectible;->INSTANCE:Lcom/chimeranft/core/Collectible;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/Collectible;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 50
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 51
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    :goto_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 57
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final minorUnits(Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, 0x0

    .line 269
    :try_start_2
    new-instance v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/chimeranft/core/Collectible;->INSTANCE:Lcom/chimeranft/core/Collectible;

    if-nez p0, :cond_a

    const-string p0, "0"

    :cond_a
    invoke-direct {v3, p0}, Lcom/chimeranft/core/Collectible;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x2c

    const/16 v5, 0x2e

    invoke-direct {v3, p0, v4, v5}, Lcom/chimeranft/core/Collectible;->replaceChar(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-gtz p0, :cond_20

    return-wide v0

    .line 271
    :cond_20
    new-instance p0, Ljava/math/BigDecimal;

    const-string v3, "100"

    invoke-direct {p0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_36

    :catchall_36
    return-wide v0
.end method

.method public static final nanoTon(Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, 0x0

    .line 253
    :try_start_2
    new-instance v2, Ljava/math/BigDecimal;

    sget-object v3, Lcom/chimeranft/core/Collectible;->INSTANCE:Lcom/chimeranft/core/Collectible;

    if-nez p0, :cond_a

    const-string p0, "0"

    :cond_a
    invoke-direct {v3, p0}, Lcom/chimeranft/core/Collectible;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x2c

    const/16 v5, 0x2e

    invoke-direct {v3, p0, v4, v5}, Lcom/chimeranft/core/Collectible;->replaceChar(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-gtz p0, :cond_20

    return-wide v0

    .line 255
    :cond_20
    new-instance p0, Ljava/math/BigDecimal;

    const-string v3, "1000000000"

    invoke-direct {p0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_36

    :catchall_36
    return-wide v0
.end method

.method public static final normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 75
    const-string v0, "number"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {p1}, Lcom/chimeranft/core/Collectible;->digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {p1}, Lcom/chimeranft/core/Collectible;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final parseTimestamp(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_7

    .line 237
    :try_start_4
    const-string p1, ""

    goto :goto_b

    :cond_7
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Collectible;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 238
    :goto_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_12

    return-wide v0

    .line 239
    :cond_12
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    cmp-long p1, v2, v0

    if-lez p1, :cond_1b

    return-wide v2

    :catchall_1b
    :cond_1b
    return-wide v0
.end method

.method public static final recordPrice(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-nez p2, :cond_7

    return-object v0

    .line 122
    :cond_7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    .line 124
    :cond_e
    const-string v1, "number"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "number_state"

    goto :goto_1b

    :cond_19
    const-string v1, "username_state"

    .line 123
    :goto_1b
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_22

    return-object v0

    .line 125
    :cond_22
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2c

    return-object v0

    .line 126
    :cond_2c
    const-string v1, "tokens"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_35

    return-object v0

    .line 128
    :cond_35
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_39
    if-ge v2, v3, :cond_71

    .line 130
    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/chimeranft/core/Collectible;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 136
    const-string p1, "prices"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 137
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 139
    :cond_57
    const-string p1, "price_ton"

    invoke-virtual {p0, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    const-string p2, "price_usd"

    invoke-virtual {p0, p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 141
    const-string v1, "purchase_date"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {v0, p1, p2, p0}, Lcom/chimeranft/core/Collectible;->resolve(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_71
    return-object v0
.end method

.method public static final remotePrice(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 102
    :cond_4
    invoke-static {p1, p2}, Lcom/chimeranft/core/Collectible;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 106
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/chimeranft/core/SyncClient;->cachedRecords()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 108
    invoke-static {v1, p1, p2}, Lcom/chimeranft/core/Collectible;->recordPrice(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2a

    if-eqz v1, :cond_17

    return-object v1

    :catchall_2a
    :cond_2a
    return-object v0
.end method

.method private final replaceChar(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 200
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 201
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_2f

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_24

    move v2, p3

    .line 212
    :cond_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 215
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

.method public static final resolve(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 17

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    const-string v1, "ton"

    const-string v2, ""

    if-eqz p0, :cond_11

    :try_start_b
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_83

    if-nez v3, :cond_12

    :cond_11
    move-object v3, v2

    .line 155
    :cond_12
    const-string v4, "fiat"

    if-eqz p0, :cond_1c

    :try_start_16
    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_83

    if-nez v5, :cond_1d

    :cond_1c
    move-object v5, v2

    .line 156
    :cond_1d
    const-string v6, "currency"

    if-eqz p0, :cond_29

    :try_start_21
    invoke-virtual {p0, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_83

    if-nez v7, :cond_28

    goto :goto_29

    :cond_28
    move-object v2, v7

    .line 157
    :cond_29
    :goto_29
    const-string v7, "date"

    const-wide/16 v8, 0x0

    if-eqz p0, :cond_34

    :try_start_2f
    invoke-virtual {p0, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    goto :goto_35

    :cond_34
    move-wide v10, v8

    .line 158
    :goto_35
    sget-object p0, Lcom/chimeranft/core/Collectible;->INSTANCE:Lcom/chimeranft/core/Collectible;

    invoke-direct {p0, v3}, Lcom/chimeranft/core/Collectible;->isBlankAmount(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object p1, v3

    .line 159
    :goto_3f
    invoke-direct {p0, v5}, Lcom/chimeranft/core/Collectible;->isBlankAmount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    move-object v5, p2

    :cond_46
    cmp-long v3, v10, v8

    if-gtz v3, :cond_50

    move-object/from16 v3, p3

    .line 160
    invoke-direct {p0, v3}, Lcom/chimeranft/core/Collectible;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v10

    .line 161
    :cond_50
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Collectible;->isBlankAmount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    const-string p1, "10.8"

    .line 162
    :cond_58
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_60

    const-string v2, "USD"

    .line 163
    :cond_60
    invoke-direct {p0, v5}, Lcom/chimeranft/core/Collectible;->isBlankAmount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Collectible;->deriveFiat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    :cond_6a
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    cmp-long p0, v10, v8

    if-lez p0, :cond_78

    goto :goto_80

    .line 167
    :cond_78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v1, 0x3e8

    div-long v10, p0, v1

    :goto_80
    invoke-virtual {v0, v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_83
    .catchall {:try_start_2f .. :try_end_83} :catchall_83

    :catchall_83
    return-object v0
.end method

.method public static final selfPrice(Lcom/chimeranft/core/Store;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 82
    :cond_4
    invoke-static {p1, p2}, Lcom/chimeranft/core/Collectible;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 84
    :cond_f
    const-string v1, "number"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftNumbers()[Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Lcom/chimeranft/core/Store;->getNftUsernames()[Ljava/lang/String;

    move-result-object v1

    .line 85
    :goto_20
    array-length v2, v1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_38

    aget-object v4, v1, v3

    .line 87
    invoke-static {p1, v4}, Lcom/chimeranft/core/Collectible;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/Store;->getCollectiblePrice(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_38
    return-object v0
.end method

.method private final trimAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-le v0, v1, :cond_1f

    add-int/lit8 v3, v0, -0x1

    .line 192
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1f
    if-nez v1, :cond_28

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_28

    return-object p1

    .line 194
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
