.class public final Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $label:Ljava/lang/String;

.field final synthetic $prepared:Lcom/chimeranft/core/GiftFastLane$Prepared;

.field final synthetic $ready:Lcom/chimeranft/core/GiftReveal$GiftReady;

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal$GiftReady;Lcom/chimeranft/core/GiftFastLane$Prepared;Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;->$ready:Lcom/chimeranft/core/GiftReveal$GiftReady;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;->$prepared:Lcom/chimeranft/core/GiftFastLane$Prepared;

    iput-object p3, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p4, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;->$label:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;->$ready:Lcom/chimeranft/core/GiftReveal$GiftReady;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;->$prepared:Lcom/chimeranft/core/GiftFastLane$Prepared;

    invoke-interface {v0, v1}, Lcom/chimeranft/core/GiftReveal$GiftReady;->run(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v2, p0, Lcom/chimeranft/core/GiftReveal$prepareGift$1$onReady$1;->$label:Ljava/lang/String;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " publish EXC "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
