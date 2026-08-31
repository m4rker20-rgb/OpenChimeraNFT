.class public final Lcom/chimeranft/core/GiftReveal$schedulePolishedFireworks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$schedulePolishedFireworks$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1449
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$schedulePolishedFireworks$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$schedulePolishedFireworks$1$run$1;

    invoke-direct {v1, v0}, Lcom/chimeranft/core/GiftReveal$schedulePolishedFireworks$1$run$1;-><init>(Lcom/chimeranft/core/GiftReveal;)V

    .line 1453
    sget-object v2, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    const-wide/16 v2, 0xdc

    goto :goto_15

    :cond_13
    const-wide/16 v2, 0x78

    .line 1449
    :goto_15
    # invokes: Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftReveal;->access$scheduleDelayed(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Runnable;J)V

    return-void
.end method
