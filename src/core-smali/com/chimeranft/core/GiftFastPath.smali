.class public final Lcom/chimeranft/core/GiftFastPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/GiftFastPath;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/GiftFastPath;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftFastPath;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftFastPath;->INSTANCE:Lcom/chimeranft/core/GiftFastPath;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final configuredTonGiftAddress(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .line 17
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 18
    :cond_5
    const-string v1, "ton_display_config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 19
    const-string v2, "address"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-nez v1, :cond_22

    move-object v1, v0

    .line 20
    :cond_22
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_29

    return-object v1

    .line 21
    :cond_29
    const-string v1, "ton_address"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final foreignSignature(Lorg/json/JSONArray;)J
    .registers 11

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v4, 0x0

    .line 29
    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a2

    .line 30
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_99

    .line 32
    const-string v6, "unique_id"

    invoke-virtual {v5, v6, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/chimeranft/core/NativeFastPath;->mix(JJ)J

    move-result-wide v2

    .line 33
    const-string v6, "slug"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/chimeranft/core/NativeFastPath;->hashString(JLjava/lang/String;)J

    move-result-wide v2

    .line 34
    const-string v6, "b64"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/chimeranft/core/NativeFastPath;->hashString(JLjava/lang/String;)J

    move-result-wide v2

    .line 35
    const-string v6, "custom_date_ts"

    invoke-virtual {v5, v6, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lcom/chimeranft/core/NativeFastPath;->mix(JJ)J

    move-result-wide v2

    .line 36
    const-string v6, "custom_comment"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/chimeranft/core/NativeFastPath;->hashString(JLjava/lang/String;)J

    move-result-wide v2

    .line 37
    const-string v6, "identity_config"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5d

    .line 39
    const-string v8, "from_user_id"

    invoke-virtual {v6, v8, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lcom/chimeranft/core/NativeFastPath;->mix(JJ)J

    move-result-wide v2

    .line 41
    :cond_5d
    const-string v6, "value_config"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_6f

    .line 43
    const-string v8, "amount"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/chimeranft/core/NativeFastPath;->hashString(JLjava/lang/String;)J

    move-result-wide v2

    .line 45
    :cond_6f
    const-string v6, "resale_config"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_7f

    .line 47
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/chimeranft/core/NativeFastPath;->hashString(JLjava/lang/String;)J

    move-result-wide v2

    .line 49
    :cond_7f
    const-string v6, "ton_address"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/chimeranft/core/NativeFastPath;->hashString(JLjava/lang/String;)J

    move-result-wide v2

    .line 50
    const-string v6, "ton_display_config"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_99

    .line 52
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/chimeranft/core/NativeFastPath;->hashString(JLjava/lang/String;)J

    move-result-wide v2

    :cond_99
    int-to-long v5, v4

    .line 55
    invoke-static {v2, v3, v5, v6}, Lcom/chimeranft/core/NativeFastPath;->mix(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_a2
    return-wide v2
.end method
