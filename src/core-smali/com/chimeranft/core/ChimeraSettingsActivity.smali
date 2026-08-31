.class public final Lcom/chimeranft/core/ChimeraSettingsActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field private static final ABOUT:I = 0xa030

.field private static final BALANCE:I = 0xa02c

.field public static final Companion:Lcom/chimeranft/core/ChimeraSettingsActivity$Companion;

.field private static final DATA:I = 0xa02e

.field private static final DIAG:I = 0xa02f

.field private static final GIFTS:I = 0xa029

.field private static final PREMIUM:I = 0xa02b

.field private static final PROFILE:I = 0xa02a

.field private static final SYNC:I = 0xa02d


# direct methods
.method public static synthetic $r8$lambda$b-oWhz9VAzvKa7CKEvIsP7zRWqA(Lcom/chimeranft/core/ChimeraSettingsActivity;Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ChimeraSettingsActivity;->editBalance$lambda$0(Lcom/chimeranft/core/ChimeraSettingsActivity;Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraSettingsActivity;->Companion:Lcom/chimeranft/core/ChimeraSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    return-void
.end method

.method private final balanceSummary(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .line 116
    const-string v0, "visual_balance_configured"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 117
    const-string p1, "ChimeraBalanceEmpty"

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c Stars \u0438 GRAM"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_11
    const-string v0, "visual_stars"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v2, "visual_grams"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2605 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " GRAM"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final editBalance()V
    .registers 16

    .line 94
    sget-object v1, Lcom/chimeranft/core/ChimeraState;->INSTANCE:Lcom/chimeranft/core/ChimeraState;

    invoke-virtual {v1}, Lcom/chimeranft/core/ChimeraState;->read()Lorg/json/JSONObject;

    move-result-object v8

    .line 95
    const-string v9, "ChimeraStars"

    const-string v10, "\u0417\u0432\u0451\u0437\u0434\u044b"

    invoke-virtual {p0, v9, v10}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visual_stars"

    const-string v11, "0"

    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object v12

    .line 96
    const-string v13, "ChimeraGrams"

    const-string v14, "GRAM"

    invoke-virtual {p0, v13, v14}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visual_grams"

    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object v1

    .line 97
    const-string v2, "ChimeraBalances"

    const-string v3, "\u0411\u0430\u043b\u0430\u043d\u0441"

    invoke-virtual {p0, v2, v3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {p0, v9, v10}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 99
    invoke-virtual {p0, v13, v14}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .line 100
    const-string v5, "ChimeraBalanceHint"

    .line 101
    const-string v6, "\u0411\u0430\u043b\u0430\u043d\u0441 \u0432\u0438\u0437\u0443\u0430\u043b\u044c\u043d\u044b\u0439: Telegram \u043e \u043d\u0451\u043c \u043d\u0435 \u0437\u043d\u0430\u0435\u0442 \u0438 \u043d\u0430\u0441\u0442\u043e\u044f\u0449\u0438\u0435 \u0437\u0432\u0451\u0437\u0434\u044b \u043d\u0435 \u0442\u0440\u0430\u0442\u044f\u0442\u0441\u044f."

    .line 100
    invoke-virtual {p0, v5, v6}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v12, v6, v3

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const/4 v3, 0x3

    aput-object v1, v6, v3

    const/4 v3, 0x4

    aput-object v5, v6, v3

    .line 97
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/chimeranft/core/ChimeraSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v12, v1}, Lcom/chimeranft/core/ChimeraSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/chimeranft/core/ChimeraSettingsActivity;Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ForkPreferences$Field;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final editBalance$lambda$0(Lcom/chimeranft/core/ChimeraSettingsActivity;Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 4

    .line 102
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->setVisualBalances(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChimeraSaved"

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final profileSummary(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 11

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    const-string v1, "local_premium"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Premium"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_13
    const-string v1, "username_enabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "ChimeraUsernamesShort"

    const-string v2, "\u044e\u0437\u0435\u0440\u043d\u0435\u0439\u043c\u044b"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_26
    const-string v1, "number_enabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "ChimeraNumbersShort"

    const-string v2, "\u043d\u043e\u043c\u0435\u0440\u0430"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_39
    const-string v1, "rating_enabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const-string p1, "ChimeraRatingShort"

    const-string v1, "\u0440\u0435\u0439\u0442\u0438\u043d\u0433"

    invoke-virtual {p0, p1, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5b

    const-string p1, "ChimeraProfileNotSet"

    const-string v0, "\u041d\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5b
    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, " \u00b7 "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final syncSummary(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 123
    const-string v0, "sync_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "ChimeraSyncOn"

    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :cond_11
    const-string p1, "ChimeraSyncOff"

    const-string v0, "\u0412\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 11

    .line 34
    sget-object p2, Lcom/chimeranft/core/ChimeraState;->INSTANCE:Lcom/chimeranft/core/ChimeraState;

    invoke-virtual {p2}, Lcom/chimeranft/core/ChimeraState;->read()Lorg/json/JSONObject;

    move-result-object p2

    .line 38
    const-string v0, "ChimeraSettingsTitle"

    const-string v1, "Chimera NFT"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v3, "ChimeraSettingsSubtitle"

    const-string v4, "\u043f\u043e\u0434\u0430\u0440\u043a\u0438, \u043f\u0440\u043e\u0444\u0438\u043b\u044c, \u0431\u0430\u043b\u0430\u043d\u0441 \u0438 \u0434\u0430\u043d\u043d\u044b\u0435"

    invoke-virtual {p0, v3, v4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    sget-object v4, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v5

    const-string v6, "gift"

    const-string v7, "raw"

    invoke-virtual {v4, v5, v6, v7}, Lcom/chimeranft/core/ChimeraUi;->identifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 37
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/UItem;->asTopView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v5, "\u041c\u043e\u0438 \u043f\u043e\u0434\u0430\u0440\u043a\u0438"

    .line 44
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->giftsSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xa029

    .line 43
    const-string v3, "msg_emoji_gem"

    const-string v4, "ChimeraMyGifts"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v5, "NFT-\u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    .line 46
    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraSettingsActivity;->profileSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xa02a

    .line 45
    const-string v3, "msg_settings_solar"

    const-string v4, "ChimeraNftProfile"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "local_premium"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 49
    const-string v2, "ChimeraPremiumOn"

    const-string v3, "\u0412\u043a\u043b\u044e\u0447\u0451\u043d \u00b7 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0438\u0440\u0443\u0435\u0442\u0441\u044f"

    invoke-virtual {p0, v2, v3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6f
    move-object v6, v2

    goto :goto_7a

    .line 50
    :cond_71
    const-string v2, "ChimeraPremiumOff"

    const-string v3, "\u0412\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-virtual {p0, v2, v3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6f

    :goto_7a
    const v2, 0xa02b

    .line 48
    const-string v3, "msg_gift_premium_solar"

    const-string v4, "ChimeraLocalPremium"

    const-string v5, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u044b\u0439 Premium"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    if-eqz v0, :cond_8c

    .line 53
    invoke-virtual {v2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    .line 54
    :cond_8c
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v5, "\u0411\u0430\u043b\u0430\u043d\u0441"

    .line 56
    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraSettingsActivity;->balanceSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xa02c

    .line 55
    const-string v3, "msg_payment_card_solar"

    const-string v4, "ChimeraBalances"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v7, 0x0

    .line 56
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v0, "ChimeraExtraSection"

    const-string v2, "\u0414\u043e\u043f\u043e\u043b\u043d\u0438\u0442\u0435\u043b\u044c\u043d\u043e"

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v5, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraSettingsActivity;->syncSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xa02d

    const-string v3, "msg_retry"

    const-string v4, "ChimeraSyncSection"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v5, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f"

    .line 62
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->backupSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xa02e

    .line 61
    const-string v3, "msg_share"

    const-string v4, "ChimeraBackupScreen"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string p2, "ChimeraDiagnosticsValue"

    const-string v0, "\u044f\u0434\u0440\u043e, \u043f\u043e\u0434\u0430\u0440\u043a\u0438, \u0445\u0443\u043a\u0438"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xa02f

    .line 63
    const-string v3, "msg_info"

    const-string v4, "ChimeraDiagnosticsSection"

    const-string v5, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string p2, "ChimeraCore"

    const-string v0, "\u042f\u0434\u0440\u043e"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getVERSION_CODE()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " v"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v2, 0xa030

    .line 65
    const-string v3, "msg2_reactions2"

    const-string v4, "ChimeraAbout"

    const-string v5, "\u041e \u0441\u0431\u043e\u0440\u043a\u0435"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 66
    invoke-virtual {p2, v7}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string p2, "ChimeraRootFooter"

    .line 68
    const-string v0, "\u0412\u0441\u0451, \u0447\u0442\u043e \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u043e \u0437\u0434\u0435\u0441\u044c, \u0441\u0443\u0449\u0435\u0441\u0442\u0432\u0443\u0435\u0442 \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430 \u044d\u0442\u043e\u043c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0435 \u0438 \u0443 \u0434\u0440\u0443\u0433\u0438\u0445 \u0432\u043b\u0430\u0434\u0435\u043b\u044c\u0446\u0435\u0432 \u043f\u043b\u0430\u0433\u0438\u043d\u0430."

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

    .line 31
    const-string v0, "ChimeraSettingsTitle"

    const-string v1, "Chimera NFT"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 6

    .line 72
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    packed-switch p1, :pswitch_data_a0

    return-void

    .line 85
    :pswitch_6
    const-string p1, "ChimeraAbout"

    const-string p2, "\u041e \u0441\u0431\u043e\u0440\u043a\u0435"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    const-string p2, "ChimeraCore"

    const-string p3, "\u042f\u0434\u0440\u043e"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3}, Lcom/chimeranft/core/Main$Companion;->getVERSION_CODE()I

    move-result p3

    .line 87
    const-string p4, "ChimeraAboutBody"

    const-string p5, "NFT-\u043f\u043e\u0434\u0430\u0440\u043a\u0438, \u043e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u044f \u0438 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043c\u0435\u0436\u0434\u0443 \u0432\u043b\u0430\u0434\u0435\u043b\u044c\u0446\u0430\u043c\u0438 \u0441\u0431\u043e\u0440\u043a\u0438. \u0412\u0441\u0451 \u0432\u0438\u0437\u0443\u0430\u043b\u044c\u043d\u043e\u0435: Telegram \u043e\u0431 \u044d\u0442\u0438\u0445 \u043f\u043e\u0434\u0430\u0440\u043a\u0430\u0445 \u043d\u0435 \u0437\u043d\u0430\u0435\u0442."

    invoke-virtual {p0, p4, p5}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " v"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n\n"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :pswitch_44
    new-instance p1, Lcom/chimeranft/core/ChimeraDiagnosticsActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/ChimeraDiagnosticsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 83
    :pswitch_4d
    new-instance p1, Lcom/chimeranft/core/ChimeraDataActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/ChimeraDataActivity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 82
    :pswitch_56
    new-instance p1, Lcom/chimeranft/core/ChimeraSyncActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/ChimeraSyncActivity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 81
    :pswitch_5f
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraSettingsActivity;->editBalance()V

    return-void

    .line 76
    :pswitch_63
    sget-object p1, Lcom/chimeranft/core/ChimeraState;->INSTANCE:Lcom/chimeranft/core/ChimeraState;

    invoke-virtual {p1}, Lcom/chimeranft/core/ChimeraState;->read()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "local_premium"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    .line 77
    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3, p2}, Lcom/chimeranft/core/Main$Companion;->setLocalPremium(I)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_82

    .line 78
    const-string p1, "ChimeraPremiumEnabled"

    const-string p3, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u044b\u0439 Premium \u0432\u043a\u043b\u044e\u0447\u0451\u043d"

    invoke-virtual {p0, p1, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8a

    .line 79
    :cond_82
    const-string p1, "ChimeraPremiumDisabled"

    const-string p3, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u044b\u0439 Premium \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-virtual {p0, p1, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    :goto_8a
    invoke-virtual {p0, p2, p1}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :pswitch_8e
    new-instance p1, Lcom/chimeranft/core/ChimeraProfileActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/ChimeraProfileActivity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 73
    :pswitch_97
    new-instance p1, Lcom/chimeranft/core/ChimeraGiftsActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/ChimeraGiftsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :pswitch_data_a0
    .packed-switch 0xa029
        :pswitch_97
        :pswitch_8e
        :pswitch_63
        :pswitch_5f
        :pswitch_56
        :pswitch_4d
        :pswitch_44
        :pswitch_6
    .end packed-switch
.end method
