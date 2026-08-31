.class public final Lcom/chimeranft/core/GiftReveal$prepareGift$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/GiftFastLane$Callback;


# instance fields
.field final synthetic $label:Ljava/lang/String;

.field final synthetic $ready:Lcom/chimeranft/core/GiftReveal$GiftReady;

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1;->$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1;->$ready:Lcom/chimeranft/core/GiftReveal$GiftReady;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 6

    if-eqz p1, :cond_16

    .line 77
    iget-object v0, p1, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    if-nez v0, :cond_7

    goto :goto_16

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;

    iget-object v2, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1;->$ready:Lcom/chimeranft/core/GiftReveal$GiftReady;

    iget-object v3, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1;->$label:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;-><init>(Lcom/chimeranft/core/GiftReveal$GiftReady;Lcom/chimeranft/core/GiftFastLane$Prepared;Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;)V

    # invokes: Lcom/chimeranft/core/GiftReveal;->runUi(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftReveal;->access$runUi(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Runnable;)V

    return-void

    .line 79
    :cond_16
    :goto_16
    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1;->$label:Ljava/lang/String;

    sget-object v1, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " codec: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
