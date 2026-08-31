.class public final Lcom/chimeranft/core/GiftHook$interceptSendGift$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $anon:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $chan:Z

.field final synthetic $fUnique:Z

.field final synthetic $fgift:Ljava/lang/Object;

.field final synthetic $giftB64:Ljava/lang/String;

.field final synthetic $giftComment:Ljava/lang/String;

.field final synthetic $giftStars:J

.field final synthetic $giftTitle:Ljava/lang/String;

.field final synthetic $prepared:Lcom/chimeranft/core/GiftHook$PreparedSend;

.field final synthetic $recipient:J

.field final synthetic $senderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/chimeranft/core/GiftHook$PreparedSend;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 15

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftB64:Ljava/lang/String;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$fgift:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$recipient:J

    iput-boolean p6, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$chan:Z

    iput-object p7, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftTitle:Ljava/lang/String;

    iput-object p8, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$senderName:Ljava/lang/String;

    iput-object p9, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftComment:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$fUnique:Z

    iput-wide p11, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftStars:J

    iput-object p13, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$prepared:Lcom/chimeranft/core/GiftHook$PreparedSend;

    iput-object p14, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$anon:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 4061
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftB64:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 4062
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_10

    :cond_b
    move-object v3, v0

    goto :goto_2d

    :catchall_d
    move-exception v0

    goto/16 :goto_9b

    .line 4064
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->getSendAsyncSerializes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chimeranft/core/GiftHook;->setSendAsyncSerializes(J)V

    .line 4065
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$fgift:Ljava/lang/Object;

    invoke-static {v0}, Lcom/chimeranft/core/GiftCodec;->serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 4066
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_73

    .line 4072
    :goto_2d
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->reveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getReveal$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$chan:Z

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftB64:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5b

    .line 4078
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->reveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getReveal$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v0

    .line 4079
    iget-object v8, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    new-instance v2, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;

    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$recipient:J

    iget-object v7, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftComment:Ljava/lang/String;

    move-object v4, v3

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lcom/chimeranft/core/GiftHook$interceptSendGift$3$run$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;JLjava/lang/String;Lcom/chimeranft/core/GiftHook;)V

    move-object v3, v4

    # invokes: Lcom/chimeranft/core/GiftHook;->revealAfterSheetSettles(Ljava/lang/Runnable;)V
    invoke-static {v8, v2}, Lcom/chimeranft/core/GiftHook;->access$revealAfterSheetSettles(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;)V

    .line 4092
    :cond_5b
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$senderName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$recipient:J

    iget-object v8, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftComment:Ljava/lang/String;

    .line 4093
    iget-boolean v9, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$fUnique:Z

    iget-wide v10, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$giftStars:J

    iget-object v12, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$prepared:Lcom/chimeranft/core/GiftHook$PreparedSend;

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$anon:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v13, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 4092
    # invokes: Lcom/chimeranft/core/GiftHook;->queueSendOutbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLcom/chimeranft/core/GiftHook$PreparedSend;Z)V
    invoke-static/range {v2 .. v13}, Lcom/chimeranft/core/GiftHook;->access$queueSendOutbox(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLcom/chimeranft/core/GiftHook$PreparedSend;Z)V

    return-void

    .line 4068
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->$recipient:J

    sget-object v3, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send async SER-FAIL to="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftHook;->setLastSendDiag(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_0 .. :try_end_9a} :catchall_d

    return-void

    .line 4096
    :goto_9b
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$3;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDeliverBg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
