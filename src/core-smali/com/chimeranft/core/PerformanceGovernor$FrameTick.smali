.class final Lcom/chimeranft/core/PerformanceGovernor$FrameTick;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/PerformanceGovernor;


# direct methods
.method public constructor <init>(Lcom/chimeranft/core/PerformanceGovernor;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/chimeranft/core/PerformanceGovernor$FrameTick;->this$0:Lcom/chimeranft/core/PerformanceGovernor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 4

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/PerformanceGovernor$FrameTick;->this$0:Lcom/chimeranft/core/PerformanceGovernor;

    # invokes: Lcom/chimeranft/core/PerformanceGovernor;->onFrame(J)V
    invoke-static {v0, p1, p2}, Lcom/chimeranft/core/PerformanceGovernor;->access$onFrame(Lcom/chimeranft/core/PerformanceGovernor;J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    .line 48
    const-string p2, "perfGovernor.doFrame"

    invoke-static {p2, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
