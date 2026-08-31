.class public final Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $acc:I

.field final synthetic $fPeer:J

.field final synthetic $months:I

.field final synthetic $priceStars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;IJIJ)V
    .registers 8

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput p2, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->$acc:I

    iput-wide p3, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->$fPeer:J

    iput p5, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->$months:I

    iput-wide p6, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->$priceStars:J

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget v1, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->$acc:I

    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->$fPeer:J

    iget v4, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->$months:I

    iget-wide v5, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->$priceStars:J

    const/4 v7, 0x1

    const/4 v8, 0x1

    # invokes: Lcom/chimeranft/core/GiftReveal;->postPremiumReveal(IJIJZZ)Ljava/lang/String;
    invoke-static/range {v0 .. v8}, Lcom/chimeranft/core/GiftReveal;->access$postPremiumReveal(Lcom/chimeranft/core/GiftReveal;IJIJZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    .line 465
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "premPost EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
