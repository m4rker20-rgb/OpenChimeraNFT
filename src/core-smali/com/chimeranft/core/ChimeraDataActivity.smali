.class public final Lcom/chimeranft/core/ChimeraDataActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field private static final BACKUPS:I = 0xafd6

.field public static final Companion:Lcom/chimeranft/core/ChimeraDataActivity$Companion;

.field private static final EXPORT:I = 0xafc9

.field private static final IMPORT:I = 0xafca

.field private static final IMPORT_KEYS:Ljava/lang/String; = "gift_library,nft_username,nft_number,rating,pinned_channel,balances,settings"

.field private static final RESET:I = 0xafcb


# direct methods
.method public static synthetic $r8$lambda$C1e_4886OXmcCi8zNkGEqU7gzxE(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraDataActivity;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraDataActivity;->onClick$lambda$1(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraDataActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X7vYcoAYX7sGFLJpIcucfS-4hx8(Lcom/chimeranft/core/ChimeraDataActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/chimeranft/core/ChimeraDataActivity;->onClick$lambda$0(Lcom/chimeranft/core/ChimeraDataActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraDataActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraDataActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraDataActivity;->Companion:Lcom/chimeranft/core/ChimeraDataActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 589
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    return-void
.end method

.method private final exportProfile()V
    .registers 7

    .line 655
    const-string v0, "\u042d\u043a\u0441\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    const-string v1, "ChimeraExport"

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/Main$Companion;->exportProfile()Ljava/lang/String;

    move-result-object v2

    .line 657
    :try_start_a
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/content/ClipboardManager;

    .line 658
    const-string v4, "Chimera NFT profile"

    invoke-static {v4, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 659
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    const-string v4, "application/json"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 663
    const-string v3, "ChimeraExported"

    const-string v4, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d \u0432 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0435\u043d\u0430"

    invoke-virtual {p0, v3, v4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/chimeranft/core/ForkPreferences;->info(Ljava/lang/CharSequence;)V
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_50

    return-void

    .line 665
    :catchall_50
    invoke-virtual {p0, v1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final exportSummary(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 12

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 643
    const-string v1, "gift_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_21

    .line 645
    const-string v7, "%d \u043f\u043e\u0434\u0430\u0440\u043a\u0430"

    const-string v8, "%d \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432"

    .line 644
    const-string v4, "ChimeraPluralGifts"

    const-string v6, "%d \u043f\u043e\u0434\u0430\u0440\u043e\u043a"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/chimeranft/core/ForkPreferences;->plural(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_21
    move-object v9, p0

    .line 646
    :goto_22
    const-string v1, "username_tokens"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 647
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_48

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_48
    const-string v1, "number_tokens"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 649
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6e

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_6e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7d

    const-string p1, "ChimeraExportEmpty"

    const-string v0, "\u041f\u043e\u043a\u0430 \u043d\u0435\u0447\u0435\u0433\u043e \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u044c"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7d
    const/16 v7, 0x3e

    const/4 v8, 0x0

    .line 651
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

.method private static final onClick$lambda$0(Lcom/chimeranft/core/ChimeraDataActivity;)Lkotlin/Unit;
    .registers 4

    .line 626
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->resetLocalProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChimeraResetDone"

    const-string v2, "\u0412\u0441\u0435 \u0434\u0430\u043d\u043d\u044b\u0435 \u0443\u0434\u0430\u043b\u0435\u043d\u044b"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$1(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraDataActivity;)Lkotlin/Unit;
    .registers 4

    .line 632
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 633
    :cond_d
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "gift_library,nft_username,nft_number,rating,pinned_channel,balances,settings"

    invoke-virtual {v0, p0, v1}, Lcom/chimeranft/core/Main$Companion;->importProfile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChimeraImported"

    const-string v1, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u043d"

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final resetSummary(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .line 672
    invoke-direct {p0, p1}, Lcom/chimeranft/core/ChimeraDataActivity;->exportSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 673
    const-string v0, "ChimeraExportEmpty"

    const-string v1, "\u041f\u043e\u043a\u0430 \u043d\u0435\u0447\u0435\u0433\u043e \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u044c"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 674
    const-string p1, "ChimeraResetEmpty"

    const-string v0, "\u0423\u0436\u0435 \u043f\u0443\u0441\u0442\u043e \u2014 \u0443\u0434\u0430\u043b\u044f\u0442\u044c \u043d\u0435\u0447\u0435\u0433\u043e"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1a
    return-object p1
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 11

    .line 593
    sget-object p2, Lcom/chimeranft/core/ChimeraState;->INSTANCE:Lcom/chimeranft/core/ChimeraState;

    invoke-virtual {p2}, Lcom/chimeranft/core/ChimeraState;->read()Lorg/json/JSONObject;

    move-result-object p2

    .line 594
    const-string v0, "ChimeraDataSection"

    const-string v1, "\u0414\u0430\u043d\u043d\u044b\u0435"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    const-string v5, "\u042d\u043a\u0441\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    .line 596
    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraDataActivity;->exportSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xafc9

    .line 595
    const-string v3, "msg_share"

    const-string v4, "ChimeraExport"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    const-string v0, "ChimeraJsonImportValue"

    const-string v2, "\u0438\u0437 JSON"

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xafca

    .line 597
    const-string v3, "msg_download"

    const-string v4, "ChimeraImport"

    const-string v5, "\u0418\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v7, 0x0

    .line 598
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 597
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    const-string v0, "ChimeraDataFooter"

    .line 600
    const-string v2, "\u042d\u043a\u0441\u043f\u043e\u0440\u0442 \u2014 \u0435\u0434\u0438\u043d\u0441\u0442\u0432\u0435\u043d\u043d\u044b\u0439 \u0441\u043f\u043e\u0441\u043e\u0431 \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u043f\u043e\u0434\u0430\u0440\u043a\u0438 \u043d\u0430 \u0434\u0440\u0443\u0433\u0443\u044e \u0441\u0431\u043e\u0440\u043a\u0443: \u043f\u0435\u0441\u043e\u0447\u043d\u0438\u0446\u0430 \u0443\u0434\u0430\u043b\u044f\u0435\u0442\u0441\u044f \u0432\u043c\u0435\u0441\u0442\u0435 \u0441 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u043c."

    .line 599
    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    const-string v0, "ChimeraAutoSection"

    const-string v2, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    const-string v5, "\u0410\u0432\u0442\u043e\u0431\u044d\u043a\u0430\u043f\u044b"

    .line 604
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->backupSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xafd6

    .line 603
    const-string v3, "msg_retry"

    const-string v4, "ChimeraBackups"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 604
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 603
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    const-string v0, "ChimeraAutoFooter"

    .line 606
    const-string v2, "\u042f\u0434\u0440\u043e \u0441\u0430\u043c\u043e \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0435\u0442 \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u043f\u043e\u0441\u043b\u0435 \u043a\u0430\u0436\u0434\u043e\u0433\u043e \u0432\u0430\u0436\u043d\u043e\u0433\u043e \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u0438 \u0434\u0435\u0440\u0436\u0438\u0442 \u043a\u043e\u0440\u043e\u0442\u043a\u0443\u044e \u0438\u0441\u0442\u043e\u0440\u0438\u044e. \u042d\u0442\u0438 \u043a\u043e\u043f\u0438\u0438 \u043f\u043e\u0434\u0445\u0432\u0430\u0442\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438, \u0435\u0441\u043b\u0438 \u043e\u0441\u043d\u043e\u0432\u043d\u043e\u0439 \u0444\u0430\u0439\u043b \u043f\u043e\u0432\u0440\u0435\u0434\u0438\u043b\u0441\u044f."

    .line 605
    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    const-string v0, "ChimeraResetSection"

    const-string v2, "\u041d\u0430\u0447\u0430\u0442\u044c \u0437\u0430\u043d\u043e\u0432\u043e"

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v5, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u0435 \u043c\u043e\u0438 \u0434\u0430\u043d\u043d\u044b\u0435"

    .line 613
    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraDataActivity;->resetSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const v2, 0xafcb

    .line 612
    const-string v3, "msg_delete"

    const-string v4, "ChimeraReset"

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 613
    invoke-virtual {p2, v7}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 612
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    const-string p2, "ChimeraResetFooter"

    .line 615
    const-string v0, "\u0412\u0435\u0440\u043d\u0443\u0442\u044c \u0443\u0434\u0430\u043b\u0451\u043d\u043d\u043e\u0435 \u043c\u043e\u0436\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u0438\u0437 \u044d\u043a\u0441\u043f\u043e\u0440\u0442\u0430 \u2014 \u0441\u0434\u0435\u043b\u0430\u0439 \u0435\u0433\u043e \u0437\u0430\u0440\u0430\u043d\u0435\u0435, \u0435\u0441\u043b\u0438 \u0447\u0442\u043e-\u0442\u043e \u0434\u043e\u043b\u0436\u043d\u043e \u0443\u0446\u0435\u043b\u0435\u0442\u044c."

    .line 614
    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 590
    const-string v0, "ChimeraBackupScreen"

    const-string v1, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 14

    .line 619
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p2, 0xafd6

    if-eq p1, p2, :cond_5b

    packed-switch p1, :pswitch_data_6e

    return-void

    .line 620
    :pswitch_b
    const-string p1, "ChimeraReset"

    const-string p2, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u0435 \u043c\u043e\u0438 \u0434\u0430\u043d\u043d\u044b\u0435"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 621
    const-string p2, "ChimeraResetConfirm"

    .line 622
    const-string p3, "\u0423\u0439\u0434\u0443\u0442 \u043f\u043e\u0434\u0430\u0440\u043a\u0438, username, \u043d\u043e\u043c\u0435\u0440, \u0440\u0435\u0439\u0442\u0438\u043d\u0433, \u0431\u0430\u043b\u0430\u043d\u0441 \u0441 \u0438\u0441\u0442\u043e\u0440\u0438\u0435\u0439, \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438, \u0437\u0430\u043a\u0440\u0435\u043f\u043b\u0451\u043d\u043d\u044b\u0439 \u043a\u0430\u043d\u0430\u043b \u0438 \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u044b\u0439 Premium \u2014 \u0438 \u043d\u0430 \u044d\u0442\u043e\u043c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0435, \u0438 \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0435. \u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0441\u0442\u0430\u043d\u0435\u0442 \u043a\u0430\u043a \u0441\u0440\u0430\u0437\u0443 \u043f\u043e\u0441\u043b\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438, \u0438 \u0432\u0441\u0451 \u043c\u043e\u0436\u043d\u043e \u0441\u043e\u0431\u0440\u0430\u0442\u044c \u0437\u0430\u043d\u043e\u0432\u043e."

    .line 621
    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 625
    const-string p3, "ChimeraResetAction"

    const-string p4, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c"

    invoke-virtual {p0, p3, p4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 620
    new-instance p4, Lcom/chimeranft/core/ChimeraDataActivity$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/chimeranft/core/ChimeraDataActivity$$ExternalSyntheticLambda0;-><init>(Lcom/chimeranft/core/ChimeraDataActivity;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/ForkPreferences;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 630
    :pswitch_2c
    const-string p1, "ChimeraProfileJsonHint"

    const-string p2, "JSON \u0441\u0435\u043a\u0446\u0438\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044f"

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

    .line 631
    const-string p2, "ChimeraImport"

    const-string p3, "\u0418\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance p4, Lcom/chimeranft/core/ChimeraDataActivity$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p0}, Lcom/chimeranft/core/ChimeraDataActivity$$ExternalSyntheticLambda1;-><init>(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraDataActivity;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_56
    move-object v0, p0

    .line 628
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraDataActivity;->exportProfile()V

    return-void

    :cond_5b
    move-object v0, p0

    .line 636
    const-string p1, "ChimeraBackups"

    const-string p2, "\u0410\u0432\u0442\u043e\u0431\u044d\u043a\u0430\u043f\u044b"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2}, Lcom/chimeranft/core/Main$Companion;->selfTestPersist()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_6e
    .packed-switch 0xafc9
        :pswitch_56
        :pswitch_2c
        :pswitch_b
    .end packed-switch
.end method
