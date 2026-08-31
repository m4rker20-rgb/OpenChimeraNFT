.class public final Lcom/chimeranft/core/ChimeraCollectionsActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field private static final COLLECTION_BASE:I = 0xbbe4

.field private static final CREATE:I = 0xbb81

.field public static final Companion:Lcom/chimeranft/core/ChimeraCollectionsActivity$Companion;


# instance fields
.field private collections:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$0asnK33iPFFUP_4ukr49bLMGE7E(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraCollectionsActivity;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraCollectionsActivity;->onClick$lambda$2(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraCollectionsActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ls-cmTYYL2v4POsQjBb-aV47aQ8(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ChimeraCollectionsActivity;->onClick$lambda$5$lambda$3(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$maYNG0Z28iJH3Ty5_2obixY_ZtQ(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraCollectionsActivity;->onClick$lambda$5$lambda$4(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oDZe3dZ-Nan7XFQUau4p-EZ0Emg(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;I)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ChimeraCollectionsActivity;->onClick$lambda$5(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraCollectionsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraCollectionsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraCollectionsActivity;->Companion:Lcom/chimeranft/core/ChimeraCollectionsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/ChimeraCollectionsActivity;->collections:Ljava/util/List;

    return-void
.end method

.method private static final onClick$lambda$2(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraCollectionsActivity;)Lkotlin/Unit;
    .registers 4

    .line 39
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_12

    const-string p0, "ChimeraCollection"

    const-string v0, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f"

    invoke-virtual {p1, p0, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    :cond_12
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    sget-object v1, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftForge;->nextCollectionId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/chimeranft/core/Main$Companion;->setGiftCollection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41
    const-string v0, "ChimeraCollectionCreated"

    const-string v1, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f \u0441\u043e\u0437\u0434\u0430\u043d\u0430"

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, p0, v0}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$5(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;I)Lkotlin/Unit;
    .registers 12

    if-eqz p2, :cond_56

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    goto :goto_67

    .line 61
    :cond_9
    const-string p2, "ChimeraCollectionDelete"

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044e"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    const-string v0, "ChimeraCollectionDeleteHint"

    .line 63
    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043a\u0438 \u043e\u0441\u0442\u0430\u043d\u0443\u0442\u0441\u044f \u0432 \u0431\u0438\u0431\u043b\u0438\u043e\u0442\u0435\u043a\u0435 \u2014 \u0443\u0434\u0430\u043b\u044f\u0435\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f."

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    goto :goto_67

    .line 55
    :cond_2a
    const-string p2, "ChimeraCollectionTitle"

    const-string v0, "\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Collection;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object p0

    .line 56
    const-string p2, "ChimeraCollectionRename"

    const-string v0, "\u041f\u0435\u0440\u0435\u0438\u043c\u0435\u043d\u043e\u0432\u0430\u0442\u044c"

    invoke-virtual {v1, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p0}, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;Lcom/chimeranft/core/ForkPreferences$Field;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    goto :goto_67

    :cond_56
    move-object v1, p0

    .line 53
    new-instance p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Collection;->getId()I

    move-result p2

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Collection;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 68
    :goto_67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$5$lambda$3(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 4

    .line 57
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Collection;->getId()I

    move-result p1

    invoke-virtual {p2}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->setGiftCollection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    const-string p2, "ChimeraSaved"

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$5$lambda$4(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;)Lkotlin/Unit;
    .registers 4

    .line 64
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Collection;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->removeGiftCollection(I)Ljava/lang/String;

    move-result-object p1

    .line 65
    const-string v0, "ChimeraCollectionDeleted"

    const-string v1, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f \u0443\u0434\u0430\u043b\u0435\u043d\u0430"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->outcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 12

    .line 22
    sget-object p2, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge;->collections()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraCollectionsActivity;->collections:Ljava/util/List;

    .line 23
    const-string p2, "ChimeraCollections"

    const-string v0, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x10

    const/4 v7, 0x0

    const v1, 0xbb81

    .line 24
    const-string v2, "msg_addfolder"

    const-string v3, "ChimeraCollectionCreate"

    const-string v4, "\u041d\u043e\u0432\u0430\u044f \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/ForkPreferences;->row$default(Lcom/chimeranft/core/ForkPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 25
    iget-object v1, v0, Lcom/chimeranft/core/ChimeraCollectionsActivity;->collections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p2, v0, Lcom/chimeranft/core/ChimeraCollectionsActivity;->collections:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chimeranft/core/GiftForge$Collection;

    .line 27
    invoke-virtual {v5}, Lcom/chimeranft/core/GiftForge$Collection;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_78

    const-string v6, "ChimeraCollection"

    const-string v7, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f"

    invoke-virtual {p0, v6, v7}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/chimeranft/core/GiftForge$Collection;->getId()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_78
    const v7, 0xbbe4

    add-int/2addr v7, v3

    .line 28
    const-string v8, "msg_folders"

    invoke-virtual {p0, v8}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result v8

    .line 29
    invoke-virtual {v5}, Lcom/chimeranft/core/GiftForge$Collection;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v7, v8, v6, v5}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    .line 29
    iget-object v6, v0, Lcom/chimeranft/core/ChimeraCollectionsActivity;->collections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-eq v3, v6, :cond_99

    const/4 v3, 0x1

    goto :goto_9a

    :cond_99
    const/4 v3, 0x0

    :goto_9a
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    .line 28
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_40

    .line 31
    :cond_a3
    const-string p2, "ChimeraCollectionsFooter"

    .line 32
    const-string v1, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438 \u0432\u0438\u0434\u043d\u044b \u0434\u0440\u0443\u0433\u0438\u043c \u0432\u043b\u0430\u0434\u0435\u043b\u044c\u0446\u0430\u043c \u043f\u043b\u0430\u0433\u0438\u043d\u0430 \u0442\u0430\u043a \u0436\u0435, \u043a\u0430\u043a \u0438 \u0441\u0430\u043c\u0438 \u043f\u043e\u0434\u0430\u0440\u043a\u0438."

    .line 31
    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 19
    const-string v0, "ChimeraCollections"

    const-string v1, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 14

    .line 36
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p3, 0xbb81

    if-ne p2, p3, :cond_31

    .line 37
    const-string p1, "ChimeraCollectionTitle"

    const-string p2, "\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object p1

    .line 38
    const-string p2, "ChimeraCollectionCreate"

    const-string p3, "\u041d\u043e\u0432\u0430\u044f \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance p4, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1, p0}, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/chimeranft/core/ForkPreferences$Field;Lcom/chimeranft/core/ChimeraCollectionsActivity;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_31
    move-object v0, p0

    const p3, 0xbbe4

    if-ge p2, p3, :cond_38

    goto :goto_43

    .line 46
    :cond_38
    iget-object p4, v0, Lcom/chimeranft/core/ChimeraCollectionsActivity;->collections:Ljava/util/List;

    sub-int/2addr p2, p3

    invoke-static {p4, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chimeranft/core/GiftForge$Collection;

    if-nez p2, :cond_44

    :goto_43
    return-void

    .line 48
    :cond_44
    const-string p3, "ChimeraCollectionGifts"

    const-string p4, "\u041f\u043e\u0434\u0430\u0440\u043a\u0438 \u0432 \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438"

    invoke-virtual {p0, p3, p4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 49
    const-string p4, "ChimeraCollectionRename"

    const-string p5, "\u041f\u0435\u0440\u0435\u0438\u043c\u0435\u043d\u043e\u0432\u0430\u0442\u044c"

    invoke-virtual {p0, p4, p5}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 50
    const-string p5, "ChimeraCollectionDelete"

    const-string v1, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044e"

    invoke-virtual {p0, p5, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p3, v3, v1

    const/4 p3, 0x1

    aput-object p4, v3, p3

    const/4 p3, 0x2

    aput-object p5, v3, p3

    .line 51
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge$Collection;->getTitle()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2}, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;)V

    const/4 v4, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->picker(Lorg/telegram/ui/Components/UItem;Ljava/lang/String;[Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
