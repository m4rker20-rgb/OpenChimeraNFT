.class public final Lcom/chimeranft/core/IosCustomization$blurChat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic $animator:Landroid/animation/ValueAnimator;

.field final synthetic $chat:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/IosCustomization$blurChat$2;->$animator:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/chimeranft/core/IosCustomization$blurChat$2;->$chat:Landroid/view/View;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 149
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 150
    iget-object p1, p0, Lcom/chimeranft/core/IosCustomization$blurChat$2;->$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 151
    sget-object p1, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$blurChat$2;->$chat:Landroid/view/View;

    const/4 v1, 0x0

    # invokes: Lcom/chimeranft/core/IosCustomization;->applyBlur(Landroid/view/View;F)V
    invoke-static {p1, v0, v1}, Lcom/chimeranft/core/IosCustomization;->access$applyBlur(Lcom/chimeranft/core/IosCustomization;Landroid/view/View;F)V

    return-void
.end method
