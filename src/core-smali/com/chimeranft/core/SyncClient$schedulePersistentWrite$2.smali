.class public final Lcom/chimeranft/core/SyncClient$schedulePersistentWrite$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/SyncClient;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient$schedulePersistentWrite$2;->this$0:Lcom/chimeranft/core/SyncClient;

    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$schedulePersistentWrite$2;->this$0:Lcom/chimeranft/core/SyncClient;

    # invokes: Lcom/chimeranft/core/SyncClient;->nextPersistBody()Ljava/lang/String;
    invoke-static {v0}, Lcom/chimeranft/core/SyncClient;->access$nextPersistBody(Lcom/chimeranft/core/SyncClient;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2195
    :cond_9
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$schedulePersistentWrite$2;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/SyncClient;->access$getStore$p(Lcom/chimeranft/core/SyncClient;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_17

    .line 2198
    :cond_13
    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->getRemoteSnapshotFile()Ljava/io/File;

    move-result-object v1

    :goto_17
    if-eqz v1, :cond_0

    .line 2203
    :try_start_19
    sget-object v2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->writePersistentAtomic(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/chimeranft/core/SyncClient$Companion;->access$writePersistentAtomic(Lcom/chimeranft/core/SyncClient$Companion;Ljava/io/File;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_0

    :catchall_1f
    move-exception v0

    .line 2206
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$schedulePersistentWrite$2;->this$0:Lcom/chimeranft/core/SyncClient;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistWrite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/SyncClient;->setLastError(Ljava/lang/String;)V

    goto :goto_0
.end method
