.class public final Lcom/chimeranft/core/IosSelection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/IosSelection;

.field private static final TAG:Ljava/lang/String; = "chimera_ios_selection"

.field private static blurTarget:Ljava/lang/ref/WeakReference;

.field private static botButtons:Ljava/lang/Object;

.field private static copiedCell:Ljava/lang/ref/WeakReference;

.field private static volatile dismissing:Z

.field private static exitAnimation:Landroid/animation/AnimatorSet;

.field private static ownedContent:Ljava/lang/ref/WeakReference;

.field private static ownedPopup:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$E0tzL1-Zj3U5q2eypTpC9AG6Nt0(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/IosSelection;->assemble$lambda$1(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fff5usQpJW0ger_Veo2LEIs6_lc(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/IosSelection;->assemble$lambda$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NCff-bkpISatlqqBfVqqNPT10s8(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/IosSelection;->blurAnimators$lambda$12(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QZz2tPOQEXuB7SduOcXjOPAIcwM(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/IosSelection;->blurAnimators$lambda$11(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RsUGAuPNWWGqhWMx0KktpFNSXtg(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/IosSelection;->dismiss$lambda$0(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/IosSelection;

    invoke-direct {v0}, Lcom/chimeranft/core/IosSelection;-><init>()V

    sput-object v0, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chimeranft/core/IosSelection;->ownedPopup:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chimeranft/core/IosSelection;->ownedContent:Ljava/lang/ref/WeakReference;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chimeranft/core/IosSelection;->copiedCell:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chimeranft/core/IosSelection;->blurTarget:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getOwnedContent$p()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 37
    sget-object v0, Lcom/chimeranft/core/IosSelection;->ownedContent:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$release(Lcom/chimeranft/core/IosSelection;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->release()V

    return-void
.end method

.method public static final synthetic access$restoreOriginalCell(Lcom/chimeranft/core/IosSelection;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->restoreOriginalCell()V

    return-void
.end method

.method public static final synthetic access$unblur(Lcom/chimeranft/core/IosSelection;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->unblur()V

    return-void
.end method

.method private final animate(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/util/List;Landroid/view/View;I)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p7

    .line 355
    sget-object v4, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v4}, Lcom/chimeranft/core/IosCustomization;->animationSpeed$main()F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v7, v4, v6

    if-gtz v7, :cond_16

    const-wide/16 v7, 0x0

    goto :goto_22

    :cond_16
    const/high16 v7, 0x437a0000    # 250.0f

    div-float/2addr v7, v4

    float-to-long v8, v7

    const-wide/16 v10, 0x50

    const-wide/16 v12, 0x384

    .line 356
    invoke-static/range {v8 .. v13}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v7

    .line 357
    :goto_22
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, 0x4

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz p6, :cond_60

    if-eqz v3, :cond_60

    int-to-float v3, v3

    .line 361
    new-array v12, v11, [F

    aput v3, v12, v10

    const/4 v13, 0x1

    aput v6, v12, v13

    const-string v14, "translationY"

    invoke-static {v1, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    new-array v12, v11, [F

    aput v6, v12, v10

    aput v3, v12, v13

    invoke-static {v1, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_60
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    const-string v12, "alpha"

    const-string v13, "scaleY"

    const-string v14, "scaleX"

    if-eqz v3, :cond_d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const-wide/16 v15, 0x0

    .line 367
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    int-to-float v5, v10

    div-float/2addr v5, v6

    .line 368
    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 369
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v10, v5

    .line 370
    new-array v5, v11, [F

    fill-array-data v5, :array_194

    invoke-static {v3, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    new-array v5, v11, [F

    fill-array-data v5, :array_19c

    invoke-static {v3, v13, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-array v5, v11, [F

    fill-array-data v5, :array_1a4

    invoke-static {v3, v12, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-array v5, v11, [F

    fill-array-data v5, :array_1ac

    invoke-static {v3, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-array v5, v11, [F

    fill-array-data v5, :array_1b4

    invoke-static {v3, v13, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-array v5, v11, [F

    fill-array-data v5, :array_1bc

    invoke-static {v3, v12, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_d6
    const-wide/16 v15, 0x0

    if-eqz v2, :cond_133

    .line 378
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    .line 379
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotY(F)V

    .line 380
    new-array v1, v11, [F

    fill-array-data v1, :array_1c4

    invoke-static {v2, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    new-array v1, v11, [F

    fill-array-data v1, :array_1cc

    invoke-static {v2, v13, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    new-array v1, v11, [F

    fill-array-data v1, :array_1d4

    invoke-static {v2, v12, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-array v1, v11, [F

    fill-array-data v1, :array_1dc

    invoke-static {v2, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-array v1, v11, [F

    fill-array-data v1, :array_1e4

    invoke-static {v2, v13, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-array v1, v11, [F

    fill-array-data v1, :array_1ec

    invoke-static {v2, v12, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_133
    move-object/from16 v1, p1

    .line 388
    invoke-direct {v0, v1, v7, v8}, Lcom/chimeranft/core/IosSelection;->blurAnimators(Landroid/content/Context;J)Lkotlin/Pair;

    move-result-object v2

    if-eqz v2, :cond_149

    .line 389
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_149
    cmp-long v2, v7, v15

    if-eqz v2, :cond_180

    .line 391
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_154

    goto :goto_180

    .line 396
    :cond_154
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 397
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 398
    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 399
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 402
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 403
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 404
    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 405
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    sput-object v1, Lcom/chimeranft/core/IosSelection;->exitAnimation:Landroid/animation/AnimatorSet;

    return-void

    .line 392
    :cond_180
    :goto_180
    sget-object v2, Lcom/chimeranft/core/IosSelection;->blurTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/IosSelection;->maxBlur(Landroid/content/Context;)F

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/chimeranft/core/IosSelection;->applyBlur(Landroid/view/View;F)V

    const/4 v1, 0x0

    .line 393
    sput-object v1, Lcom/chimeranft/core/IosSelection;->exitAnimation:Landroid/animation/AnimatorSet;

    return-void

    nop

    :array_194
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_19c
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1a4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1ac
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1b4
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1bc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1c4
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1cc
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1d4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1dc
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1e4
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1ec
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final applyBlur(Landroid/view/View;F)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_9

    goto :goto_1c

    :cond_9
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_13

    const/4 p2, 0x0

    .line 432
    :try_start_f
    invoke-static {p1, p2}, Lcom/chimeranft/core/IosCustomization$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    return-void

    .line 435
    :cond_13
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 434
    invoke-static {p2, p2, v0}, Lcom/chimeranft/core/IosCustomization$$ExternalSyntheticApiModelOutline1;->m(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chimeranft/core/IosCustomization$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/RenderEffect;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    :goto_1c
    return-void
.end method

.method private final assemble(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/view/View;)Z
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 181
    invoke-direct {v0, v2}, Lcom/chimeranft/core/IosSelection;->isOutgoing(Landroid/view/View;)Z

    move-result v4

    if-nez v6, :cond_15

    const/16 v4, 0x11

    goto :goto_1a

    :cond_15
    if-eqz v4, :cond_19

    const/4 v4, 0x5

    goto :goto_1a

    :cond_19
    const/4 v4, 0x3

    .line 184
    :goto_1a
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 185
    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    const/4 v10, 0x0

    .line 186
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 187
    new-instance v11, Landroid/widget/ScrollView;

    invoke-direct {v11, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v11, v9}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 189
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 190
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v12, 0x2

    .line 191
    invoke-virtual {v11, v12}, Landroid/view/View;->setOverScrollMode(I)V

    .line 192
    invoke-virtual {v11, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 193
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    new-instance v14, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda0;

    invoke-direct {v14, v1}, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    .line 199
    invoke-virtual {v8, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {v11, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-direct {v0, v3}, Lcom/chimeranft/core/IosSelection;->screenWidth(Landroid/content/Context;)I

    move-result v15

    const/16 p4, 0x1

    const/high16 v9, -0x80000000

    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 204
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 208
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_92

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v1, "ReactionsContainerLayout"

    const/4 v0, 0x0

    invoke-static {v7, v1, v10, v12, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 209
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 210
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {v0, v9, v15}, Landroid/view/View;->measure(II)V

    goto :goto_93

    :cond_92
    const/4 v0, 0x0

    :goto_93
    if-eqz v0, :cond_9a

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_9b

    :cond_9a
    const/4 v1, 0x0

    .line 216
    :goto_9b
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v14, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_b1

    .line 219
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b1
    if-eqz v6, :cond_ce

    .line 222
    invoke-virtual {v6, v10}, Landroid/view/View;->setLongClickable(Z)V

    .line 223
    invoke-virtual {v6, v10}, Landroid/view/View;->setClickable(Z)V

    .line 224
    new-instance v14, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda1;

    invoke-direct {v14}, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v6, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v14, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    iput v4, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 225
    invoke-virtual {v13, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    :cond_ce
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_d3
    if-ge v10, v12, :cond_130

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Landroid/view/View;

    move/from16 v18, v1

    .line 231
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    invoke-virtual {v0, v9, v15}, Landroid/view/View;->measure(II)V

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v14, v1

    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActionBarPopupWindowLayout"

    move/from16 v20, v9

    move/from16 v17, v10

    move/from16 v21, v12

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-static {v1, v5, v12, v10, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    const/4 v1, 0x5

    if-ne v4, v1, :cond_117

    const/4 v12, 0x1

    goto :goto_118

    :cond_117
    const/4 v12, 0x0

    .line 237
    :goto_118
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v10, "swipeBackGravityRight"

    invoke-static {v0, v10, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_123

    :cond_122
    const/4 v1, 0x5

    :goto_123
    move-object/from16 v5, p5

    move/from16 v10, v17

    move/from16 v1, v18

    move-object/from16 v0, v19

    move/from16 v9, v20

    move/from16 v12, v21

    goto :goto_d3

    :cond_130
    move-object/from16 v19, v0

    move/from16 v18, v1

    const/4 v9, 0x0

    .line 241
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v13, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_14e

    .line 248
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v12

    :goto_14c
    const/4 v10, 0x2

    goto :goto_150

    :cond_14e
    const/4 v12, 0x0

    goto :goto_14c

    .line 249
    :goto_150
    new-array v0, v10, [I

    .line 250
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    add-int v1, v18, v12

    add-int/2addr v1, v14

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/chimeranft/core/IosSelection;->statusBarHeight()I

    move-result v4

    const/16 v5, 0x18

    move-object/from16 v10, p0

    invoke-direct {v10, v3, v5}, Lcom/chimeranft/core/IosSelection;->dp(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v4, v5

    .line 253
    invoke-direct {v10}, Lcom/chimeranft/core/IosSelection;->navigationBarHeight()I

    move-result v5

    const/16 v12, 0xc

    invoke-direct {v10, v3, v12}, Lcom/chimeranft/core/IosSelection;->dp(Landroid/content/Context;I)I

    move-result v12

    add-int/2addr v5, v12

    .line 254
    invoke-direct {v10, v3}, Lcom/chimeranft/core/IosSelection;->screenHeight(Landroid/content/Context;)I

    move-result v12

    .line 255
    aget v14, v0, p4

    sub-int v14, v14, v18

    add-int v15, v14, v1

    sub-int/2addr v12, v5

    if-le v15, v12, :cond_17f

    sub-int v14, v12, v1

    :cond_17f
    if-ge v14, v4, :cond_182

    goto :goto_183

    :cond_182
    move v4, v14

    .line 258
    :goto_183
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, 0x0

    invoke-static {v4, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v9

    const/4 v15, -0x1

    invoke-direct {v14, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v1, v4

    if-le v1, v12, :cond_19b

    const/4 v12, 0x0

    .line 259
    invoke-virtual {v11, v12, v12, v12, v5}, Landroid/view/View;->setPadding(IIII)V

    :goto_198
    move-object/from16 v1, p1

    goto :goto_19d

    :cond_19b
    const/4 v12, 0x0

    goto :goto_198

    .line 261
    :goto_19d
    invoke-virtual {v1, v15}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 262
    invoke-virtual {v1, v15}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 263
    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 264
    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 265
    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 267
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lcom/chimeranft/core/IosSelection;->ownedPopup:Ljava/lang/ref/WeakReference;

    .line 268
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/chimeranft/core/IosSelection;->ownedContent:Ljava/lang/ref/WeakReference;

    .line 269
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/chimeranft/core/IosSelection;->copiedCell:Ljava/lang/ref/WeakReference;

    .line 270
    sput-boolean v12, Lcom/chimeranft/core/IosSelection;->dismissing:Z

    if-nez v6, :cond_1c7

    const/4 v7, 0x0

    goto :goto_1d1

    .line 271
    :cond_1c7
    const-string v1, "botButtons"

    invoke-static {v2, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/chimeranft/core/IosSelection;->nonEmptyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_1d1
    sput-object v7, Lcom/chimeranft/core/IosSelection;->botButtons:Ljava/lang/Object;

    if-eqz v6, :cond_1d6

    const/4 v12, 0x1

    .line 273
    :cond_1d6
    invoke-direct {v10, v2, v12}, Lcom/chimeranft/core/IosSelection;->hideOriginalCell(Landroid/view/View;Z)V

    .line 274
    aget v0, v0, p4

    add-int v4, v4, v18

    sub-int v7, v0, v4

    move-object/from16 v5, p5

    move-object v1, v3

    move-object v2, v8

    move-object v0, v10

    move-object v3, v13

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v7}, Lcom/chimeranft/core/IosSelection;->animate(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/util/List;Landroid/view/View;I)V

    .line 278
    new-instance v0, Lcom/chimeranft/core/IosSelection$assemble$6;

    invoke-direct {v0}, Lcom/chimeranft/core/IosSelection$assemble$6;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return p4
.end method

.method private static final assemble$lambda$1(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 2

    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    :catchall_3
    return-void
.end method

.method private static final assemble$lambda$4(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private final blurAnimators(Landroid/content/Context;J)Lkotlin/Pair;
    .registers 9

    .line 410
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    const/4 v0, 0x0

    if-ge p2, p3, :cond_8

    return-object v0

    .line 411
    :cond_8
    invoke-direct {p0, p1}, Lcom/chimeranft/core/IosSelection;->maxBlur(Landroid/content/Context;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gtz p3, :cond_12

    return-object v0

    .line 413
    :cond_12
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->chatContentView()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_19

    return-object v0

    .line 414
    :cond_19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chimeranft/core/IosSelection;->blurTarget:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x2

    .line 415
    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    aput p1, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 416
    new-instance v4, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda2;

    invoke-direct {v4, p3}, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 417
    new-array v0, v0, [F

    aput p1, v0, v2

    aput p2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 418
    new-instance p2, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda3;

    invoke-direct {p2, p3}, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 419
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static final blurAnimators$lambda$11(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 416
    sget-object v0, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

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
    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/IosSelection;->applyBlur(Landroid/view/View;F)V

    return-void
.end method

.method private static final blurAnimators$lambda$12(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 418
    sget-object v0, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

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
    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/IosSelection;->applyBlur(Landroid/view/View;F)V

    return-void
.end method

.method private final build(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/Object;)Z
    .registers 12

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 p3, 0x0

    if-nez v4, :cond_8

    return p3

    .line 142
    :cond_8
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    check-cast v0, Landroid/view/ViewGroup;

    move-object v5, v0

    goto :goto_16

    :cond_15
    move-object v5, v2

    :goto_16
    if-nez v5, :cond_19

    return p3

    .line 146
    :cond_19
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_33

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 148
    :cond_33
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    return p3

    .line 149
    :cond_3a
    :try_start_3a
    const-string v0, "applyViewBottom"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const-class v7, Landroid/widget/FrameLayout;

    aput-object v7, v3, p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, p3

    invoke-static {v5, v0, v3, v1}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4a

    .line 150
    :catchall_4a
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 155
    :try_start_4d
    invoke-direct {p0, p2, v4}, Lcom/chimeranft/core/IosSelection;->copyCellFor(Landroid/view/View;Landroid/content/Context;)Landroid/view/View;

    move-result-object v7
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_5c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    :try_start_54
    invoke-direct/range {v1 .. v7}, Lcom/chimeranft/core/IosSelection;->assemble(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/view/View;)Z

    move-result p1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_59

    return p1

    :catchall_59
    move-exception v0

    :goto_5a
    move-object p1, v0

    goto :goto_5f

    :catchall_5c
    move-exception v0

    move-object v1, p0

    goto :goto_5a

    .line 157
    :goto_5f
    const-string p2, "ios.selection.assemble"

    invoke-static {p2, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    invoke-direct {p0, v5, v6}, Lcom/chimeranft/core/IosSelection;->restoreChildren(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 159
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->release()V

    return p3
.end method

.method private final chatContentView()Landroid/view/View;
    .registers 6

    .line 481
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization;->selectedOwnerObject$main()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 482
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

    .line 483
    :goto_17
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1e

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 484
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

.method private final copyCell(Landroid/view/View;Landroid/content/Context;)Landroid/view/View;
    .registers 25

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 298
    :try_start_3
    const-string v2, "getMessageObject"

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    return-object v1

    .line 299
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 300
    const-string v6, "ChatActionCell"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v8, v7, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_4c

    const/4 v9, 0x1

    const-string v10, "chimera_ios_selection"

    const-class v11, Ljava/lang/Object;

    const-string v12, "setTag"

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v14, "org.telegram.messenger.MessageObject"

    const-string v15, "setMessageObject"

    if-eqz v6, :cond_7e

    .line 301
    :try_start_2f
    const-string v0, "org.telegram.ui.Cells.ChatActionCell"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 302
    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_51

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p2, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_52

    :catchall_4c
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_1a9

    :cond_51
    move-object v0, v1

    .line 301
    :goto_52
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_59

    check-cast v0, Landroid/view/View;

    goto :goto_5a

    :cond_59
    move-object v0, v1

    :goto_5a
    if-nez v0, :cond_5d

    return-object v1

    .line 304
    :cond_5d
    invoke-static {v14}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Class;

    aput-object v3, v4, v8

    aput-object v13, v4, v9

    .line 305
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v3, v9

    .line 303
    invoke-static {v0, v15, v4, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-array v2, v9, [Ljava/lang/Class;

    aput-object v11, v2, v8

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v10, v3, v8

    invoke-static {v0, v12, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 309
    :cond_7e
    const-string v6, "ChatMessageCell"

    invoke-static {v5, v6, v8, v7, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    return-object v1

    .line 312
    :cond_87
    const-string v5, "getCurrentMessagesGroup"

    invoke-static {v0, v5, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_90

    return-object v1

    .line 314
    :cond_90
    const-string v3, "org.telegram.ui.Cells.ChatMessageCell"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_99

    return-object v1

    .line 315
    :cond_99
    const-string v4, "sharedResources"

    invoke-static {v0, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 316
    const-string v5, "resourcesProvider"

    invoke-static {v0, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 317
    const-string v6, "currentAccount"
    :try_end_a7
    .catchall {:try_start_2f .. :try_end_a7} :catchall_4c

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    :try_start_ab
    invoke-static {v0, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    .line 318
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 518
    array-length v6, v1

    const/4 v7, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    :goto_ba
    const/4 v8, 0x5

    if-ge v7, v6, :cond_d2

    aget-object v20, v1, v7

    const/16 v21, 0x1

    .line 318
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v8, :cond_cb

    move-object/from16 v1, v20

    goto :goto_d6

    :cond_cb
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    goto :goto_ba

    :catchall_cf
    move-exception v0

    goto/16 :goto_1a9

    :cond_d2
    const/16 v21, 0x1

    move-object/from16 v1, v16

    :goto_d6
    if-nez v1, :cond_d9

    return-object v16

    .line 319
    :cond_d9
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    .line 322
    aget-object v9, v6, v7

    invoke-virtual {v9, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_eb

    goto :goto_ed

    :cond_eb
    move-object/from16 v4, v16

    :goto_ed
    const/4 v9, 0x4

    .line 323
    aget-object v6, v6, v9

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f7

    goto :goto_f9

    :cond_f7
    move-object/from16 v5, v16

    :goto_f9
    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v19

    aput-object v2, v6, v21

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v6, v18

    aput-object v4, v6, v7

    aput-object v5, v6, v9

    .line 320
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_112

    check-cast v1, Landroid/view/View;

    goto :goto_114

    :cond_112
    move-object/from16 v1, v16

    :goto_114
    if-nez v1, :cond_117

    return-object v16

    .line 325
    :cond_117
    const-string v2, "copyParamsTo"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v3, v5, v19

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v19

    invoke-static {v0, v2, v5, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {v14}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 328
    const-string v3, "org.telegram.messenger.MessageObject$GroupedMessages"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 329
    new-array v4, v8, [Ljava/lang/Class;

    aput-object v2, v4, v19

    const/16 v21, 0x1

    aput-object v3, v4, v21

    aput-object v13, v4, v18

    aput-object v13, v4, v7

    aput-object v13, v4, v9

    .line 331
    const-string v2, "pinnedBottom"

    invoke-static {v0, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 332
    const-string v5, "pinnedTop"

    invoke-static {v0, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 333
    const-string v6, "firstInChat"

    invoke-static {v0, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v17, v6, v19

    const/16 v21, 0x1

    aput-object v16, v6, v21

    aput-object v2, v6, v18

    aput-object v5, v6, v7

    aput-object v3, v6, v9

    .line 326
    invoke-static {v1, v15, v4, v6}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v2, "getDelegate"

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19c

    .line 336
    const-string v2, "org.telegram.ui.Cells.ChatMessageCell$ChatMessageCellDelegate"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_19c

    .line 338
    const-string v3, "setDelegate"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v2, v5, v19

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v19

    invoke-static {v1, v3, v5, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19c
    const/4 v4, 0x1

    .line 341
    new-array v0, v4, [Ljava/lang/Class;

    aput-object v11, v0, v19

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v10, v2, v19

    invoke-static {v1, v12, v0, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a8
    .catchall {:try_start_ab .. :try_end_1a8} :catchall_cf

    return-object v1

    .line 344
    :goto_1a9
    const-string v1, "ios.selection.copy"

    invoke-static {v1, v0}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v16
.end method

.method private final copyCellFor(Landroid/view/View;Landroid/content/Context;)Landroid/view/View;
    .registers 3

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/IosSelection;->copyCell(Landroid/view/View;Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private static final dismiss$lambda$0(Ljava/lang/Object;)V
    .registers 6

    .line 81
    sget-object v0, Lcom/chimeranft/core/IosSelection;->ownedPopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_28

    .line 82
    sget-object v0, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    invoke-direct {v0}, Lcom/chimeranft/core/IosSelection;->restoreOriginalCell()V

    .line 83
    invoke-direct {v0}, Lcom/chimeranft/core/IosSelection;->unblur()V

    .line 85
    :try_start_10
    const-string v0, "dismiss"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v4

    .line 85
    invoke-static {p0, v0, v2, v1}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_23

    .line 88
    :catchall_23
    sget-object p0, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->release()V

    :cond_28
    return-void
.end method

.method private final dp(Landroid/content/Context;I)I
    .registers 3

    .line 514
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private final hideOriginalCell(Landroid/view/View;Z)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_2c

    .line 452
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ChatMessageCell"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_2c

    .line 453
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chimeranft/core/IosSelection;->screenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2c

    :catchall_2c
    :goto_2c
    return-void
.end method

.method private final isOutgoing(Landroid/view/View;)Z
    .registers 8

    const/4 v0, 0x0

    .line 488
    :try_start_1
    const-string v1, "getMessageObject"

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 489
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "isOutOwner"

    invoke-static {p1, v4, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 490
    const-string v5, "isFromChannel"

    invoke-static {p1, v5, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    if-eqz v4, :cond_27

    if-nez p1, :cond_27

    const/4 p1, 0x1

    return p1

    :catchall_27
    :cond_27
    return v0
.end method

.method private final maxBlur(Landroid/content/Context;)F
    .registers 4

    .line 423
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization;->blurRadiusValue$main()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 425
    :cond_a
    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/IosSelection;->dp(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private final navigationBarHeight()I
    .registers 4

    .line 505
    const-string v0, "navigationBarHeight"

    const/4 v1, 0x0

    const-string v2, "org.telegram.messenger.AndroidUtilities"

    invoke-static {v2, v0, v1}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private final nonEmptyList(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 497
    :cond_4
    :try_start_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isEmpty"

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {p1, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    if-eqz v1, :cond_17

    return-object v0

    :cond_17
    return-object p1

    :catchall_18
    return-object v0
.end method

.method private final release()V
    .registers 3

    const/4 v0, 0x0

    .line 469
    sput-object v0, Lcom/chimeranft/core/IosSelection;->exitAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    .line 470
    sput-boolean v1, Lcom/chimeranft/core/IosSelection;->dismissing:Z

    .line 471
    sput-object v0, Lcom/chimeranft/core/IosSelection;->botButtons:Ljava/lang/Object;

    .line 472
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/chimeranft/core/IosSelection;->ownedPopup:Ljava/lang/ref/WeakReference;

    .line 473
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/chimeranft/core/IosSelection;->ownedContent:Ljava/lang/ref/WeakReference;

    .line 474
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/chimeranft/core/IosSelection;->copiedCell:Ljava/lang/ref/WeakReference;

    .line 475
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/chimeranft/core/IosSelection;->blurTarget:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final restoreChildren(Landroid/view/ViewGroup;Ljava/util/List;)V
    .registers 6

    .line 166
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1b

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v1, :cond_21

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 168
    :cond_21
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    goto :goto_4

    :catchall_25
    :cond_25
    return-void
.end method

.method private final restoreOriginalCell()V
    .registers 6

    .line 458
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v0}, Lcom/chimeranft/core/IosCustomization;->selectedCellView$main()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1d

    :cond_9
    const/4 v1, 0x0

    .line 460
    :try_start_a
    const-string v2, "updateTranslation"

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1a

    return-void

    .line 464
    :catchall_1a
    :try_start_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1d

    :catchall_1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method private final screenHeight(Landroid/content/Context;)I
    .registers 2

    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    return p1
.end method

.method private final screenWidth(Landroid/content/Context;)I
    .registers 2

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1
.end method

.method private final statusBarHeight()I
    .registers 4

    .line 502
    const-string v0, "statusBarHeight"

    const/4 v1, 0x0

    const-string v2, "org.telegram.messenger.AndroidUtilities"

    invoke-static {v2, v0, v1}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private final unblur()V
    .registers 3

    .line 440
    sget-object v0, Lcom/chimeranft/core/IosSelection;->blurTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/IosSelection;->applyBlur(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public final dismiss(Ljava/lang/Object;Z)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    .line 64
    sget-object v1, Lcom/chimeranft/core/IosSelection;->ownedPopup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_c

    goto :goto_59

    :cond_c
    if-eqz p2, :cond_4e

    .line 65
    sget-boolean v1, Lcom/chimeranft/core/IosSelection;->dismissing:Z

    if-eqz v1, :cond_13

    goto :goto_4e

    .line 74
    :cond_13
    :try_start_13
    sget-object p2, Lcom/chimeranft/core/IosSelection;->ownedContent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_1e

    return v0

    .line 75
    :cond_1e
    sget-object v1, Lcom/chimeranft/core/IosSelection;->exitAnimation:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_23

    return v0

    :cond_23
    const/4 v2, 0x1

    .line 76
    sput-boolean v2, Lcom/chimeranft/core/IosSelection;->dismissing:Z

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 80
    new-instance v3, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/chimeranft/core/IosSelection$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x15e

    add-long/2addr v4, v6

    .line 80
    invoke-virtual {p2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    new-instance p2, Lcom/chimeranft/core/IosSelection$dismiss$2;

    invoke-direct {p2, p1}, Lcom/chimeranft/core/IosSelection$dismiss$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_44

    return v2

    :catchall_44
    move-exception p1

    .line 108
    const-string p2, "ios.selection.dismiss"

    invoke-static {p2, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->release()V

    return v0

    :cond_4e
    :goto_4e
    if-nez p2, :cond_59

    .line 67
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->restoreOriginalCell()V

    .line 68
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->unblur()V

    .line 69
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->release()V

    :cond_59
    :goto_59
    return v0
.end method

.method public final draw(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    if-eqz p1, :cond_76

    .line 120
    sget-object v0, Lcom/chimeranft/core/IosSelection;->copiedCell:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_76

    instance-of v0, p2, Landroid/graphics/Canvas;

    if-nez v0, :cond_f

    goto :goto_76

    .line 122
    :cond_f
    :try_start_f
    const-string v0, "animatedEmojiStack"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1f

    .line 123
    :cond_19
    const-string v1, "holders"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_76

    :goto_1f
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 124
    const-class v4, Landroid/graphics/Canvas;

    if-eqz v0, :cond_52

    :try_start_26
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "isEmpty"

    sget-object v7, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v8, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v0, v6, v7, v8}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_52

    .line 126
    :cond_39
    const-string v0, "drawAnimatedEmojis"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v4, v5, v2

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 127
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p2, v7, v2

    aput-object v6, v7, v1

    .line 126
    invoke-static {p1, v0, v5, v7}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_52
    :goto_52
    sget-object v0, Lcom/chimeranft/core/IosSelection;->botButtons:Ljava/lang/Object;

    if-eqz v0, :cond_76

    .line 131
    const-string v5, "drawBotButtons"

    const/4 v6, 0x3

    .line 132
    new-array v7, v6, [Ljava/lang/Class;

    aput-object v4, v7, v2

    const-class v4, Ljava/util/ArrayList;

    aput-object v4, v7, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v7, v3

    const/16 v4, 0xff

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    aput-object v0, v6, v1

    aput-object v4, v6, v3

    .line 131
    invoke-static {p1, v5, v7, v6}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_26 .. :try_end_76} :catchall_76

    :catchall_76
    :cond_76
    :goto_76
    return-void
.end method

.method public final prepare(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)Z
    .registers 6

    .line 52
    instance-of v0, p1, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-nez p2, :cond_8

    goto :goto_18

    .line 54
    :cond_8
    :try_start_8
    check-cast p1, Landroid/widget/PopupWindow;

    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/IosSelection;->build(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return p1

    :catchall_f
    move-exception p1

    .line 56
    const-string p2, "ios.selection.prepare"

    invoke-static {p2, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    invoke-direct {p0}, Lcom/chimeranft/core/IosSelection;->release()V

    :cond_18
    :goto_18
    return v1
.end method

.method public final swallowTouch(Ljava/lang/Object;)Z
    .registers 3

    .line 116
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/chimeranft/core/IosSelection;->copiedCell:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method
