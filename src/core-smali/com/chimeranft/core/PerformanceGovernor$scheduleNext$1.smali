.class public final Lcom/chimeranft/core/PerformanceGovernor$scheduleNext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/PerformanceGovernor;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/PerformanceGovernor;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/PerformanceGovernor$scheduleNext$1;->this$0:Lcom/chimeranft/core/PerformanceGovernor;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/chimeranft/core/PerformanceGovernor$scheduleNext$1;->this$0:Lcom/chimeranft/core/PerformanceGovernor;

    # invokes: Lcom/chimeranft/core/PerformanceGovernor;->beginWindow()V
    invoke-static {v0}, Lcom/chimeranft/core/PerformanceGovernor;->access$beginWindow(Lcom/chimeranft/core/PerformanceGovernor;)V

    return-void
.end method
