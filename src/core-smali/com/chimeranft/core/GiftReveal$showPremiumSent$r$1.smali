.class public final Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $months:I

.field final synthetic $peerId:J

.field final synthetic $priceStars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;JIJ)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->$peerId:J

    iput p4, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->$months:I

    iput-wide p5, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->$priceStars:J

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->$peerId:J

    iget v3, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->$months:I

    iget-wide v4, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->$priceStars:J

    # invokes: Lcom/chimeranft/core/GiftReveal;->doShowPremiumSent(JIJ)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/chimeranft/core/GiftReveal;->access$doShowPremiumSent(Lcom/chimeranft/core/GiftReveal;JIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal;->getShown()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chimeranft/core/GiftReveal;->setShown(J)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    .line 406
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "premEXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
