.class public final Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $giftComment:Ljava/lang/String;

.field final synthetic $lateSnapshot:Ljava/lang/String;

.field final synthetic $recipient:J

.field final synthetic $rv:Lcom/chimeranft/core/GiftReveal;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;JLjava/lang/String;Lcom/chimeranft/core/GiftHook;)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->$rv:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->$lateSnapshot:Ljava/lang/String;

    iput-wide p3, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->$recipient:J

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->$giftComment:Ljava/lang/String;

    iput-object p6, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 4079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 4083
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->$rv:Lcom/chimeranft/core/GiftReveal;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->$lateSnapshot:Ljava/lang/String;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->$recipient:J

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->$giftComment:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/chimeranft/core/GiftReveal;->showSent(Ljava/lang/String;JLjava/lang/String;ZZ)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    .line 4086
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRevealLate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
