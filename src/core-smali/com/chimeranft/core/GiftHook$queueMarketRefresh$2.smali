.class public final Lcom/chimeranft/core/GiftHook$queueMarketRefresh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$queueMarketRefresh$2;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 4496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 4500
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$queueMarketRefresh$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->marketRefreshLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getMarketRefreshLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$queueMarketRefresh$2;->this$0:Lcom/chimeranft/core/GiftHook;

    monitor-enter v0

    .line 4501
    :try_start_9
    # getter for: Lcom/chimeranft/core/GiftHook;->marketRefreshBalance:Z
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getMarketRefreshBalance$p(Lcom/chimeranft/core/GiftHook;)Z

    move-result v2

    .line 4502
    # getter for: Lcom/chimeranft/core/GiftHook;->marketRefreshGifts:Z
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getMarketRefreshGifts$p(Lcom/chimeranft/core/GiftHook;)Z

    move-result v3

    const/4 v4, 0x0

    .line 4503
    invoke-static {v1, v4}, Lcom/chimeranft/core/GiftHook;->access$setMarketRefreshGifts$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 4504
    # getter for: Lcom/chimeranft/core/GiftHook;->marketRefreshGifts:Z
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getMarketRefreshGifts$p(Lcom/chimeranft/core/GiftHook;)Z

    move-result v5

    invoke-static {v1, v5}, Lcom/chimeranft/core/GiftHook;->access$setMarketRefreshBalance$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 4505
    invoke-static {v1, v4}, Lcom/chimeranft/core/GiftHook;->access$setMarketRefreshScheduled$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 4506
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_31

    .line 4500
    monitor-exit v0

    if-eqz v2, :cond_29

    .line 4507
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->notifyVisualBalanceChangedNow()V

    :cond_29
    if-eqz v3, :cond_30

    .line 4508
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$queueMarketRefresh$2;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->reloadSelfGifts()V

    :cond_30
    return-void

    :catchall_31
    move-exception v1

    .line 4500
    monitor-exit v0

    throw v1
.end method
