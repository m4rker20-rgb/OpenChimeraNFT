.class public final Lcom/chimeranft/core/Main$Companion$UI_SCROLL_SETTLE$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 4750
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1c

    .line 4752
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # getter for: Lcom/chimeranft/core/Main;->uiScrollUntilMs:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiScrollUntilMs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1c

    const/4 v1, 0x0

    .line 4754
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setUiScrolling$p(Lcom/chimeranft/core/Main;Z)V

    const-wide/16 v1, 0x0

    .line 4755
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setUiScrollUntilMs$p(Lcom/chimeranft/core/Main;J)V

    :cond_1c
    :goto_1c
    return-void
.end method
