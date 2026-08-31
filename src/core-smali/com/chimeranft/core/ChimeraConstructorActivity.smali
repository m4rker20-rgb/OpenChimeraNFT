.class public final Lcom/chimeranft/core/ChimeraConstructorActivity;
.super Lcom/chimeranft/core/ForkPreferences;
.source "SourceFile"


# static fields
.field private static final BACKDROP:I = 0xb7a5

.field private static final BASE:I = 0xb799

.field private static final BUILD:I = 0xb7b7

.field private static final COPIES:I = 0xb7af

.field public static final Companion:Lcom/chimeranft/core/ChimeraConstructorActivity$Companion;

.field private static final MODEL:I = 0xb7a3

.field private static final NAME:I = 0xb7ad

.field private static final NUMBER:I = 0xb7ae

.field private static final PATTERN:I = 0xb7a4

.field private static final POLL_MS:J = 0x190L

.field private static final PREVIEW_DP:I = 0x84

.field private static final PREVIEW_ID:J = 0x1L

.field private static final WAIT_MS:J = 0x3a98L


# instance fields
.field private backdrop:Lkotlin/Pair;

.field private base:Lcom/chimeranft/core/GiftForge$Base;

.field private final baseGiftId:J

.field private copies:I

.field private fromLibrary:Z

.field private giftName:Ljava/lang/String;

.field private model:Lkotlin/Pair;

.field private number:J

.field private pattern:Lkotlin/Pair;

.field private pools:Lcom/chimeranft/core/GiftForge$Pools;

