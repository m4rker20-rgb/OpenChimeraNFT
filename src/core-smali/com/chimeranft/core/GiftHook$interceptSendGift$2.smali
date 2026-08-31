.class public final Lcom/chimeranft/core/GiftHook$interceptSendGift$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $giftB64:Ljava/lang/String;

.field final synthetic $giftComment:Ljava/lang/String;

.field final synthetic $recipient:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->$giftB64:Ljava/lang/String;

    iput-wide p3, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->$recipient:J

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->$giftComment:Ljava/lang/String;

    .line 4044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 4048
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->reveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getReveal$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->$giftB64:Ljava/lang/String;

    iget-wide v3, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->$recipient:J

    iget-object v5, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->$giftComment:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/chimeranft/core/GiftReveal;->showSent(Ljava/lang/String;JLjava/lang/String;ZZ)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    .line 4051
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReveal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
