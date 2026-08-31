.class public final Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $anon:Z

.field final synthetic $chan:Z

.field final synthetic $fUnique:Z

.field final synthetic $giftB64:Ljava/lang/String;

.field final synthetic $giftComment:Ljava/lang/String;

.field final synthetic $giftForSend:Ljava/lang/Object;

.field final synthetic $giftStars:J

.field final synthetic $giftTitle:Ljava/lang/String;

.field final synthetic $prepared:Lcom/chimeranft/core/GiftHook$PreparedSend;

.field final synthetic $recipient:J

.field final synthetic $senderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/chimeranft/core/GiftHook$PreparedSend;Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJZ)V
    .registers 15

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftB64:Ljava/lang/String;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$prepared:Lcom/chimeranft/core/GiftHook$PreparedSend;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftForSend:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$chan:Z

    iput-object p6, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$senderName:Ljava/lang/String;

    iput-wide p8, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$recipient:J

    iput-object p10, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftComment:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$fUnique:Z

    iput-wide p12, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftStars:J

    iput-boolean p14, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$anon:Z

    .line 3525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 3529
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftB64:Ljava/lang/String;

    .line 3530
    iget-object v11, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$prepared:Lcom/chimeranft/core/GiftHook$PreparedSend;

    if-eqz v0, :cond_12

    .line 3531
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_12

    :cond_d
    move-object v2, v0

    goto :goto_2f

    :catchall_f
    move-exception v0

    goto/16 :goto_90

    .line 3533
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->getSendAsyncSerializes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chimeranft/core/GiftHook;->setSendAsyncSerializes(J)V

    .line 3534
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftForSend:Ljava/lang/Object;

    invoke-static {v0}, Lcom/chimeranft/core/GiftCodec;->serializeUniqueGift(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 3535
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_72

    .line 3541
    :goto_2f
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->reveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getReveal$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$chan:Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftB64:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5c

    .line 3544
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->reveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getReveal$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v3

    .line 3545
    iget-object v8, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    move-object v4, v2

    new-instance v2, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2$run$1;

    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$recipient:J

    iget-object v7, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftComment:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2$run$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;JLjava/lang/String;Lcom/chimeranft/core/GiftHook;)V

    # invokes: Lcom/chimeranft/core/GiftHook;->revealAfterSheetSettles(Ljava/lang/Runnable;)V
    invoke-static {v8, v2}, Lcom/chimeranft/core/GiftHook;->access$revealAfterSheetSettles(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;)V

    goto :goto_5d

    :cond_5c
    move-object v4, v2

    .line 3558
    :goto_5d
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftTitle:Ljava/lang/String;

    move-object v2, v4

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$senderName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$recipient:J

    iget-object v7, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftComment:Ljava/lang/String;

    .line 3559
    iget-boolean v8, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$fUnique:Z

    iget-wide v9, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$giftStars:J

    iget-boolean v12, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->$anon:Z

    .line 3558
    # invokes: Lcom/chimeranft/core/GiftHook;->queueSendOutbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLcom/chimeranft/core/GiftHook$PreparedSend;Z)V
    invoke-static/range {v1 .. v12}, Lcom/chimeranft/core/GiftHook;->access$queueSendOutbox(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLcom/chimeranft/core/GiftHook$PreparedSend;Z)V

    return-void

    .line 3537
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/GiftCodec;->lastError:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sheet async SER-FAIL ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftHook;->setLastSendDiag(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_0 .. :try_end_8f} :catchall_f

    return-void

    .line 3562
    :goto_90
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$directSendSheetBuy$2;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sheetDeliverBg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
