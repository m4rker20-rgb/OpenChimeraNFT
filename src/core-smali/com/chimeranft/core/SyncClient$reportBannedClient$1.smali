.class public final Lcom/chimeranft/core/SyncClient$reportBannedClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $body:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/chimeranft/core/SyncClient;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient$reportBannedClient$1;->this$0:Lcom/chimeranft/core/SyncClient;

    iput-object p2, p0, Lcom/chimeranft/core/SyncClient$reportBannedClient$1;->$body:Lorg/json/JSONObject;

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    const/4 v0, 0x4

    if-ge v1, v0, :cond_7a

    .line 1404
    :try_start_5
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient$reportBannedClient$1;->this$0:Lcom/chimeranft/core/SyncClient;

    const-string v3, "POST"

    const-string v4, "/api/v1/xxxxxxxxxxxxx"

    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$reportBannedClient$1;->$body:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 1405
    sget-object v2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v2, v0}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v0

    .line 1406
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient$reportBannedClient$1;->this$0:Lcom/chimeranft/core/SyncClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " try="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chimeranft/core/SyncClient;->setLastAccessReport(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_52

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_49

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_49

    goto :goto_7a

    :cond_49
    const/16 v2, 0x194

    if-eq v0, v2, :cond_7a

    const/16 v2, 0x195

    if-eq v0, v2, :cond_7a

    goto :goto_6f

    :catchall_52
    move-exception v0

    .line 1411
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient$reportBannedClient$1;->this$0:Lcom/chimeranft/core/SyncClient;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAIL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/SyncClient;->setLastAccessReport(Ljava/lang/String;)V

    :goto_6f
    const-wide/16 v2, 0x5dc

    int-to-long v4, v1

    mul-long v4, v4, v2

    .line 1416
    :try_start_74
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_77} :catch_7a

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_7a
    :cond_7a
    :goto_7a
    return-void
.end method
