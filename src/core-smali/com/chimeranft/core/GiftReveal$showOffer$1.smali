.class public final Lcom/chimeranft/core/GiftReveal$showOffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/GiftReveal$GiftReady;


# instance fields
.field final synthetic $b64:Ljava/lang/String;

.field final synthetic $expiresAt:I

.field final synthetic $offerId:Ljava/lang/String;

.field final synthetic $outgoing:Z

.field final synthetic $peerId:J

.field final synthetic $priceNanoTon:J

.field final synthetic $priceStars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;JJJIZLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$peerId:J

    iput-wide p4, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$priceStars:J

    iput-wide p6, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$priceNanoTon:J

    iput p8, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$expiresAt:I

    iput-boolean p9, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$outgoing:Z

    iput-object p10, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$offerId:Ljava/lang/String;

    iput-object p11, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$b64:Ljava/lang/String;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 15

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$peerId:J

    iget-wide v4, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$priceStars:J

    .line 630
    iget-wide v6, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$priceNanoTon:J

    iget v8, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$expiresAt:I

    iget-boolean v9, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$outgoing:Z

    iget-object v11, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$offerId:Ljava/lang/String;

    iget-object v12, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->$b64:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, p1

    .line 629
    # invokes: Lcom/chimeranft/core/GiftReveal;->buildPreparedOfferMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;JJJIZZLjava/lang/String;Ljava/lang/String;)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    invoke-static/range {v0 .. v12}, Lcom/chimeranft/core/GiftReveal;->access$buildPreparedOfferMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftFastLane$Prepared;JJJIZZLjava/lang/String;Ljava/lang/String;)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    move-result-object p1

    if-nez p1, :cond_23

    .line 632
    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-string v0, "offer prepare failed"

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void

    :catchall_20
    move-exception v0

    move-object p1, v0

    goto :goto_2e

    .line 635
    :cond_23
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$showOffer$1$run$1;

    invoke-direct {v1, v0, p1}, Lcom/chimeranft/core/GiftReveal$showOffer$1$run$1;-><init>(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V

    # invokes: Lcom/chimeranft/core/GiftReveal;->runUi(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftReveal;->access$runUi(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_20

    return-void

    .line 654
    :goto_2e
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showOffer$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerEXC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
