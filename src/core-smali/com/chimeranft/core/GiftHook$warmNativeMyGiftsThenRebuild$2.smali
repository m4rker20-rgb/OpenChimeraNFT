.class public final Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $sheet:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->$sheet:Ljava/lang/Object;

    .line 2890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2894
    :try_start_3
    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v3}, Lcom/chimeranft/core/GiftHook;->warmInjection()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 2901
    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-static {v3, v2}, Lcom/chimeranft/core/GiftHook;->access$setPickerMineWarmInFlight$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 2902
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    new-instance v3, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->$sheet:Ljava/lang/Object;

    invoke-direct {v3, v4, v2}, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;-><init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftHook;)V

    :goto_16
    # invokes: Lcom/chimeranft/core/GiftHook;->postUi(Ljava/lang/Runnable;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/chimeranft/core/GiftHook;->access$postUi(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;J)V

    return-void

    :catchall_1a
    move-exception v3

    .line 2897
    :try_start_1b
    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v5, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v5, v3}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickerWarm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_46

    .line 2901
    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-static {v3, v2}, Lcom/chimeranft/core/GiftHook;->access$setPickerMineWarmInFlight$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 2902
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    new-instance v3, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->$sheet:Ljava/lang/Object;

    invoke-direct {v3, v4, v2}, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;-><init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftHook;)V

    goto :goto_16

    :catchall_46
    move-exception v3

    .line 2901
    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-static {v4, v2}, Lcom/chimeranft/core/GiftHook;->access$setPickerMineWarmInFlight$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 2902
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->this$0:Lcom/chimeranft/core/GiftHook;

    new-instance v4, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;

    iget-object v5, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2;->$sheet:Ljava/lang/Object;

    invoke-direct {v4, v5, v2}, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;-><init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftHook;)V

    # invokes: Lcom/chimeranft/core/GiftHook;->postUi(Ljava/lang/Runnable;J)V
    invoke-static {v2, v4, v0, v1}, Lcom/chimeranft/core/GiftHook;->access$postUi(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;J)V

    throw v3
.end method
