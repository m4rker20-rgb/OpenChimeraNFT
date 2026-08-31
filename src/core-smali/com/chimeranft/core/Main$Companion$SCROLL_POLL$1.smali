.class public final Lcom/chimeranft/core/Main$Companion$SCROLL_POLL$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 4726
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_22

    :cond_7
    const/4 v1, 0x0

    .line 4728
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setScrollPollScheduled$p(Lcom/chimeranft/core/Main;Z)V

    .line 4729
    # getter for: Lcom/chimeranft/core/Main;->scrollingList:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getScrollingList$p(Lcom/chimeranft/core/Main;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_17

    .line 4730
    :cond_13
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_17
    if-nez v1, :cond_23

    .line 4733
    # getter for: Lcom/chimeranft/core/Main;->uiScrolling:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiScrolling$p(Lcom/chimeranft/core/Main;)Z

    move-result v1

    if-eqz v1, :cond_22

    # invokes: Lcom/chimeranft/core/Main;->closeScrollWindows()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$closeScrollWindows(Lcom/chimeranft/core/Main;)V

    :cond_22
    :goto_22
    return-void

    .line 4736
    :cond_23
    sget-object v2, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    const-string v4, "getScrollState"

    invoke-static {v1, v4, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4737
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_49

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_49

    .line 4742
    :cond_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # getter for: Lcom/chimeranft/core/Main;->scrollingListIsChat:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getScrollingListIsChat$p(Lcom/chimeranft/core/Main;)Z

    move-result v3

    # invokes: Lcom/chimeranft/core/Main;->openScrollWindow(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Main;->access$openScrollWindow(Lcom/chimeranft/core/Main;JZ)V

    .line 4743
    # invokes: Lcom/chimeranft/core/Main;->startScrollPoll()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$startScrollPoll(Lcom/chimeranft/core/Main;)V

    return-void

    .line 4739
    :cond_49
    :goto_49
    # invokes: Lcom/chimeranft/core/Main;->closeScrollWindows()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$closeScrollWindows(Lcom/chimeranft/core/Main;)V

    return-void
.end method
