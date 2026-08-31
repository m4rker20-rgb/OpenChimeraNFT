.class public final Lcom/chimeranft/core/Gate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_UID0:I = 0x2

.field public static final DEFERRED:I = 0x3

.field public static final DO_NETWORK:I = 0x4

.field public static final INSTANCE:Lcom/chimeranft/core/Gate;

.field public static final RETURN_CACHED:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/Gate;

    invoke-direct {v0}, Lcom/chimeranft/core/Gate;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Gate;->INSTANCE:Lcom/chimeranft/core/Gate;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final asLong(Ljava/lang/Object;)J
    .registers 4

    .line 38
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    if-nez p1, :cond_10

    return-wide v0

    .line 42
    :cond_10
    :try_start_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Gate;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1c

    :catch_1c
    return-wide v0
.end method

.method public static final clientBanned([JZJ)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 75
    :cond_4
    array-length p1, p0

    if-nez p1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_9
    sget-object p1, Lcom/chimeranft/core/Gate;->INSTANCE:Lcom/chimeranft/core/Gate;

    invoke-direct {p1, p0, p2, p3}, Lcom/chimeranft/core/Gate;->contains([JJ)Z

    move-result p0

    return p0
.end method

.method private final contains([JJ)Z
    .registers 10

    .line 68
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_10

    aget-wide v3, p1, v2

    cmp-long v5, v3, p2

    if-nez v5, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    return v1
.end method

.method private final longs(Lorg/json/JSONObject;Ljava/lang/String;)[J
    .registers 7

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_a

    new-array p1, p2, [J

    return-object p1

    .line 52
    :cond_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 53
    new-array v1, v0, [J

    :goto_10
    if-ge p2, v0, :cond_1f

    .line 54
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/chimeranft/core/Gate;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    aput-wide v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_1f
    return-object v1
.end method

.method public static final post(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    if-nez p0, :cond_6

    const-string p0, "{}"

    :cond_6
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    const-string p0, "server_allowed"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 137
    :goto_16
    const-string v3, "client_banned"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 138
    :goto_21
    const-string v4, "clear_client"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 139
    :goto_2c
    sget-object v5, Lcom/chimeranft/core/Gate;->INSTANCE:Lcom/chimeranft/core/Gate;

    const-string v6, "banned"

    invoke-direct {v5, v0, v6}, Lcom/chimeranft/core/Gate;->longs(Lorg/json/JSONObject;Ljava/lang/String;)[J

    move-result-object v6

    .line 140
    const-string v7, "local"

    invoke-direct {v5, v0, v7}, Lcom/chimeranft/core/Gate;->longs(Lorg/json/JSONObject;Ljava/lang/String;)[J

    move-result-object v5

    .line 141
    const-string v7, "uid"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 143
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    if-eqz p0, :cond_4d

    if-eqz v4, :cond_4d

    :goto_4b
    const/4 v3, 0x0

    goto :goto_a6

    :cond_4d
    if-eqz p0, :cond_6f

    if-eqz v3, :cond_6f

    .line 151
    array-length v3, v6

    const/4 v4, 0x0

    :goto_53
    if-ge v4, v3, :cond_69

    aget-wide v12, v6, v4

    cmp-long v5, v12, v8

    if-lez v5, :cond_66

    cmp-long v5, v12, v10

    if-eqz v5, :cond_66

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 152
    :cond_69
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    goto :goto_a6

    :cond_6f
    if-eqz p0, :cond_72

    goto :goto_4b

    .line 160
    :cond_72
    array-length v3, v6

    const/4 v4, 0x0

    :goto_74
    if-ge v4, v3, :cond_86

    aget-wide v12, v6, v4

    cmp-long v7, v12, v8

    if-lez v7, :cond_83

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 161
    :cond_86
    array-length v3, v5

    const/4 v4, 0x0

    :goto_88
    if-ge v4, v3, :cond_9a

    aget-wide v6, v5, v4

    cmp-long v12, v6, v8

    if-lez v12, :cond_97

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    :cond_9a
    cmp-long v3, v10, v8

    if-lez v3, :cond_a5

    .line 162
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_a5
    const/4 v3, 0x1

    .line 165
    :goto_a6
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 166
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_af

    :cond_c7
    if-eqz p0, :cond_cc

    if-nez v3, :cond_cc

    goto :goto_cd

    :cond_cc
    const/4 v1, 0x0

    .line 170
    :goto_cd
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 171
    const-string v0, "allowed"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v0, "banned_client"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v0, "banned_ids"

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final pre(Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    if-nez p0, :cond_7

    const-string v1, "{}"

    goto :goto_9

    :cond_7
    move-object/from16 v1, p0

    :goto_9
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v1, "network"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 88
    :goto_19
    const-string v4, "now"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 89
    const-string v4, "ttl"

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 90
    const-string v4, "uid"

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 91
    const-string v4, "has_cache"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_37

    const/4 v4, 0x1

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    .line 92
    :goto_38
    const-string v13, "cached_allowed"

    const/4 v14, -0x1

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 93
    const-string v14, "checked_at"

    invoke-virtual {v0, v14, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    move-wide/from16 v16, v5

    .line 94
    const-string v5, "banned_client"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    .line 95
    :goto_52
    sget-object v6, Lcom/chimeranft/core/Gate;->INSTANCE:Lcom/chimeranft/core/Gate;

    const-string v2, "banned"

    invoke-direct {v6, v0, v2}, Lcom/chimeranft/core/Gate;->longs(Lorg/json/JSONObject;Ljava/lang/String;)[J

    move-result-object v0

    .line 97
    invoke-static {v0, v5, v11, v12}, Lcom/chimeranft/core/Gate;->clientBanned([JZJ)Z

    move-result v0

    if-eqz v0, :cond_66

    cmp-long v2, v11, v16

    if-gtz v2, :cond_66

    :goto_64
    const/4 v2, 0x0

    goto :goto_7f

    :cond_66
    if-nez v0, :cond_72

    if-eqz v4, :cond_72

    if-ne v13, v3, :cond_72

    sub-long/2addr v7, v14

    cmp-long v2, v7, v9

    if-gez v2, :cond_72

    goto :goto_64

    :cond_72
    cmp-long v2, v11, v16

    if-gtz v2, :cond_78

    const/4 v2, 0x2

    goto :goto_7f

    :cond_78
    if-nez v1, :cond_7e

    if-nez v0, :cond_7e

    const/4 v2, 0x3

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x4

    .line 119
    :goto_7f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 120
    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v2, "client_banned"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final trimAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-le v0, v1, :cond_1f

    add-int/lit8 v3, v0, -0x1

    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1f
    if-nez v1, :cond_28

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_28

    return-object p1

    .line 64
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
