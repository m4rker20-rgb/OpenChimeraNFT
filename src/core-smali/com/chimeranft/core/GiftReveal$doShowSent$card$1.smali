.class public final Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $acc:I

.field final synthetic $fComment:Ljava/lang/String;

.field final synthetic $fNav:Z

.field final synthetic $fPeer:J

.field final synthetic $gift:Ljava/lang/Object;

.field final synthetic $outgoing:Z

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;Ljava/lang/String;IJZZ)V
    .registers 9

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$gift:Ljava/lang/Object;

    iput-object p3, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$fComment:Ljava/lang/String;

    iput p4, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$acc:I

    iput-wide p5, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$fPeer:J

    iput-boolean p7, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$outgoing:Z

    iput-boolean p8, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$fNav:Z

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$gift:Ljava/lang/Object;

    iget-object v2, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$fComment:Ljava/lang/String;

    iget v3, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$acc:I

    iget-wide v4, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$fPeer:J

    iget-boolean v6, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$outgoing:Z

    iget-boolean v7, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->$fNav:Z

    # invokes: Lcom/chimeranft/core/GiftReveal;->postSentReveal(Ljava/lang/Object;Ljava/lang/String;IJZZ)Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/GiftReveal;->access$postSentReveal(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;Ljava/lang/String;IJZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    .line 1119
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sentPost EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
