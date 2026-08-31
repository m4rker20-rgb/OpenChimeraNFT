.class public final Lcom/chimeranft/core/GiftToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftToolbar;


# direct methods
.method public static synthetic $r8$lambda$yC_tV9tEQX4S92FZ89-3vXni_EU(ILcom/chimeranft/core/GiftToolbar;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/GiftToolbar$1;->onTextChanged$lambda$0(ILcom/chimeranft/core/GiftToolbar;)V

    return-void
.end method

.method constructor <init>(Lcom/chimeranft/core/GiftToolbar;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftToolbar$1;->this$0:Lcom/chimeranft/core/GiftToolbar;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onTextChanged$lambda$0(ILcom/chimeranft/core/GiftToolbar;)V
    .registers 3

    .line 119
    # getter for: Lcom/chimeranft/core/GiftToolbar;->pending:I
    invoke-static {p1}, Lcom/chimeranft/core/GiftToolbar;->access$getPending$p(Lcom/chimeranft/core/GiftToolbar;)I

    move-result v0

    if-ne p0, v0, :cond_d

    # getter for: Lcom/chimeranft/core/GiftToolbar;->onChanged:Lkotlin/jvm/functions/Function0;
    invoke-static {p1}, Lcom/chimeranft/core/GiftToolbar;->access$getOnChanged$p(Lcom/chimeranft/core/GiftToolbar;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_d
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 117
    iget-object p2, p0, Lcom/chimeranft/core/GiftToolbar$1;->this$0:Lcom/chimeranft/core/GiftToolbar;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-nez p1, :cond_18

    const-string p1, ""

    :cond_18
    invoke-static {p2, p1}, Lcom/chimeranft/core/GiftToolbar;->access$setQuery$p(Lcom/chimeranft/core/GiftToolbar;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/chimeranft/core/GiftToolbar$1;->this$0:Lcom/chimeranft/core/GiftToolbar;

    # getter for: Lcom/chimeranft/core/GiftToolbar;->pending:I
    invoke-static {p1}, Lcom/chimeranft/core/GiftToolbar;->access$getPending$p(Lcom/chimeranft/core/GiftToolbar;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/chimeranft/core/GiftToolbar;->access$setPending$p(Lcom/chimeranft/core/GiftToolbar;I)V

    iget-object p1, p0, Lcom/chimeranft/core/GiftToolbar$1;->this$0:Lcom/chimeranft/core/GiftToolbar;

    # getter for: Lcom/chimeranft/core/GiftToolbar;->pending:I
    invoke-static {p1}, Lcom/chimeranft/core/GiftToolbar;->access$getPending$p(Lcom/chimeranft/core/GiftToolbar;)I

    move-result p1

    .line 119
    iget-object p2, p0, Lcom/chimeranft/core/GiftToolbar$1;->this$0:Lcom/chimeranft/core/GiftToolbar;

    new-instance p3, Lcom/chimeranft/core/GiftToolbar$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2}, Lcom/chimeranft/core/GiftToolbar$1$$ExternalSyntheticLambda0;-><init>(ILcom/chimeranft/core/GiftToolbar;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
