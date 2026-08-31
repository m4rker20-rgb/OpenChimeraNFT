.class public final Lcom/chimeranft/core/IosCustomization;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AI_ISLAND:Ljava/lang/String; = "ios_input_ai_island"

.field private static final BLUR_INDEX:Ljava/lang/String; = "ios_selection_blur"

.field private static final INPUT_LARGE:Ljava/lang/String; = "ios_input_large"

.field public static final INSTANCE:Lcom/chimeranft/core/IosCustomization;

.field private static final IOS_INPUT:Ljava/lang/String; = "ios_input_panel"

.field private static final IOS_SELECTION:Ljava/lang/String; = "ios_selection"

.field public static final KEY_AI_ISLAND:Ljava/lang/String; = "ios_input_ai_island"

.field public static final KEY_BLUR:Ljava/lang/String; = "ios_selection_blur"

.field public static final KEY_INPUT:Ljava/lang/String; = "ios_input_panel"

.field public static final KEY_INPUT_LARGE:Ljava/lang/String; = "ios_input_large"

.field public static final KEY_SELECTION:Ljava/lang/String; = "ios_selection"

.field public static final KEY_SPEED:Ljava/lang/String; = "ios_selection_speed"

.field public static final KEY_TIMER_RING:Ljava/lang/String; = "ios_input_timer_ring"

.field private static final PREFS:Ljava/lang/String; = "larpgram_ios_customization"

.field private static final SPEED_INDEX:Ljava/lang/String; = "ios_selection_speed"

.field private static final TIMER_RING:Ljava/lang/String; = "ios_input_timer_ring"

