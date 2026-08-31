.class public final Lcom/chimeranft/core/Main$endFlingPass$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$endFlingPass$1;->this$0:Lcom/chimeranft/core/Main;

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1576
    iget-object v0, p0, Lcom/chimeranft/core/Main$endFlingPass$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->flingPassActive:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getFlingPassActive$p(Lcom/chimeranft/core/Main;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/chimeranft/core/Main$endFlingPass$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->flingPassHasChat:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getFlingPassHasChat$p(Lcom/chimeranft/core/Main;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 1577
    :cond_11
    iget-object v0, p0, Lcom/chimeranft/core/Main$endFlingPass$1;->this$0:Lcom/chimeranft/core/Main;

    const/4 v1, 0x0

    # invokes: Lcom/chimeranft/core/Main;->armEmojiFreezeSlot(Z)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$armEmojiFreezeSlot(Lcom/chimeranft/core/Main;Z)V

    return-void
.end method
