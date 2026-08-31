.class public final Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/SyncClient;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    .line 2268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 2270
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->getPullAttempts()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chimeranft/core/SyncClient;->setPullAttempts(J)V

    .line 2271
    iget-object v5, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->USER_KEY_PREFIX:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/SyncClient;->access$getUSER_KEY_PREFIX$cp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->myId:J
    invoke-static {v1}, Lcom/chimeranft/core/SyncClient;->access$getMyId$p(Lcom/chimeranft/core/SyncClient;)J

    move-result-wide v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/api/v1/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/state"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v6, "GET"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 2272
    sget-object v1, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v2, 0x0

    aget-object v5, v0, v2

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v1, v5}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_ec

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_ec

    const/4 v6, 0x1

    .line 2273
    aget-object v7, v0, v6

    if-eqz v7, :cond_ec

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_ec

    .line 2277
    :try_start_5b
    new-instance v7, Lorg/json/JSONObject;

    aget-object v0, v0, v6

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2278
    const-string v0, "username_state"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2279
    iget-object v8, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v8}, Lcom/chimeranft/core/SyncClient;->getPullOk()J

    move-result-wide v8

    iget-object v10, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    add-long/2addr v8, v3

    invoke-virtual {v10, v8, v9}, Lcom/chimeranft/core/SyncClient;->setPullOk(J)V

    .line 2280
    iget-object v8, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    .line 2281
    invoke-virtual {v1, v7}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result v1

    .line 2282
    const-string v9, "wear_active"

    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v0, :cond_8e

    .line 2283
    const-string v9, "enabled"

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8e

    const/4 v2, 0x1

    goto :goto_8e

    :catchall_8c
    move-exception v0

    goto :goto_bb

    :cond_8e
    :goto_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OK code="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " gifts="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2280
    invoke-virtual {v8, v0}, Lcom/chimeranft/core/SyncClient;->setLastSelfTest(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_5b .. :try_end_ba} :catchall_8c

    return-void

    .line 2286
    :goto_bb
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v1}, Lcom/chimeranft/core/SyncClient;->getPullFail()J

    move-result-wide v1

    iget-object v5, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    add-long/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Lcom/chimeranft/core/SyncClient;->setPullFail(J)V

    .line 2287
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    sget-object v2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v0, v3}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse FAIL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/SyncClient;->setLastSelfTest(Ljava/lang/String;)V

    return-void

    .line 2293
    :cond_ec
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v1}, Lcom/chimeranft/core/SyncClient;->getPullFail()J

    move-result-wide v5

    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lcom/chimeranft/core/SyncClient;->setPullFail(J)V

    .line 2294
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/SyncClient;->setLastSelfTest(Ljava/lang/String;)V

    return-void
.end method
