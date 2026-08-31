.class public final Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/GiftReveal$GiftReady;


# instance fields
.field final synthetic $b64:Ljava/lang/String;

.field final synthetic $peerId:J

.field final synthetic $priceNanoTon:J

.field final synthetic $priceStars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;JJJLjava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->$peerId:J

    iput-wide p4, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->$priceStars:J

    iput-wide p6, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->$priceNanoTon:J

    iput-object p8, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->$b64:Ljava/lang/String;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 15

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->$peerId:J

    iget-wide v4, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->$priceStars:J

    .line 668
    iget-wide v6, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->$priceNanoTon:J

    const-string v11, ""

    iget-object v12, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->$b64:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p1

    .line 667
    # invokes: Lcom/chimeranft/core/GiftReveal;->buildPreparedOfferMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;JJJIZZLjava/lang/String;Ljava/lang/String;)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    invoke-static/range {v0 .. v12}, Lcom/chimeranft/core/GiftReveal;->access$buildPreparedOfferMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftFastLane$Prepared;JJJIZZLjava/lang/String;Ljava/lang/String;)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    move-result-object p1

    if-nez p1, :cond_17

    return-void

    .line 670
    :cond_17
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1;

    invoke-direct {v1, v0, p1}, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1;-><init>(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V

    # invokes: Lcom/chimeranft/core/GiftReveal;->runUi(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftReveal;->access$runUi(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Runnable;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    move-object p1, v0

    .line 689
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerNoEXC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
