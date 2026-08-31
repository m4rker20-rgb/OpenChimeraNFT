.class public final Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $acc:I

.field final synthetic $gift:Ljava/lang/Object;

.field final synthetic $peerId:J

.field final synthetic $priceNanoTon:J

.field final synthetic $priceStars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJJJ)V
    .registers 10

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$gift:Ljava/lang/Object;

    iput p3, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$acc:I

    iput-wide p4, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$peerId:J

    iput-wide p6, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$priceStars:J

    iput-wide p8, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$priceNanoTon:J

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$gift:Ljava/lang/Object;

    iget v2, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$acc:I

    iget-wide v3, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$peerId:J

    iget-wide v5, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$priceStars:J

    iget-wide v7, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->$priceNanoTon:J

    # invokes: Lcom/chimeranft/core/GiftReveal;->postPurchaseCard(Ljava/lang/Object;IJJJ)Ljava/lang/String;
    invoke-static/range {v0 .. v8}, Lcom/chimeranft/core/GiftReveal;->access$postPurchaseCard(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJJJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal;->getShown()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chimeranft/core/GiftReveal;->setShown(J)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    .line 280
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buyForPost EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
