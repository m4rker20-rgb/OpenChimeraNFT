.class public final Lcom/chimeranft/core/GiftReveal$showSent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/GiftReveal$GiftReady;


# instance fields
.field final synthetic $comment:Ljava/lang/String;

.field final synthetic $navigate:Z

.field final synthetic $outgoing:Z

.field final synthetic $peerId:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;JLjava/lang/String;ZZ)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$peerId:J

    iput-object p4, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$comment:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$outgoing:Z

    iput-boolean p6, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$navigate:Z

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 14

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$peerId:J

    iget-object v4, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$comment:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$outgoing:Z

    move-object v1, p1

    # invokes: Lcom/chimeranft/core/GiftReveal;->buildPreparedSentMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;JLjava/lang/String;Z)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    invoke-static/range {v0 .. v5}, Lcom/chimeranft/core/GiftReveal;->access$buildPreparedSentMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftFastLane$Prepared;JLjava/lang/String;Z)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    move-result-object v11

    if-nez v11, :cond_1a

    .line 569
    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-string v0, "sent prepare failed"

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void

    :catchall_17
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .line 572
    :cond_1a
    iget-object v8, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    new-instance v6, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1;

    iget-boolean v7, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$navigate:Z

    iget-wide v9, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->$peerId:J

    invoke-direct/range {v6 .. v11}, Lcom/chimeranft/core/GiftReveal$showSent$1$run$1;-><init>(ZLcom/chimeranft/core/GiftReveal;JLcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V

    # invokes: Lcom/chimeranft/core/GiftReveal;->runUi(Ljava/lang/Runnable;)V
    invoke-static {v8, v6}, Lcom/chimeranft/core/GiftReveal;->access$runUi(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_17

    return-void

    .line 603
    :goto_29
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showSent$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sentEXC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
