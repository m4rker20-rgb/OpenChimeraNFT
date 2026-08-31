.class public final Lcom/chimeranft/core/ChimeraDiagnosticsActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/ChimeraDiagnosticsActivity$Companion;

.field private static final GIFT_DIAG:I = 0xb3b2

.field private static final HOOKS:I = 0xb3b4

.field private static final SMOOTH:I = 0xb3bb

.field private static final STATE:I = 0xb3b1

.field private static final SYNC_DIAG:I = 0xb3b3


# direct methods
.method public static synthetic $r8$lambda$MHBDSDRaWSMpjIr90TpOEpPnFWM(Z)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/ChimeraDiagnosticsActivity;->onClick$lambda$0(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraDiagnosticsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraDiagnosticsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraDiagnosticsActivity;->Companion:Lcom/chimeranft/core/ChimeraDiagnosticsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 693
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    return-void
.end method

.method private static final onClick$lambda$0(Z)Lkotlin/Unit;
    .registers 2

    .line 724
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setSmoothMode(I)Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 12

    .line 697
    sget-object p2, Lcom/chimeranft/core/ChimeraState;->INSTANCE:Lcom/chimeranft/core/ChimeraState;

    invoke-virtual {p2}, Lcom/chimeranft/core/ChimeraState;->read()Lorg/json/JSONObject;

    move-result-object p2

    .line 698
    const-string v0, "ChimeraDiagnosticsSection"

    const-string v1, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getVERSION_CODE()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v4, 0xb3b1

    .line 699
    const-string v5, "msg_info"

    const-string v6, "ChimeraDiagnostics"

    const-string v7, "\u0421\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u044f\u0434\u0440\u0430"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    const-string v0, "gift_count"

    const/4 v7, 0x0

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0xb3b2

    .line 701
    const-string v3, "msg_emoji_gem"

    const-string v4, "ChimeraGiftDiagnostics"

    const-string v5, "\u041f\u043e\u0434\u0430\u0440\u043a\u0438 \u0438 \u043f\u043e\u0440\u044f\u0434\u043e\u043a"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    const-string v5, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    const/4 v6, 0x0

    const v2, 0xb3b3

    const-string v3, "msg_retry"

    const-string v4, "ChimeraSyncDiagnostics"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    const-string v5, "\u0425\u0443\u043a\u0438 \u0438 \u0432\u044b\u0437\u043e\u0432\u044b"

    const v2, 0xb3b4

    const-string v3, "msg_settings_solar"

    const-string v4, "ChimeraHookDiagnostics"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 705
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 704
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    const-string v0, "ChimeraDiagFooter"

    .line 707
    const-string v2, "\u041e\u0442\u0447\u0451\u0442\u044b \u043c\u043e\u0436\u043d\u043e \u0432\u044b\u0434\u0435\u043b\u0438\u0442\u044c \u0438 \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u2014 \u044d\u0442\u043e \u0442\u043e, \u0447\u0442\u043e \u043d\u0443\u0436\u043d\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0438\u0442\u044c \u043a \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044e \u043e \u043f\u0440\u043e\u0431\u043b\u0435\u043c\u0435."

    .line 706
    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    const-string v0, "ChimeraSmoothSection"

    const-string v2, "\u041f\u043b\u0430\u0432\u043d\u043e\u0441\u0442\u044c"

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    const-string v0, "ChimeraSmoothModeSub"

    const-string v2, "\u041c\u0435\u043d\u044c\u0448\u0435 \u043f\u0435\u0440\u0435\u0440\u0438\u0441\u043e\u0432\u043e\u043a \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0441\u043a\u0440\u043e\u043b\u043b\u0430 \u0438 \u043d\u0430\u0431\u043e\u0440\u0430 \u0442\u0435\u043a\u0441\u0442\u0430"

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 712
    const-string v0, "smooth_mode"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const v2, 0xb3bb

    .line 710
    const-string v3, "ChimeraSmoothMode"

    const-string v4, "\u041f\u043b\u0430\u0432\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->switchWith(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 712
    invoke-virtual {p2, v7}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 710
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 694
    const-string v0, "ChimeraDiagnosticsSection"

    const-string v1, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 6

    .line 717
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p3, 0xb3bb

    if-eq p2, p3, :cond_81

    const-string p1, "\n\n"

    packed-switch p2, :pswitch_data_8a

    return-void

    .line 723
    :pswitch_d
    const-string p1, "ChimeraHookDiagnostics"

    const-string p2, "\u0425\u0443\u043a\u0438 \u0438 \u0432\u044b\u0437\u043e\u0432\u044b"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2}, Lcom/chimeranft/core/Main$Companion;->pollHooks()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 722
    :pswitch_1f
    const-string p1, "ChimeraSyncDiagnostics"

    const-string p2, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2}, Lcom/chimeranft/core/Main$Companion;->pollSync()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 720
    :pswitch_31
    const-string p2, "ChimeraGiftDiagnostics"

    const-string p3, "\u041f\u043e\u0434\u0430\u0440\u043a\u0438 \u0438 \u043f\u043e\u0440\u044f\u0434\u043e\u043a"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 721
    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3}, Lcom/chimeranft/core/Main$Companion;->pollGifts()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/chimeranft/core/Main$Companion;->giftOrderDiag()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-virtual {p0, p2, p1}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 718
    :pswitch_59
    const-string p2, "ChimeraDiagnostics"

    const-string p3, "\u0421\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u044f\u0434\u0440\u0430"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 719
    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3}, Lcom/chimeranft/core/Main$Companion;->getStateSummary()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/chimeranft/core/Main$Companion;->getPersistenceStatus()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 718
    invoke-virtual {p0, p2, p1}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 724
    :cond_81
    new-instance p2, Lcom/chimeranft/core/ChimeraDiagnosticsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/chimeranft/core/ChimeraDiagnosticsActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_data_8a
    .packed-switch 0xb3b1
        :pswitch_59
        :pswitch_31
        :pswitch_1f
        :pswitch_d
    .end packed-switch
.end method
