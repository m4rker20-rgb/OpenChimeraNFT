.class public final Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;
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

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;->$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;->$ready:Lcom/chimeranft/core/GiftReveal$GiftReady;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    .registers 5

    if-eqz p1, :cond_30

    .line 57
    iget-object v0, p1, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    if-nez v0, :cond_7

    goto :goto_30

    .line 64
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;->$ready:Lcom/chimeranft/core/GiftReveal$GiftReady;

    invoke-interface {v0, p1}, Lcom/chimeranft/core/GiftReveal$GiftReady;->run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception p1

    .line 67
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;->$label:Ljava/lang/String;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prepare EXC "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;->$label:Ljava/lang/String;

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
