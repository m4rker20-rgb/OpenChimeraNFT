.class public final Lcom/chimeranft/core/Identity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/Identity$Companion;

.field private static final NO_FIELDS:[Ljava/lang/String;

.field private static final PHONE_FIELDS:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final RING_SIZE:I

.field private static final TL_COLLECTIBLE:Ljava/lang/String;

.field private static final TL_USERNAME:Ljava/lang/String;

.field private static final USERNAME_ALT_LISTS:[Ljava/lang/String;

.field private static final USERNAME_FIELDS:[Ljava/lang/String;


# instance fields
.field private applyCalls:J

.field private applyHits:J

.field private applySkips:J

.field private volatile cachedBotVerification:Ljava/lang/Object;

.field private volatile cachedStatus:Ljava/lang/Object;

.field private volatile isWearActive:Z

.field private lastError:Ljava/lang/String;

.field private volatile localPremium:Z

.field private volatile myId:J

.field private volatile numberActive:Z

.field private volatile numberPrimary:Ljava/lang/String;

.field private final originals:Ljava/util/Map;

.field private volatile ratingActive:Z

.field private ratingLevel:I

.field private ratingNextGoal:I

.field private ratingValue:I

.field private final rememberedRing:[Ljava/lang/Object;

.field private rememberedRingNext:I

.field private volatile revision:J

.field private volatile usernameActive:Z

.field private volatile usernameReplace:Z

.field private volatile usernameTokens:[Ljava/lang/String;

.field private volatile verificationMode:I

.field private wearCid:J

.field private wsd:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/chimeranft/core/Identity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/Identity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    .line 644
    const-string v0, "org.telegram.tgnet.TLRPC$TL_emojiStatusCollectible"

    sput-object v0, Lcom/chimeranft/core/Identity;->TL_COLLECTIBLE:Ljava/lang/String;

    .line 645
    const-string v0, "org.telegram.tgnet.TLRPC$TL_username"

    sput-object v0, Lcom/chimeranft/core/Identity;->TL_USERNAME:Ljava/lang/String;

    .line 646
    const-string v0, "active_usernames"

    const-string v1, "editable_usernames"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/chimeranft/core/Identity;->USERNAME_ALT_LISTS:[Ljava/lang/String;

    .line 647
    const-string v2, "username"

    const-string v3, "usernames"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Identity;->USERNAME_FIELDS:[Ljava/lang/String;

    const/16 v0, 0x8

    .line 662
    sput v0, Lcom/chimeranft/core/Identity;->RING_SIZE:I

    .line 677
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Identity;->PHONE_FIELDS:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 678
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/chimeranft/core/Identity;->NO_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/Identity;->myId:J

    const/4 p1, 0x0

    .line 34
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    .line 39
    const-string p1, ""

    iput-object p1, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    .line 49
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/chimeranft/core/Identity;->originals:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;

    const-wide/16 p1, 0x1

    .line 65
    iput-wide p1, p0, Lcom/chimeranft/core/Identity;->revision:J

    .line 66
    sget p1, Lcom/chimeranft/core/Identity;->RING_SIZE:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/chimeranft/core/Identity;->rememberedRing:[Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getNO_FIELDS$cp()[Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/Identity;->NO_FIELDS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPHONE_FIELDS$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/Identity;->PHONE_FIELDS:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getUSERNAME_FIELDS$cp()[Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/Identity;->USERNAME_FIELDS:[Ljava/lang/String;

    return-object v0
.end method

.method private final applyNumberTo(Ljava/lang/Object;)Z
    .registers 8

    .line 625
    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->numberActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4a

    .line 627
    :cond_e
    const-string v0, "phone"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 628
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    if-nez p1, :cond_24

    return v1

    .line 630
    :cond_24
    sget-object v2, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    # invokes: Lcom/chimeranft/core/Identity$Companion;->phoneFieldsOf(Ljava/lang/Class;)[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/chimeranft/core/Identity$Companion;->access$phoneFieldsOf(Lcom/chimeranft/core/Identity$Companion;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    .line 631
    array-length v3, v2

    if-nez v3, :cond_32

    return v1

    .line 632
    :cond_32
    iget-object v3, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 635
    array-length v3, v2

    :goto_39
    if-ge v1, v3, :cond_49

    .line 637
    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v0, 0x1

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_49
    return v0

    :cond_4a
    :goto_4a
    return v1
.end method

.method private final applyPremiumTo(Ljava/lang/Object;)Z
    .registers 6

    .line 408
    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->localPremium:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    if-nez p1, :cond_8

    goto :goto_1c

    .line 409
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "premium"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    return v1

    .line 410
    :cond_17
    invoke-static {p1, v2, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    return v1
.end method

.method private final applyUsernameTo(Ljava/lang/Object;)Z
    .registers 14

    .line 416
    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->usernameActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_c

    goto/16 :goto_ac

    .line 421
    :cond_c
    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 425
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2d

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 426
    iget-boolean v2, p0, Lcom/chimeranft/core/Identity;->usernameReplace:Z

    if-eqz v2, :cond_2c

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->hasForeignUsername(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_2c
    return v1

    .line 429
    :cond_2d
    const-string v2, "usernames"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_51

    if-nez p1, :cond_39

    return v1

    .line 434
    :cond_39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 436
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 437
    invoke-static {p1, v2, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    move-object v3, v5

    const/4 v2, 0x1

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    .line 442
    :goto_52
    instance-of v5, v3, Ljava/util/List;

    if-eqz v5, :cond_6c

    .line 445
    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 446
    iget-object v5, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5e
    if-ge v7, v6, :cond_6c

    aget-object v8, v5, v7

    invoke-direct {p0, v3, v8}, Lcom/chimeranft/core/Identity;->ensureUsernameInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    const/4 v2, 0x1

    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    .line 448
    :cond_6c
    sget-object v3, Lcom/chimeranft/core/Identity;->USERNAME_ALT_LISTS:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_70
    if-ge v6, v5, :cond_95

    aget-object v7, v3, v6

    .line 450
    invoke-static {p1, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 451
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_92

    .line 454
    invoke-static {v7}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 455
    iget-object v8, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_84
    if-ge v10, v9, :cond_92

    aget-object v11, v8, v10

    invoke-direct {p0, v7, v11}, Lcom/chimeranft/core/Identity;->ensureStringInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8f

    const/4 v2, 0x1

    :cond_8f
    add-int/lit8 v10, v10, 0x1

    goto :goto_84

    :cond_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 458
    :cond_95
    iget-boolean v3, p0, Lcom/chimeranft/core/Identity;->usernameReplace:Z

    if-eqz v3, :cond_a0

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->stripForeignUsernames(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    const/4 v2, 0x1

    .line 459
    :cond_a0
    iget-object v3, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-static {p1, v0, v1}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ab

    return v4

    :cond_ab
    return v2

    :cond_ac
    :goto_ac
    return v1
.end method

.method private final applyVerificationTo(Ljava/lang/Object;)Z
    .registers 13

    .line 607
    iget v0, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    iget v0, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    return v1

    .line 608
    :cond_c
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->cachedBotVerification:Ljava/lang/Object;

    .line 610
    const-string v3, "bot_verification_icon"

    const-string v4, "verified"

    const-string v5, "bot_verification"

    if-eqz v0, :cond_37

    invoke-static {p1, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_37

    .line 611
    invoke-static {p1, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    iget v8, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    invoke-static {v8}, Lcom/chimeranft/core/Verification;->iconFor(I)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_37

    .line 612
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    return v1

    .line 617
    :cond_37
    iget v1, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    invoke-static {v1}, Lcom/chimeranft/core/Verification;->iconFor(I)J

    move-result-wide v6

    invoke-static {p1, v3, v6, v7}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v0, :cond_50

    .line 618
    invoke-static {p1, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_50

    invoke-static {p1, v5, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v1, 0x1

    .line 620
    :cond_50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v4, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    return v2

    :cond_65
    return v1
.end method

.method private final applyWearTo(Ljava/lang/Object;)Z
    .registers 8

    .line 400
    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-wide v2, p0, Lcom/chimeranft/core/Identity;->wearCid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_e

    goto :goto_2a

    .line 401
    :cond_e
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    goto :goto_19

    :cond_15
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->buildStatus()Ljava/lang/Object;

    move-result-object v0

    :goto_19
    if-nez v0, :cond_1c

    return v1

    .line 403
    :cond_1c
    const-string v2, "emoji_status"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_25

    return v1

    .line 404
    :cond_25
    invoke-static {p1, v2, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    :goto_2a
    return v1
.end method

.method private final declared-synchronized buildStatus()Ljava/lang/Object;
    .registers 9

    monitor-enter p0

    .line 356
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    goto/16 :goto_96

    :cond_c
    const/4 v0, 0x0

    .line 359
    :try_start_d
    sget-object v1, Lcom/chimeranft/core/Identity;->TL_COLLECTIBLE:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 361
    const-string v1, "no TL_emojiStatusCollectible"

    iput-object v1, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1b

    .line 362
    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v1

    goto :goto_7b

    .line 364
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 365
    const-string v2, "collectible_id"

    iget-wide v3, p0, Lcom/chimeranft/core/Identity;->wearCid:J

    invoke-static {v1, v2, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 366
    const-string v2, "until"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 367
    iget-object v2, p0, Lcom/chimeranft/core/Identity;->wsd:Lorg/json/JSONObject;

    if-eqz v2, :cond_77

    .line 370
    const-string v3, "center_color"

    invoke-direct {p0, v1, v3}, Lcom/chimeranft/core/Identity;->setNum(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    const-string v3, "edge_color"

    invoke-direct {p0, v1, v3}, Lcom/chimeranft/core/Identity;->setNum(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const-string v3, "pattern_color"

    invoke-direct {p0, v1, v3}, Lcom/chimeranft/core/Identity;->setNum(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    const-string v3, "text_color"

    invoke-direct {p0, v1, v3}, Lcom/chimeranft/core/Identity;->setNum(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    const-string v3, "document_id"

    invoke-direct {p0, v1, v3}, Lcom/chimeranft/core/Identity;->setNum(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    const-string v3, "pattern_document_id"

    invoke-direct {p0, v1, v3}, Lcom/chimeranft/core/Identity;->setNum(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    sget-object v3, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    const-string v4, "title"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "num"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/chimeranft/core/Store$Companion;->formatWearTitle(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6d

    goto :goto_72

    :cond_6d
    const-string v3, "title"

    invoke-static {v1, v3, v2}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    :goto_72
    const-string v2, "slug"

    invoke-direct {p0, v1, v2}, Lcom/chimeranft/core/Identity;->setStr(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    :cond_77
    iput-object v1, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_1d .. :try_end_79} :catchall_1b

    .line 381
    monitor-exit p0

    return-object v1

    .line 384
    :goto_7b
    :try_start_7b
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;
    :try_end_94
    .catchall {:try_start_7b .. :try_end_94} :catchall_9

    .line 385
    monitor-exit p0

    return-object v0

    :goto_96
    :try_start_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_9

    throw v0
.end method

.method private final bump()V
    .registers 5

    .line 74
    iget-wide v0, p0, Lcom/chimeranft/core/Identity;->revision:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/Identity;->revision:J

    return-void
.end method

.method private final clearRememberedRing()V
    .registers 6

    .line 149
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->rememberedRing:[Ljava/lang/Object;

    .line 150
    sget v1, Lcom/chimeranft/core/Identity;->RING_SIZE:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_e

    const/4 v4, 0x0

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 151
    :cond_e
    iput v2, p0, Lcom/chimeranft/core/Identity;->rememberedRingNext:I

    return-void
.end method

.method private final createTlUsername(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 588
    :try_start_1
    sget-object v1, Lcom/chimeranft/core/Identity;->TL_USERNAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v0

    .line 590
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 591
    const-string v2, "username"

    invoke-static {v1, v2, p1}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 592
    const-string p1, "active"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p1, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 593
    const-string p1, "editable"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p1, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 594
    const-string p1, "flags"

    const/4 v2, 0x2

    invoke-static {v1, p1, v2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    return-object v1

    :catchall_28
    move-exception p1

    .line 598
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tlusername: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method private final ensureStringInList(Ljava/util/List;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    .line 568
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2a

    .line 569
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    if-ge v2, v1, :cond_26

    .line 571
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 572
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    return v0

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 576
    :cond_26
    :try_start_26
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    return v3

    :catchall_2a
    :cond_2a
    :goto_2a
    return v0
.end method

.method private final ensureUsernameInList(Ljava/util/List;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_54

    .line 537
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_54

    .line 538
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    if-ge v2, v1, :cond_46

    .line 540
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 542
    sget-object v5, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    const-string v6, "username"

    invoke-static {v4, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    # invokes: Lcom/chimeranft/core/Identity$Companion;->strOf(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/chimeranft/core/Identity$Companion;->access$strOf(Lcom/chimeranft/core/Identity$Companion;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 543
    invoke-static {v5, p2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 545
    const-string p1, "active"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, p1, p2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 546
    const-string p1, "editable"

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, p1, p2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 547
    const-string p1, "flags"

    const/4 p2, 0x2

    invoke-static {v4, p1, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    return v0

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 551
    :cond_46
    invoke-direct {p0, p2}, Lcom/chimeranft/core/Identity;->createTlUsername(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 555
    :try_start_4c
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v3

    .line 558
    :cond_50
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_54

    return v3

    :catchall_54
    :cond_54
    :goto_54
    return v0
.end method

.method private final hasForeignUsername(Ljava/lang/Object;)Z
    .registers 12

    .line 465
    const-string v0, "usernames"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 466
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_35

    .line 468
    check-cast v0, Ljava/util/List;

    .line 469
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v1, :cond_35

    .line 471
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 473
    sget-object v6, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    const-string v7, "username"

    invoke-static {v5, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    # invokes: Lcom/chimeranft/core/Identity$Companion;->strOf(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/chimeranft/core/Identity$Companion;->access$strOf(Lcom/chimeranft/core/Identity$Companion;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chimeranft/core/Identity;->isOurToken(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    return v3

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 476
    :cond_35
    sget-object v0, Lcom/chimeranft/core/Identity;->USERNAME_ALT_LISTS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v1, :cond_6b

    aget-object v5, v0, v4

    .line 478
    invoke-static {p1, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 479
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_68

    .line 480
    check-cast v5, Ljava/util/List;

    .line 481
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4c
    if-ge v7, v6, :cond_68

    .line 483
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_65

    .line 484
    sget-object v9, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/chimeranft/core/Identity;->isOurToken(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_65

    return v3

    :cond_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_6b
    return v2
.end method

.method private final isOurToken(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 531
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1d

    .line 532
    :cond_a
    iget-object v1, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1a

    return v5

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1d
    :goto_1d
    return v0
.end method

.method private final isSelf(Ljava/lang/Object;)Z
    .registers 10

    .line 342
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_16

    .line 343
    iget-wide v5, p0, Lcom/chimeranft/core/Identity;->myId:J

    cmp-long p1, v1, v5

    if-nez p1, :cond_15

    return v3

    :cond_15
    return v4

    .line 344
    :cond_16
    const-string v1, "user"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 347
    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p1, v0, v5

    if-lez p1, :cond_2d

    .line 348
    iget-wide v5, p0, Lcom/chimeranft/core/Identity;->myId:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_2d

    return v3

    :cond_2d
    return v4
.end method

.method private final remember(Ljava/lang/Object;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_e

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->rememberedRing:[Ljava/lang/Object;

    .line 141
    sget v1, Lcom/chimeranft/core/Identity;->RING_SIZE:I

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_f

    :goto_e
    return-void

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 142
    :cond_12
    iget-object v1, p0, Lcom/chimeranft/core/Identity;->originals:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/chimeranft/core/Identity;->originals:Ljava/util/Map;

    new-instance v2, Lcom/chimeranft/core/Identity$OriginalState;

    invoke-direct {v2, p1}, Lcom/chimeranft/core/Identity$OriginalState;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_24
    iget v1, p0, Lcom/chimeranft/core/Identity;->rememberedRingNext:I

    .line 144
    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 145
    sget p1, Lcom/chimeranft/core/Identity;->RING_SIZE:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/chimeranft/core/Identity;->rememberedRingNext:I

    return-void
.end method

.method private final setNum(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .line 391
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->wsd:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    goto :goto_12

    :cond_5
    const-wide/16 v1, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_12

    .line 392
    invoke-static {p1, p2, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    :cond_12
    :goto_12
    return-void
.end method

.method private final setStr(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 395
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->wsd:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    goto :goto_16

    :cond_5
    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 396
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    invoke-static {p1, p2, v0}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_16
    :goto_16
    return-void
.end method

.method private final stripForeignUsernames(Ljava/lang/Object;)Z
    .registers 12

    .line 497
    const-string v0, "usernames"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 498
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3f

    .line 501
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 502
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v5, 0x0

    :goto_17
    if-ge v2, v1, :cond_40

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_22

    .line 505
    const-string v6, ""

    goto :goto_32

    :cond_22
    sget-object v7, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    const-string v8, "username"

    invoke-static {v6, v8}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    # invokes: Lcom/chimeranft/core/Identity$Companion;->strOf(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/chimeranft/core/Identity$Companion;->access$strOf(Lcom/chimeranft/core/Identity$Companion;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    :goto_32
    invoke-direct {p0, v6}, Lcom/chimeranft/core/Identity;->isOurToken(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 507
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x1

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_3f
    const/4 v5, 0x0

    .line 512
    :cond_40
    sget-object v0, Lcom/chimeranft/core/Identity;->USERNAME_ALT_LISTS:[Ljava/lang/String;

    array-length v1, v0

    :goto_43
    if-ge v4, v1, :cond_7a

    aget-object v6, v0, v4

    .line 514
    invoke-static {p1, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 515
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_77

    .line 517
    invoke-static {v6}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 518
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_58
    if-ge v2, v7, :cond_77

    .line 520
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_74

    .line 521
    sget-object v9, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/chimeranft/core/Identity;->isOurToken(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_74

    .line 522
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x1

    :cond_74
    add-int/lit8 v7, v7, -0x1

    goto :goto_58

    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_7a
    return v5
.end method


# virtual methods
.method public final applyAll(Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_b9

    .line 299
    iget-wide v1, p0, Lcom/chimeranft/core/Identity;->myId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_b9

    invoke-virtual {p0}, Lcom/chimeranft/core/Identity;->hasOverrides()Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_b9

    .line 302
    :cond_13
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->isSelf(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 303
    :cond_1a
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->remember(Ljava/lang/Object;)V

    .line 304
    iget-wide v1, p0, Lcom/chimeranft/core/Identity;->applyCalls:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/Identity;->applyCalls:J

    .line 308
    :try_start_24
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->applyWearTo(Ljava/lang/Object;)Z

    move-result v1

    .line 309
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->applyUsernameTo(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    .line 310
    :cond_30
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->applyNumberTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v1, 0x1

    .line 311
    :cond_37
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->applyPremiumTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v1, 0x1

    .line 313
    :cond_3e
    const-string v2, "user"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6a

    if-eq v2, p1, :cond_6a

    .line 316
    invoke-direct {p0, v2}, Lcom/chimeranft/core/Identity;->remember(Ljava/lang/Object;)V

    .line 317
    invoke-direct {p0, v2}, Lcom/chimeranft/core/Identity;->applyWearTo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    const/4 v1, 0x1

    .line 318
    :cond_52
    invoke-direct {p0, v2}, Lcom/chimeranft/core/Identity;->applyUsernameTo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    const/4 v1, 0x1

    .line 319
    :cond_59
    invoke-direct {p0, v2}, Lcom/chimeranft/core/Identity;->applyNumberTo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    const/4 v1, 0x1

    .line 320
    :cond_60
    invoke-direct {p0, v2}, Lcom/chimeranft/core/Identity;->applyPremiumTo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    const/4 v1, 0x1

    goto :goto_6a

    :catchall_68
    move-exception p1

    goto :goto_a0

    .line 323
    :cond_6a
    :goto_6a
    iget-boolean v6, p0, Lcom/chimeranft/core/Identity;->ratingActive:Z

    if-eqz v6, :cond_7b

    iget v6, p0, Lcom/chimeranft/core/Identity;->ratingValue:I

    iget v7, p0, Lcom/chimeranft/core/Identity;->ratingLevel:I

    iget v8, p0, Lcom/chimeranft/core/Identity;->ratingNextGoal:I

    invoke-static {p1, v6, v7, v8}, Lcom/chimeranft/core/Rating;->apply(Ljava/lang/Object;III)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v1, 0x1

    .line 325
    :cond_7b
    iget v6, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    if-eqz v6, :cond_91

    .line 327
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Identity;->applyVerificationTo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    const/4 v1, 0x1

    :cond_86
    if-eqz v2, :cond_91

    if-eq v2, p1, :cond_91

    .line 328
    invoke-direct {p0, v2}, Lcom/chimeranft/core/Identity;->applyVerificationTo(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    goto :goto_92

    :cond_91
    move v5, v1

    :goto_92
    if-eqz v5, :cond_9a

    .line 330
    iget-wide v1, p0, Lcom/chimeranft/core/Identity;->applyHits:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/Identity;->applyHits:J

    return v5

    :cond_9a
    iget-wide v1, p0, Lcom/chimeranft/core/Identity;->applySkips:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/Identity;->applySkips:J
    :try_end_9f
    .catchall {:try_start_24 .. :try_end_9f} :catchall_68

    return v5

    .line 334
    :goto_a0
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;

    :cond_b9
    :goto_b9
    return v0
.end method

.method public final applyToCachedUser(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 270
    :cond_4
    iget-boolean v1, p0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    const-string v2, "emoji_status"

    if-eqz v1, :cond_23

    .line 272
    iget-object v1, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    goto :goto_15

    :cond_11
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->buildStatus()Ljava/lang/Object;

    move-result-object v1

    :goto_15
    if-eqz v1, :cond_22

    .line 273
    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_22

    invoke-static {p1, v2, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_22
    return v0

    .line 276
    :cond_23
    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2f
    return v0
.end method

.method public final configure(ZJLorg/json/JSONObject;Z[Ljava/lang/String;ZZ[Ljava/lang/String;ZIIIIZ)V
    .registers 18

    .line 89
    iput-boolean p10, p0, Lcom/chimeranft/core/Identity;->ratingActive:Z

    .line 90
    iput p11, p0, Lcom/chimeranft/core/Identity;->ratingValue:I

    .line 91
    iput p12, p0, Lcom/chimeranft/core/Identity;->ratingLevel:I

    .line 92
    iput p13, p0, Lcom/chimeranft/core/Identity;->ratingNextGoal:I

    move/from16 p10, p14

    .line 93
    invoke-virtual {p0, p10}, Lcom/chimeranft/core/Identity;->setVerificationMode(I)V

    move/from16 p10, p15

    .line 94
    iput-boolean p10, p0, Lcom/chimeranft/core/Identity;->localPremium:Z

    .line 95
    iput-boolean p1, p0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    .line 96
    iput-wide p2, p0, Lcom/chimeranft/core/Identity;->wearCid:J

    .line 97
    iput-object p4, p0, Lcom/chimeranft/core/Identity;->wsd:Lorg/json/JSONObject;

    const/4 p4, 0x0

    .line 98
    iput-object p4, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    if-eqz p1, :cond_25

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_25

    .line 99
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->buildStatus()Ljava/lang/Object;

    .line 101
    :cond_25
    sget-object p1, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    # invokes: Lcom/chimeranft/core/Identity$Companion;->normalizeUsernames([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {p1, p6}, Lcom/chimeranft/core/Identity$Companion;->access$normalizeUsernames(Lcom/chimeranft/core/Identity$Companion;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p5, :cond_38

    .line 102
    iget-object p4, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    array-length p4, p4

    if-lez p4, :cond_38

    const/4 p4, 0x1

    goto :goto_39

    :cond_38
    const/4 p4, 0x0

    :goto_39
    iput-boolean p4, p0, Lcom/chimeranft/core/Identity;->usernameActive:Z

    .line 103
    iput-boolean p7, p0, Lcom/chimeranft/core/Identity;->usernameReplace:Z

    .line 105
    # invokes: Lcom/chimeranft/core/Identity$Companion;->normalizeNumbers([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {p1, p9}, Lcom/chimeranft/core/Identity$Companion;->access$normalizeNumbers(Lcom/chimeranft/core/Identity$Companion;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 106
    array-length p4, p1

    if-lez p4, :cond_47

    aget-object p1, p1, p3

    goto :goto_49

    :cond_47
    const-string p1, ""

    :goto_49
    iput-object p1, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    if-eqz p8, :cond_55

    .line 107
    iget-object p1, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_56

    :cond_55
    const/4 p2, 0x0

    :cond_56
    iput-boolean p2, p0, Lcom/chimeranft/core/Identity;->numberActive:Z

    .line 108
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V

    return-void
.end method

.method public final describe()Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    .line 281
    iget-wide v1, v0, Lcom/chimeranft/core/Identity;->myId:J

    .line 282
    iget-boolean v3, v0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    iget-wide v4, v0, Lcom/chimeranft/core/Identity;->wearCid:J

    iget-object v6, v0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v6, :cond_f

    const/4 v6, 0x1

    goto :goto_10

    :cond_f
    const/4 v6, 0x0

    .line 283
    :goto_10
    iget-boolean v8, v0, Lcom/chimeranft/core/Identity;->usernameActive:Z

    iget-object v9, v0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    array-length v9, v9

    iget-object v10, v0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    array-length v10, v10

    if-lez v10, :cond_30

    iget-object v10, v0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    aget-object v7, v10, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_32

    :cond_30
    const-string v7, ""

    .line 284
    :goto_32
    iget-boolean v10, v0, Lcom/chimeranft/core/Identity;->numberActive:Z

    iget-object v11, v0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    .line 285
    iget-boolean v12, v0, Lcom/chimeranft/core/Identity;->ratingActive:Z

    iget v13, v0, Lcom/chimeranft/core/Identity;->ratingValue:I

    iget v14, v0, Lcom/chimeranft/core/Identity;->ratingLevel:I

    .line 286
    iget-boolean v15, v0, Lcom/chimeranft/core/Identity;->localPremium:Z

    move/from16 v16, v15

    .line 287
    iget v15, v0, Lcom/chimeranft/core/Identity;->verificationMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    const-string v15, "myId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " wear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") number="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") rating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") premium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " verif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized disableWear()V
    .registers 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 264
    :try_start_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/chimeranft/core/Identity;->setWear(JLorg/json/JSONObject;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 265
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final getApplyCalls()J
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/chimeranft/core/Identity;->applyCalls:J

    return-wide v0
.end method

.method public final getApplyHits()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/chimeranft/core/Identity;->applyHits:J

    return-wide v0
.end method

.method public final getApplySkips()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/chimeranft/core/Identity;->applySkips:J

    return-wide v0
.end method

.method public final getLastError()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerificationMode()I
    .registers 2

    .line 204
    iget v0, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    return v0
.end method

.method public final getWearCid()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/chimeranft/core/Identity;->wearCid:J

    return-wide v0
.end method

.method public final getWsd()Lorg/json/JSONObject;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->wsd:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final hasOverrides()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->usernameActive:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->numberActive:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->ratingActive:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->localPremium:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method public final isWearActive()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    return v0
.end method

.method public final pollCounters()Ljava/lang/String;
    .registers 10

    .line 291
    iget-wide v0, p0, Lcom/chimeranft/core/Identity;->applyCalls:J

    iget-wide v2, p0, Lcom/chimeranft/core/Identity;->applyHits:J

    iget-wide v4, p0, Lcom/chimeranft/core/Identity;->applySkips:J

    .line 292
    iget-object v6, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_11

    const-string v6, ""

    goto :goto_24

    :cond_11
    iget-object v6, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " err="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calls="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " hits="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " skips="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final restoreAll()V
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->originals:Ljava/util/Map;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/chimeranft/core/Identity;->originals:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chimeranft/core/Identity$OriginalState;

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 122
    invoke-virtual {v2, v3}, Lcom/chimeranft/core/Identity$OriginalState;->restore(Ljava/lang/Object;)V

    goto :goto_d

    :catchall_2b
    move-exception v1

    goto :goto_56

    .line 124
    :cond_2d
    iget-object v1, p0, Lcom/chimeranft/core/Identity;->originals:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 125
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2b

    .line 117
    monitor-exit v0

    .line 126
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->clearRememberedRing()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/chimeranft/core/Identity;->localPremium:Z

    .line 128
    iget-boolean v1, p0, Lcom/chimeranft/core/Identity;->localPremium:Z

    iput-boolean v1, p0, Lcom/chimeranft/core/Identity;->ratingActive:Z

    .line 129
    iget-boolean v1, p0, Lcom/chimeranft/core/Identity;->ratingActive:Z

    iput-boolean v1, p0, Lcom/chimeranft/core/Identity;->numberActive:Z

    .line 130
    iget-boolean v1, p0, Lcom/chimeranft/core/Identity;->numberActive:Z

    iput-boolean v1, p0, Lcom/chimeranft/core/Identity;->usernameActive:Z

    .line 131
    iget-boolean v1, p0, Lcom/chimeranft/core/Identity;->usernameActive:Z

    iput-boolean v1, p0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    .line 132
    iput v0, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/chimeranft/core/Identity;->cachedBotVerification:Ljava/lang/Object;

    .line 135
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V

    return-void

    .line 117
    :goto_56
    monitor-exit v0

    throw v1
.end method

.method public final revision()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lcom/chimeranft/core/Identity;->revision:J

    return-wide v0
.end method

.method public final setApplyCalls(J)V
    .registers 3

    .line 52
    iput-wide p1, p0, Lcom/chimeranft/core/Identity;->applyCalls:J

    return-void
.end method

.method public final setApplyHits(J)V
    .registers 3

    .line 53
    iput-wide p1, p0, Lcom/chimeranft/core/Identity;->applyHits:J

    return-void
.end method

.method public final setApplySkips(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/chimeranft/core/Identity;->applySkips:J

    return-void
.end method

.method public final setLastError(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/chimeranft/core/Identity;->lastError:Ljava/lang/String;

    return-void
.end method

.method public final setLocalPremium(Z)V
    .registers 2

    .line 258
    iput-boolean p1, p0, Lcom/chimeranft/core/Identity;->localPremium:Z

    .line 259
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V

    return-void
.end method

.method public final setMyId(J)V
    .registers 3

    .line 79
    iput-wide p1, p0, Lcom/chimeranft/core/Identity;->myId:J

    .line 80
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->clearRememberedRing()V

    .line 81
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V

    return-void
.end method

.method public final declared-synchronized setNumbers(Z[Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 243
    :try_start_1
    sget-object v0, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    # invokes: Lcom/chimeranft/core/Identity$Companion;->normalizeNumbers([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/chimeranft/core/Identity$Companion;->access$normalizeNumbers(Lcom/chimeranft/core/Identity$Companion;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 244
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_10

    aget-object p2, p2, v1

    goto :goto_12

    :catchall_e
    move-exception p1

    goto :goto_27

    :cond_10
    const-string p2, ""

    :goto_12
    iput-object p2, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    if-eqz p1, :cond_20

    .line 245
    iget-object p1, p0, Lcom/chimeranft/core/Identity;->numberPrimary:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    :goto_20
    iput-boolean v1, p0, Lcom/chimeranft/core/Identity;->numberActive:Z

    .line 246
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_e

    .line 247
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_e

    throw p1
.end method

.method public final declared-synchronized setRating(ZIII)V
    .registers 5

    monitor-enter p0

    .line 250
    :try_start_1
    iput-boolean p1, p0, Lcom/chimeranft/core/Identity;->ratingActive:Z

    .line 251
    iput p2, p0, Lcom/chimeranft/core/Identity;->ratingValue:I

    .line 252
    iput p3, p0, Lcom/chimeranft/core/Identity;->ratingLevel:I

    .line 253
    iput p4, p0, Lcom/chimeranft/core/Identity;->ratingNextGoal:I

    .line 254
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 255
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final declared-synchronized setUsernameReplace(Z)V
    .registers 5

    monitor-enter p0

    .line 227
    :try_start_1
    iget-boolean v0, p0, Lcom/chimeranft/core/Identity;->usernameReplace:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_44

    if-ne v0, p1, :cond_7

    monitor-exit p0

    return-void

    .line 228
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Lcom/chimeranft/core/Identity;->usernameReplace:Z

    if-nez p1, :cond_48

    .line 234
    iget-object p1, p0, Lcom/chimeranft/core/Identity;->originals:Ljava/util/Map;

    monitor-enter p1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_44

    .line 235
    :try_start_e
    iget-object v0, p0, Lcom/chimeranft/core/Identity;->originals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chimeranft/core/Identity$OriginalState;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/Identity$OriginalState;->restoreUsernames(Ljava/lang/Object;)V

    goto :goto_18

    :catchall_3e
    move-exception v0

    goto :goto_46

    .line 237
    :cond_40
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_3e

    .line 234
    :try_start_42
    monitor-exit p1

    goto :goto_48

    :catchall_44
    move-exception p1

    goto :goto_4d

    :goto_46
    monitor-exit p1

    throw v0

    .line 239
    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_44

    .line 240
    monitor-exit p0

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_44

    throw p1
.end method

.method public final declared-synchronized setUsernames(Z[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 220
    :try_start_1
    sget-object v0, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    # invokes: Lcom/chimeranft/core/Identity$Companion;->normalizeUsernames([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/chimeranft/core/Identity$Companion;->access$normalizeUsernames(Lcom/chimeranft/core/Identity$Companion;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 221
    iget-object p1, p0, Lcom/chimeranft/core/Identity;->usernameTokens:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :catchall_12
    move-exception p1

    goto :goto_1c

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Lcom/chimeranft/core/Identity;->usernameActive:Z

    .line 222
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_12

    .line 223
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_12

    throw p1
.end method

.method public final declared-synchronized setVerificationMode(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 p1, 0x0

    .line 199
    :cond_8
    :try_start_8
    iput p1, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    .line 200
    iget p1, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    if-eqz p1, :cond_17

    iget p1, p0, Lcom/chimeranft/core/Identity;->verificationMode:I

    invoke-static {p1}, Lcom/chimeranft/core/Verification;->build(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_18

    :catchall_15
    move-exception p1

    goto :goto_1f

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-object p1, p0, Lcom/chimeranft/core/Identity;->cachedBotVerification:Ljava/lang/Object;

    .line 201
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_15

    .line 202
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_15

    throw p1
.end method

.method public final declared-synchronized setWear(JLorg/json/JSONObject;)V
    .registers 7

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 209
    :goto_a
    :try_start_a
    iput-boolean v0, p0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    .line 210
    iput-wide p1, p0, Lcom/chimeranft/core/Identity;->wearCid:J

    .line 211
    iput-object p3, p0, Lcom/chimeranft/core/Identity;->wsd:Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/chimeranft/core/Identity;->cachedStatus:Ljava/lang/Object;

    .line 213
    iget-boolean p1, p0, Lcom/chimeranft/core/Identity;->isWearActive:Z

    if-eqz p1, :cond_1d

    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->buildStatus()Ljava/lang/Object;

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_22

    .line 214
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/chimeranft/core/Identity;->bump()V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1b

    .line 215
    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1b

    throw p1
.end method
