.class public final Lcom/chimeranft/core/Main$Companion$RESTAMP_DRAIN$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 5283
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5286
    :cond_7
    # getter for: Lcom/chimeranft/core/Main;->RESTAMP_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRESTAMP_LOCK$cp()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5287
    :try_start_c
    # getter for: Lcom/chimeranft/core/Main;->restampAll:Z
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRestampAll$cp()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    goto :goto_19

    :cond_15
    # getter for: Lcom/chimeranft/core/Main;->restampCount:I
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRestampCount$cp()I

    move-result v2

    :goto_19
    if-lez v2, :cond_29

    .line 5288
    # getter for: Lcom/chimeranft/core/Main;->restampUids:[J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRestampUids$cp()[J

    move-result-object v4

    # getter for: Lcom/chimeranft/core/Main;->RESTAMP_BATCH:[J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRESTAMP_BATCH$cp()[J

    move-result-object v5

    invoke-static {v4, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_3d

    .line 5289
    :cond_29
    :goto_29
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$setRestampCount$cp(I)V

    .line 5290
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$setRestampAll$cp(Z)V

    .line 5291
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$setRestampArmed$cp(Z)V

    .line 5292
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_27

    .line 5286
    monitor-exit v1

    .line 5293
    # getter for: Lcom/chimeranft/core/Main;->RESTAMP_BATCH:[J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRESTAMP_BATCH$cp()[J

    move-result-object v1

    # invokes: Lcom/chimeranft/core/Main;->restampVisibleChatCells([JI)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$restampVisibleChatCells(Lcom/chimeranft/core/Main;[JI)V

    return-void

    .line 5286
    :goto_3d
    monitor-exit v1

    throw v0
.end method
