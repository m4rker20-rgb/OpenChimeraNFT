.class public final Lcom/chimeranft/core/GiftReveal$show$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/GiftReveal$GiftReady;


# instance fields
.field final synthetic $navigate:Z

.field final synthetic $outgoing:Z

.field final synthetic $peerId:J

.field final synthetic $peerName:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;JLjava/lang/String;ZZ)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$show$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftReveal$show$1;->$peerId:J

    iput-object p4, p0, Lcom/chimeranft/core/GiftReveal$show$1;->$peerName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/chimeranft/core/GiftReveal$show$1;->$outgoing:Z

    iput-boolean p6, p0, Lcom/chimeranft/core/GiftReveal$show$1;->$navigate:Z

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 9

    if-eqz p1, :cond_45

    .line 142
    :try_start_2
    iget-object v1, p1, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    if-nez v1, :cond_7

    goto :goto_45

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$show$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal$show$1;->$peerId:J

    iget-object v4, p0, Lcom/chimeranft/core/GiftReveal$show$1;->$peerName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/chimeranft/core/GiftReveal$show$1;->$outgoing:Z

    iget-boolean v6, p0, Lcom/chimeranft/core/GiftReveal$show$1;->$navigate:Z

    # invokes: Lcom/chimeranft/core/GiftReveal;->doShow(Ljava/lang/Object;JLjava/lang/String;ZZ)Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/chimeranft/core/GiftReveal;->access$doShow(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;JLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$show$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal;->getShown()J

    move-result-wide v0

    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$show$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/GiftReveal;->setShown(J)V
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    move-object p1, v0

    .line 147
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$show$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method
