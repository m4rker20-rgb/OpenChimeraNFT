.class public final Lcom/chimeranft/core/ChimeraGiftsActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field private static final ADD:I = 0xa411

.field private static final CATALOG:I = 0xa413

.field private static final COLLECTIONS:I = 0xa415

.field private static final COLUMNS:I = 0x3

.field private static final CONSTRUCTOR:I = 0xa414

.field public static final Companion:Lcom/chimeranft/core/ChimeraGiftsActivity$Companion;

.field private static final GIFT_BASE:I = 0xa474

.field private static final MARKET_SPEND:I = 0xa41c

.field private static final RELOAD:I = 0xa412

.field private static final SHOW_UNAVAILABLE:I = 0xa41b


# instance fields
.field private final shown:Ljava/util/ArrayList;

.field private toolbar:Lcom/chimeranft/core/GiftToolbar;


# direct methods
.method public static synthetic $r8$lambda$6mYQQIWCmyO2F2nA-jn-NinaOzY(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraGiftsActivity;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraGiftsActivity;->onClick$lambda$1(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraGiftsActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AdBD1uEl9RMQ4ZNG06tokFjSdHY(Lcom/chimeranft/core/ChimeraGiftsActivity;J)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ChimeraGiftsActivity;->confirmRemoval$lambda$7(Lcom/chimeranft/core/ChimeraGiftsActivity;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MHaU128gpphU8NE1K-JGJ9vd6do(Ljava/util/List;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/StringBuilder;JZJI)Lkotlin/Unit;
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$lambda$6(Ljava/util/List;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/StringBuilder;JZJI)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TlSp1iPhb32uF4RvI02z9MnYQ2s(Z)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/ChimeraGiftsActivity;->onClick$lambda$2(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZOHDuIhcoOfCS3y66AD0bkgFkcE(Lcom/chimeranft/core/ChimeraGiftsActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/ChimeraGiftsActivity;->bar$lambda$0(Lcom/chimeranft/core/ChimeraGiftsActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eWG5QHOhj9Yvg2ozk-h-o6Kqf-M(Z)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/ChimeraGiftsActivity;->onClick$lambda$3(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraGiftsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraGiftsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraGiftsActivity;->Companion:Lcom/chimeranft/core/ChimeraGiftsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->shown:Ljava/util/ArrayList;

    return-void
.end method

.method private final bar()Lcom/chimeranft/core/GiftToolbar;
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->toolbar:Lcom/chimeranft/core/GiftToolbar;

    if-nez v0, :cond_14

    .line 218
    new-instance v0, Lcom/chimeranft/core/GiftToolbar;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/chimeranft/core/ChimeraGiftsActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/chimeranft/core/GiftToolbar;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 219
    iput-object v0, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->toolbar:Lcom/chimeranft/core/GiftToolbar;

    :cond_14
    return-object v0
.end method

.method private static final bar$lambda$0(Lcom/chimeranft/core/ChimeraGiftsActivity;)Lkotlin/Unit;
    .registers 2

    .line 218
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getDestroyed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final collectionsSummary()Ljava/lang/String;
    .registers 8

    .line 277
    sget-object v0, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftForge;->collections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_15

    .line 278
    const-string v0, "ChimeraCollectionsEmpty"

    const-string v1, "\u041f\u043e\u043a\u0430 \u043d\u0435\u0442 \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0439"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_15
    const-string v5, "%d \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438"

    const-string v6, "%d \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0439"

    .line 279
    const-string v2, "ChimeraPluralCollections"

    const-string v4, "%d \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->plural(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final confirmRemoval(Ljava/lang/String;J)V
    .registers 7

    .line 341
    const-string v0, "ChimeraGiftRemove"

    const-string v1, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u043f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "ChimeraGiftRemoveHint"

    const-string v2, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a \u0431\u0443\u0434\u0435\u0442 \u0443\u0434\u0430\u043b\u0451\u043d \u043d\u0430\u0432\u0441\u0435\u0433\u0434\u0430"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 341
    new-instance v1, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3}, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/chimeranft/core/ChimeraGiftsActivity;J)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final confirmRemoval$lambda$7(Lcom/chimeranft/core/ChimeraGiftsActivity;J)Lkotlin/Unit;
    .registers 4

    .line 343
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->removeGift(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChimeraGiftRemoved"

    const-string v0, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a \u0443\u0434\u0430\u043b\u0451\u043d"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final giftId(Lorg/json/JSONObject;)J
    .registers 7

    .line 348
    const-string v0, "unique_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_d

    return-wide v3

    .line 349
    :cond_d
    const-string v0, "saved_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final giftRow(ILorg/json/JSONObject;)Lorg/telegram/ui/Components/UItem;
    .registers 13

    .line 258
    const-string v0, "ChimeraGift"

    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    const-string v2, "model"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_25
    const-string v2, "backdrop"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 265
    const-string v2, "kind"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_49

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_49
    const-string v2, "hidden"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "ChimeraGiftHidden"

    const-string v3, "\u0441\u043a\u0440\u044b\u0442 \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0435"

    invoke-virtual {p0, v2, v3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    const v2, 0xa474

    add-int/2addr p1, v2

    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v1, 0x0

    goto :goto_77

    :cond_69
    const/16 v8, 0x3e

    const/4 v9, 0x0

    const-string v2, " \u00b7 "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 269
    :goto_77
    const-string v2, "msg_emoji_gem"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->cardOf(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 271
    const-string v0, "num"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_9c

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    :cond_9c
    return-object p1
.end method

.method private final giftsHeader(I)Ljava/lang/String;
    .registers 7

    .line 226
    const-string v0, "ChimeraGiftsSection"

    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043a\u0438"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->shown:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, " \u00b7 "

    if-ne v1, p1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 228
    :cond_25
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->shown:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "ChimeraOutOf"

    const-string v4, "\u0438\u0437"

    invoke-virtual {p0, v3, v4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final onClick$lambda$1(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraGiftsActivity;)Lkotlin/Unit;
    .registers 4

    .line 239
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 240
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 241
    :cond_d
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->addGift(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChimeraGiftAdded"

    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d"

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$2(Z)Lkotlin/Unit;
    .registers 2

    .line 245
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setShowUnavailableGifts(I)Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$3(Z)Lkotlin/Unit;
    .registers 2

    .line 246
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setMarketSpendEnabled(I)Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openConstructor()V
    .registers 4

    .line 336
    sget-object v0, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftForge;->catalog(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftForge;->ensureLoaded()I

    .line 337
    :cond_10
    new-instance v0, Lcom/chimeranft/core/ChimeraCatalogActivity;

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraCatalogActivity;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final showGift(I)V
    .registers 17

    move/from16 v1, p1

    .line 284
    iget-object v2, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->shown:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_d

    return-void

    .line 285
    :cond_d
    invoke-direct {p0, v2}, Lcom/chimeranft/core/ChimeraGiftsActivity;->giftId(Lorg/json/JSONObject;)J

    move-result-wide v5

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    const-string v3, "\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435"

    const-string v7, "title"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ChimeraGiftTitle"

    invoke-static {v4, p0, v10, v3, v9}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v3, "num"

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v3, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v3, v11, v9

    if-lez v3, :cond_43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v8

    :goto_44
    const-string v11, "ChimeraGiftNumber"

    const-string v12, "\u041d\u043e\u043c\u0435\u0440"

    invoke-static {v4, p0, v11, v12, v3}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v3, "model"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "ChimeraGiftModel"

    const-string v12, "\u041c\u043e\u0434\u0435\u043b\u044c"

    invoke-static {v4, p0, v11, v12, v3}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v3, "backdrop"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "ChimeraGiftBackdrop"

    const-string v12, "\u0424\u043e\u043d"

    invoke-static {v4, p0, v11, v12, v3}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v3, "symbol"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "pattern"

    invoke-virtual {v2, v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "ChimeraGiftSymbol"

    const-string v12, "\u0423\u0437\u043e\u0440"

    invoke-static {v4, p0, v11, v12, v3}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v3, "custom_from"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "ChimeraGiftFrom"

    const-string v12, "\u041e\u0442 \u043a\u043e\u0433\u043e"

    invoke-static {v4, p0, v11, v12, v3}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v3, "custom_date"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "ChimeraGiftDate"

    const-string v12, "\u0414\u0430\u0442\u0430"

    invoke-static {v4, p0, v11, v12, v3}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v3, "custom_comment"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "ChimeraGiftComment"

    const-string v12, "\u041a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0439"

    invoke-static {v4, p0, v11, v12, v3}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v3, "ton_address"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "ChimeraGiftTon"

    const-string v12, "TON"

    invoke-static {v4, p0, v11, v12, v3}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v3, v5, v9

    if-lez v3, :cond_b4

    .line 300
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    :cond_b4
    const-string v3, "ChimeraGiftId"

    const-string v11, "ID"

    invoke-static {v4, p0, v3, v11, v8}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "ChimeraGift"

    const-string v8, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, v3, v8}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    const-string v7, "hidden"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move v11, v7

    xor-int/lit8 v7, v11, 0x1

    .line 304
    const-string v12, "base_gift_id"

    invoke-virtual {v2, v12, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-lez v14, :cond_e5

    .line 305
    const-string v9, "crafted"

    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e5

    const/4 v2, 0x1

    goto :goto_e6

    :cond_e5
    const/4 v2, 0x0

    .line 306
    :goto_e6
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    const-string v10, "ChimeraGiftDetails"

    const-string v14, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442\u044b"

    invoke-virtual {p0, v10, v14}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_102

    .line 308
    const-string v10, "ChimeraGiftHide"

    const-string v11, "\u0421\u043a\u0440\u044b\u0442\u044c \u0443 \u0441\u0435\u0431\u044f \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0435"

    invoke-virtual {p0, v10, v11}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_10a

    .line 309
    :cond_102
    const-string v10, "ChimeraGiftShow"

    const-string v11, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0435"

    invoke-virtual {p0, v10, v11}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 308
    :goto_10a
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_11a

    .line 310
    const-string v2, "ChimeraCraft"

    const-string v10, "\u041a\u0440\u0430\u0444\u0442"

    invoke-virtual {p0, v2, v10}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_11a
    const-string v2, "ChimeraGiftRemove"

    const-string v10, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u043f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, v2, v10}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0xa474

    add-int/2addr v1, v2

    .line 312
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v10

    .line 790
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v9, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 791
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_13d
    if-ge v11, v2, :cond_14f

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v11, v11, 0x1

    .line 792
    check-cast v14, Ljava/lang/CharSequence;

    .line 317
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 792
    invoke-interface {v1, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    .line 797
    :cond_14f
    new-array v2, v8, [Ljava/lang/CharSequence;

    invoke-interface {v9, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [Ljava/lang/CharSequence;

    .line 318
    new-instance v0, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-wide v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/StringBuilder;JZJ)V

    move-object v2, v3

    const/4 v4, -0x1

    move-object v5, v0

    move-object v1, v10

    move-object v3, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->picker(Lorg/telegram/ui/Components/UItem;Ljava/lang/String;[Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final showGift$lambda$6(Ljava/util/List;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/StringBuilder;JZJI)Lkotlin/Unit;
    .registers 12

    .line 319
    invoke-static {p0, p9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/String;

    const/4 v0, 0x0

    .line 320
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 321
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "ChimeraNoAttributes"

    const-string p3, "\u041d\u0435\u0442 \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u043e\u0432"

    invoke-virtual {p1, p0, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    :cond_20
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 320
    :goto_24
    invoke-virtual {p1, p2, p0}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_28
    const/4 p3, 0x1

    .line 322
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p9, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4d

    cmp-long p0, p4, v0

    if-lez p0, :cond_6b

    sget-object p0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    xor-int/lit8 p2, p6, 0x1

    invoke-virtual {p0, p4, p5, p2}, Lcom/chimeranft/core/Main$Companion;->setGiftVisibility(JI)Ljava/lang/String;

    move-result-object p0

    .line 323
    const-string p2, "ChimeraGiftVisibilityChanged"

    const-string p3, "\u0412\u0438\u0434\u0438\u043c\u043e\u0441\u0442\u044c \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0430"

    invoke-virtual {p1, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 322
    invoke-virtual {p1, p0, p2}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 324
    :cond_4d
    const-string p0, "ChimeraCraft"

    const-string p3, "\u041a\u0440\u0430\u0444\u0442"

    invoke-virtual {p1, p0, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p9, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    new-instance p0, Lcom/chimeranft/core/ChimeraCraftActivity;

    invoke-direct {p0, p7, p8, p2}, Lcom/chimeranft/core/ChimeraCraftActivity;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_6b

    :cond_64
    cmp-long p0, p4, v0

    if-lez p0, :cond_6b

    .line 325
    invoke-direct {p1, p2, p4, p5}, Lcom/chimeranft/core/ChimeraGiftsActivity;->confirmRemoval(Ljava/lang/String;J)V

    .line 327
    :cond_6b
    :goto_6b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showGift$line(Ljava/lang/StringBuilder;Lcom/chimeranft/core/ChimeraGiftsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 288
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 289
    :cond_10
    invoke-virtual {p1, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 4

    .line 155
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 156
    :try_start_4
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_c

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSpanCount(I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    :catchall_c
    :cond_c
    return-object p1
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 15

    .line 167
    sget-object p2, Lcom/chimeranft/core/ChimeraState;->INSTANCE:Lcom/chimeranft/core/ChimeraState;

    invoke-virtual {p2}, Lcom/chimeranft/core/ChimeraState;->gifts()Lorg/json/JSONArray;

    move-result-object v0

    .line 168
    invoke-virtual {p2}, Lcom/chimeranft/core/ChimeraState;->read()Lorg/json/JSONObject;

    move-result-object p2

    .line 169
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraGiftsActivity;->bar()Lcom/chimeranft/core/GiftToolbar;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->shown:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v2, :cond_30

    .line 173
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_22

    goto :goto_2d

    .line 174
    :cond_22
    invoke-virtual {v1, v5}, Lcom/chimeranft/core/GiftToolbar;->matches(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->shown:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 177
    :cond_30
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9d

    .line 178
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/chimeranft/core/ChimeraGiftsActivity;->giftsHeader(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->shown:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 183
    sget-object v6, Lcom/chimeranft/core/GiftTiles;->INSTANCE:Lcom/chimeranft/core/GiftTiles;

    const v7, 0xa474

    add-int/2addr v7, v2

    invoke-virtual {v6, v7, v5}, Lcom/chimeranft/core/GiftTiles;->tile(ILorg/json/JSONObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    if-nez v6, :cond_71

    invoke-direct {p0, v2, v5}, Lcom/chimeranft/core/ChimeraGiftsActivity;->giftRow(ILorg/json/JSONObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    :cond_71
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_53

    .line 185
    :cond_76
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->shown:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v1, "ChimeraGiftsNoMatch"

    .line 186
    const-string v2, "\u041d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u043e \u2014 \u0438\u0437\u043c\u0435\u043d\u0438 \u043f\u043e\u0438\u0441\u043a \u0438\u043b\u0438 \u0444\u0438\u043b\u044c\u0442\u0440."

    .line 185
    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    .line 187
    :cond_8e
    const-string v1, "ChimeraGiftsFooter"

    .line 188
    const-string v2, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u043d\u0430 \u043f\u043e\u0434\u0430\u0440\u043e\u043a, \u0447\u0442\u043e\u0431\u044b \u043f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u044b \u0438\u043b\u0438 \u0443\u0434\u0430\u043b\u0438\u0442\u044c \u0435\u0433\u043e."

    .line 187
    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_9d
    :goto_9d
    const-string v1, "ChimeraGiftsCreate"

    const-string v2, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v1, "ChimeraCatalogValue"

    const-string v2, "\u043f\u043e\u0434\u0430\u0440\u043a\u0438 Telegram"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const v5, 0xa413

    .line 192
    const-string v6, "msg_emoji_gem"

    const-string v7, "ChimeraCatalog"

    const-string v8, "\u041a\u0430\u0442\u0430\u043b\u043e\u0433 \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v1, "ChimeraConstructorValue"

    const-string v2, "\u043c\u043e\u0434\u0435\u043b\u044c, \u0443\u0437\u043e\u0440, \u0444\u043e\u043d"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const v5, 0xa414

    .line 194
    const-string v6, "settings_gift"

    const-string v7, "ChimeraConstructor"

    const-string v8, "\u041a\u043e\u043d\u0441\u0442\u0440\u0443\u043a\u0442\u043e\u0440 NFT"

    invoke-virtual/range {v4 .. v9}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v8, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438"

    .line 197
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraGiftsActivity;->collectionsSummary()Ljava/lang/String;

    move-result-object v9

    const v5, 0xa415

    .line 196
    const-string v6, "msg_folders"

    const-string v7, "ChimeraCollections"

    invoke-virtual/range {v4 .. v9}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v1, "ChimeraJsonImportValue"

    const-string v2, "\u0438\u0437 JSON"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const v5, 0xa411

    .line 198
    const-string v6, "msg_media"

    const-string v7, "ChimeraAddGift"

    const-string v8, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u043f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual/range {v4 .. v9}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v10, 0x10

    const/4 v11, 0x0

    const v5, 0xa412

    .line 200
    const-string v6, "msg_retry"

    const-string v7, "ChimeraReloadGifts"

    const-string v8, "\u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c \u043f\u043e\u0434\u0430\u0440\u043a\u0438"

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/chimeranft/core/ForkPreferences;->row$default(Lcom/chimeranft/core/ForkPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_130

    .line 202
    const-string v0, "ChimeraNoGifts"

    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043a\u043e\u0432 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    :cond_130
    const-string v0, ""

    .line 201
    :goto_132
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v0, "ChimeraMarketSection"

    const-string v1, "\u041c\u0430\u0440\u043a\u0435\u0442"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v0, "show_unavailable_gifts"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    const v5, 0xa41b

    .line 205
    const-string v6, "ChimeraShowUnavailable"

    const-string v7, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0440\u0430\u0441\u043f\u0440\u043e\u0434\u0430\u043d\u043d\u044b\u0435 \u043f\u043e\u0434\u0430\u0440\u043a\u0438"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/chimeranft/core/ForkPreferences;->switchWith(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v0, "market_spend_enabled"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    const v5, 0xa41c

    .line 207
    const-string v6, "ChimeraMarketSpend"

    const-string v7, "\u0421\u043f\u0438\u0441\u044b\u0432\u0430\u0442\u044c \u0432\u0438\u0437\u0443\u0430\u043b\u044c\u043d\u044b\u0435 \u0437\u0432\u0451\u0437\u0434\u044b \u043d\u0430 \u043c\u0430\u0440\u043a\u0435\u0442\u0435"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/chimeranft/core/ForkPreferences;->switchWith(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 208
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 207
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    const-string p2, "ChimeraMarketFooter"

    .line 210
    const-string v0, "\u041f\u043e\u043a\u0443\u043f\u043a\u0438 \u043d\u0430 \u043c\u0430\u0440\u043a\u0435\u0442\u0435 \u043d\u0438\u043a\u043e\u0433\u0434\u0430 \u043d\u0435 \u0442\u0440\u0430\u0442\u044f\u0442 \u043d\u0430\u0441\u0442\u043e\u044f\u0449\u0438\u0435 \u0437\u0432\u0451\u0437\u0434\u044b. \u0415\u0441\u043b\u0438 \u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u043e, \u0432\u0438\u0437\u0443\u0430\u043b\u044c\u043d\u044b\u0439 \u0431\u0430\u043b\u0430\u043d\u0441 \u0442\u043e\u0436\u0435 \u043e\u0441\u0442\u0430\u0451\u0442\u0441\u044f \u043d\u0430 \u043c\u0435\u0441\u0442\u0435."

    .line 209
    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 152
    const-string v0, "ChimeraMyGifts"

    const-string v1, "\u041c\u043e\u0438 \u043f\u043e\u0434\u0430\u0440\u043a\u0438"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 14

    .line 232
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    packed-switch p2, :pswitch_data_78

    packed-switch p2, :pswitch_data_86

    const p1, 0xa474

    if-lt p2, p1, :cond_11

    sub-int/2addr p2, p1

    .line 247
    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraGiftsActivity;->showGift(I)V

    :cond_11
    return-void

    .line 246
    :pswitch_12
    new-instance p2, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 245
    :pswitch_1b
    new-instance p2, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 235
    :pswitch_24
    new-instance p1, Lcom/chimeranft/core/ChimeraCollectionsActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/ChimeraCollectionsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 234
    :pswitch_2d
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraGiftsActivity;->openConstructor()V

    return-void

    .line 233
    :pswitch_31
    new-instance p1, Lcom/chimeranft/core/ChimeraCatalogActivity;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/chimeranft/core/ChimeraCatalogActivity;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 244
    :pswitch_3b
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/Main$Companion;->reloadAll()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChimeraGiftsReloaded"

    const-string p3, "\u041f\u043e\u0434\u0430\u0440\u043a\u0438 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u044b"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 237
    :pswitch_4d
    const-string p1, "ChimeraGiftJsonHint"

    const-string p2, "JSON \u043f\u043e\u0434\u0430\u0440\u043a\u0430 \u0441 \u043f\u043e\u043b\u0435\u043c b64"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object p1

    .line 238
    const-string p2, "ChimeraAddGift"

    const-string p3, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u043f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance p4, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1, p0}, Lcom/chimeranft/core/ChimeraGiftsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraGiftsActivity;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void

    nop

    :pswitch_data_78
    .packed-switch 0xa411
        :pswitch_4d
        :pswitch_3b
        :pswitch_31
        :pswitch_2d
        :pswitch_24
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0xa41b
        :pswitch_1b
        :pswitch_12
    .end packed-switch
.end method

.method public onFragmentDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/chimeranft/core/ChimeraGiftsActivity;->toolbar:Lcom/chimeranft/core/GiftToolbar;

    .line 162
    sget-object v0, Lcom/chimeranft/core/GiftTiles;->INSTANCE:Lcom/chimeranft/core/GiftTiles;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftTiles;->forget()V

    .line 163
    invoke-super {p0}, Lcom/chimeranft/core/ForkPreferences;->onFragmentDestroy()V

    return-void
.end method
