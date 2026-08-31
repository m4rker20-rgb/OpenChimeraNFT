.class public final Lcom/chimeranft/core/GiftHook$handleSendOffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $b64:Ljava/lang/String;

.field final synthetic $delegate:Ljava/lang/Object;

.field final synthetic $expiresAt:J

.field final synthetic $gift:Lorg/json/JSONObject;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $nanoton:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $s:Lcom/chimeranft/core/SyncClient;

.field final synthetic $sellerId:J

.field final synthetic $stars:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;JLjava/lang/String;Lcom/chimeranft/core/GiftHook;Lorg/json/JSONObject;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;JLjava/lang/Object;Ljava/lang/String;)V
    .registers 13

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$s:Lcom/chimeranft/core/SyncClient;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$sellerId:J

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p6, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$gift:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$stars:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p8, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$nanoton:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p9, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$expiresAt:J

    iput-object p11, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$delegate:Ljava/lang/Object;

    iput-object p12, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$b64:Ljava/lang/String;

    .line 6034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const/4 v1, 0x0

    .line 6038
    :try_start_1
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$s:Lcom/chimeranft/core/SyncClient;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$sellerId:J

    iget-object v5, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$name:Ljava/lang/String;

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->myDisplayName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$gift:Lorg/json/JSONObject;

    .line 6039
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$stars:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v8, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$nanoton:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v10, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-string v12, ""

    iget-wide v13, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$expiresAt:J

    .line 6038
    invoke-virtual/range {v2 .. v14}, Lcom/chimeranft/core/SyncClient;->sendOffer(JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JJLjava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_35

    .line 6041
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$delegate:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->answerRequest(Ljava/lang/Object;Z)V
    invoke-static {v0, v2, v1}, Lcom/chimeranft/core/GiftHook;->access$answerRequest(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V

    .line 6042
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-string v2, "\u041f\u0440\u0435\u0434\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u043e \u2014 \u043d\u0435\u0442 \u0441\u0432\u044f\u0437\u0438 \u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c"

    # invokes: Lcom/chimeranft/core/GiftHook;->showPurchaseMessage(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/chimeranft/core/GiftHook;->access$showPurchaseMessage(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;)V

    return-void

    :catchall_33
    move-exception v0

    goto :goto_78

    .line 6045
    :cond_35
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftHook;->getOfferSent()J

    move-result-wide v2

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Lcom/chimeranft/core/GiftHook;->setOfferSent(J)V

    .line 6046
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$delegate:Ljava/lang/Object;

    const/4 v4, 0x1

    # invokes: Lcom/chimeranft/core/GiftHook;->answerRequest(Ljava/lang/Object;Z)V
    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/GiftHook;->access$answerRequest(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V

    .line 6047
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->reveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getReveal$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 6050
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$b64:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5c

    return-void

    .line 6051
    :cond_5c
    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$b64:Ljava/lang/String;

    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$sellerId:J

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$stars:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v7, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$nanoton:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v9, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v11, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$expiresAt:J

    long-to-int v11, v11

    .line 6052
    const-string v2, "offer_id"

    const-string v12, ""

    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x1

    .line 6051
    invoke-virtual/range {v3 .. v13}, Lcom/chimeranft/core/GiftReveal;->showOffer(Ljava/lang/String;JJJIZLjava/lang/String;)V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_33

    :cond_77
    return-void

    .line 6055
    :goto_78
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendOffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 6056
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$handleSendOffer$1;->$delegate:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->answerRequest(Ljava/lang/Object;Z)V
    invoke-static {v0, v2, v1}, Lcom/chimeranft/core/GiftHook;->access$answerRequest(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V

    return-void
.end method
