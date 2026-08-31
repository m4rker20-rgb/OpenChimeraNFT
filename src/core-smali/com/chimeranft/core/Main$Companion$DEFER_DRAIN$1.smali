.class public final Lcom/chimeranft/core/Main$Companion$DEFER_DRAIN$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 4983
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isUiScrollingNow()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isTransitionNow()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isTypingNow()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # getter for: Lcom/chimeranft/core/Main;->deferArmedAtMs:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferArmedAtMs$cp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    # getter for: Lcom/chimeranft/core/Main;->TYPING_MAX_HOLD_MS:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getTYPING_MAX_HOLD_MS$cp()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_26

    goto :goto_3f

    .line 4990
    :cond_26
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    .line 4991
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V

    .line 4998
    :cond_30
    :goto_30
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->pollDeferredRepaint()Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/chimeranft/core/Main$Companion;->access$pollDeferredRepaint(Lcom/chimeranft/core/Main$Companion;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_39

    return-void

    .line 5001
    :cond_39
    :try_start_39
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_30

    :catchall_3d
    nop

    goto :goto_30

    .line 4985
    :cond_3f
    :goto_3f
    # getter for: Lcom/chimeranft/core/Main;->DEFER_DRAIN:Ljava/lang/Runnable;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDEFER_DRAIN$cp()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x82

    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method