.field private status:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$HtYFEeZme7qrB_Kh7bL95NLdAtY(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraConstructorActivity;->onClick$lambda$6(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MOL0GNp54ap88ZxGq3xz_gl6TFQ(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraConstructorActivity;->onClick$lambda$8(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OvECzrnL_aav8UsgoP_LJjH8ZX4(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraConstructorActivity;->onClick$lambda$11(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RDiArtIm8yEaOH729hu0suDQgeY(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraConstructorActivity;->onClick$lambda$10(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SwI-ClAbBdfbTvYIqMw3EAGmfSU(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraConstructorActivity;->onClick$lambda$7(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_a7eA9FkkOceVe7PEnjr8YJubjw(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ChimeraConstructorActivity;->onClick$lambda$9(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v9tlB-qsvOReoeQkdEjCsoMMFX8(Lkotlin/jvm/functions/Function1;Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->pick$lambda$12(Lkotlin/jvm/functions/Function1;Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ChimeraConstructorActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ChimeraConstructorActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ChimeraConstructorActivity;->Companion:Lcom/chimeranft/core/ChimeraConstructorActivity$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 147
    invoke-direct {p0}, Lcom/chimeranft/core/ForkPreferences;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J

    .line 150
    const-string p1, ""

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->giftName:Ljava/lang/String;

    const-wide/16 p1, 0x1

    .line 157
    iput-wide p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->number:J

    const/4 p1, 0x1

    .line 158
    iput p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->copies:I

    return-void
.end method

.method public static final synthetic access$adopt(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/GiftForge$Pools;Z)V
    .registers 3

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->adopt(Lcom/chimeranft/core/GiftForge$Pools;Z)V

    return-void
.end method

.method public static final synthetic access$getBaseGiftId$p(Lcom/chimeranft/core/ChimeraConstructorActivity;)J
    .registers 3

    .line 147
    iget-wide v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J

    return-wide v0
.end method

.method public static final synthetic access$getStatus$p(Lcom/chimeranft/core/ChimeraConstructorActivity;)Ljava/lang/String;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setStatus$p(Lcom/chimeranft/core/ChimeraConstructorActivity;Ljava/lang/String;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;

    return-void
.end method

.method private final adopt(Lcom/chimeranft/core/GiftForge$Pools;Z)V
    .registers 4

    if-eqz p1, :cond_3d

    .line 201
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Pools;->getEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3d

    .line 202
    :cond_9
    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pools:Lcom/chimeranft/core/GiftForge$Pools;

    .line 203
    iput-boolean p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->fromLibrary:Z

    .line 204
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    if-nez p2, :cond_1d

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Pools;->getModels()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    .line 205
    :cond_1d
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    if-nez p2, :cond_2d

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Pools;->getPatterns()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    .line 206
    :cond_2d
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    if-nez p2, :cond_3d

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftForge$Pools;->getBackdrops()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    :cond_3d
    :goto_3d
    return-void
.end method

.method static synthetic adopt$default(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/GiftForge$Pools;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 200
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->adopt(Lcom/chimeranft/core/GiftForge$Pools;Z)V

    return-void
.end method

.method private final build()V
    .registers 13

    .line 357
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pools:Lcom/chimeranft/core/GiftForge$Pools;

    if-nez v0, :cond_c

    .line 358
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->waitingText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    return-void

    .line 361
    :cond_c
    sget-object v1, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    .line 362
    iget-object v2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->base:Lcom/chimeranft/core/GiftForge$Base;

    iget-wide v3, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J

    .line 363
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    const/4 v5, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, v5

    :goto_1d
    iget-object v6, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    if-eqz v6, :cond_26

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    goto :goto_27

    :cond_26
    move-object v6, v5

    :goto_27
    iget-object v7, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    :cond_2f
    move-object v7, v5

    .line 364
    iget-object v8, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->giftName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->number:J

    iget v11, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->copies:I

    move-object v5, v0

    .line 361
    invoke-virtual/range {v1 .. v11}, Lcom/chimeranft/core/GiftForge;->addUnique(Lcom/chimeranft/core/GiftForge$Base;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;JI)Lcom/chimeranft/core/GiftForge$Result;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftForge$Result;->getOk()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 366
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftForge$Result;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    return-void

    .line 372
    :cond_4f
    const-string v1, "ChimeraConstructorDone"

    const-string v2, "\u0421\u043e\u0431\u0440\u0430\u043d\u043e"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftForge$Result;->getCount()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chimeranft/core/ForkPreferences;->info(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final chosen(Lkotlin/Pair;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_b

    .line 300
    const-string p1, "ChimeraConstructorNone"

    const-string v0, "\u043d\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u043e"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    sget-object v0, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftForge;->label(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final onClick$lambda$10(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 6

    .line 322
    invoke-virtual {p1}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    goto :goto_17

    :cond_15
    const-wide/16 v0, 0x1

    :goto_17
    iput-wide v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->number:J

    .line 323
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    .line 324
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$11(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 4

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p1, v0}, Lcom/chimeranft/core/ForkPreferences$Field;->int(I)I

    move-result p1

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->copies:I

    .line 331
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    .line 332
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$6(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$7(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$8(Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClick$lambda$9(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)Lkotlin/Unit;
    .registers 2

    .line 314
    invoke-virtual {p1}, Lcom/chimeranft/core/ForkPreferences$Field;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->giftName:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    .line 316
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final pick(Ljava/util/List;Ljava/lang/String;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V
    .registers 7

    .line 346
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 347
    const-string p1, "ChimeraConstructorNoAttributes"

    const-string p2, "\u041d\u0435\u0442 \u0442\u0430\u043a\u0438\u0445 \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u043e\u0432"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    return-void

    .line 350
    :cond_12
    new-instance v0, Lcom/chimeranft/core/ChimeraAttributeActivity;

    if-eqz p3, :cond_1d

    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_1e

    :cond_1d
    const/4 p3, 0x0

    :goto_1e
    if-nez p3, :cond_22

    const-string p3, ""

    :cond_22
    new-instance v1, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p4, p0}, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;Lcom/chimeranft/core/ChimeraConstructorActivity;)V

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/chimeranft/core/ChimeraAttributeActivity;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final pick$lambda$12(Lkotlin/jvm/functions/Function1;Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .registers 3

    .line 351
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {p1}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    .line 353
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final previewCaption()Ljava/lang/String;
    .registers 10

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    if-eqz v1, :cond_17

    sget-object v2, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftForge;->label(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_17
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    if-eqz v1, :cond_28

    sget-object v2, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftForge;->label(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_28
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    if-eqz v1, :cond_39

    sget-object v2, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftForge;->label(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_39
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v0, ""

    return-object v0

    :cond_42
    const/16 v7, 0x3e

    const/4 v8, 0x0

    .line 289
    const-string v1, " \u00b7 "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final previewView()Landroid/view/View;
    .registers 16

    .line 266
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    if-nez v2, :cond_e

    return-object v1

    .line 267
    :cond_e
    sget-object v3, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    iget-object v2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->base:Lcom/chimeranft/core/GiftForge$Base;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    iget-object v4, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->giftName:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v4}, Lcom/chimeranft/core/GiftForge;->buildName(Lcom/chimeranft/core/GiftForge$Base;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 268
    iget-object v4, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->base:Lcom/chimeranft/core/GiftForge$Base;

    iget-wide v5, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J

    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_2f

    :cond_2e
    move-object v7, v1

    :goto_2f
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_3a

    :cond_39
    move-object v8, v1

    .line 269
    :goto_3a
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_45

    :cond_44
    move-object v9, v1

    :goto_45
    iget-wide v11, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->number:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_4f

    :goto_4d
    move-wide v13, v11

    goto :goto_52

    :cond_4f
    const-wide/16 v11, 0x1

    goto :goto_4d

    :goto_52
    const-wide/16 v11, 0x1

    .line 268
    invoke-virtual/range {v3 .. v14}, Lcom/chimeranft/core/GiftForge;->buildUnique(Lcom/chimeranft/core/GiftForge$Base;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;JJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5b

    return-object v1

    .line 272
    :cond_5b
    const-string v2, "sticker"

    invoke-static {v0, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_64

    return-object v1

    .line 273
    :cond_64
    sget-object v2, Lcom/chimeranft/core/GiftTiles;->INSTANCE:Lcom/chimeranft/core/GiftTiles;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/GiftForge;->wrapForDisplay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Lcom/chimeranft/core/GiftTiles;->view(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_79

    return-object v1

    .line 275
    :cond_79
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x6

    .line 276
    invoke-virtual {p0, v2}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 277
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x84

    invoke-virtual {p0, v3}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 278
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 279
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private final schedulePoll()V
    .registers 5

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    new-instance v1, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;

    invoke-direct {v1, p0, v0}, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;-><init>(Lcom/chimeranft/core/ChimeraConstructorActivity;Landroid/os/Handler;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final waitingText()Ljava/lang/String;
    .registers 8

    .line 293
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;

    const-string v1, "pending"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v1, "\u0417\u0430\u043f\u0440\u0430\u0448\u0438\u0432\u0430\u044e \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u044b \u0443 Telegram\u2026"

    const-string v5, "ChimeraConstructorWaiting"

    if-eqz v0, :cond_16

    invoke-virtual {p0, v5, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :cond_16
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;

    const-string v6, "fail"

    invoke-static {v0, v6, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "ChimeraConstructorFailed"

    const-string v1, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442\u044b \u043d\u0435 \u043f\u0440\u0438\u0448\u043b\u0438"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;

    const/16 v2, 0x7c

    invoke-static {v1, v2, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_38

    const-string v1, "\u2014"

    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    :cond_4d
    invoke-virtual {p0, v5, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .registers 10

    .line 210
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->base:Lcom/chimeranft/core/GiftForge$Base;

    .line 211
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pools:Lcom/chimeranft/core/GiftForge$Pools;

    .line 216
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->previewView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 218
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 220
    :cond_12
    const-string v1, "ChimeraConstructorBase"

    const-string v2, "\u041e\u0441\u043d\u043e\u0432\u0430"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    if-eqz p2, :cond_29

    .line 221
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge$Base;->getSticker()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2a

    :cond_29
    move-object v2, v1

    :goto_2a
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_31

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_32

    :cond_31
    move-object v2, v1

    :goto_32
    if-eqz p2, :cond_44

    .line 222
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_44

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_41

    goto :goto_42

    :cond_41
    move-object v1, p2

    :goto_42
    if-nez v1, :cond_4c

    .line 223
    :cond_44
    const-string p2, "ChimeraConstructorNoBase"

    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d"

    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4c
    const p2, 0xb799

    if-eqz v2, :cond_56

    .line 224
    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/UItem;->asStickerButton(ILjava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_60

    .line 225
    :cond_56
    const-string v2, "msg_gift_premium"

    invoke-virtual {p0, v2}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2, v2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 224
    :goto_60
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :goto_63
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->previewCaption()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_7c

    .line 230
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->waitingText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 234
    :cond_7c
    const-string p2, "ChimeraConstructorAttributes"

    const-string v0, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442\u044b"

    invoke-virtual {p0, p2, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->chosen(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v5

    const v1, 0xb7a3

    const-string v2, "msg_sticker"

    const-string v3, "ChimeraConstructorModel"

    const-string v4, "\u041c\u043e\u0434\u0435\u043b\u044c"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object p2, v0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->chosen(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v5

    const v1, 0xb7a4

    const-string v2, "msg_customize"

    const-string v3, "ChimeraConstructorPattern"

    const-string v4, "\u0423\u0437\u043e\u0440"

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object p2, v0, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    invoke-direct {p0, p2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->chosen(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v5

    const v1, 0xb7a5

    const-string v2, "msg_colors"

    const-string v3, "ChimeraConstructorBackdrop"

    const-string v4, "\u0424\u043e\u043d"

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/4 v6, 0x0

    .line 238
    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 237
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-boolean p2, v0, Lcom/chimeranft/core/ChimeraConstructorActivity;->fromLibrary:Z

    if-eqz p2, :cond_e0

    .line 240
    const-string p2, "ChimeraConstructorFromLibrary"

    const-string v1, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442\u044b Telegram \u043d\u0435 \u043f\u0440\u0438\u0448\u043b\u0438 \u2014 \u043f\u043e\u043a\u0430\u0437\u0430\u043d\u044b \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u044b \u0432\u0430\u0448\u0438\u0445 \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432."

    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_e8

    .line 241
    :cond_e0
    const-string p2, "ChimeraConstructorFromServer"

    const-string v1, "\u0410\u0442\u0440\u0438\u0431\u0443\u0442\u044b \u0438 \u0438\u0445 \u0440\u0435\u0434\u043a\u043e\u0441\u0442\u044c \u0432\u0437\u044f\u0442\u044b \u0438\u0437 \u0430\u043f\u0433\u0440\u0435\u0439\u0434\u0430 Telegram."

    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 239
    :goto_e8
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const-string p2, "ChimeraConstructorResult"

    const-string v1, "\u0420\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442"

    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object p2, v0, Lcom/chimeranft/core/ChimeraConstructorActivity;->giftName:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10e

    const-string p2, "ChimeraConstructorNameAuto"

    const-string v1, "\u043a\u0430\u043a \u0443 \u043e\u0441\u043d\u043e\u0432\u044b"

    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_10e
    move-object v5, p2

    const v1, 0xb7ad

    .line 244
    const-string v2, "menu_username_set"

    const-string v3, "ChimeraConstructorName"

    const-string v4, "\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435"

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-wide v1, v0, Lcom/chimeranft/core/ChimeraConstructorActivity;->number:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_13a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_138
    move-object v5, p2

    goto :goto_143

    :cond_13a
    const-string p2, "ChimeraConstructorNumberRandom"

    const-string v1, "\u0441\u043b\u0443\u0447\u0430\u0439\u043d\u044b\u0439"

    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_138

    :goto_143
    const v1, 0xb7ae

    .line 246
    const-string v2, "msg_stats"

    const-string v3, "ChimeraGiftNumber"

    const-string v4, "\u041d\u043e\u043c\u0435\u0440"

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget p2, v0, Lcom/chimeranft/core/ChimeraConstructorActivity;->copies:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0xb7af

    .line 248
    const-string v2, "msg_copy"

    const-string v3, "ChimeraConstructorCopies"

    const-string v4, "\u0421\u043a\u043e\u043b\u044c\u043a\u043e \u0441\u043e\u0431\u0440\u0430\u0442\u044c"

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 249
    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 248
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const-string p2, "settings_gift"

    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result p2

    .line 253
    const-string v1, "ChimeraConstructorBuild"

    const-string v2, "\u0421\u043e\u0431\u0440\u0430\u0442\u044c \u0438 \u0434\u043e\u0431\u0430\u0432\u0438\u0442\u044c"

    invoke-virtual {p0, v1, v2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xb7b7

    .line 252
    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 253
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 252
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    const-string p2, "ChimeraConstructorFooter"

    .line 255
    const-string v1, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a \u043f\u043e\u044f\u0432\u0438\u0442\u0441\u044f \u0432 \u00ab\u041c\u043e\u0438 \u043f\u043e\u0434\u0430\u0440\u043a\u0438\u00bb \u0438 \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0435; \u0437\u0432\u0451\u0437\u0434\u044b \u043d\u0435 \u0441\u043f\u0438\u0441\u044b\u0432\u0430\u044e\u0442\u0441\u044f."

    .line 254
    invoke-virtual {p0, p2, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 160
    const-string v0, "ChimeraConstructor"

    const-string v1, "\u041a\u043e\u043d\u0441\u0442\u0440\u0443\u043a\u0442\u043e\u0440 NFT"

    invoke-virtual {p0, v0, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .registers 16

    .line 303
    iget-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pools:Lcom/chimeranft/core/GiftForge$Pools;

    .line 304
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const p3, 0xb7b7

    if-eq p1, p3, :cond_102

    packed-switch p1, :pswitch_data_108

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x2

    packed-switch p1, :pswitch_data_112

    move-object v2, p0

    goto/16 :goto_101

    .line 327
    :pswitch_15
    const-string p1, "ChimeraConstructorCopies"

    const-string p5, "\u0421\u043a\u043e\u043b\u044c\u043a\u043e \u0441\u043e\u0431\u0440\u0430\u0442\u044c"

    invoke-virtual {p0, p1, p5}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->copies:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object v1

    move-object v2, v0

    .line 328
    invoke-virtual {p0, p1, p5}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    const-string p5, "ChimeraConstructorCopiesHint"

    const-string v0, "\u041e\u0442 1 \u0434\u043e 200"

    invoke-virtual {p0, p5, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p5

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p5, p4, p3

    aput-object v1, p4, p2

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 328
    new-instance p3, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, v1}, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_52
    move-object v2, p0

    .line 319
    const-string p1, "ChimeraGiftNumber"

    const-string p5, "\u041d\u043e\u043c\u0435\u0440"

    invoke-virtual {p0, p1, p5}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v0, v2, Lcom/chimeranft/core/ChimeraConstructorActivity;->number:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object v0

    .line 320
    invoke-virtual {p0, p1, p5}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 321
    const-string p5, "ChimeraConstructorNumberHint"

    const-string v1, "0 \u2014 \u0441\u043b\u0443\u0447\u0430\u0439\u043d\u044b\u0439 \u043d\u043e\u043c\u0435\u0440"

    invoke-virtual {p0, p5, v1}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/chimeranft/core/ForkPreferences;->label(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p5

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p5, p4, p3

    aput-object v0, p4, p2

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 320
    new-instance p3, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, v0}, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_8e
    move-object v2, p0

    .line 312
    const-string p1, "ChimeraConstructorName"

    const-string p2, "\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/chimeranft/core/ChimeraConstructorActivity;->giftName:Ljava/lang/String;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/chimeranft/core/ForkPreferences;->field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object p3

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance p4, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p3}, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/ForkPreferences$Field;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/chimeranft/core/ForkPreferences;->editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_b4
    move-object v2, p0

    if-eqz p2, :cond_101

    .line 309
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge$Pools;->getBackdrops()Ljava/util/List;

    move-result-object p1

    const-string p2, "ChimeraConstructorBackdrop"

    const-string p3, "\u0424\u043e\u043d"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 310
    iget-object p3, v2, Lcom/chimeranft/core/ChimeraConstructorActivity;->backdrop:Lkotlin/Pair;

    .line 309
    new-instance p4, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0}, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/chimeranft/core/ChimeraConstructorActivity;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/ChimeraConstructorActivity;->pick(Ljava/util/List;Ljava/lang/String;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_ce
    move-object v2, p0

    if-eqz p2, :cond_101

    .line 307
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge$Pools;->getPatterns()Ljava/util/List;

    move-result-object p1

    const-string p2, "ChimeraConstructorPattern"

    const-string p3, "\u0423\u0437\u043e\u0440"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 308
    iget-object p3, v2, Lcom/chimeranft/core/ChimeraConstructorActivity;->pattern:Lkotlin/Pair;

    .line 307
    new-instance p4, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/chimeranft/core/ChimeraConstructorActivity;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/ChimeraConstructorActivity;->pick(Ljava/util/List;Ljava/lang/String;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_e8
    move-object v2, p0

    if-eqz p2, :cond_101

    .line 305
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftForge$Pools;->getModels()Ljava/util/List;

    move-result-object p1

    const-string p2, "ChimeraConstructorModel"

    const-string p3, "\u041c\u043e\u0434\u0435\u043b\u044c"

    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 306
    iget-object p3, v2, Lcom/chimeranft/core/ChimeraConstructorActivity;->model:Lkotlin/Pair;

    .line 305
    new-instance p4, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/chimeranft/core/ChimeraConstructorActivity;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/ChimeraConstructorActivity;->pick(Ljava/util/List;Ljava/lang/String;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V

    :cond_101
    :goto_101
    return-void

    :cond_102
    move-object v2, p0

    .line 334
    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->build()V

    return-void

    nop

    :pswitch_data_108
    .packed-switch 0xb7a3
        :pswitch_e8
        :pswitch_ce
        :pswitch_b4
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0xb7ad
        :pswitch_8e
        :pswitch_52
        :pswitch_15
    .end packed-switch
.end method

.method public onFragmentCreate()Z
    .registers 6

    .line 163
    sget-object v0, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    iget-wide v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/GiftForge;->find(J)Lcom/chimeranft/core/GiftForge$Base;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->base:Lcom/chimeranft/core/GiftForge$Base;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 164
    invoke-virtual {v1}, Lcom/chimeranft/core/GiftForge$Base;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, v2

    :goto_13
    if-nez v1, :cond_17

    const-string v1, ""

    :cond_17
    iput-object v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->giftName:Ljava/lang/String;

    .line 165
    iget-wide v3, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J

    invoke-virtual {v0, v3, v4}, Lcom/chimeranft/core/GiftForge;->startAttributes(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;

    .line 166
    iget-wide v3, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J

    invoke-virtual {v0, v3, v4}, Lcom/chimeranft/core/GiftForge;->serverPools(J)Lcom/chimeranft/core/GiftForge$Pools;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v3, v2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->adopt$default(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/GiftForge$Pools;ZILjava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity;->pools:Lcom/chimeranft/core/GiftForge$Pools;

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->schedulePoll()V

    .line 168
    :cond_33
    invoke-super {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->onFragmentCreate()Z

    move-result v0

    return v0
.end method
