.class public final Lcom/chimeranft/core/IosSelection$assemble$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 281
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 282
    # getter for: Lcom/chimeranft/core/IosSelection;->ownedContent:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/chimeranft/core/IosSelection;->access$getOwnedContent$p()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_e

    return-void

    .line 283
    :cond_e
    sget-object p1, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    # invokes: Lcom/chimeranft/core/IosSelection;->restoreOriginalCell()V
    invoke-static {p1}, Lcom/chimeranft/core/IosSelection;->access$restoreOriginalCell(Lcom/chimeranft/core/IosSelection;)V

    .line 284
    # invokes: Lcom/chimeranft/core/IosSelection;->unblur()V
    invoke-static {p1}, Lcom/chimeranft/core/IosSelection;->access$unblur(Lcom/chimeranft/core/IosSelection;)V

    .line 285
    # invokes: Lcom/chimeranft/core/IosSelection;->release()V
    invoke-static {p1}, Lcom/chimeranft/core/IosSelection;->access$release(Lcom/chimeranft/core/IosSelection;)V

    return-void
.end method
