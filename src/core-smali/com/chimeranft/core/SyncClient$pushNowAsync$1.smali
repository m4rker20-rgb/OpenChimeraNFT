.class public final Lcom/chimeranft/core/SyncClient$pushNowAsync$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/SyncClient;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :cond_0
    const/4 v0, 0x0

    .line 449
    :try_start_1
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->forcePushPending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/chimeranft/core/SyncClient;->access$getForcePushPending$p(Lcom/chimeranft/core/SyncClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_37

    .line 452
    :try_start_b
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/SyncClient;->pushOnce(Z)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_10

    .line 457
    :catchall_10
    :try_start_10
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->forcePushPending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/chimeranft/core/SyncClient;->access$getForcePushPending$p(Lcom/chimeranft/core/SyncClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_37

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->pushWorkerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/chimeranft/core/SyncClient;->access$getPushWorkerRunning$p(Lcom/chimeranft/core/SyncClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 463
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->forcePushPending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/chimeranft/core/SyncClient;->access$getForcePushPending$p(Lcom/chimeranft/core/SyncClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushNowAsync()Ljava/lang/String;

    :cond_36
    return-void

    :catchall_37
    move-exception v1

    .line 462
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->pushWorkerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/chimeranft/core/SyncClient;->access$getPushWorkerRunning$p(Lcom/chimeranft/core/SyncClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 463
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    # getter for: Lcom/chimeranft/core/SyncClient;->forcePushPending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/chimeranft/core/SyncClient;->access$getForcePushPending$p(Lcom/chimeranft/core/SyncClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushNowAsync()Ljava/lang/String;

    :cond_52
    throw v1
.end method
