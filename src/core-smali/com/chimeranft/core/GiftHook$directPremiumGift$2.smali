.class public final Lcom/chimeranft/core/GiftHook$directPremiumGift$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $months:I

.field final synthetic $price:J

.field final synthetic $recipient:J

.field final synthetic $recipientName:Ljava/lang/String;

.field final synthetic $senderName:Ljava/lang/String;

.field final synthetic $senderUsername:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(JLcom/chimeranft/core/GiftHook;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$price:J

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iput p4, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$months:I

    iput-wide p5, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$recipient:J

    iput-object p7, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$recipientName:Ljava/lang/String;

    iput-object p8, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$senderName:Ljava/lang/String;

    iput-object p9, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$senderUsername:Ljava/lang/String;

    .line 3842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 3844
    const-string v0, ":"

    .line 3846
    :try_start_2
    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$price:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_45

    .line 3848
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$price:J

    const-string v7, ""

    iget v1, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$months:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Premium "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u043c\u0435\u0441."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, ""

    iget-wide v12, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$recipient:J

    iget-object v14, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$recipientName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v14}, Lcom/chimeranft/core/Store;->spendVisualBalance(JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    .line 3849
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->notifyVisualBalanceChangedNow()V

    goto :goto_45

    :catchall_42
    move-exception v0

    goto/16 :goto_da

    .line 3851
    :cond_45
    :goto_45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3852
    const-string v2, "event_id"

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->myId:J
    invoke-static {v3}, Lcom/chimeranft/core/GiftHook;->access$getMyId$p(Lcom/chimeranft/core/GiftHook;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$recipient:J

    iget v7, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$months:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":premium:"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3853
    const-string v0, "sender_id"

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->myId:J
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getMyId$p(Lcom/chimeranft/core/GiftHook;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3854
    const-string v0, "receiver_id"

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$recipient:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3855
    const-string v0, "sender_name"

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$senderName:Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_2 .. :try_end_93} :catchall_42

    const-string v3, ""

    if-nez v2, :cond_98

    move-object v2, v3

    :cond_98
    :try_start_98
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3856
    const-string v0, "kind"

    const-string v2, "premium_gift"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3857
    const-string v0, "months"

    iget v2, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$months:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3858
    const-string v0, "price_stars"

    iget-wide v4, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$price:J

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3859
    const-string v0, "sender_username"

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$senderUsername:Ljava/lang/String;

    if-nez v2, :cond_b7

    goto :goto_b8

    :cond_b7
    move-object v3, v2

    :goto_b8
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3860
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3861
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getSync$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->$recipient:J

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/chimeranft/core/SyncClient;->pushTransfer(JLjava/lang/String;)Z
    :try_end_d9
    .catchall {:try_start_98 .. :try_end_d9} :catchall_42

    return-void

    .line 3864
    :goto_da
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$2;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "premiumSend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
