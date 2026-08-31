.class public final Lcom/chimeranft/core/ChimeraAttributeActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field private static final BASE:I = 0xbbe4

.field public static final Companion:Lcom/chimeranft/core/ChimeraAttributeActivity$Companion;


# instance fields
.field private final current:Ljava/lang/String;

.field private final onPick:Lkotlin/jvm/functions/Function1;

.field private final options:Ljava/util/List;

.field private final screenTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraAttributeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraAttributeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraAttributeActivity;->Companion:Lcom/chimeranft/core/ChimeraAttributeActivity$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    .line 404
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    .line 400
    iput-object p1, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->screenTitle:Ljava/lang/String;

    .line 401
    iput-object p2, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->options:Ljava/util/List;

    .line 402
    iput-object p3, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->current:Ljava/lang/String;

    .line 403
    iput-object p4, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->onPick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final swatch(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 437
    const-string v0, "center_color"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 439
    :cond_b
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 440
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    .line 441
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x16

    .line 442
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result p1

    .line 443
    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-object v0
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 11

    .line 409
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->screenTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u00b7 "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->options:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    .line 411
    sget-object v4, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/chimeranft/core/GiftForge;->label(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "document"

    invoke-static {v5, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_54

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_55

    :cond_54
    const/4 v5, 0x0

    .line 413
    :goto_55
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/chimeranft/core/ChimeraAttributeActivity;->swatch(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0xbbe4

    if-eqz v5, :cond_68

    add-int/2addr v7, v1

    .line 415
    invoke-static {v7, v4, v5}, Lorg/telegram/ui/Components/UItem;->asStickerButton(ILjava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    goto :goto_7b

    :cond_68
    if-eqz v6, :cond_70

    add-int/2addr v7, v1

    .line 416
    invoke-static {v7, v6, v4}, Lorg/telegram/ui/Components/UItem;->asButton(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    goto :goto_7b

    :cond_70
    add-int/2addr v7, v1

    .line 417
    const-string v5, "msg_colors"

    invoke-virtual {p0, v5}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result v5

    invoke-static {v7, v5, v4}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    .line 419
    :goto_7b
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->current:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-virtual {v4}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    .line 420
    :cond_8a
    iget-object v3, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-eq v1, v3, :cond_95

    goto :goto_96

    :cond_95
    const/4 v5, 0x0

    :goto_96
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_2b

    .line 422
    :cond_9f
    const-string p2, "ChimeraAttributeFooter"

    .line 423
    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u043d\u0442 \u0440\u044f\u0434\u043e\u043c \u0441 \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u0435\u043c \u2014 \u0440\u0435\u0434\u043a\u043e\u0441\u0442\u044c \u044d\u0442\u043e\u0433\u043e \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u0430 \u0432 \u0430\u043f\u0433\u0440\u0435\u0439\u0434\u0435 Telegram."

    .line 422
    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->screenTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 6

    .line 427
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->options:Ljava/util/List;

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p3, 0xbbe4

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-nez p1, :cond_11

    return-void

    .line 428
    :cond_11
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraAttributeActivity;->onPick:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->finishFragment()V

    return-void
.end method
