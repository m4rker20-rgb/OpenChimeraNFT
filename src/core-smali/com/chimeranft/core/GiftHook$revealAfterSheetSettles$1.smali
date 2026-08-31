.class public final Lcom/chimeranft/core/GiftHook$revealAfterSheetSettles$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $revealAction:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$revealAfterSheetSettles$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$revealAfterSheetSettles$1;->$revealAction:Ljava/lang/Runnable;

    .line 4138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 4140
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$revealAfterSheetSettles$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$revealAfterSheetSettles$1;->$revealAction:Ljava/lang/Runnable;

    .line 4141
    sget-object v2, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    const-wide/16 v2, 0x96

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x5c

    .line 4140
    :goto_12
    # invokes: Lcom/chimeranft/core/GiftHook;->postUi(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$postUi(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;J)V

    return-void
.end method
