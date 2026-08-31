.class public final Lcom/chimeranft/core/GiftHook$interceptSendGift$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $fargs:[Ljava/lang/Object;

.field final synthetic $fgift:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->$fargs:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->$fgift:Ljava/lang/Object;

    .line 4025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 4027
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->$fargs:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    .line 4029
    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->isCallback2(Ljava/lang/Object;)Z
    invoke-static {v4, v3}, Lcom/chimeranft/core/GiftHook;->access$isCallback2(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4030
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    # invokes: Lcom/chimeranft/core/GiftHook;->runCallback2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0, v3, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$runCallback2(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1c
    if-eqz v3, :cond_30

    .line 4033
    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->$fgift:Ljava/lang/Object;

    if-eq v3, v4, :cond_30

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->isCallback1(Ljava/lang/Object;)Z
    invoke-static {v4, v3}, Lcom/chimeranft/core/GiftHook;->access$isCallback1(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 4034
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$interceptSendGift$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeCallbackSuccess(Ljava/lang/Object;)V
    invoke-static {v0, v3}, Lcom/chimeranft/core/GiftHook;->access$invokeCallbackSuccess(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_33
    return-void
.end method
