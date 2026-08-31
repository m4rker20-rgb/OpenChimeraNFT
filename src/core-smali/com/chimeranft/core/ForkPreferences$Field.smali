.class public final Lcom/chimeranft/core/ForkPreferences$Field;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final view:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .registers 2

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/ForkPreferences$Field;->view:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/chimeranft/core/ForkPreferences$Field;->view:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_1c

    const-string v0, ""

    :cond_1c
    return-object v0
.end method

.method public final int(I)I
    .registers 3

    .line 220
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_e
    return p1
.end method

.method public final view$main()Landroid/view/View;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/chimeranft/core/ForkPreferences$Field;->view:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method
