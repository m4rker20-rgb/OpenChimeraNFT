.class public final Lcom/chimeranft/core/GiftReveal$showPurchase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/GiftReveal$GiftReady;


# instance fields
.field final synthetic $priceNanoTon:J

.field final synthetic $priceStars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->$priceStars:J

    iput-wide p4, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->$priceNanoTon:J

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 8

    if-eqz p1, :cond_41

    .line 190
    :try_start_2
    iget-object v1, p1, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    if-nez v1, :cond_7

    goto :goto_41

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->$priceStars:J

    iget-wide v4, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->$priceNanoTon:J

    # invokes: Lcom/chimeranft/core/GiftReveal;->doShowPurchase(Ljava/lang/Object;JJ)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/chimeranft/core/GiftReveal;->access$doShowPurchase(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal;->getShown()J

    move-result-wide v0

    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/GiftReveal;->setShown(J)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    move-object p1, v0

    .line 195
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showPurchase$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buyEXC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method
