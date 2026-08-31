.class public final Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $gift:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftHook;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 3292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 3294
    new-instance v0, Lcom/chimeranft/core/GiftHook$PreparedSend;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftHook$PreparedSend;-><init>()V

    .line 3297
    :try_start_5
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    invoke-static {v1}, Lcom/chimeranft/core/GiftCodec;->serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setB64(Ljava/lang/String;)V

    .line 3298
    sget-object v1, Lcom/chimeranft/core/GiftHook;->Companion:Lcom/chimeranft/core/GiftHook$Companion;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/chimeranft/core/GiftHook$Companion;->strOf(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/chimeranft/core/GiftHook$Companion;->access$strOf(Lcom/chimeranft/core/GiftHook$Companion;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setTitle(Ljava/lang/String;)V

    .line 3299
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook$Companion;->isUnique(Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Lcom/chimeranft/core/GiftHook$Companion;->access$isUnique(Lcom/chimeranft/core/GiftHook$Companion;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setUnique(Z)V

    .line 3300
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook$Companion;->regularGiftPriceStars(Ljava/lang/Object;)J
    invoke-static {v1, v2}, Lcom/chimeranft/core/GiftHook$Companion;->access$regularGiftPriceStars(Lcom/chimeranft/core/GiftHook$Companion;Ljava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setStars(J)V

    .line 3301
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setBaseId(J)V

    .line 3302
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    const-string v2, "upgrade_stars"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setUpgradeStars(J)V

    .line 3303
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    const-string v2, "availability_total"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setAvailabilityTotal(J)V

    .line 3304
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    const-string v2, "availability_issued"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setAvailabilityIssued(J)V

    .line 3305
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    const-string v3, "can_upgrade"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook$PreparedSend;->getUpgradeStars()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_78

    goto :goto_7c

    :cond_78
    const/4 v1, 0x0

    goto :goto_7d

    :catchall_7a
    move-exception v1

    goto :goto_81

    :cond_7c
    :goto_7c
    const/4 v1, 0x1

    :goto_7d
    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftHook$PreparedSend;->setCanUpgrade(Z)V
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_7a

    goto :goto_9d

    .line 3308
    :goto_81
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPrewarm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 3311
    :goto_9d
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->preparedSends:Ljava/util/WeakHashMap;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getPreparedSends$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$prewarmSendGift$2;->$gift:Ljava/lang/Object;

    monitor-enter v1

    .line 3312
    :try_start_a8
    # getter for: Lcom/chimeranft/core/GiftHook;->sendPrepareInFlight:Ljava/util/WeakHashMap;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getSendPrepareInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3313
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook$PreparedSend;->getB64()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_cd

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook$PreparedSend;->getB64()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_c3

    goto :goto_cd

    :cond_c3
    # getter for: Lcom/chimeranft/core/GiftHook;->preparedSends:Ljava/util/WeakHashMap;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getPreparedSends$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    :catchall_cb
    move-exception v0

    goto :goto_d1

    .line 3314
    :cond_cd
    :goto_cd
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_cf
    .catchall {:try_start_a8 .. :try_end_cf} :catchall_cb

    .line 3311
    monitor-exit v1

    return-void

    :goto_d1
    monitor-exit v1

    throw v0
.end method