.field private static final blurValues:[I

.field private static final originalStyles:Ljava/util/WeakHashMap;

.field private static volatile selectedAt:J

.field private static selectedCell:Ljava/lang/ref/WeakReference;

.field private static selectedOwner:Ljava/lang/ref/WeakReference;

.field private static final speedValues:[F


# direct methods
.method public static synthetic $r8$lambda$kmvZidJOEOmAvtl3-21CXohEJ5A(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/IosCustomization;->blurChat$lambda$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/IosCustomization;

    invoke-direct {v0}, Lcom/chimeranft/core/IosCustomization;-><init>()V

    sput-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    const/4 v0, 0x6

    .line 35
    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/chimeranft/core/IosCustomization;->blurValues:[I

    const/16 v0, 0x8

    .line 36
    new-array v0, v0, [F

    fill-array-data v0, :array_40

    sput-object v0, Lcom/chimeranft/core/IosCustomization;->speedValues:[F

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chimeranft/core/IosCustomization;->selectedOwner:Ljava/lang/ref/WeakReference;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chimeranft/core/IosCustomization;->selectedCell:Ljava/lang/ref/WeakReference;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/IosCustomization;->originalStyles:Ljava/util/WeakHashMap;

    return-void

    nop

    :array_30
    .array-data 4
        0x19
        0x32
        0x64
        0x96
        0xfa
        0x15e
    .end array-data

    :array_40
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$applyBlur(Lcom/chimeranft/core/IosCustomization;Landroid/view/View;F)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/IosCustomization;->applyBlur(Landroid/view/View;F)V

    return-void
.end method

.method private final applyBlur(Landroid/view/View;F)V
    .registers 5

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_7

    goto :goto_1a

    :cond_7
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_11

    const/4 p2, 0x0

    .line 160
    :try_start_d
    invoke-static {p1, p2}, Lcom/chimeranft/core/IosCustomization$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    return-void

    .line 164
    :cond_11
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 163
    invoke-static {p2, p2, v0}, Lcom/chimeranft/core/IosCustomization$$ExternalSyntheticApiModelOutline1;->m(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chimeranft/core/IosCustomization$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/RenderEffect;)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1a

    :catchall_1a
    :goto_1a
    return-void
.end method

.method private final blurChat(Landroid/view/View;J)V
    .registers 9

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_7

    goto :goto_14

    .line 135
    :cond_7
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->blurRadius()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_14

    .line 137
    :cond_e
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->chatContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_15

    :goto_14
    return-void

    :cond_15
    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 138
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    float-to-int v0, v0

    .line 139
    invoke-direct {p0, v0}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 141
    sget-object p2, Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;->INSTANCE:Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    new-instance p2, Lcom/chimeranft/core/IosCustomization$$ExternalSyntheticLambda2;

    invoke-direct {p2, v1}, Lcom/chimeranft/core/IosCustomization$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 146
    new-instance p2, Lcom/chimeranft/core/IosCustomization$blurChat$2;

    invoke-direct {p2, v0, v1}, Lcom/chimeranft/core/IosCustomization$blurChat$2;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private static final blurChat$lambda$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 143
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_d

    check-cast p1, Ljava/lang/Float;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/IosCustomization;->applyBlur(Landroid/view/View;F)V

    return-void
.end method

.method private final blurRadius()I
    .registers 5

    .line 55
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->blurValues:[I

    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_f

    const-string v3, "ios_selection_blur"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :cond_f
    const/4 v1, 0x0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v3

    invoke-static {v2, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private final chatContentView()Landroid/view/View;
    .registers 6

    .line 170
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->selectedOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 172
    :cond_a
    :try_start_a
    const-string v2, "getContentView"

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    nop

    move-object v2, v1

    .line 174
    :goto_17
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1e

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 175
    :cond_1e
    const-string v2, "contentView"

    invoke-static {v0, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2b

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :cond_2b
    return-object v1
.end method

.method private final context()Landroid/content/Context;
    .registers 2

    .line 48
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->appContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final dp(I)I
    .registers 3

    .line 360
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->context()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_15

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_17

    :cond_15
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_17
    int-to-float p1, p1

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private final isNight(Landroid/content/Context;)Z
    .registers 3

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private final isOutgoing(Landroid/view/View;)Z
    .registers 6

    .line 349
    :try_start_0
    const-string v0, "getMessageObject"

    sget-object v1, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 350
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isOutOwner"

    invoke-static {p1, v3, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    const/4 p1, 0x0

    return p1
.end method

.method private final mergeInputAndSend(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 275
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_f

    return-void

    .line 276
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    if-eqz p3, :cond_27

    .line 277
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_27

    const/16 p1, 0x36

    :goto_22
    invoke-direct {p0, p1}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result p1

    goto :goto_29

    :cond_27
    const/4 p1, 0x6

    goto :goto_22

    :goto_29
    if-eqz v1, :cond_2e

    .line 278
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_30

    :cond_2e
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_30
    const p1, 0x800053

    .line 279
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final originalStyle(Landroid/view/View;)Lcom/chimeranft/core/IosCustomization$OriginalStyle;
    .registers 3

    .line 297
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->originalStyles:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final panelColor(Ljava/lang/Object;Ljava/lang/String;I)I
    .registers 12

    .line 229
    const-string v0, "org.telegram.ui.ActionBar.Theme"

    .line 230
    :try_start_2
    invoke-static {v0, p2}, Lcom/chimeranft/core/Refl;->staticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_50

    :cond_9
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    .line 232
    const-string v1, "getThemedColor"

    .line 233
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v5

    .line 232
    invoke-static {p1, v1, v4, v7}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 234
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_31

    .line 235
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_31

    return p1

    .line 238
    :cond_31
    const-string p1, "getColor"

    .line 239
    new-array v1, v3, [Ljava/lang/Class;

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v5

    .line 238
    invoke-static {v0, p1, v1, v2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 240
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_50

    .line 241
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_50

    if-eqz p1, :cond_50

    return p1

    :catchall_50
    :cond_50
    :goto_50
    return p3
.end method

.method private final prefs()Landroid/content/SharedPreferences;
    .registers 4

    .line 49
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->context()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "larpgram_ios_customization"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private final remember(Landroid/view/View;)V
    .registers 20

    move-object/from16 v0, p1

    .line 284
    sget-object v1, Lcom/chimeranft/core/IosCustomization;->originalStyles:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 285
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_19

    if-eqz v2, :cond_d

    monitor-exit v1

    return-void

    .line 286
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1c

    :catchall_19
    move-exception v0

    goto :goto_75

    :cond_1b
    move-object v2, v4

    .line 287
    :goto_1c
    new-instance v5, Lcom/chimeranft/core/IosCustomization$OriginalStyle;

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v8

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v13

    if-eqz v2, :cond_48

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v14, v3

    goto :goto_49

    :cond_48
    move-object v14, v4

    :goto_49
    if-eqz v2, :cond_53

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v15, v3

    goto :goto_54

    :cond_53
    move-object v15, v4

    :goto_54
    if-eqz v2, :cond_5f

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_61

    :cond_5f
    move-object/from16 v16, v4

    :goto_61
    if-eqz v2, :cond_69

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_69
    move-object/from16 v17, v4

    .line 287
    invoke-direct/range {v5 .. v17}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;-><init>(Landroid/graphics/drawable/Drawable;IIIIIIFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_73
    .catchall {:try_start_d .. :try_end_73} :catchall_19

    .line 284
    monitor-exit v1

    return-void

    :goto_75
    monitor-exit v1

    throw v0
.end method

.method private final resolveAccent(Landroid/content/Context;)I
    .registers 4

    const v0, 0x1010435

    const v1, -0xa47211

    .line 354
    invoke-direct {p0, p1, v0, v1}, Lcom/chimeranft/core/IosCustomization;->resolveColor(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method private final resolveColor(Landroid/content/Context;II)I
    .registers 6

    .line 356
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1

    :cond_13
    return p3
.end method

.method private final resolveSurface(Landroid/content/Context;I)I
    .registers 4

    const v0, 0x10104e2

    .line 353
    invoke-direct {p0, p1, v0, p2}, Lcom/chimeranft/core/IosCustomization;->resolveColor(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method private final restore(Landroid/view/View;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_9

    .line 316
    :cond_3
    invoke-direct {p0, p1}, Lcom/chimeranft/core/IosCustomization;->takeOriginalStyle(Landroid/view/View;)Lcom/chimeranft/core/IosCustomization$OriginalStyle;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    .line 317
    :cond_a
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 319
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getMinimumHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 320
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 321
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getElevation()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setElevation(F)V

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_44

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    if-eqz v1, :cond_87

    .line 323
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getLeftMargin()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 324
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getLeftMargin()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 325
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getTopMargin()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_62

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_64

    :cond_62
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_64
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 326
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getRightMargin()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_73

    :cond_71
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_73
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 327
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getBottomMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_82

    :cond_80
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_82
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 328
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    :cond_87
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final restoreInputPanel(Landroid/view/View;)V
    .registers 12

    .line 336
    const-string v8, "aiButton"

    const-string v9, "slowModeButton"

    const-string v0, "messageEditTextContainer"

    const-string v1, "textFieldContainer"

    const-string v2, "attachButton"

    const-string v3, "attachLayout"

    const-string v4, "sendButtonContainer"

    const-string v5, "sendButton"

    const-string v6, "botCommandsMenuButton"

    const-string v7, "scheduledButton"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_19
    const/16 v2, 0xa

    if-ge v1, v2, :cond_29

    .line 337
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/chimeranft/core/IosCustomization;->restore(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 338
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final restoreMargins(Landroid/view/View;)V
    .registers 5

    .line 305
    invoke-direct {p0, p1}, Lcom/chimeranft/core/IosCustomization;->originalStyle(Landroid/view/View;)Lcom/chimeranft/core/IosCustomization$OriginalStyle;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_15

    .line 306
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_12

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-nez v1, :cond_16

    :goto_15
    return-void

    .line 307
    :cond_16
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getLeftMargin()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getLeftMargin()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 308
    :cond_26
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getTopMargin()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getTopMargin()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 309
    :cond_36
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getRightMargin()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getRightMargin()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 310
    :cond_46
    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getBottomMargin()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_56

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->getBottomMargin()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 311
    :cond_56
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final ripple(IIF)Landroid/graphics/drawable/RippleDrawable;
    .registers 5

    .line 343
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 344
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    const/16 p3, 0x2e

    invoke-direct {p0, p2, p3}, Lcom/chimeranft/core/IosCustomization;->withAlpha(II)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, v0, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private final speed()F
    .registers 5

    .line 56
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->speedValues:[F

    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_f

    const-string v3, "ios_selection_speed"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :cond_f
    const/4 v1, 0x0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([F)I

    move-result v3

    invoke-static {v2, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private final styleIsland(Landroid/view/View;IIZ)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 250
    :cond_3
    invoke-direct {p0, p1}, Lcom/chimeranft/core/IosCustomization;->remember(Landroid/view/View;)V

    if-eqz p4, :cond_b

    const/16 p4, 0x32

    goto :goto_d

    :cond_b
    const/16 p4, 0x2c

    .line 251
    :goto_d
    invoke-direct {p0, p4}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result p4

    .line 252
    invoke-virtual {p1, p4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 253
    invoke-virtual {p1, p4}, Landroid/view/View;->setMinimumHeight(I)V

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    .line 254
    invoke-direct {p0, p2, p3, p4}, Lcom/chimeranft/core/IosCustomization;->ripple(IIF)Landroid/graphics/drawable/RippleDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 255
    invoke-direct {p0, p2}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_33

    const-string p2, "Action"

    :cond_33
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final styleTimerRing(Landroid/view/View;II)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 261
    :cond_3
    invoke-direct {p0, p1}, Lcom/chimeranft/core/IosCustomization;->remember(Landroid/view/View;)V

    const/16 v0, 0x2c

    .line 262
    invoke-direct {p0, v0}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result v0

    .line 263
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    .line 264
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 265
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 266
    sget-object p2, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    const/4 v3, 0x2

    invoke-direct {p2, v3}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result p2

    invoke-virtual {v1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 270
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const/16 v0, 0x36

    invoke-direct {p0, p3, v0}, Lcom/chimeranft/core/IosCustomization;->withAlpha(II)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    invoke-direct {p0, v2}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method private final takeOriginalStyle(Landroid/view/View;)Lcom/chimeranft/core/IosCustomization$OriginalStyle;
    .registers 3

    .line 301
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->originalStyles:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    .line 347
    :try_start_1
    invoke-static {p1, p2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_c

    check-cast p1, Landroid/view/View;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    return-object p1

    :catchall_c
    :cond_c
    return-object v0
.end method

.method private final withAlpha(II)I
    .registers 5

    const v0, 0xffffff

    and-int/2addr p1, v0

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 359
    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final aiIslandEnabled()Z
    .registers 4

    .line 53
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string v2, "ios_input_ai_island"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    return v1
.end method

.method public final animationSpeed$main()F
    .registers 2

    .line 89
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->speed()F

    move-result v0

    return v0
.end method

.method public final blurIndex()I
    .registers 4

    .line 69
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_d

    const-string v2, "ios_selection_blur"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_d
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->blurValues:[I

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    return v0
.end method

.method public final blurLabels()[Ljava/lang/String;
    .registers 5

    .line 71
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->blurValues:[I

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_15

    sget-object v3, Lcom/chimeranft/core/IosCustomization;->blurValues:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return-object v1
.end method

.method public final blurRadiusValue$main()I
    .registers 2

    .line 88
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->blurRadius()I

    move-result v0

    return v0
.end method

.method public final captureSelection(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 79
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->selectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    instance-of v0, p2, Landroid/view/View;

    if-nez v0, :cond_d

    goto :goto_21

    .line 80
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chimeranft/core/IosCustomization;->selectedOwner:Ljava/lang/ref/WeakReference;

    .line 81
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/chimeranft/core/IosCustomization;->selectedCell:Ljava/lang/ref/WeakReference;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/chimeranft/core/IosCustomization;->selectedAt:J

    :cond_21
    :goto_21
    return-void
.end method

.method public final inputEnabled()Z
    .registers 4

    .line 51
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string v2, "ios_input_panel"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    return v1
.end method

.method public final largeInputStyle()Z
    .registers 4

    .line 52
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string v2, "ios_input_large"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    return v1
.end method

.method public final prepareSelectionPopup(Ljava/lang/Object;)Z
    .registers 13

    .line 106
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->selectionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b8

    instance-of v0, p1, Landroid/widget/PopupWindow;

    if-nez v0, :cond_d

    goto/16 :goto_b8

    .line 107
    :cond_d
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->selectedCell:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_18

    return v1

    .line 108
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/chimeranft/core/IosCustomization;->selectedAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_26

    return v1

    :cond_26
    const-wide/16 v2, 0x0

    .line 109
    sput-wide v2, Lcom/chimeranft/core/IosCustomization;->selectedAt:J

    .line 112
    sget-object v2, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    sget-object v3, Lcom/chimeranft/core/IosCustomization;->selectedOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3}, Lcom/chimeranft/core/IosSelection;->prepare(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    return v3

    .line 114
    :cond_3a
    :try_start_3a
    move-object v2, p1

    check-cast v2, Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 115
    move-object v2, p1

    check-cast v2, Landroid/widget/PopupWindow;

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 116
    move-object v2, p1

    check-cast v2, Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 117
    check-cast p1, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5c

    return v1

    .line 118
    :cond_5c
    invoke-virtual {p1, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 119
    invoke-direct {p0, v0}, Lcom/chimeranft/core/IosCustomization;->isOutgoing(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6c

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_6d

    :cond_6c
    const/4 v0, 0x0

    :goto_6d
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 120
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 121
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->speed()F

    move-result v0

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v0, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    const/high16 v4, 0x43820000    # 260.0f

    div-float/2addr v4, v0

    float-to-long v5, v4

    const-wide/16 v7, 0x5a

    const-wide/16 v9, 0x208

    invoke-static/range {v5 .. v10}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v4

    .line 122
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f6b851f    # 0.92f

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 126
    sget-object v2, Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;->INSTANCE:Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 127
    invoke-direct {p0, p1, v4, v5}, Lcom/chimeranft/core/IosCustomization;->blurChat(Landroid/view/View;J)V
    :try_end_b7
    .catchall {:try_start_3a .. :try_end_b7} :catchall_b8

    return v3

    :catchall_b8
    :cond_b8
    :goto_b8
    return v1
.end method

.method public final refreshInputPanel(Ljava/lang/Object;)V
    .registers 9

    .line 190
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_6

    goto/16 :goto_125

    .line 191
    :cond_6
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->inputEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 192
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/chimeranft/core/IosCustomization;->restoreInputPanel(Landroid/view/View;)V

    return-void

    .line 196
    :cond_12
    :try_start_12
    const-string v0, "messageEditTextContainer"

    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_24

    const-string v0, "textFieldContainer"

    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_24

    goto/16 :goto_125

    .line 197
    :cond_24
    invoke-direct {p0, v0}, Lcom/chimeranft/core/IosCustomization;->remember(Landroid/view/View;)V

    .line 198
    const-string v1, "key_chat_messagePanelBackground"

    .line 199
    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/chimeranft/core/IosCustomization;->isNight(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const v2, -0xe1e0de

    goto :goto_3b

    :cond_3a
    const/4 v2, -0x1

    .line 198
    :goto_3b
    invoke-direct {p0, p1, v1, v2}, Lcom/chimeranft/core/IosCustomization;->panelColor(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v1

    .line 200
    const-string v2, "key_chat_messagePanelIcons"

    .line 201
    move-object v3, p1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/chimeranft/core/IosCustomization;->isNight(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_52

    const v3, -0x57524c

    goto :goto_55

    :cond_52
    const v3, -0x716d6a

    .line 200
    :goto_55
    invoke-direct {p0, p1, v2, v3}, Lcom/chimeranft/core/IosCustomization;->panelColor(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v2

    .line 202
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->largeInputStyle()Z

    move-result v3

    if-eqz v3, :cond_62

    const/16 v3, 0x1b

    goto :goto_64

    :cond_62
    const/16 v3, 0x16

    :goto_64
    invoke-direct {p0, v3}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result v3

    int-to-float v3, v3

    .line 203
    invoke-direct {p0, v1, v2, v3}, Lcom/chimeranft/core/IosCustomization;->ripple(IIF)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->largeInputStyle()Z

    move-result v3

    if-eqz v3, :cond_79

    const/16 v3, 0x36

    goto :goto_7b

    :cond_79
    const/16 v3, 0x2e

    :goto_7b
    invoke-direct {p0, v3}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 205
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->largeInputStyle()Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8d

    const/16 v3, 0xe

    goto :goto_8f

    :cond_8d
    const/16 v3, 0xa

    :goto_8f
    invoke-direct {p0, v3}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 206
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->largeInputStyle()Z

    move-result v6

    if-eqz v6, :cond_9e

    goto :goto_a0

    :cond_9e
    const/16 v4, 0x8

    :goto_a0
    invoke-direct {p0, v4}, Lcom/chimeranft/core/IosCustomization;->dp(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 205
    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 208
    const-string v3, "attachButton"

    invoke-direct {p0, p1, v3}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_b9

    const-string v3, "attachLayout"

    invoke-direct {p0, p1, v3}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 209
    :cond_b9
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->largeInputStyle()Z

    move-result v4

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/chimeranft/core/IosCustomization;->styleIsland(Landroid/view/View;IIZ)V

    .line 210
    const-string v3, "sendButtonContainer"

    invoke-direct {p0, p1, v3}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_ce

    const-string v3, "sendButton"

    invoke-direct {p0, p1, v3}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 211
    :cond_ce
    invoke-direct {p0, v3}, Lcom/chimeranft/core/IosCustomization;->restore(Landroid/view/View;)V

    .line 212
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->largeInputStyle()Z

    move-result v4

    if-eqz v4, :cond_de

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v0, v3}, Lcom/chimeranft/core/IosCustomization;->mergeInputAndSend(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_e1

    :cond_de
    invoke-direct {p0, v0}, Lcom/chimeranft/core/IosCustomization;->restoreMargins(Landroid/view/View;)V

    .line 213
    :goto_e1
    const-string v0, "botCommandsMenuButton"

    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chimeranft/core/IosCustomization;->styleIsland(Landroid/view/View;IIZ)V

    .line 214
    const-string v0, "scheduledButton"

    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chimeranft/core/IosCustomization;->styleIsland(Landroid/view/View;IIZ)V

    .line 215
    const-string v0, "aiButton"

    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->aiIslandEnabled()Z

    move-result v4

    if-eqz v4, :cond_104

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chimeranft/core/IosCustomization;->styleIsland(Landroid/view/View;IIZ)V

    goto :goto_107

    :cond_104
    invoke-direct {p0, v0}, Lcom/chimeranft/core/IosCustomization;->restore(Landroid/view/View;)V

    .line 217
    :goto_107
    const-string v0, "slowModeButton"

    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/IosCustomization;->view(Ljava/lang/Object;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/chimeranft/core/IosCustomization;->timerRingEnabled()Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-direct {p0, v0, v1, v2}, Lcom/chimeranft/core/IosCustomization;->styleTimerRing(Landroid/view/View;II)V

    goto :goto_11a

    :cond_117
    invoke-direct {p0, v0}, Lcom/chimeranft/core/IosCustomization;->restore(Landroid/view/View;)V

    .line 219
    :goto_11a
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 220
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_125
    .catchall {:try_start_12 .. :try_end_125} :catchall_125

    :catchall_125
    :goto_125
    return-void
.end method

.method public final selectedCellView$main()Landroid/view/View;
    .registers 2

    .line 86
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->selectedCell:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final selectedOwnerObject$main()Ljava/lang/Object;
    .registers 2

    .line 87
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->selectedOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final selectionEnabled()Z
    .registers 4

    .line 50
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string v2, "ios_selection"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    return v1
.end method

.method public final setBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 65
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_15
    return-void
.end method

.method public final setIndex(Ljava/lang/String;I)V
    .registers 4

    .line 66
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_15
    return-void
.end method

.method public final speedIndex()I
    .registers 4

    .line 70
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_d

    const-string v2, "ios_selection_speed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_d
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->speedValues:[F

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([F)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    return v0
.end method

.method public final speedLabels()[Ljava/lang/String;
    .registers 7

    .line 72
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->speedValues:[F

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_31

    .line 73
    sget-object v3, Lcom/chimeranft/core/IosCustomization;->speedValues:[F

    aget v3, v3, v2

    float-to-int v4, v3

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-nez v5, :cond_17

    .line 74
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_17
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u00d7"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_31
    return-object v1
.end method

.method public final timerRingEnabled()Z
    .registers 5

    .line 54
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const-string v3, "ios_input_timer_ring"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public final toggle(Ljava/lang/String;)Z
    .registers 4

    .line 59
    invoke-direct {p0}, Lcom/chimeranft/core/IosCustomization;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_8
    const-string v1, "ios_input_timer_ring"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1
.end method
