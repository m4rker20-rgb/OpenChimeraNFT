.class public final Lcom/chimeranft/core/ChimeraCatalogActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/ChimeraCatalogActivity$Companion;

.field private static final GIFT_BASE:I = 0xb414

.field private static final NFT_ONLY:I = 0xb3b1


# instance fields
.field private gifts:Ljava/util/List;

.field private nftOnly:Z

.field private final title:Ljava/lang/String;

.field private waitingForCatalog:Z


# direct methods
.method public static synthetic $r8$lambda$GPsPSdz9TSElbH8oakJAZhJUTQk(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ChimeraCatalogActivity;->askQuantity$lambda$5(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qd1j8ShSLexiqpCOC5C9d4x7P8Q(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;I)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ChimeraCatalogActivity;->openActions$lambda$4(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aGlR5aVfVBg9s6M7xHpF9AKeF3c(Lcom/chimeranft/core/ChimeraCatalogActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/ChimeraCatalogActivity;->fillItems$lambda$0(Lcom/chimeranft/core/ChimeraCatalogActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$paDelwTet40ltjZ7aUrM6obOf7M(Lcom/chimeranft/core/ChimeraCatalogActivity;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraCatalogActivity;->onClick$lambda$2(Lcom/chimeranft/core/ChimeraCatalogActivity;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraCatalogActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraCatalogActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraCatalogActivity;->Companion:Lcom/chimeranft/core/ChimeraCatalogActivity$Companion;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 23
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->nftOnly:Z

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->gifts:Ljava/util/List;

    if-eqz p1, :cond_10

    .line 32
    const-string p1, "ChimeraCatalogNft"

    goto :goto_12

    :cond_10
    const-string p1, "ChimeraCatalog"

    :goto_12
    iput-object p1, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->title:Ljava/lang/String;

    return-void
.end method

.method private final askQuantity(Lcom/chimeranft/core/GiftForge$Base;)V
    .registers 12

    .line 116
    const-string v0, "ChimeraCatalogQuantity"

    const-string v1, "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v4, "5"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object v0

    .line 117
    const-string v1, "ChimeraCatalogAddMany"

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e"

    invoke-virtual {p0, v1, v3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v3, "ChimeraCatalogQuantityHint"

    const-string v4, "\u041e\u0442 1 \u0434\u043e 99"

    invoke-virtual {p0, v3, v4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 117
    new-instance v4, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v0}, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;Lcom/chimeranft/core/ForkPreferences$Field;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final askQuantity$lambda$5(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 6

    .line 119
    sget-object v0, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/chimeranft/core/ForkPreferences$Field;->int(I)I

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/chimeranft/core/GiftForge;->addRegular(Lcom/chimeranft/core/GiftForge$Base;Ljava/lang/String;I)Lcom/chimeranft/core/GiftForge$Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/ChimeraCatalogActivity;->report(Lcom/chimeranft/core/GiftForge$Result;)V

    .line 120
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final fillItems$lambda$0(Lcom/chimeranft/core/ChimeraCatalogActivity;)V
    .registers 2

    .line 43
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getDestroyed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    :cond_9
    return-void
.end method

.method private static final onClick$lambda$2(Lcom/chimeranft/core/ChimeraCatalogActivity;Z)Lkotlin/Unit;
    .registers 2

    .line 90
    iput-boolean p1, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->nftOnly:Z

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->waitingForCatalog:Z

    .line 92
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openActions(Lorg/telegram/ui/Components/UItem;Lcom/chimeranft/core/GiftForge$Base;)V
    .registers 10

    .line 101
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_12

    const-string v0, "ChimeraGift"

    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    move-object v3, v0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    const-string v1, "ChimeraCatalogAddOne"

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u043e\u0434\u0438\u043d"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "ChimeraCatalogAddMany"

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge$Base;->getUpgradable()Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "ChimeraCatalogBuild"

    const-string v2, "\u0421\u043e\u0431\u0440\u0430\u0442\u044c NFT"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    const/4 v1, 0x0

    .line 456
    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/CharSequence;

    .line 106
    new-instance v6, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p2}, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda3;-><init>(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;)V

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->picker(Lorg/telegram/ui/Components/UItem;Ljava/lang/String;[Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final openActions$lambda$4(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;I)Lkotlin/Unit;
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_1a

    if-eq p2, v0, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    goto :goto_27

    .line 110
    :cond_9
    new-instance p2, Lcom/chimeranft/core/ChimeraConstructorActivity;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getId()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/chimeranft/core/ChimeraConstructorActivity;-><init>(J)V

    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_27

    .line 109
    :cond_16
    invoke-direct {p0, p1}, Lcom/chimeranft/core/ChimeraCatalogActivity;->askQuantity(Lcom/chimeranft/core/GiftForge$Base;)V

    goto :goto_27

    .line 108
    :cond_1a
    sget-object p2, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lcom/chimeranft/core/GiftForge;->addRegular(Lcom/chimeranft/core/GiftForge$Base;Ljava/lang/String;I)Lcom/chimeranft/core/GiftForge$Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/ChimeraCatalogActivity;->report(Lcom/chimeranft/core/GiftForge$Result;)V

    .line 112
    :goto_27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final price(Lcom/chimeranft/core/GiftForge$Base;)Ljava/lang/String;
    .registers 7

    .line 80
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getStars()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_20

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getStars()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2605 "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    const-string p1, "\u2605 \u2014"

    return-object p1
.end method

.method private final report(Lcom/chimeranft/core/GiftForge$Result;)V
    .registers 4

    .line 124
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Result;->getOk()Z

    move-result v0

    if-nez v0, :cond_14

    .line 125
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Result;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    return-void

    .line 128
    :cond_14
    const-string v0, "ChimeraCatalogAdded"

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Result;->getCount()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->info(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    return-void
.end method

.method private final rowTitle(Lcom/chimeranft/core/GiftForge$Base;)Ljava/lang/String;
    .registers 5

    .line 72
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_12

    const-string v0, "ChimeraGift"

    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v0, "   "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/chimeranft/core/ChimeraCatalogActivity;->price(Lcom/chimeranft/core/GiftForge$Base;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getLimited()Z

    move-result v0

    const-string v2, " \u00b7 "

    if-eqz v0, :cond_35

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/chimeranft/core/ChimeraCatalogActivity;->supply(Lcom/chimeranft/core/GiftForge$Base;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_35
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getSoldOut()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ChimeraCatalogSoldOut"

    const-string v0, "\u0440\u0430\u0441\u043f\u0440\u043e\u0434\u0430\u043d"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final supply(Lcom/chimeranft/core/GiftForge$Base;)Ljava/lang/String;
    .registers 7

    .line 83
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getIssued()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getIssued()J

    move-result-wide v0

    goto :goto_18

    :cond_f
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getTotal()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getRemains()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 84
    :goto_18
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Base;->getTotal()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 11

    .line 38
    sget-object p2, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    iget-boolean v0, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->nftOnly:Z

    invoke-virtual {p2, v0}, Lcom/chimeranft/core/GiftForge;->catalog(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->gifts:Ljava/util/List;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->waitingForCatalog:Z

    if-nez v0, :cond_2d

    .line 40
    iput-boolean v1, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->waitingForCatalog:Z

    .line 41
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge;->ensureLoaded()I

    .line 43
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda2;-><init>(Lcom/chimeranft/core/ChimeraCatalogActivity;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    :cond_2d
    const-string p2, "ChimeraCatalogFilter"

    const-string v0, "\u0424\u0438\u043b\u044c\u0442\u0440"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string p2, "\u0422\u043e\u043b\u044c\u043a\u043e \u0443\u043b\u0443\u0447\u0448\u0430\u0435\u043c\u044b\u0435"

    iget-boolean v0, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->nftOnly:Z

    const v2, 0xb3b1

    const-string v3, "ChimeraCatalogNftOnly"

    invoke-virtual {p0, v2, v3, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->switch(ILjava/lang/String;Ljava/lang/String;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->gifts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 52
    const-string p2, "ChimeraCatalogLoading"

    .line 53
    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u044e \u043a\u0430\u0442\u0430\u043b\u043e\u0433 Telegram\u2026 \u041e\u0442\u043a\u0440\u043e\u0439\u0442\u0435 \u043b\u044e\u0431\u043e\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0441 \u043f\u043e\u0434\u0430\u0440\u043a\u0430\u043c\u0438, \u0435\u0441\u043b\u0438 \u0441\u043f\u0438\u0441\u043e\u043a \u043d\u0435 \u043f\u043e\u044f\u0432\u0438\u043b\u0441\u044f."

    .line 52
    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 57
    :cond_70
    const-string p2, "ChimeraCatalog"

    const-string v2, "\u041a\u0430\u0442\u0430\u043b\u043e\u0433 \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432"

    invoke-virtual {p0, p2, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->gifts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u00b7 "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->gifts:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_a0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/GiftForge$Base;

    .line 59
    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Base;->getSticker()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_b9

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_ba

    :cond_b9
    const/4 v5, 0x0

    :goto_ba
    const v6, 0xb414

    if-eqz v5, :cond_c9

    add-int/2addr v6, v2

    .line 61
    invoke-direct {p0, v4}, Lcom/chimeranft/core/ChimeraCatalogActivity;->rowTitle(Lcom/chimeranft/core/GiftForge$Base;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/UItem;->asStickerButton(ILjava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    goto :goto_dc

    :cond_c9
    add-int/2addr v6, v2

    .line 63
    const-string v5, "msg_gift_premium"

    invoke-virtual {p0, v5}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/chimeranft/core/ChimeraCatalogActivity;->rowTitle(Lcom/chimeranft/core/GiftForge$Base;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/chimeranft/core/ChimeraCatalogActivity;->price(Lcom/chimeranft/core/GiftForge$Base;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v5, v7, v4}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    .line 65
    :goto_dc
    iget-object v5, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->gifts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-eq v2, v5, :cond_e7

    const/4 v2, 0x1

    goto :goto_e8

    :cond_e7
    const/4 v2, 0x0

    :goto_e8
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_a0

    .line 67
    :cond_f1
    const-string p2, "ChimeraCatalogFooter"

    .line 68
    const-string v0, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a \u0434\u043e\u0431\u0430\u0432\u043b\u044f\u0435\u0442\u0441\u044f \u0432\u0438\u0437\u0443\u0430\u043b\u044c\u043d\u043e: \u0437\u0432\u0451\u0437\u0434\u044b \u043d\u0435 \u0441\u043f\u0438\u0441\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u0438 Telegram \u043e\u0431 \u044d\u0442\u043e\u043c \u043d\u0435 \u0437\u043d\u0430\u0435\u0442."

    .line 67
    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->title:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->nftOnly:Z

    if-eqz v1, :cond_9

    const-string v1, "\u041a\u0430\u0442\u0430\u043b\u043e\u0433 NFT"

    goto :goto_b

    :cond_9
    const-string v1, "\u041a\u0430\u0442\u0430\u043b\u043e\u0433 \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432"

    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 6

    .line 88
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p3, 0xb3b1

    if-ne p2, p3, :cond_10

    .line 89
    new-instance p2, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda1;-><init>(Lcom/chimeranft/core/ChimeraCatalogActivity;)V

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_10
    const p3, 0xb414

    if-ge p2, p3, :cond_16

    goto :goto_21

    .line 96
    :cond_16
    iget-object p4, p0, Lcom/chimeranft/core/ChimeraCatalogActivity;->gifts:Ljava/util/List;

    sub-int/2addr p2, p3

    invoke-static {p4, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chimeranft/core/GiftForge$Base;

    if-nez p2, :cond_22

    :goto_21
    return-void

    .line 97
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/ChimeraCatalogActivity;->openActions(Lorg/telegram/ui/Components/UItem;Lcom/chimeranft/core/GiftForge$Base;)V

    return-void
.end method
