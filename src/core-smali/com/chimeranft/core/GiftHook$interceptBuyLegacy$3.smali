.class public final Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $baseId:J

.field final synthetic $callbackReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $giftForSerialize:Ljava/lang/Object;

.field final synthetic $listingUniqueId:J

.field final synthetic $marketSpend:Z

.field final synthetic $num:J

.field final synthetic $priceNanoTon:J

.field final synthetic $priceStars:J

.field final synthetic $purchaseCallback:Ljava/lang/Object;

.field final synthetic $purchaseKey:Ljava/lang/String;

.field final synthetic $rawB64:Ljava/lang/String;

.field final synthetic $realSlug:Ljava/lang/String;

.field final synthetic $recipientId:J

.field final synthetic $recipientName:Ljava/lang/String;

.field final synthetic $sellerId:J

.field final synthetic $sellerName:Ljava/lang/String;

.field final synthetic $serverListing:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $serverListingUnsure:Z

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $toFriend:Z

.field final synthetic $toId:J

.field final synthetic $tonPurchase:Z

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;JJLjava/lang/String;JJJLjava/lang/String;JLjava/lang/String;JZJLkotlin/jvm/internal/Ref$BooleanRef;ZZZLjava/lang/String;)V
    .registers 32

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$rawB64:Ljava/lang/String;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$giftForSerialize:Ljava/lang/Object;

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$realSlug:Ljava/lang/String;

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseCallback:Ljava/lang/Object;

    iput-object p6, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$callbackReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p7, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$baseId:J

    iput-wide p9, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$num:J

    iput-object p11, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$title:Ljava/lang/String;

    iput-wide p12, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$priceStars:J

    iput-wide p14, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$priceNanoTon:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$sellerId:J

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$sellerName:Ljava/lang/String;

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$recipientId:J

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$recipientName:Ljava/lang/String;

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$toId:J

    move/from16 p1, p24

    iput-boolean p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$toFriend:Z

    move-wide/from16 p1, p25

    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$listingUniqueId:J

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$serverListing:Lkotlin/jvm/internal/Ref$BooleanRef;

    move/from16 p1, p28

    iput-boolean p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$serverListingUnsure:Z

    move/from16 p1, p29

    iput-boolean p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$tonPurchase:Z

    move/from16 p1, p30

    iput-boolean p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$marketSpend:Z

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseKey:Ljava/lang/String;

    .line 4703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 36

    move-object/from16 v1, p0

    .line 4707
    :try_start_2
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$rawB64:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 4708
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_d

    goto :goto_12

    :cond_d
    :goto_d
    move-object v4, v0

    goto :goto_27

    :catchall_f
    move-exception v0

    goto/16 :goto_106

    .line 4710
    :cond_12
    :goto_12
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->getMarketAsyncSerializes()J

    move-result-wide v3

    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/chimeranft/core/GiftHook;->setMarketAsyncSerializes(J)V

    .line 4711
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$giftForSerialize:Ljava/lang/Object;

    invoke-static {v0}, Lcom/chimeranft/core/GiftCodec;->serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :goto_27
    if-eqz v4, :cond_b7

    .line 4713
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_b7

    .line 4729
    :cond_31
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->buyCommitLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getBuyCommitLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v32

    iget-object v3, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v5, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$baseId:J

    iget-wide v7, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$num:J

    iget-object v9, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$realSlug:Ljava/lang/String;

    iget-object v10, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$title:Ljava/lang/String;

    iget-wide v11, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$priceStars:J

    iget-wide v13, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$priceNanoTon:J

    move-object v0, v3

    iget-wide v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$sellerId:J

    iget-object v15, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$sellerName:Ljava/lang/String;

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$recipientId:J

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$recipientName:Ljava/lang/String;

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$toId:J

    move-object/from16 v21, v0

    iget-boolean v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$toFriend:Z

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$listingUniqueId:J

    move/from16 v24, v0

    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$serverListing:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-wide/from16 v25, v2

    iget-boolean v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$serverListingUnsure:Z

    iget-boolean v3, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$tonPurchase:Z

    move/from16 v27, v2

    iget-boolean v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$marketSpend:Z

    move/from16 v29, v2

    iget-object v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseCallback:Ljava/lang/Object;

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$callbackReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v32
    :try_end_75
    .catchall {:try_start_2 .. :try_end_75} :catchall_f

    .line 4734
    :try_start_75
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-wide/from16 v33, v16

    move-object/from16 v17, v15

    move-wide/from16 v15, v33

    move-object/from16 v31, v2

    move/from16 v28, v3

    move-object/from16 v3, v18

    move-wide/from16 v18, v19

    move-object/from16 v20, v21

    move-wide/from16 v21, v22

    move/from16 v23, v24

    move-wide/from16 v24, v25

    move/from16 v26, v0

    .line 4732
    # invokes: Lcom/chimeranft/core/GiftHook;->buyPersist(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;JLjava/lang/String;JZJZZZZLjava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    invoke-static/range {v3 .. v31}, Lcom/chimeranft/core/GiftHook;->access$buyPersist(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;JLjava/lang/String;JZJZZZZLjava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v0

    move-object/from16 v2, v30

    move-object/from16 v4, v31

    .line 4743
    # invokes: Lcom/chimeranft/core/GiftHook;->releaseBuySheet(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    invoke-static {v3, v2, v4, v0}, Lcom/chimeranft/core/GiftHook;->access$releaseBuySheet(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 4744
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9c
    .catchall {:try_start_75 .. :try_end_9c} :catchall_b4

    .line 4729
    :try_start_9c
    monitor-exit v32
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_f

    .line 4752
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->purchaseLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getPurchaseLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseKey:Ljava/lang/String;

    monitor-enter v2

    .line 4753
    :try_start_a8
    # getter for: Lcom/chimeranft/core/GiftHook;->purchasesInFlight:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getPurchasesInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b1

    .line 4752
    monitor-exit v2

    return-void

    :catchall_b1
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_b4
    move-exception v0

    .line 4729
    :try_start_b5
    monitor-exit v32

    throw v0

    .line 4715
    :cond_b7
    :goto_b7
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$realSlug:Ljava/lang/String;

    sget-object v3, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buy serialize FAIL slug="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chimeranft/core/GiftHook;->setLastBuyDiag(Ljava/lang/String;)V

    .line 4716
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    const-string v2, "Gift preparation failed"

    # invokes: Lcom/chimeranft/core/GiftHook;->showPurchaseMessage(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/chimeranft/core/GiftHook;->access$showPurchaseMessage(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;)V

    .line 4717
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseCallback:Ljava/lang/Object;

    iget-object v3, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$callbackReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    # invokes: Lcom/chimeranft/core/GiftHook;->releaseBuySheet(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    invoke-static {v0, v2, v3, v4}, Lcom/chimeranft/core/GiftHook;->access$releaseBuySheet(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    :try_end_ef
    .catchall {:try_start_b5 .. :try_end_ef} :catchall_f

    .line 4752
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->purchaseLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getPurchaseLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseKey:Ljava/lang/String;

    monitor-enter v2

    .line 4753
    :try_start_fa
    # getter for: Lcom/chimeranft/core/GiftHook;->purchasesInFlight:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getPurchasesInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_101
    .catchall {:try_start_fa .. :try_end_101} :catchall_103

    .line 4752
    monitor-exit v2

    return-void

    :catchall_103
    move-exception v0

    monitor-exit v2

    throw v0

    .line 4747
    :goto_106
    :try_start_106
    iget-object v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buyBg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 4748
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseCallback:Ljava/lang/Object;

    iget-object v3, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$callbackReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    # invokes: Lcom/chimeranft/core/GiftHook;->releaseBuySheet(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    invoke-static {v0, v2, v3, v4}, Lcom/chimeranft/core/GiftHook;->access$releaseBuySheet(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    :try_end_12c
    .catchall {:try_start_106 .. :try_end_12c} :catchall_143

    .line 4752
    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->purchaseLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getPurchaseLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseKey:Ljava/lang/String;

    monitor-enter v2

    .line 4753
    :try_start_137
    # getter for: Lcom/chimeranft/core/GiftHook;->purchasesInFlight:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getPurchasesInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_13e
    .catchall {:try_start_137 .. :try_end_13e} :catchall_140

    .line 4752
    monitor-exit v2

    return-void

    :catchall_140
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_143
    move-exception v0

    iget-object v2, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->purchaseLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getPurchaseLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v4, v1, Lcom/chimeranft/core/GiftHook$interceptBuyLegacy$3;->$purchaseKey:Ljava/lang/String;

    monitor-enter v2

    .line 4753
    :try_start_14f
    # getter for: Lcom/chimeranft/core/GiftHook;->purchasesInFlight:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/chimeranft/core/GiftHook;->access$getPurchasesInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_156
    .catchall {:try_start_14f .. :try_end_156} :catchall_158

    .line 4752
    monitor-exit v2

    throw v0

    :catchall_158
    move-exception v0

    monitor-exit v2

    throw v0
.end method
