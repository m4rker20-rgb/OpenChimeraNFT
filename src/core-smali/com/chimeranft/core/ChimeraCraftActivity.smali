.class public final Lcom/chimeranft/core/ChimeraCraftActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field private static final CRAFT:I = 0xc351

.field public static final Companion:Lcom/chimeranft/core/ChimeraCraftActivity$Companion;

.field private static final INGREDIENT_BASE:I = 0xc3b4


# instance fields
.field private final baseGiftId:J

.field private final baseTitle:Ljava/lang/String;

.field private candidates:Ljava/util/List;

.field private final chosen:Ljava/util/LinkedHashSet;

.field private status:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$FUNjrWtNAooYCxK5SMkL3rwDj10(Lcom/chimeranft/core/ChimeraCraftActivity;Ljava/util/List;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraCraftActivity;->confirm$lambda$5(Lcom/chimeranft/core/ChimeraCraftActivity;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraCraftActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraCraftActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraCraftActivity;->Companion:Lcom/chimeranft/core/ChimeraCraftActivity$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 138
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->baseGiftId:J

    iput-object p3, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->baseTitle:Ljava/lang/String;

    .line 139
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->candidates:Ljava/util/List;

    .line 140
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    .line 141
    const-string p1, ""

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->status:Ljava/lang/String;

    return-void
.end method

.method private final confirm()V
    .registers 8

    .line 205
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->candidates:Ljava/util/List;

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/chimeranft/core/GiftForge$Ingredient;

    .line 205
    iget-object v4, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 242
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 206
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    return-void

    .line 207
    :cond_33
    const-string v0, "ChimeraCraftRun"

    const-string v2, "\u0421\u043a\u0440\u0430\u0444\u0442\u0438\u0442\u044c"

    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v2, "ChimeraCraftConfirm"

    const-string v3, "\u0421\u0433\u043e\u0440\u0438\u0442 \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432"

    invoke-virtual {p0, v2, v3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 209
    const-string v4, "ChimeraCraftChance"

    const-string v5, "\u0428\u0430\u043d\u0441 \u0443\u0441\u043f\u0435\u0445\u0430"

    invoke-virtual {p0, v4, v5}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraCraftActivity;->totalChance()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/chimeranft/core/ChimeraCraftActivity;->percent(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p0, v2}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 207
    new-instance v3, Lcom/chimeranft/core/ChimeraCraftActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/chimeranft/core/ChimeraCraftActivity$$ExternalSyntheticLambda0;-><init>(Lcom/chimeranft/core/ChimeraCraftActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final confirm$lambda$5(Lcom/chimeranft/core/ChimeraCraftActivity;Ljava/util/List;)Lkotlin/Unit;
    .registers 2

    .line 210
    invoke-direct {p0, p1}, Lcom/chimeranft/core/ChimeraCraftActivity;->run(Ljava/util/List;)V

    .line 211
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final percent(I)Ljava/lang/String;
    .registers 4

    .line 183
    div-int/lit8 v0, p1, 0xa

    .line 184
    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_b

    .line 185
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final run(Ljava/util/List;)V
    .registers 5

    .line 215
    sget-object v0, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    iget-wide v1, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->baseGiftId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/chimeranft/core/GiftForge;->craft(JLjava/util/List;)Lcom/chimeranft/core/GiftForge$Result;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 217
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Result;->getOk()Z

    move-result v0

    if-nez v0, :cond_24

    .line 218
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Result;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    return-void

    .line 222
    :cond_24
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Result;->getCount()I

    move-result p1

    if-nez p1, :cond_36

    .line 224
    const-string p1, "ChimeraCraftLost"

    const-string v0, "\u041a\u0440\u0430\u0444\u0442 \u043d\u0435 \u0443\u0434\u0430\u043b\u0441\u044f \u2014 \u043f\u043e\u0434\u0430\u0440\u043a\u0438 \u0441\u0433\u043e\u0440\u0435\u043b\u0438"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 226
    :cond_36
    const-string p1, "ChimeraCraftWon"

    const-string v0, "\u041a\u0440\u0430\u0444\u0442 \u0443\u0434\u0430\u043b\u0441\u044f"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->info(Ljava/lang/CharSequence;)V

    .line 228
    :goto_41
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    return-void
.end method

.method private final totalChance()I
    .registers 8

    .line 177
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->candidates:Ljava/util/List;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/chimeranft/core/GiftForge$Ingredient;

    .line 178
    iget-object v4, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 239
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 179
    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v0, :cond_42

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/chimeranft/core/GiftForge$Ingredient;

    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Ingredient;->getChancePermille()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_32

    :cond_42
    const/16 v0, 0x3e8

    .line 180
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 14

    .line 153
    sget-object p2, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    iget-wide v0, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->baseGiftId:J

    invoke-virtual {p2, v0, v1}, Lcom/chimeranft/core/GiftForge;->craftCandidates(J)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->candidates:Ljava/util/List;

    .line 154
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->baseTitle:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1a

    const-string p2, "ChimeraCraft"

    const-string v0, "\u041a\u0440\u0430\u0444\u0442"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1a
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->candidates:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_3a

    .line 156
    const-string p2, "ChimeraCraftNeedMore"

    .line 157
    const-string v0, "\u041d\u0443\u0436\u043d\u043e \u043c\u0438\u043d\u0438\u043c\u0443\u043c \u0434\u0432\u0430 \u043f\u043e\u0434\u0430\u0440\u043a\u0430 \u043e\u0434\u043d\u043e\u0433\u043e \u0432\u0438\u0434\u0430. \u0421\u043e\u0431\u0435\u0440\u0438\u0442\u0435 \u0438\u0445 \u0432 \u043a\u043e\u043d\u0441\u0442\u0440\u0443\u043a\u0442\u043e\u0440\u0435 \u0438\u043b\u0438 \u0434\u043e\u0431\u0430\u0432\u044c\u0442\u0435 \u0438\u0437 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0430."

    .line 156
    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 160
    :cond_3a
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->candidates:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_42
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_ec

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/GiftForge$Ingredient;

    .line 161
    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Ingredient;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_63

    const-string v5, "ChimeraGift"

    const-string v6, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {p0, v5, v6}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    :cond_63
    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Ingredient;->getNumber()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_83

    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Ingredient;->getNumber()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_85

    :cond_83
    const-string v6, ""

    :goto_85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0xc3b4

    add-int/2addr v6, v1

    .line 164
    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Ingredient;->getChancePermille()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/chimeranft/core/ChimeraCraftActivity;->percent(I)Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-static {v6, v5, v7, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    .line 165
    iget-object v6, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    .line 166
    iget-object v6, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_d2

    iget-object v6, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    goto :goto_d2

    :cond_d0
    const/4 v4, 0x0

    goto :goto_d3

    :cond_d2
    :goto_d2
    const/4 v4, 0x1

    :goto_d3
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    .line 167
    iget-object v5, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->candidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq v1, v5, :cond_e1

    goto :goto_e2

    :cond_e1
    const/4 v3, 0x0

    :goto_e2
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto/16 :goto_42

    .line 169
    :cond_ec
    const-string p2, "ChimeraCraftChance"

    const-string v1, "\u0428\u0430\u043d\u0441 \u0443\u0441\u043f\u0435\u0445\u0430"

    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraCraftActivity;->totalChance()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/ChimeraCraftActivity;->percent(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "ChimeraCraftBurn"

    const-string v4, "\u0441\u0433\u043e\u0440\u0438\u0442 \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432"

    invoke-virtual {p0, v2, v4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-string p2, "msg_gift_premium"

    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result p2

    const-string v1, "ChimeraCraftRun"

    const-string v2, "\u0421\u043a\u0440\u0430\u0444\u0442\u0438\u0442\u044c"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xc351

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 172
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 171
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string p2, "ChimeraCraftFooter"

    .line 174
    const-string v0, "\u041f\u0440\u0438 \u043d\u0435\u0443\u0434\u0430\u0447\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0435 \u043f\u043e\u0434\u0430\u0440\u043a\u0438 \u0441\u0433\u043e\u0440\u0430\u044e\u0442 \u0431\u0435\u0437\u0432\u043e\u0437\u0432\u0440\u0430\u0442\u043d\u043e \u2014 \u043a\u0430\u043a \u0432 Telegram."

    .line 173
    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 143
    const-string v0, "ChimeraCraft"

    const-string v1, "\u041a\u0440\u0430\u0444\u0442"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 6

    .line 189
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p2, 0xc351

    if-ne p1, p2, :cond_b

    .line 190
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraCraftActivity;->confirm()V

    return-void

    :cond_b
    const p2, 0xc3b4

    if-ge p1, p2, :cond_11

    goto :goto_1c

    .line 194
    :cond_11
    iget-object p3, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->candidates:Ljava/util/List;

    sub-int/2addr p1, p2

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/GiftForge$Ingredient;

    if-nez p1, :cond_1d

    :goto_1c
    return-void

    .line 195
    :cond_1d
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    goto :goto_51

    .line 196
    :cond_3b
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    const/4 p3, 0x4

    if-ge p2, p3, :cond_55

    iget-object p2, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->chosen:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Ingredient;->getId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_51
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    return-void

    .line 198
    :cond_55
    const-string p1, "ChimeraCraftMax"

    const-string p2, "\u0411\u043e\u043b\u044c\u0448\u0435 \u0447\u0435\u0442\u044b\u0440\u0451\u0445 \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432 \u0437\u0430 \u0440\u0430\u0437 \u043d\u0435\u043b\u044c\u0437\u044f"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFragmentCreate()Z
    .registers 4

    .line 148
    sget-object v0, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    iget-wide v1, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->baseGiftId:J

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftForge;->startAttributes(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/ChimeraCraftActivity;->status:Ljava/lang/String;

    .line 149
    invoke-super {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->onFragmentCreate()Z

    move-result v0

    return v0
.end method
