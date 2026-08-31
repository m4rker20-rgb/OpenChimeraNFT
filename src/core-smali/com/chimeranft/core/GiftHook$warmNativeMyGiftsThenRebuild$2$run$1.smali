.class public final Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $sheet:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftHook;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;->$sheet:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 2902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2906
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;->$sheet:Ljava/lang/Object;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2907
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$warmNativeMyGiftsThenRebuild$2$run$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->rebuildPicker(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/chimeranft/core/GiftHook;->access$rebuildPicker(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_d

    :catchall_d
    return-void
.end method
