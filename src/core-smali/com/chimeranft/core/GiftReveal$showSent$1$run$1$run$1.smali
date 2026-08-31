.class public final Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $navigate:Z

.field final synthetic $peerId:J

.field final synthetic $prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(ZLcom/chimeranft/core/GiftReveal;JLcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V
    .registers 6

    iput-boolean p1, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->$navigate:Z

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p3, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->$peerId:J

    iput-object p5, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->$prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 580
    new-instance v0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1$run$publish$1;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v2, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->$prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    invoke-direct {v0, v1, v2}, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1$run$publish$1;-><init>(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V

    .line 593
    iget-boolean v1, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->$navigate:Z

    if-eqz v1, :cond_2a

    .line 594
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1;->$peerId:J

    # invokes: Lcom/chimeranft/core/GiftReveal;->navigateAndThen(JLjava/lang/Runnable;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v0}, Lcom/chimeranft/core/GiftReveal;->access$navigateAndThen(Lcom/chimeranft/core/GiftReveal;JLjava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nav="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void

    .line 596
    :cond_2a
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1$run$1$run$publish$1;->run()V

    return-void
.end method
