.class public final Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $decline:Z

.field final synthetic $delegate:Ljava/lang/Object;

.field final synthetic $msgId:I

.field final synthetic $offerId:Ljava/lang/String;

.field final synthetic $s:Lcom/chimeranft/core/SyncClient;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;ZLcom/chimeranft/core/GiftHook;Ljava/lang/Object;I)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$s:Lcom/chimeranft/core/SyncClient;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$offerId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$decline:Z

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$delegate:Ljava/lang/Object;

    iput p6, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$msgId:I

    .line 6092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x0

    .line 6096
    :try_start_1
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$s:Lcom/chimeranft/core/SyncClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$offerId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$decline:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/chimeranft/core/SyncClient;->respondOffer(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_23

    .line 6098
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$delegate:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->answerRequest(Ljava/lang/Object;Z)V
    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/GiftHook;->access$answerRequest(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V

    .line 6099
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u0432\u0435\u0442\u0438\u0442\u044c \u043d\u0430 \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    # invokes: Lcom/chimeranft/core/GiftHook;->showPurchaseMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/chimeranft/core/GiftHook;->access$showPurchaseMessage(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;)V

    return-void

    :catchall_21
    move-exception v1

    goto :goto_4e

    .line 6102
    :cond_23
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$delegate:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->answerRequest(Ljava/lang/Object;Z)V
    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/GiftHook;->access$answerRequest(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V

    .line 6106
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->reveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getReveal$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 6107
    iget v3, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$msgId:I

    iget-boolean v5, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$decline:Z

    xor-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/chimeranft/core/GiftReveal;->markOfferAnswered(IZ)V

    .line 6112
    :cond_3a
    iget-boolean v2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$decline:Z

    if-nez v2, :cond_4d

    .line 6113
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$offerId:Ljava/lang/String;

    # invokes: Lcom/chimeranft/core/GiftHook;->settleAcceptedOffer(Lorg/json/JSONObject;Ljava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/chimeranft/core/GiftHook;->access$settleAcceptedOffer(Lcom/chimeranft/core/GiftHook;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 6114
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$s:Lcom/chimeranft/core/SyncClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/SyncClient;->wakeTransfers()V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_21

    :cond_4d
    return-void

    .line 6118
    :goto_4e
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveOffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 6119
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleResolveOffer$1;->$delegate:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->answerRequest(Ljava/lang/Object;Z)V
    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/GiftHook;->access$answerRequest(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V

    return-void
.end method
