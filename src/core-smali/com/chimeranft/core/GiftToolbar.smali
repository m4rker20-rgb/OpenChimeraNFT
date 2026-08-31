.class public final Lcom/chimeranft/core/GiftToolbar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/GiftToolbar$Companion;

.field private static final FILTERS:Ljava/util/List;


# instance fields
.field private final chips:Ljava/util/LinkedHashMap;

.field private final field:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private filter:Ljava/lang/String;

.field private final onChanged:Lkotlin/jvm/functions/Function0;

.field private pending:I

.field private query:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$f_AkzLhegfANn5X-6eBBLWqXf94(Lcom/chimeranft/core/GiftToolbar;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/GiftToolbar;->_init_$lambda$1(Lcom/chimeranft/core/GiftToolbar;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/chimeranft/core/GiftToolbar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/GiftToolbar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/GiftToolbar;->Companion:Lcom/chimeranft/core/GiftToolbar$Companion;

    .line 199
    const-string v0, "all"

    const-string v1, "\u0412\u0441\u0435"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v1, "profile"

    const-string v2, "\u0412 \u043f\u0440\u043e\u0444\u0438\u043b\u0435"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v2, "hidden"

    const-string v3, "\u0421\u043a\u0440\u044b\u0442\u044b\u0435"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const-string v3, "sale"

    const-string v4, "\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 198
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/GiftToolbar;->FILTERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 84
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v2, p2

    .line 83
    iput-object v2, v0, Lcom/chimeranft/core/GiftToolbar;->onChanged:Lkotlin/jvm/functions/Function0;

    .line 87
    const-string v2, "all"

    iput-object v2, v0, Lcom/chimeranft/core/GiftToolbar;->filter:Ljava/lang/String;

    .line 90
    const-string v2, ""

    iput-object v2, v0, Lcom/chimeranft/core/GiftToolbar;->query:Ljava/lang/String;

    .line 93
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/chimeranft/core/GiftToolbar;->chips:Ljava/util/LinkedHashMap;

    .line 94
    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/chimeranft/core/GiftToolbar;->field:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x1

    .line 98
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    sget-object v4, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    const/16 v5, 0xc

    invoke-virtual {v4, v1, v5}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x4

    .line 100
    invoke-virtual {v4, v1, v6}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v7

    add-int/2addr v7, v5

    div-int/lit8 v8, v5, 0x2

    invoke-virtual {v4, v1, v6}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v7, v8, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v5, 0x41700000    # 15.0f

    .line 102
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    const-string v5, "ChimeraGiftSearchHint"

    const-string v6, "\u041f\u043e\u0438\u0441\u043a: \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u0435, \u043d\u043e\u043c\u0435\u0440, \u043c\u043e\u0434\u0435\u043b\u044c"

    invoke-virtual {v4, v1, v5, v6}, Lcom/chimeranft/core/ChimeraUi;->string(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 105
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 106
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 107
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/16 v5, 0x14

    .line 108
    invoke-virtual {v4, v1, v5}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 109
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 110
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    const/16 v6, 0xe

    invoke-direct {v0, v5, v6}, Lcom/chimeranft/core/GiftToolbar;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {v4, v1, v6}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v1, v6}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    new-instance v5, Lcom/chimeranft/core/GiftToolbar$1;

    invoke-direct {v5, v0}, Lcom/chimeranft/core/GiftToolbar$1;-><init>(Lcom/chimeranft/core/GiftToolbar;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x2c

    invoke-virtual {v4, v1, v7}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v7, -0x1

    invoke-direct {v5, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v2, Landroid/widget/HorizontalScrollView;

    invoke-direct {v2, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v2, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 127
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 129
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    sget-object v5, Lcom/chimeranft/core/GiftToolbar;->FILTERS:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ca
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v11, 0x22

    if-eqz v10, :cond_176

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Pair;

    invoke-virtual {v10}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 131
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    sget-object v14, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_122

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v9, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "toUpperCase(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "substring(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_123

    :cond_122
    move-object v7, v12

    :goto_123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ChimeraGiftFilter"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v1, v7, v10}, Lcom/chimeranft/core/ChimeraUi;->string(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x11

    .line 133
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, 0x41500000    # 13.0f

    .line 134
    invoke-virtual {v13, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    invoke-virtual {v14, v1, v6}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v14, v1, v6}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v13, v7, v8, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    new-instance v7, Lcom/chimeranft/core/GiftToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v12}, Lcom/chimeranft/core/GiftToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/chimeranft/core/GiftToolbar;Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v14, v1, v11}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, -0x2

    invoke-direct {v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x8

    .line 144
    invoke-virtual {v14, v1, v9}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 145
    invoke-virtual {v4, v13, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v7, v0, Lcom/chimeranft/core/GiftToolbar;->chips:Ljava/util/LinkedHashMap;

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x1

    const/4 v9, -0x2

    goto/16 :goto_ca

    .line 148
    :cond_176
    invoke-direct {v0}, Lcom/chimeranft/core/GiftToolbar;->paintChips()V

    .line 149
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v4, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-virtual {v4, v1, v11}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    .line 150
    invoke-virtual {v4, v1, v5}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/chimeranft/core/GiftToolbar;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 137
    iget-object p2, p0, Lcom/chimeranft/core/GiftToolbar;->filter:Ljava/lang/String;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    .line 138
    iput-object p1, p0, Lcom/chimeranft/core/GiftToolbar;->filter:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/chimeranft/core/GiftToolbar;->paintChips()V

    .line 140
    iget-object p0, p0, Lcom/chimeranft/core/GiftToolbar;->onChanged:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method public static final synthetic access$getOnChanged$p(Lcom/chimeranft/core/GiftToolbar;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/chimeranft/core/GiftToolbar;->onChanged:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getPending$p(Lcom/chimeranft/core/GiftToolbar;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/chimeranft/core/GiftToolbar;->pending:I

    return p0
.end method

.method public static final synthetic access$setPending$p(Lcom/chimeranft/core/GiftToolbar;I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/chimeranft/core/GiftToolbar;->pending:I

    return-void
.end method

.method public static final synthetic access$setQuery$p(Lcom/chimeranft/core/GiftToolbar;Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/chimeranft/core/GiftToolbar;->query:Ljava/lang/String;

    return-void
.end method

.method private final paintChips()V
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/chimeranft/core/GiftToolbar;->chips:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    iget-object v3, p0, Lcom/chimeranft/core/GiftToolbar;->filter:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 182
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    goto :goto_37

    .line 183
    :cond_31
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    :goto_37
    const/16 v4, 0x11

    .line 181
    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/GiftToolbar;->rounded(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_49

    .line 185
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    goto :goto_4f

    .line 186
    :cond_49
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 184
    :goto_4f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    :cond_53
    return-void
.end method

.method private final rounded(II)Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .line 191
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 192
    sget-object v1, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 193
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public final getFilter()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/chimeranft/core/GiftToolbar;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/chimeranft/core/GiftToolbar;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final matches(Lorg/json/JSONObject;)Z
    .registers 12

    .line 156
    iget-object v0, p0, Lcom/chimeranft/core/GiftToolbar;->filter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48916256

    const/4 v3, 0x1

    const-string v4, "hidden"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eq v1, v2, :cond_5a

    const v2, -0x12717657

    if-eq v1, v2, :cond_43

    const v2, 0x35c047

    if-eq v1, v2, :cond_1c

    goto :goto_68

    :cond_1c
    const-string v1, "sale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_68

    .line 160
    :cond_25
    const-string v0, "resale_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 162
    const-string v1, "stars"

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v4, v1, v5

    if-gtz v4, :cond_68

    const-string v1, "nanoton"

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-lez v2, :cond_42

    goto :goto_68

    :cond_42
    return v7

    .line 156
    :cond_43
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 157
    const-string v0, "inject"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_68

    :cond_59
    return v7

    .line 156
    :cond_5a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_68

    .line 158
    :cond_61
    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_68

    return v7

    .line 166
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/chimeranft/core/GiftToolbar;->query:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_71

    return v3

    .line 167
    :cond_71
    iget-object v0, p0, Lcom/chimeranft/core/GiftToolbar;->query:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string v4, "title"

    const-string v8, ""

    invoke-virtual {p1, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    const-string v9, "model"

    invoke-virtual {p1, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    const-string v9, "backdrop"

    invoke-virtual {p1, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    const-string v9, "symbol"

    invoke-virtual {p1, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pattern"

    invoke-virtual {p1, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    const-string v4, "num"

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 175
    invoke-static {p1, v0, v7, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
