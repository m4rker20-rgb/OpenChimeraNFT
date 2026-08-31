.class public final Lcom/chimeranft/core/IosCustomizationSettingsEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DETAILS:I = 0x495303

.field private static final INPUT:I = 0x495302

.field public static final INSTANCE:Lcom/chimeranft/core/IosCustomizationSettingsEntry;

.field private static final SELECTION:I = 0x495301


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/IosCustomizationSettingsEntry;

    invoke-direct {v0}, Lcom/chimeranft/core/IosCustomizationSettingsEntry;-><init>()V

    sput-object v0, Lcom/chimeranft/core/IosCustomizationSettingsEntry;->INSTANCE:Lcom/chimeranft/core/IosCustomizationSettingsEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addRows(Ljava/util/ArrayList;)V
    .registers 6

    .line 447
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->appContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 449
    :cond_7
    const-string v1, "LarpIosSection"

    const-string v2, "LarpGram iOS"

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/IosCustomizationSettingsEntry;->addRows$text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v1, "LarpIosSelectionEnabled"

    const-string v2, "iOS-like message selection"

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/IosCustomizationSettingsEntry;->addRows$text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x495301

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    sget-object v2, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v2}, Lcom/chimeranft/core/IosCustomization;->selectionEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v1, "LarpIosInputEnabled"

    const-string v3, "iOS input panel"

    invoke-static {v0, v1, v3}, Lcom/chimeranft/core/IosCustomizationSettingsEntry;->addRows$text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x495302

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v2}, Lcom/chimeranft/core/IosCustomization;->inputEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg_customize"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "LarpIosMore"

    const-string v3, "iOS effects settings"

    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/IosCustomizationSettingsEntry;->addRows$text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x495303

    invoke-static {v2, v1, v0}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final addRows$text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_11

    return-object p2

    :cond_11
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final handle(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;Landroid/view/View;)Z
    .registers 8

    .line 456
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_40

    return v0

    .line 459
    :pswitch_8
    new-instance p1, Lcom/chimeranft/core/IosCustomizationActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/IosCustomizationActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return v1

    .line 458
    :pswitch_11
    sget-object p0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    const-string p1, "ios_input_panel"

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/IosCustomization;->toggle(Ljava/lang/String;)Z

    move-result p0

    goto :goto_22

    .line 457
    :pswitch_1a
    sget-object p0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    const-string p1, "ios_selection"

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/IosCustomization;->toggle(Ljava/lang/String;)Z

    move-result p0

    :goto_22
    if-eqz p2, :cond_3f

    .line 462
    :try_start_24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "setChecked"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_24 .. :try_end_3f} :catchall_3f

    :catchall_3f
    :cond_3f
    return v1

    :pswitch_data_40
    .packed-switch 0x495301
        :pswitch_1a
        :pswitch_11
        :pswitch_8
    .end packed-switch
.end method
