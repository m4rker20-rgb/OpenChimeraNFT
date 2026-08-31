.class public final Lcom/chimeranft/core/ChimeraSyncActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/ChimeraSyncActivity$Companion;

.field private static final REPORT:I = 0xabf7

.field private static final SYNC_NOW:I = 0xabf6

.field private static final SYNC_ON:I = 0xabf5


# direct methods
.method public static synthetic $r8$lambda$OsSad6GPo0UQ6f5BeF1kW2kQrs8(Z)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/ChimeraSyncActivity;->onClick$lambda$0(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraSyncActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraSyncActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraSyncActivity;->Companion:Lcom/chimeranft/core/ChimeraSyncActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 541
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    return-void
.end method

.method private final duplicatesLine(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7

    .line 576
    const-string v0, "duplicates_blocked"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gtz p1, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 578
    :cond_e
    const-string p1, "ChimeraSyncDuplicates"

    const-string v0, "\u043e\u0442\u043a\u043b\u043e\u043d\u0435\u043d\u043e \u0434\u0443\u0431\u043b\u0438\u043a\u0430\u0442\u043e\u0432"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final onClick$lambda$0(Z)Lkotlin/Unit;
    .registers 2

    .line 561
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setSyncEnabled(I)Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final statusLine(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .line 568
    const-string v0, "sync_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "ChimeraSyncOff"

    const-string p2, "\u0412\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 569
    :cond_11
    const-string p1, "state"

    const-string v0, "ready"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 570
    const-string p2, "error"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, "ChimeraSyncError"

    const-string p2, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0441\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u0438\u044f"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 571
    :cond_2a
    const-string p1, "ChimeraSyncOn"

    const-string p2, "\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 11

    .line 545
    sget-object p2, Lcom/chimeranft/core/ChimeraState;->INSTANCE:Lcom/chimeranft/core/ChimeraState;

    invoke-virtual {p2}, Lcom/chimeranft/core/ChimeraState;->read()Lorg/json/JSONObject;

    move-result-object v0

    .line 546
    invoke-virtual {p2}, Lcom/chimeranft/core/ChimeraState;->syncStatus()Lorg/json/JSONObject;

    move-result-object p2

    .line 547
    const-string v1, "ChimeraSyncSection"

    const-string v2, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-direct {p0, v0, p2}, Lcom/chimeranft/core/ChimeraSyncActivity;->statusLine(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "sync_enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    const v3, 0xabf5

    .line 548
    const-string v4, "ChimeraSyncEnabled"

    const-string v5, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/ForkPreferences;->switchWith(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    move-object v1, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    const-string v0, "ChimeraSyncNowSub"

    const-string v2, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440"

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xabf6

    .line 550
    const-string v3, "msg_retry"

    const-string v4, "ChimeraSyncNow"

    const-string v5, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0441\u0435\u0439\u0447\u0430\u0441"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    const-string v5, "\u041f\u043e\u0434\u0440\u043e\u0431\u043d\u044b\u0439 \u043e\u0442\u0447\u0451\u0442"

    .line 553
    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraSyncActivity;->duplicatesLine(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xabf7

    .line 552
    const-string v3, "msg_info"

    const-string v4, "ChimeraSyncReport"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/4 v0, 0x0

    .line 553
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 552
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const-string p2, "ChimeraSyncFooter"

    .line 555
    const-string v0, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043d\u0443\u0436\u043d\u0430, \u0447\u0442\u043e\u0431\u044b \u0434\u0440\u0443\u0433\u0438\u0435 \u0432\u043b\u0430\u0434\u0435\u043b\u044c\u0446\u044b \u0441\u0431\u043e\u0440\u043a\u0438 \u0432\u0438\u0434\u0435\u043b\u0438 \u0442\u0432\u043e\u0438 \u043f\u043e\u0434\u0430\u0440\u043a\u0438 \u0438 \u043f\u0440\u043e\u0444\u0438\u043b\u044c. \u0411\u0435\u0437 \u043d\u0435\u0451 \u0432\u0441\u0451 \u043e\u0441\u0442\u0430\u0451\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430 \u044d\u0442\u043e\u043c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0435."

    .line 554
    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 542
    const-string v0, "ChimeraSyncSection"

    const-string v1, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 6

    .line 560
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    packed-switch p2, :pswitch_data_34

    return-void

    .line 563
    :pswitch_6
    const-string p1, "ChimeraSyncReport"

    const-string p2, "\u041f\u043e\u0434\u0440\u043e\u0431\u043d\u044b\u0439 \u043e\u0442\u0447\u0451\u0442"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2}, Lcom/chimeranft/core/Main$Companion;->pollSync()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 562
    :pswitch_18
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/Main$Companion;->pushSyncNow()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChimeraSyncDone"

    const-string p3, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u043d\u043e"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 561
    :pswitch_2a
    new-instance p2, Lcom/chimeranft/core/ChimeraSyncActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/chimeranft/core/ChimeraSyncActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    :pswitch_data_34
    .packed-switch 0xabf5
        :pswitch_2a
        :pswitch_18
        :pswitch_6
    .end packed-switch
.end method
