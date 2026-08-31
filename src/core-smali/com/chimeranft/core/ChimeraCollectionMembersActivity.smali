.class public final Lcom/chimeranft/core/ChimeraCollectionMembersActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/ChimeraCollectionMembersActivity$Companion;

.field private static final GIFT_BASE:I = 0xbfcc


# instance fields
.field private final collectionId:I

.field private final collectionTitle:Ljava/lang/String;

.field private gifts:Lorg/json/JSONArray;


# direct methods
.method public static synthetic $r8$lambda$5kVWqtu3nEIjw4Ntw4R4TeOdx1Y(JLcom/chimeranft/core/ChimeraCollectionMembersActivity;Z)Lkotlin/Unit;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->onClick$lambda$2(JLcom/chimeranft/core/ChimeraCollectionMembersActivity;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraCollectionMembersActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->Companion:Lcom/chimeranft/core/ChimeraCollectionMembersActivity$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    .line 79
    iput p1, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->collectionId:I

    .line 80
    iput-object p2, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->collectionTitle:Ljava/lang/String;

    .line 82
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->gifts:Lorg/json/JSONArray;

    return-void
.end method

.method private final member(Lorg/json/JSONObject;)Z
    .registers 7

    .line 107
    const-string v0, "collection_ids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 108
    :cond_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1e

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    iget v4, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->collectionId:I

    if-ne v3, v4, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1e
    return v0
.end method

.method private static final onClick$lambda$2(JLcom/chimeranft/core/ChimeraCollectionMembersActivity;Z)Lkotlin/Unit;
    .registers 5

    .line 121
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    iget p2, p2, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->collectionId:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->setGiftCollectionMembership(JII)Ljava/lang/String;

    .line 122
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 12

    .line 88
    sget-object p2, Lcom/chimeranft/core/ChimeraState;->INSTANCE:Lcom/chimeranft/core/ChimeraState;

    invoke-virtual {p2}, Lcom/chimeranft/core/ChimeraState;->gifts()Lorg/json/JSONArray;

    move-result-object p2

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->gifts:Lorg/json/JSONArray;

    .line 89
    const-string p2, "ChimeraCollectionGifts"

    const-string v0, "\u041f\u043e\u0434\u0430\u0440\u043a\u0438 \u0432 \u043a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u0438"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->gifts:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_2f

    .line 91
    const-string p2, "ChimeraNoGifts"

    const-string v0, "\u041f\u043e\u0434\u0430\u0440\u043a\u043e\u0432 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 94
    :cond_2f
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->gifts:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, p2, :cond_a5

    .line 95
    iget-object v2, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->gifts:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_42

    goto :goto_a2

    .line 96
    :cond_42
    const-string v3, "num"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 97
    const-string v3, "ChimeraGift"

    const-string v8, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, v3, v8}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "title"

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v8, v6, v4

    if-lez v8, :cond_6e

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_70

    :cond_6e
    const-string v4, ""

    :goto_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0xbfcc

    add-int/2addr v4, v1

    .line 99
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    .line 100
    invoke-direct {p0, v2}, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->member(Lorg/json/JSONObject;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->gifts:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_9a

    goto :goto_9b

    :cond_9a
    const/4 v4, 0x0

    :goto_9b
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    .line 99
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 103
    :cond_a5
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->collectionTitle:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    const-string v0, "ChimeraCollection"

    const-string v1, "\u041a\u043e\u043b\u043b\u0435\u043a\u0446\u0438\u044f"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 8

    .line 113
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p3, 0xbfcc

    if-ge p2, p3, :cond_8

    goto :goto_11

    .line 114
    :cond_8
    iget-object p4, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->gifts:Lorg/json/JSONArray;

    sub-int/2addr p2, p3

    invoke-virtual {p4, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_12

    :goto_11
    return-void

    .line 115
    :cond_12
    const-string p3, "unique_id"

    const-wide/16 p4, 0x0

    invoke-virtual {p2, p3, p4, p5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p3, v0, p4

    if-lez p3, :cond_1f

    goto :goto_25

    :cond_1f
    const-string p3, "saved_id"

    invoke-virtual {p2, p3, p4, p5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_25
    cmp-long p2, v0, p4

    if-gtz p2, :cond_35

    .line 117
    const-string p1, "ChimeraGiftNoId"

    const-string p2, "\u0423 \u043f\u043e\u0434\u0430\u0440\u043a\u0430 \u043d\u0435\u0442 id"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    return-void

    .line 120
    :cond_35
    new-instance p2, Lcom/chimeranft/core/ChimeraCollectionMembersActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, v1, p0}, Lcom/chimeranft/core/ChimeraCollectionMembersActivity$$ExternalSyntheticLambda0;-><init>(JLcom/chimeranft/core/ChimeraCollectionMembersActivity;)V

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
