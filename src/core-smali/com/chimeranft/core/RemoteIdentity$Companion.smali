.class public final Lcom/chimeranft/core/RemoteIdentity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/RemoteIdentity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$controllerEntity(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .registers 5

    .line 1059
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/RemoteIdentity$Companion;->controllerEntity(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$giftSigCached(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    .line 1059
    invoke-direct {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->giftSigCached(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hasProfileState(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;)Z
    .registers 2

    .line 1059
    invoke-direct {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->hasProfileState(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isOwnToken(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 3

    .line 1059
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->isOwnToken(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$normalizedRemoteWear(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .registers 4

    .line 1059
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity$Companion;->normalizedRemoteWear(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postNc(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 4

    .line 1059
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity$Companion;->postNc(Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$prepSlot(Lcom/chimeranft/core/RemoteIdentity$Companion;J)I
    .registers 3

    .line 1059
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->prepSlot(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$profileSigCached(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    .line 1059
    invoke-direct {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->profileSigCached(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$str(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1059
    invoke-direct {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tokensOf(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONArray;Z)[Ljava/lang/String;
    .registers 3

    .line 1059
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->tokensOf(Lorg/json/JSONArray;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final controllerEntity(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x1

    .line 1221
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {p1, p2, v1, v5}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    .line 1222
    new-array v1, v0, [Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-static {p1, p2, v1, p4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_27
    return-object v1
.end method

.method private final giftSig(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 11

    .line 1204
    const-string v0, "gifts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1205
    const-string v0, ""

    if-nez p1, :cond_b

    return-object v0

    .line 1208
    :cond_b
    invoke-static {p1}, Lcom/chimeranft/core/GiftFastPath;->foreignSignature(Lorg/json/JSONArray;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_27

    .line 1209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "h:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1210
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1211
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v2, :cond_58

    .line 1213
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_55

    .line 1214
    const-string v7, "unique_id"

    invoke-virtual {v6, v7, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "slug"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1216
    :cond_58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final giftSigCached(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    .line 1163
    const-string p1, ""

    return-object p1

    .line 1164
    :cond_5
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->giftSigSource:Lorg/json/JSONObject;
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getGiftSigSource$cp()Lorg/json/JSONObject;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 1166
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->giftSigValue:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getGiftSigValue$cp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    .line 1169
    :cond_12
    invoke-direct {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->giftSig(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Lcom/chimeranft/core/RemoteIdentity;->access$setGiftSigValue$cp(Ljava/lang/String;)V

    .line 1171
    invoke-static {p1}, Lcom/chimeranft/core/RemoteIdentity;->access$setGiftSigSource$cp(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private final hasProfileState(Lorg/json/JSONObject;)Z
    .registers 3

    .line 1128
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->hasUserIdentity(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result p1

    if-lez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method private final identitySig(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 13

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    const-string v1, "wear_active"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_17

    const-string v1, "wear_collectible_id"

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_18

    :cond_17
    move-wide v5, v3

    .line 1183
    :goto_18
    invoke-direct {p0, p1, v5, v6}, Lcom/chimeranft/core/RemoteIdentity$Companion;->normalizedRemoteWear(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 1184
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1185
    const-string v6, "num"

    invoke-virtual {v1, v6, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1186
    const-string v6, "title"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1187
    const-string v6, "username_state"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1188
    const-string v8, "tokens"

    const-string v9, "enabled"

    if-eqz v6, :cond_68

    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 1189
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "replace_original"

    invoke-virtual {v6, v10, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_64

    const-string v6, "!"

    goto :goto_65

    :cond_64
    move-object v6, v7

    :goto_65
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    :cond_68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1191
    const-string v6, "number_state"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_80

    .line 1192
    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_80

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1194
    const-string v6, "rating_state"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_9a

    .line 1195
    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9a

    const-string v8, "value"

    invoke-virtual {v6, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1196
    :cond_9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "local_premium"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1197
    const-string v1, "pinned_channel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_ce

    .line 1198
    invoke-virtual {p1, v9, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 1199
    const-string v1, "|pc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "username"

    invoke-virtual {p1, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final isOwnToken(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 1285
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1e

    :cond_a
    if-nez p2, :cond_d

    return v0

    .line 1286
    :cond_d
    array-length v1, p2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1e

    aget-object v3, p2, v2

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    return v4

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1e
    :goto_1e
    return v0
.end method

.method private final normalizedRemoteWear(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .registers 25

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    .line 1232
    const-string v3, "wear_status_data"

    const/4 v4, 0x0

    if-nez v0, :cond_b

    move-object v5, v4

    goto :goto_f

    :cond_b
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    :goto_f
    if-nez v5, :cond_17

    .line 1236
    :try_start_11
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_27

    :cond_17
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_22

    move-object v5, v6

    goto :goto_27

    .line 1239
    :catchall_22
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1242
    :goto_27
    const-string v6, "num"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1243
    const-string v11, "title"

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v0, :cond_3a

    goto :goto_40

    .line 1244
    :cond_3a
    const-string v4, "gifts"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1245
    :goto_40
    const-string v0, "collectible_id"

    if-eqz v4, :cond_59

    cmp-long v14, v9, v7

    if-lez v14, :cond_5d

    if-eqz v13, :cond_5d

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_59

    goto :goto_5d

    :cond_59
    move-wide/from16 v19, v9

    goto/16 :goto_f3

    .line 1247
    :cond_5d
    :goto_5d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/16 v16, 0x0

    const/4 v7, 0x0

    :goto_64
    if-ge v7, v15, :cond_59

    .line 1249
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_e3

    move-object/from16 p1, v4

    .line 1251
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v16, v3

    .line 1252
    const-string v3, "unique_id"

    move-wide/from16 v19, v9

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v3, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    cmp-long v3, v17, v9

    if-gtz v3, :cond_88

    .line 1253
    const-string v3, "saved_id"

    invoke-virtual {v8, v3, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    :cond_88
    cmp-long v3, v17, v9

    if-gtz v3, :cond_90

    .line 1254
    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    :cond_90
    cmp-long v3, v17, v9

    if-gtz v3, :cond_9a

    if-eqz v4, :cond_9a

    .line 1256
    invoke-virtual {v4, v0, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    :cond_9a
    cmp-long v3, v1, v9

    if-lez v3, :cond_a2

    cmp-long v3, v17, v1

    if-nez v3, :cond_e9

    :cond_a2
    if-gtz v14, :cond_b4

    .line 1260
    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v3, v14, v9

    if-gtz v3, :cond_b2

    if-eqz v4, :cond_b2

    .line 1261
    invoke-virtual {v4, v6, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    :cond_b2
    move-wide v9, v14

    goto :goto_b6

    :cond_b4
    move-wide/from16 v9, v19

    :goto_b6
    if-eqz v13, :cond_c6

    .line 1263
    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_e0

    .line 1265
    :cond_c6
    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_da

    .line 1266
    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_e0

    :cond_da
    if-eqz v4, :cond_e0

    .line 1267
    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_e0
    :goto_e0
    const-wide/16 v17, 0x0

    goto :goto_f6

    :cond_e3
    move-object/from16 v16, v3

    move-object/from16 p1, v4

    move-wide/from16 v19, v9

    :cond_e9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, p1

    move-object/from16 v3, v16

    move-wide/from16 v9, v19

    goto/16 :goto_64

    :goto_f3
    move-wide/from16 v9, v19

    goto :goto_e0

    :goto_f6
    cmp-long v3, v1, v17

    if-lez v3, :cond_fd

    .line 1274
    :try_start_fa
    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_fd
    cmp-long v0, v9, v17

    if-lez v0, :cond_104

    .line 1275
    invoke-virtual {v5, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_104
    if-eqz v13, :cond_114

    .line 1276
    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_116

    :cond_114
    if-lez v0, :cond_11f

    .line 1277
    :cond_116
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v0, v13, v9, v10}, Lcom/chimeranft/core/Store$Companion;->formatWearTitle(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11f
    .catchall {:try_start_fa .. :try_end_11f} :catchall_11f

    :catchall_11f
    :cond_11f
    return-object v5
.end method

.method private final postNc(Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 9

    if-gtz p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    .line 1106
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    .line 1106
    const-string p2, "postNotificationName"

    invoke-static {p1, p2, v1, v0}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final prepSlot(J)I
    .registers 5

    const-wide v0, -0x61c8864680b583ebL

    mul-long p1, p1, v0

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    .line 1096
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->PREP_MASK:I
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getPREP_MASK$cp()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private final profileSig(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .line 1176
    invoke-direct {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->identitySig(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->giftSigCached(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|g:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final profileSigCached(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    .line 1150
    const-string p1, ""

    return-object p1

    .line 1151
    :cond_5
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->profileSigSource:Lorg/json/JSONObject;
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getProfileSigSource$cp()Lorg/json/JSONObject;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 1153
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->profileSigValue:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getProfileSigValue$cp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    .line 1156
    :cond_12
    invoke-direct {p0, p1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->profileSig(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    invoke-static {v0}, Lcom/chimeranft/core/RemoteIdentity;->access$setProfileSigValue$cp(Ljava/lang/String;)V

    .line 1158
    invoke-static {p1}, Lcom/chimeranft/core/RemoteIdentity;->access$setProfileSigSource$cp(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private final str(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    .line 1305
    const-string p1, ""

    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final tokensOf(Lorg/json/JSONArray;Z)[Ljava/lang/String;
    .registers 9

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 1293
    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    .line 1294
    :cond_b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_39

    .line 1296
    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1297
    sget-object v5, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    if-eqz p2, :cond_21

    invoke-virtual {v5, v4}, Lcom/chimeranft/core/Identity$Companion;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_25

    :cond_21
    invoke-virtual {v5, v4}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1298
    :goto_25
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_36

    :cond_2c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_36

    .line 1299
    :cond_33
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1320
    :cond_39
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final hasUserIdentity(Lorg/json/JSONObject;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1114
    :cond_4
    const-string v1, "wear_active"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    const-string v1, "wear_collectible_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_1a

    return v2

    .line 1115
    :cond_1a
    const-string v1, "username_state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1116
    const-string v3, "enabled"

    if-eqz v1, :cond_2b

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    return v2

    .line 1117
    :cond_2b
    const-string v1, "number_state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 1118
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3a

    return v2

    .line 1119
    :cond_3a
    const-string v1, "rating_state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 1120
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_51

    const-string v3, "value"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_51

    return v2

    .line 1121
    :cond_51
    const-string v1, "local_premium_configured"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5a

    return v2

    .line 1122
    :cond_5a
    invoke-static {p1}, Lcom/chimeranft/core/PinnedChannel;->has(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_61

    return v2

    :cond_61
    return v0
.end method
