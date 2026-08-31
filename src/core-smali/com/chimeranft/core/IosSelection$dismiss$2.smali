.class public final Lcom/chimeranft/core/IosSelection$dismiss$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic $popup:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/IosSelection$dismiss$2;->$popup:Ljava/lang/Object;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    .line 96
    sget-object p1, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    # invokes: Lcom/chimeranft/core/IosSelection;->restoreOriginalCell()V
    invoke-static {p1}, Lcom/chimeranft/core/IosSelection;->access$restoreOriginalCell(Lcom/chimeranft/core/IosSelection;)V

    .line 97
    # invokes: Lcom/chimeranft/core/IosSelection;->unblur()V
    invoke-static {p1}, Lcom/chimeranft/core/IosSelection;->access$unblur(Lcom/chimeranft/core/IosSelection;)V

    .line 99
    :try_start_8
    iget-object p1, p0, Lcom/chimeranft/core/IosSelection$dismiss$2;->$popup:Ljava/lang/Object;

    const-string v0, "dismiss"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v4

    .line 99
    invoke-static {p1, v0, v2, v1}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1d

    .line 102
    :catchall_1d
    sget-object p1, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    # invokes: Lcom/chimeranft/core/IosSelection;->release()V
    invoke-static {p1}, Lcom/chimeranft/core/IosSelection;->access$release(Lcom/chimeranft/core/IosSelection;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
