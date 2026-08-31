.class public final Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $months:I

.field final synthetic $priceStars:J

.field final synthetic $senderId:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;JIJ)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->$senderId:J

    iput p4, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->$months:I

    iput-wide p5, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->$priceStars:J

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 432
    :try_start_0
    # getter for: Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getUC$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedAccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 433
    iget-object v3, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v5, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->$senderId:J

    iget v7, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->$months:I

    iget-wide v8, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->$priceStars:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/chimeranft/core/GiftReveal;->postPremiumReveal(IJIJZZ)Ljava/lang/String;
    invoke-static/range {v3 .. v11}, Lcom/chimeranft/core/GiftReveal;->access$postPremiumReveal(Lcom/chimeranft/core/GiftReveal;IJIJZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal;->getShown()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chimeranft/core/GiftReveal;->setShown(J)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    .line 437
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "premIncoming EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
