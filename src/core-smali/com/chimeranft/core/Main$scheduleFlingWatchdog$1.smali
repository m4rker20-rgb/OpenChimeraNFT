.class public final Lcom/chimeranft/core/Main$scheduleFlingWatchdog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$scheduleFlingWatchdog$1;->this$0:Lcom/chimeranft/core/Main;

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1554
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleFlingWatchdog$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->flingPassActive:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getFlingPassActive$p(Lcom/chimeranft/core/Main;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1555
    :cond_9
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isChatScrollingNow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1556
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleFlingWatchdog$1;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->scheduleFlingWatchdog()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$scheduleFlingWatchdog(Lcom/chimeranft/core/Main;)V

    return-void

    .line 1559
    :cond_17
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleFlingWatchdog$1;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->endFlingPass()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$endFlingPass(Lcom/chimeranft/core/Main;)V

    return-void
.end method
