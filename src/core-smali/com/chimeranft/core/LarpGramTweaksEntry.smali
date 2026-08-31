.class public final Lcom/chimeranft/core/LarpGramTweaksEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/LarpGramTweaksEntry;

.field private static final ROOT_ID:I = 0x4c4754


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/LarpGramTweaksEntry;

    invoke-direct {v0}, Lcom/chimeranft/core/LarpGramTweaksEntry;-><init>()V

    sput-object v0, Lcom/chimeranft/core/LarpGramTweaksEntry;->INSTANCE:Lcom/chimeranft/core/LarpGramTweaksEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addRoot(Ljava/util/ArrayList;)V
    .registers 6

    .line 470
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->appContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 471
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LarpTweaksTitle"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1c

    .line 472
    const-string v1, "LarpGram tweaks"

    goto :goto_20

    :cond_1c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    :goto_20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "msg_customize"

    invoke-virtual {v2, v4, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const v2, 0x4c4754

    .line 474
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final openIfNeeded(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)Z
    .registers 3

    .line 477
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const v0, 0x4c4754

    if-eq p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 478
    :cond_9
    new-instance p1, Lcom/chimeranft/core/IosCustomizationActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/IosCustomizationActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p0, 0x1

    return p0
.end method
