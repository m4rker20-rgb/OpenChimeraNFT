.class public final Lcom/chimeranft/core/IosCustomizationActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field private static final AI:I = 0xcb2d

.field private static final BLUR:I = 0xcb22

.field public static final Companion:Lcom/chimeranft/core/IosCustomizationActivity$Companion;

.field private static final INPUT:I = 0xcb2b

.field private static final LARGE:I = 0xcb2c

.field private static final SELECTION:I = 0xcb21

.field private static final SPEED:I = 0xcb23

.field private static final TIMER:I = 0xcb2e


# direct methods
.method public static synthetic $r8$lambda$I79iJGLa41QHL_TIkjyTYlDSQa8(Ljava/lang/String;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/IosCustomizationActivity;->onClick$lambda$3(Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IHXmGFR_TQifSJQqfswNCSXkZoU(Ljava/lang/Integer;)V
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/IosCustomizationActivity;->fillItems$lambda$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u48LZFYeqB2dxDTLc2y2KYdFJKQ(Ljava/lang/String;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/IosCustomizationActivity;->onClick$lambda$2(Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zztir0j06LjaaDAhA_YEMp58PlI(Ljava/lang/Integer;)V
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/IosCustomizationActivity;->fillItems$lambda$1(Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/IosCustomizationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/IosCustomizationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/IosCustomizationActivity;->Companion:Lcom/chimeranft/core/IosCustomizationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    return-void
.end method

.method private static final fillItems$lambda$0(Ljava/lang/Integer;)V
    .registers 3

    .line 393
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    const-string v1, "ios_selection_blur"

    invoke-virtual {v0, v1, p0}, Lcom/chimeranft/core/IosCustomization;->setIndex(Ljava/lang/String;I)V

    return-void
.end method

.method private static final fillItems$lambda$1(Ljava/lang/Integer;)V
    .registers 3

    .line 396
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    const-string v1, "ios_selection_speed"

    invoke-virtual {v0, v1, p0}, Lcom/chimeranft/core/IosCustomization;->setIndex(Ljava/lang/String;I)V

    return-void
.end method

.method private static final onClick$lambda$2(Ljava/lang/String;Z)Lkotlin/Unit;
    .registers 2

    .line 417
    invoke-static {p0, p1}, Lcom/chimeranft/core/StickerTweaks;->setValue(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$3(Ljava/lang/String;Z)Lkotlin/Unit;
    .registers 3

    .line 428
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/IosCustomization;->setBoolean(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 8

    .line 388
    sget-object p2, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->selectionEnabled()Z

    move-result v0

    .line 389
    const-string v1, "LarpIosSelection"

    const-string v2, "iOS-like selection"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v1, "LarpIosSelectionEnabled"

    const-string v2, "Enable iOS-like message selection"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xcb21

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 391
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 390
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->blurLabels()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->blurIndex()I

    move-result v2

    .line 393
    new-instance v3, Lcom/chimeranft/core/IosCustomizationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/chimeranft/core/IosCustomizationActivity$$ExternalSyntheticLambda2;-><init>()V

    const v4, 0xcb22

    .line 392
    invoke-static {v4, v1, v2, v3}, Lorg/telegram/ui/Components/UItem;->asSlideView(I[Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 394
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 392
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->speedLabels()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->speedIndex()I

    move-result v2

    .line 396
    new-instance v3, Lcom/chimeranft/core/IosCustomizationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/chimeranft/core/IosCustomizationActivity$$ExternalSyntheticLambda3;-><init>()V

    const v4, 0xcb23

    .line 395
    invoke-static {v4, v1, v2, v3}, Lorg/telegram/ui/Components/UItem;->asSlideView(I[Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 397
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 395
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const-string v0, "LarpIosSelectionInfo"

    const-string v1, "Native message-menu motion and adaptive background"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->inputEnabled()Z

    move-result v0

    .line 401
    const-string v1, "LarpIosInput"

    const-string v2, "iOS input panel"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v1, "LarpIosInputEnabled"

    const-string v2, "Enable iOS input panel"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xcb2b

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v1, "LarpIosInputLarge"

    const-string v2, "Unified large capsule"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xcb2c

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 404
    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->largeInputStyle()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 403
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const-string v1, "LarpIosAiIsland"

    const-string v2, "AI button in the right island"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xcb2d

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 406
    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->aiIslandEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 405
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v1, "LarpIosTimerRing"

    const-string v2, "Slow-mode timer ring"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xcb2e

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 408
    invoke-virtual {p2}, Lcom/chimeranft/core/IosCustomization;->timerRingEnabled()Z

    move-result p2

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 407
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const-string p2, "LarpIosInputInfo"

    const-string v0, "Native themed islands, ripples and adaptive spacing"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-static {p1}, Lcom/chimeranft/core/StickerTweaks;->addSettingsItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 385
    const-string v0, "LarpTweaksTitle"

    const-string v1, "LarpGram tweaks"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 6

    .line 415
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {p2}, Lcom/chimeranft/core/StickerTweaks;->settingKey(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 417
    new-instance p3, Lcom/chimeranft/core/IosCustomizationActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/chimeranft/core/IosCustomizationActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/chimeranft/core/ForkPreferences;->toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 420
    :cond_11
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p3, 0xcb21

    if-eq p2, p3, :cond_28

    packed-switch p2, :pswitch_data_34

    return-void

    .line 425
    :pswitch_1c
    const-string p2, "ios_input_timer_ring"

    goto :goto_2a

    .line 424
    :pswitch_1f
    const-string p2, "ios_input_ai_island"

    goto :goto_2a

    .line 423
    :pswitch_22
    const-string p2, "ios_input_large"

    goto :goto_2a

    .line 422
    :pswitch_25
    const-string p2, "ios_input_panel"

    goto :goto_2a

    .line 421
    :cond_28
    const-string p2, "ios_selection"

    .line 428
    :goto_2a
    new-instance p3, Lcom/chimeranft/core/IosCustomizationActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/chimeranft/core/IosCustomizationActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/chimeranft/core/ForkPreferences;->toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    :pswitch_data_34
    .packed-switch 0xcb2b
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method
