.class public final Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/GiftReveal$GiftReady;


# instance fields
.field final synthetic $navigate:Z

.field final synthetic $peerId:J

.field final synthetic $priceNanoTon:J

.field final synthetic $priceStars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(ZLcom/chimeranft/core/GiftReveal;JJJ)V
    .registers 9

    iput-boolean p1, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$navigate:Z

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-wide p3, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$peerId:J

    iput-wide p5, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$priceStars:J

    iput-wide p7, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$priceNanoTon:J

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 12

    if-eqz p1, :cond_63

    .line 270
    iget-object v2, p1, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    if-nez v2, :cond_7

    goto :goto_63

    .line 271
    :cond_7
    # getter for: Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getUC$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "selectedAccount"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 272
    new-instance v0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v4, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$peerId:J

    iget-wide v6, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$priceStars:J

    iget-wide v8, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$priceNanoTon:J

    invoke-direct/range {v0 .. v9}, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJJJ)V

    .line 287
    :try_start_1f
    iget-boolean p1, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$navigate:Z

    if-eqz p1, :cond_43

    .line 288
    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->$peerId:J

    # invokes: Lcom/chimeranft/core/GiftReveal;->navigateAndThen(JLjava/lang/Runnable;)Ljava/lang/String;
    invoke-static {p1, v1, v2, v0}, Lcom/chimeranft/core/GiftReveal;->access$navigateAndThen(Lcom/chimeranft/core/GiftReveal;JLjava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void

    :catchall_40
    move-exception v0

    move-object p1, v0

    goto :goto_47

    .line 290
    :cond_43
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1$run$card$1;->run()V
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_40

    return-void

    .line 293
    :goto_47
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buyForNav EXC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    :cond_63
    :goto_63
    return-void
.end method
