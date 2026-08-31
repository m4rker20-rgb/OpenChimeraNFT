.class public final Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $receiverUid:J

.field final synthetic $transferJson:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/SyncClient;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;JLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    iput-wide p2, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->$receiverUid:J

    iput-object p4, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->$transferJson:Ljava/lang/String;

    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1702
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    iget-wide v1, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->$receiverUid:J

    iget-object v3, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->$transferJson:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chimeranft/core/SyncClient;->pushTransfer(JLjava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    .line 1705
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v1}, Lcom/chimeranft/core/SyncClient;->getXferPushFail()J

    move-result-wide v1

    iget-object v3, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/chimeranft/core/SyncClient;->setXferPushFail(J)V

    .line 1706
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xferpush: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/SyncClient;->setLastError(Ljava/lang/String;)V

    return-void
.end method
