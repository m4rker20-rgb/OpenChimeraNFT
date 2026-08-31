.class public final Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/GiftReveal$GiftReady;


# instance fields
.field final synthetic $accepted:Z

.field final synthetic $msgId:I

.field final synthetic $pending:Lcom/chimeranft/core/GiftReveal$PendingOffer;

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PendingOffer;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->$pending:Lcom/chimeranft/core/GiftReveal$PendingOffer;

    iput p3, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->$msgId:I

    iput-boolean p4, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->$accepted:Z

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 6

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->$pending:Lcom/chimeranft/core/GiftReveal$PendingOffer;

    iget v2, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->$msgId:I

    iget-boolean v3, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->$accepted:Z

    # invokes: Lcom/chimeranft/core/GiftReveal;->buildAnsweredOfferMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;Lcom/chimeranft/core/GiftReveal$PendingOffer;IZ)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    invoke-static {v0, p1, v1, v2, v3}, Lcom/chimeranft/core/GiftReveal;->access$buildAnsweredOfferMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftFastLane$Prepared;Lcom/chimeranft/core/GiftReveal$PendingOffer;IZ)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    .line 795
    :cond_f
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;

    invoke-direct {v1, v0, p1}, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;-><init>(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V

    # invokes: Lcom/chimeranft/core/GiftReveal;->runUi(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftReveal;->access$runUi(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception p1

    .line 813
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerDonePrepEXC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
