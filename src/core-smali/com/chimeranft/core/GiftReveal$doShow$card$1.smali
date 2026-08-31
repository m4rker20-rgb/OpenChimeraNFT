.class public final Lcom/chimeranft/core/GiftReveal$doShow$card$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $acc:I

.field final synthetic $fNav:Z

.field final synthetic $fPeer:J

.field final synthetic $gift:Ljava/lang/Object;

.field final synthetic $outgoing:Z

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJZZ)V
    .registers 8

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$gift:Ljava/lang/Object;

    iput p3, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$acc:I

    iput-wide p4, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$fPeer:J

    iput-boolean p6, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$outgoing:Z

    iput-boolean p7, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$fNav:Z

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1241
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$gift:Ljava/lang/Object;

    iget v2, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$acc:I

    iget-wide v3, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$fPeer:J

    iget-boolean v5, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$outgoing:Z

    iget-boolean v6, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->$fNav:Z

    # invokes: Lcom/chimeranft/core/GiftReveal;->postReveal(Ljava/lang/Object;IJZZ)Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/chimeranft/core/GiftReveal;->access$postReveal(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    .line 1244
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
