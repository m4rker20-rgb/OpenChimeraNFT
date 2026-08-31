.class public final Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $baseGiftId:J

.field final synthetic $gate:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $s:Lcom/chimeranft/core/SyncClient;

.field final synthetic $target:Lcom/chimeranft/core/GiftHook$MarketFeedEntry;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;JLcom/chimeranft/core/GiftHook$MarketFeedEntry;Lcom/chimeranft/core/GiftHook;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$s:Lcom/chimeranft/core/SyncClient;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$baseGiftId:J

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$target:Lcom/chimeranft/core/GiftHook$MarketFeedEntry;

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p6, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$gate:Ljava/util/concurrent/CountDownLatch;

    .line 6341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x0

    .line 6345
    :try_start_1
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$s:Lcom/chimeranft/core/SyncClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$baseGiftId:J

    # getter for: Lcom/chimeranft/core/GiftHook;->MARKET_FEED_PAGE:I
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getMARKET_FEED_PAGE$cp()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/chimeranft/core/SyncClient;->fetchMarketListings(JII)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 6347
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$target:Lcom/chimeranft/core/GiftHook$MarketFeedEntry;

    const-string v3, "listings"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->setRows(Lorg/json/JSONArray;)V

    .line 6348
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$target:Lcom/chimeranft/core/GiftHook$MarketFeedEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->setFetchedMs(J)V

    goto :goto_3a

    :catchall_27
    move-exception v1

    goto :goto_49

    .line 6353
    :cond_29
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$target:Lcom/chimeranft/core/GiftHook$MarketFeedEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lcom/chimeranft/core/GiftHook;->MARKET_FEED_TTL_MS:J
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getMARKET_FEED_TTL_MS$cp()J

    move-result-wide v4

    const/4 v6, 0x2

    int-to-long v6, v6

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->setFetchedMs(J)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_27

    .line 6361
    :goto_3a
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$target:Lcom/chimeranft/core/GiftHook$MarketFeedEntry;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->getFetching()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6362
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$gate:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 6357
    :goto_49
    :try_start_49
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "marketFeed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_66

    goto :goto_3a

    :catchall_66
    move-exception v1

    .line 6361
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$target:Lcom/chimeranft/core/GiftHook$MarketFeedEntry;

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->getFetching()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6362
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$prefetchMarketFeed$1;->$gate:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method
