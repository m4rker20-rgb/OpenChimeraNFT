.class public final Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $form:Ljava/lang/Object;

.field final synthetic $gift:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->$gift:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->$form:Ljava/lang/Object;

    .line 4439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 4441
    new-instance v0, Lcom/chimeranft/core/GiftHook$MarketPrepared;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftHook$MarketPrepared;-><init>()V

    .line 4444
    :try_start_5
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->$gift:Ljava/lang/Object;

    invoke-static {v1}, Lcom/chimeranft/core/GiftCodec;->serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftHook$MarketPrepared;->setRawB64(Ljava/lang/String;)V

    .line 4445
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->$form:Ljava/lang/Object;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->$gift:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->extractFormPrice(Ljava/lang/Object;Ljava/lang/Object;)J
    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$extractFormPrice(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftHook$MarketPrepared;->setStars(J)V

    .line 4446
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->$form:Ljava/lang/Object;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->$gift:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->extractFormPriceTon(Ljava/lang/Object;Ljava/lang/Object;)J
    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$extractFormPriceTon(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftHook$MarketPrepared;->setNanoTon(J)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    goto :goto_46

    :catchall_29
    move-exception v1

    .line 4449
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "marketPrewarm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 4452
    :goto_46
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->marketPrepared:Ljava/util/WeakHashMap;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getMarketPrepared$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$prewarmMarketGift$2;->$gift:Ljava/lang/Object;

    monitor-enter v1

    .line 4453
    :try_start_51
    # getter for: Lcom/chimeranft/core/GiftHook;->marketPrepareInFlight:Ljava/util/WeakHashMap;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getMarketPrepareInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4454
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook$MarketPrepared;->getRawB64()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_76

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook$MarketPrepared;->getRawB64()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6c

    goto :goto_76

    .line 4455
    :cond_6c
    # getter for: Lcom/chimeranft/core/GiftHook;->marketPrepared:Ljava/util/WeakHashMap;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getMarketPrepared$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    :catchall_74
    move-exception v0

    goto :goto_7a

    .line 4456
    :cond_76
    :goto_76
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_74

    .line 4452
    monitor-exit v1

    return-void

    :goto_7a
    monitor-exit v1

    throw v0
.end method
