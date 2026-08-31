.class public final Lcom/chimeranft/core/Main$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/Main$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$containsUid(Lcom/chimeranft/core/Main$Companion;[JIJ)Z
    .registers 5

    .line 3359
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/Main$Companion;->containsUid([JIJ)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$eligSlot(Lcom/chimeranft/core/Main$Companion;J)I
    .registers 3

    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->eligSlot(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$findNoArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3

    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->findNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findSingleNumericArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3

    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->findSingleNumericArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hasHeavyTextLayout(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->hasHeavyTextLayout(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isBroadcastChannel(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;)Z
    .registers 2

    .line 3359
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main$Companion;->isBroadcastChannel(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isChatListClass(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;)Z
    .registers 2

    .line 3359
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main$Companion;->isChatListClass(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$messageSenderUserId(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;)J
    .registers 2

    .line 3359
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main$Companion;->messageSenderUserId(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$messageTextIsHeavy(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;)Z
    .registers 2

    .line 3359
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main$Companion;->messageTextIsHeavy(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pollDeferredRepaint(Lcom/chimeranft/core/Main$Companion;)Ljava/lang/Runnable;
    .registers 1

    .line 3359
    invoke-direct {p0}, Lcom/chimeranft/core/Main$Companion;->pollDeferredRepaint()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V
    .registers 4

    .line 3359
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic access$renderCrash(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->renderCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestSupporterPopup(Lcom/chimeranft/core/Main$Companion;)V
    .registers 1

    .line 3359
    invoke-direct {p0}, Lcom/chimeranft/core/Main$Companion;->requestSupporterPopup()V

    return-void
.end method

.method public static final synthetic access$writeTextFile(Lcom/chimeranft/core/Main$Companion;Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private final cleanAccessClientId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 3931
    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    .line 3932
    :cond_5
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3933
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_64

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x60

    if-le v1, v2, :cond_2c

    goto :goto_64

    .line 3934
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v1, :cond_63

    .line 3936
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    .line 3937
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-ltz v4, :cond_47

    const/16 v4, 0x7a

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-lez v4, :cond_60

    :cond_47
    const/16 v4, 0x30

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-ltz v4, :cond_57

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-lez v4, :cond_60

    :cond_57
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_60

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_60

    return-object v0

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_63
    return-object p1

    :cond_64
    :goto_64
    return-object v0
.end method

.method private final containsUid([JIJ)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_f

    .line 5300
    aget-wide v2, p1, v1

    cmp-long v4, v2, p3

    if-nez v4, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    return v0
.end method

.method private final describeBadgeSlots(Lcom/chimeranft/core/Main;)Ljava/lang/String;
    .registers 5

    .line 5674
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5675
    const-string v1, "badges: owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges$Companion;->supporterSlotOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5676
    const-string v2, " secondarySlot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges$Companion;->hostHasSecondarySlot()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "yes"

    goto :goto_25

    :cond_23
    const-string v1, "no"

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5677
    const-string v1, " exteraBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraBadgeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    const-string v2, "OFF"

    if-nez v1, :cond_37

    move-object v1, v2

    goto :goto_42

    :cond_37
    # getter for: Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraBadgeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5678
    const-string v1, " exteraSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraSecondarySlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    if-nez v1, :cond_52

    move-object v1, v2

    goto :goto_5d

    :cond_52
    # getter for: Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraSecondarySlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5679
    const-string v1, " exteraRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/Main;->exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraSecondaryRuleSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    if-nez v1, :cond_6d

    move-object v1, v2

    goto :goto_78

    :cond_6d
    # getter for: Lcom/chimeranft/core/Main;->exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraSecondaryRuleSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5680
    const-string v1, " exteraBulletin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/Main;->exteraBulletinSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraBulletinSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    if-nez v1, :cond_88

    move-object v1, v2

    goto :goto_93

    :cond_88
    # getter for: Lcom/chimeranft/core/Main;->exteraBulletinSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraBulletinSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5681
    const-string v1, " exteraSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/Main;->exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraBadgeSourceSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    if-nez v1, :cond_a2

    goto :goto_ad

    :cond_a2
    # getter for: Lcom/chimeranft/core/Main;->exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getExteraBadgeSourceSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_ad
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5682
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1

    if-eqz v1, :cond_da

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->poll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5683
    :cond_da
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final describeFlingSlots(Lcom/chimeranft/core/Main;)Ljava/lang/String;
    .registers 7

    .line 5687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5688
    # getter for: Lcom/chimeranft/core/Main;->flingUnhooked:Z
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getFlingUnhooked$p(Lcom/chimeranft/core/Main;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "UNHOOKED "

    goto :goto_10

    :cond_e
    const-string v1, "live "

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5689
    # getter for: Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getEmojiFreezeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    const/16 v2, 0x20

    if-eqz v1, :cond_2c

    # getter for: Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getEmojiFreezeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5690
    :cond_2c
    # getter for: Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getFlingSlots$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v1, :cond_52

    .line 5692
    # getter for: Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getFlingSlots$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/HookSlot;

    if-eqz v4, :cond_4f

    if-lez v3, :cond_48

    .line 5694
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5695
    :cond_48
    invoke-virtual {v4}, Lcom/chimeranft/core/HookSlot;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 5697
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final eligSlot(J)I
    .registers 5

    const-wide v0, -0x61c8864680b583ebL

    mul-long p1, p1, v0

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    .line 4644
    # getter for: Lcom/chimeranft/core/Main;->ELIG_MASK:I
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getELIG_MASK$cp()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private final fillAttrNames(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .registers 14

    .line 7037
    const-string v0, "edge_color"

    const-string v1, "center_color"

    const-string v2, "backdrop"

    const-string v3, "model"

    .line 7039
    :try_start_8
    const-string v4, "attributes"

    invoke-static {p1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7040
    instance-of v4, p1, Ljava/util/List;

    if-nez v4, :cond_14

    goto/16 :goto_95

    .line 7041
    :cond_14
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 7044
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7045
    const-string v6, "name"

    invoke-static {v4, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_44

    .line 7046
    const-string v6, ""

    goto :goto_48

    :cond_44
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7047
    :goto_48
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_4f

    goto :goto_1a

    :cond_4f
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 7048
    invoke-static {v5, v3, v9, v8, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 7049
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    .line 7050
    :cond_5f
    const-string v10, "pattern"

    invoke-static {v5, v10, v9, v8, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 7051
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "symbol"

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    .line 7052
    :cond_70
    invoke-static {v5, v2, v9, v8, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 7054
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7056
    invoke-static {v4, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    .line 7057
    invoke-static {v4, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v5, v9

    if-eqz v4, :cond_8d

    .line 7058
    invoke-virtual {p2, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_8d
    cmp-long v4, v7, v9

    if-eqz v4, :cond_1a

    .line 7059
    invoke-virtual {p2, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_94
    .catchall {:try_start_8 .. :try_end_94} :catchall_95

    goto :goto_1a

    :catchall_95
    :cond_95
    :goto_95
    return-void
.end method

.method private final findNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6

    .line 4669
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 4670
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v2

    if-nez v2, :cond_b

    return-object v1

    .line 4671
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 4672
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {v0}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v1

    if-nez v1, :cond_30

    return-object v0

    :cond_4d
    const/4 p1, 0x0

    return-object p1
.end method

.method private final findSingleNumericArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6

    .line 5516
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 5518
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5519
    invoke-static {v0}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 5520
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 5521
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_35

    if-ne v1, v2, :cond_b

    :cond_35
    return-object v0

    :cond_36
    const/4 p1, 0x0

    return-object p1
.end method

.method private final firstLine(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14

    .line 4422
    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 4423
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v2, 0x0

    .line 4424
    const-string v3, "substring(...)"

    if-lez p1, :cond_1d

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1e

    :cond_1d
    move-object v4, v1

    :goto_1e
    if-lez p1, :cond_40

    .line 4426
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 p1, p1, 0x1

    if-le v5, p1, :cond_40

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4427
    :cond_40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/16 v6, 0xa

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_67

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_67
    return-object p1
.end method

.method public static synthetic getAccessDeniedDecision$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getGiftCollectionsJson$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getGiftCount$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getGiftDisplayJson$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getGiftLibraryJson$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getHookGroupNames$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getLastCrash$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getPerformanceMode$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getPerformanceStatusJson$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getPersistenceStatus$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSafetyReport$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSettingsJson$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getStateSummary$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSupporterPopupIconId$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSyncStatusJson$annotations()V
    .registers 0

    return-void
.end method

.method private final hasHeavyTextLayout(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 5333
    const-string v0, "replyTextLayout"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5334
    :cond_a
    const-string v0, "replyNameLayout"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    return v1

    .line 5338
    :cond_13
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object p1

    if-nez p1, :cond_1e

    .line 5339
    invoke-direct {p0, p2}, Lcom/chimeranft/core/Main$Companion;->messageTextIsHeavy(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5340
    :cond_1e
    # getter for: Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getCellStamps$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/CellStamps;

    move-result-object p1

    # getter for: Lcom/chimeranft/core/Main;->HEAVY_TEXT_RESOLVER:Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getHEAVY_TEXT_RESOLVER$cp()Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chimeranft/core/CellStamps;->hasHeavyText(Ljava/lang/Object;Lcom/chimeranft/core/CellStamps$HeavyTextResolver;)Z

    move-result p1

    return p1
.end method

.method private final installCrashHandler(Ljava/lang/String;)V
    .registers 4

    .line 4280
    # getter for: Lcom/chimeranft/core/Main;->crashHandlerInstalled:Z
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getCrashHandlerInstalled$cp()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4f

    :cond_7
    const/4 v0, 0x1

    .line 4281
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$setCrashHandlerInstalled$cp(Z)V

    .line 4282
    new-instance v0, Ljava/io/File;

    const-string v1, "chimeranft_crash.log"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4285
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 4287
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Main$Companion;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 4288
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$setLastCrashReport$cp(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_12 .. :try_end_37} :catchall_3d

    .line 4291
    :cond_37
    :try_start_37
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3d

    .line 4293
    :catchall_3b
    :try_start_3b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_3d

    .line 4301
    :catchall_3d
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    .line 4302
    new-instance v1, Lcom/chimeranft/core/Main$Companion$installCrashHandler$ours$1;

    invoke-direct {v1, v0, p1}, Lcom/chimeranft/core/Main$Companion$installCrashHandler$ours$1;-><init>(Ljava/io/File;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4320
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4321
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$setCrashHandler$cp(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4322
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$setPreviousCrashHandler$cp(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_4f

    :catchall_4f
    :goto_4f
    return-void
.end method

.method private final isBroadcastChannel(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 4658
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "broadcast"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return v0

    .line 4659
    :cond_13
    const-string v2, "megagroup"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v0

    .line 4660
    :cond_20
    const-string v2, "forum"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    return v0

    .line 4664
    :cond_2d
    const-string v2, "signature_profiles"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    return v0

    :cond_3a
    const/4 p1, 0x1

    return p1
.end method

.method private final isChatListClass(Ljava/lang/Class;)Z
    .registers 7

    .line 4681
    # getter for: Lcom/chimeranft/core/Main;->CHAT_LIST_CLASS:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getCHAT_LIST_CLASS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    .line 4682
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4683
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ChatListRecyclerView"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    .line 4684
    # getter for: Lcom/chimeranft/core/Main;->CHAT_LIST_CLASS:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getCHAT_LIST_CLASS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private final messageSenderUserId(Ljava/lang/Object;)J
    .registers 8

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 5394
    :cond_5
    :try_start_5
    const-string v2, "messageOwner"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_15

    .line 5395
    :cond_f
    const-string v3, "from_id"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 5396
    :goto_15
    const-string v3, "user_id"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gtz v5, :cond_25

    .line 5397
    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    :cond_25
    cmp-long v2, v3, v0

    if-lez v2, :cond_2a

    return-wide v3

    .line 5399
    :cond_2a
    const-string v2, "getFromChatId"

    .line 5400
    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 5399
    invoke-static {p1, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5401
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_49

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_49

    .line 5402
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_49

    :catchall_49
    :cond_49
    return-wide v0
.end method

.method private final messageTextIsHeavy(Ljava/lang/Object;)Z
    .registers 9

    .line 5360
    const-string v0, "textLayoutBlocks"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 5361
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 5365
    :cond_c
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_13
    if-ge v1, v0, :cond_47

    if-nez v2, :cond_47

    .line 5368
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 5373
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "quote"

    invoke-static {v3, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2e

    :goto_2c
    const/4 v2, 0x1

    goto :goto_44

    .line 5374
    :cond_2e
    const-string v5, "code"

    invoke-static {v3, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_2c

    .line 5375
    :cond_3b
    const-string v4, "languageLayout"

    invoke-static {v3, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_44

    goto :goto_2c

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 5379
    :cond_47
    invoke-virtual {p0, v0, v2}, Lcom/chimeranft/core/Main$Companion;->textLayoutIsHeavy(IZ)Z

    move-result p1

    return p1
.end method

.method private final parseLong(Ljava/lang/String;)J
    .registers 4

    .line 7352
    :try_start_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final pollDeferredRepaint()Ljava/lang/Runnable;
    .registers 5

    .line 5015
    # getter for: Lcom/chimeranft/core/Main;->DEFER_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDEFER_LOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5016
    :try_start_5
    # getter for: Lcom/chimeranft/core/Main;->deferredRepaints:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferredRepaints$cp()Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-nez v1, :cond_1d

    const/4 v2, 0x0

    .line 5019
    invoke-static {v2}, Lcom/chimeranft/core/Main;->access$setDeferredDrainArmed$cp(Z)V

    const-wide/16 v2, 0x0

    .line 5020
    invoke-static {v2, v3}, Lcom/chimeranft/core/Main;->access$setDeferArmedAtMs$cp(J)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception v1

    goto :goto_1f

    .line 5022
    :cond_1d
    :goto_1d
    monitor-exit v0

    return-object v1

    :goto_1f
    monitor-exit v0

    throw v1
.end method

.method public static synthetic postUiAfterScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 5181
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private final postUiStatic(Ljava/lang/Runnable;J)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 5228
    :cond_3
    const-string v0, "main.postUi"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    .line 5231
    :goto_d
    :try_start_d
    # getter for: Lcom/chimeranft/core/Main;->runOnUiThread:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRunOnUiThread$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_41

    .line 5234
    # getter for: Lcom/chimeranft/core/Main;->runOnUiThreadResolved:Z
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRunOnUiThreadResolved$cp()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5235
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 5238
    :cond_1e
    const-string v0, "org.telegram.messenger.AndroidUtilities"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5239
    const-string v2, "runOnUIThread"

    # getter for: Lcom/chimeranft/core/Main;->RUN_UI_SIG:[Ljava/lang/Class;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRUN_UI_SIG$cp()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 5238
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 5240
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$setRunOnUiThread$cp(Ljava/lang/reflect/Method;)V

    .line 5241
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$setRunOnUiThreadResolved$cp(Z)V

    if-nez v0, :cond_41

    .line 5243
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 5247
    :cond_41
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_52

    return-void

    .line 5250
    :catchall_52
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final readTextFile(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 4434
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2f

    .line 4437
    :try_start_5
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 4438
    new-array v1, v1, [B

    .line 4441
    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x0

    .line 4443
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :catchall_1a
    move-exception p1

    goto :goto_2b

    :cond_1c
    new-instance v1, Ljava/lang/String;

    .line 4445
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_1a

    .line 4450
    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :goto_2b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    :catchall_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method private final removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;
    .registers 3

    if-eqz p1, :cond_c

    .line 7142
    :try_start_2
    invoke-virtual {p1}, Lcom/chimeranft/core/HookSlot;->remove()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception p1

    .line 7145
    const-string v0, "shutdown.slot"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    const/4 p1, 0x0

    return-object p1
.end method

.method private final renderCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 10

    .line 4373
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4376
    :try_start_7
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getVERSION_CODE()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4377
    const-string v1, " thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1d

    const-string p1, "?"

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4378
    const-string p1, " at="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4382
    const-string p1, " phase="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chimeranft/core/BlackBox;->phase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_43
    if-eqz p2, :cond_aa

    const/4 v3, 0x5

    if-ge v2, v3, :cond_aa

    if-nez v2, :cond_4d

    .line 4387
    const-string v3, ""

    goto :goto_4f

    :cond_4d
    const-string v3, "Caused by: "

    :goto_4f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4388
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 4389
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4390
    :cond_6b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4391
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_9e

    const/4 v4, 0x0

    .line 4395
    :goto_75
    array-length v5, v3

    const/16 v6, 0x28

    if-ge v4, v5, :cond_8c

    if-ge v4, v6, :cond_8c

    .line 4397
    const-string v5, "\tat "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 4400
    :cond_8c
    array-length v4, v3

    if-le v4, v6, :cond_9e

    const-string v4, "\t... "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " more\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4402
    :cond_9e
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-ne v3, p2, :cond_a6

    const/4 p2, 0x0

    goto :goto_a7

    :cond_a6
    move-object p2, v3

    :goto_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 4407
    :cond_aa
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chimeranft/core/Safe;->poll()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_b7
    .catchall {:try_start_7 .. :try_end_b7} :catchall_b7

    .line 4411
    :catchall_b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final requestSupporterPopup()V
    .registers 2

    .line 5435
    # getter for: Lcom/chimeranft/core/Main;->supporterPopupCallback:Ljava/lang/Runnable;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getSupporterPopupCallback$cp()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5439
    :cond_7
    :try_start_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method public static synthetic runAfterUiScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 4912
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->runAfterUiScroll(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private final splitCsv(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 6515
    new-array p1, v0, [Ljava/lang/String;

    return-object p1

    .line 6516
    :cond_6
    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 6517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6518
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6519
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6520
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_39

    goto :goto_1e

    :cond_39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 7412
    :cond_3d
    new-array p1, v0, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final uiBlockLine()Ljava/lang/String;
    .registers 4

    .line 5669
    invoke-static {}, Lcom/chimeranft/core/UiGuard;->report()Ljava/lang/String;

    move-result-object v0

    .line 5670
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_d

    const-string v0, ""

    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 4

    .line 7133
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v1, "shutdown"

    invoke-virtual {v0, p1, v1}, Lcom/chimeranft/core/HookSlot$Companion;->unhook(Lde/robv/android/xposed/XC_MethodHook$Unhook;Ljava/lang/String;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method private final uninstallCrashHandler()V
    .registers 3

    .line 4350
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->crashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getCrashHandler$cp()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4351
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-ne v1, v0, :cond_13

    .line 4353
    # getter for: Lcom/chimeranft/core/Main;->previousCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getPreviousCrashHandler$cp()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_13

    :catchall_13
    :cond_13
    const/4 v0, 0x0

    .line 4358
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$setCrashHandler$cp(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4359
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$setPreviousCrashHandler$cp(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x0

    .line 4360
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$setCrashHandlerInstalled$cp(Z)V

    return-void
.end method

.method private final writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 4462
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_1f

    .line 4465
    :try_start_5
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4466
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    .line 4471
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_1a
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1f

    :catchall_1f
    return-void
.end method


# virtual methods
.method public final accessClientId()Ljava/lang/String;
    .registers 2

    .line 3868
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3869
    const-string v0, ""

    goto :goto_d

    :cond_9
    # getter for: Lcom/chimeranft/core/Main;->dataDir:Ljava/lang/String;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getDataDir$p(Lcom/chimeranft/core/Main;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->accessClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized accessClientId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_b7

    .line 3878
    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_b7

    .line 3879
    :cond_b
    new-instance v0, Ljava/io/File;

    const-string v1, "plugin_client_id"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3880
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Main$Companion;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->cleanAccessClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3881
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b5

    .line 3882
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3883
    new-instance v2, Ljava/io/File;

    const-string v3, "plugin_client_id.tmp"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_51

    .line 3886
    :try_start_32
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 3887
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_53

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_53

    const-string p1, ""
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_9d

    .line 3917
    :try_start_46
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_51

    if-eqz v0, :cond_4f

    .line 3921
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4f

    .line 3887
    :catchall_4f
    :cond_4f
    monitor-exit p0

    return-object p1

    :catchall_51
    move-exception p1

    goto :goto_bb

    .line 3888
    :cond_53
    :try_start_53
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_9d

    .line 3891
    :try_start_59
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 3892
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_98

    .line 3895
    :try_start_6a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_71

    .line 3903
    :catchall_71
    :try_start_71
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 3905
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 3907
    invoke-direct {p0, v0}, Lcom/chimeranft/core/Main$Companion;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main$Companion;->cleanAccessClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_71 .. :try_end_82} :catchall_9d

    .line 3917
    :try_start_82
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_51

    if-eqz v0, :cond_8b

    .line 3921
    :try_start_88
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8b

    .line 3908
    :catchall_8b
    :cond_8b
    monitor-exit p0

    return-object p1

    .line 3917
    :cond_8d
    :try_start_8d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_51

    if-eqz p1, :cond_96

    .line 3921
    :try_start_93
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_96

    .line 3910
    :catchall_96
    :cond_96
    monitor-exit p0

    return-object v1

    :catchall_98
    move-exception v0

    .line 3903
    :try_start_99
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_9d

    .line 3913
    :catchall_9d
    :try_start_9d
    const-string p1, ""
    :try_end_9f
    .catchall {:try_start_9d .. :try_end_9f} :catchall_aa

    .line 3917
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_51

    if-eqz v0, :cond_a8

    .line 3921
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a8

    .line 3913
    :catchall_a8
    :cond_a8
    monitor-exit p0

    return-object p1

    :catchall_aa
    move-exception p1

    .line 3917
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_51

    if-eqz v0, :cond_b4

    .line 3921
    :try_start_b1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b4

    .line 3923
    :catchall_b4
    :cond_b4
    :try_start_b4
    throw p1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_51

    .line 3881
    :cond_b5
    monitor-exit p0

    return-object v1

    .line 3878
    :cond_b7
    :goto_b7
    :try_start_b7
    const-string p1, ""
    :try_end_b9
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_51

    monitor-exit p0

    return-object p1

    :goto_bb
    :try_start_bb
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_51

    throw p1
.end method

.method public final accessDeniedFromServer(Lorg/json/JSONObject;)V
    .registers 3

    .line 3836
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->persistAccessDeniedDecision(Lorg/json/JSONObject;)Z

    if-nez p1, :cond_8

    .line 3837
    const-string p1, "{}"

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_c
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$setAccessDeniedDecision$cp(Ljava/lang/String;)V

    .line 3838
    # getter for: Lcom/chimeranft/core/Main;->accessDeniedCallback:Ljava/lang/Runnable;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getAccessDeniedCallback$cp()Ljava/lang/Runnable;

    move-result-object p1

    .line 3839
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->shutdown()Ljava/lang/String;

    .line 3845
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-eqz p1, :cond_25

    .line 3850
    :try_start_1b
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception p1

    .line 3853
    const-string v0, "accessDenied.callback"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    return-void
.end method

.method public final addGift(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6551
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6552
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6553
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_32

    .line 6554
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->addGiftEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6555
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGift | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_10

    return-object p1

    .line 6559
    :goto_32
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDGIFT FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final addGifts(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6677
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6678
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6679
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_32

    .line 6680
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->addGiftEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6681
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGifts | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_10

    return-object p1

    .line 6685
    :goto_32
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDGIFTS FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final armAccountCheck()V
    .registers 3

    .line 4498
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 4499
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V

    :cond_a
    return-void
.end method

.method public final cachedUserShared(J)Ljava/lang/Object;
    .registers 4

    .line 5494
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 5495
    :cond_8
    # invokes: Lcom/chimeranft/core/Main;->cachedUserFor(J)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/chimeranft/core/Main;->access$cachedUserFor(Lcom/chimeranft/core/Main;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final clearDeferredRepaints()V
    .registers 3

    .line 5099
    # getter for: Lcom/chimeranft/core/Main;->DEFER_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDEFER_LOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5100
    :try_start_5
    # getter for: Lcom/chimeranft/core/Main;->deferredRepaints:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferredRepaints$cp()Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    .line 5101
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$setDeferredDrainArmed$cp(Z)V

    .line 5102
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    .line 5099
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final craftGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 6827
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6828
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6829
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_42

    .line 6830
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->craftGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6831
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6832
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    if-eqz p2, :cond_30

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6833
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "craftGifts | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_10

    return-object p1

    .line 6836
    :goto_42
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CRAFTGIFTS FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final deliverGiftBatch(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    .line 6662
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->ensureAccountNow()V

    .line 6663
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-nez v0, :cond_15

    .line 6664
    const-string p1, "FAIL not-initialized"

    return-object p1

    :catchall_13
    move-exception p1

    goto :goto_1a

    .line 6665
    :cond_15
    invoke-virtual {v0, p1, p2, p3}, Lcom/chimeranft/core/GiftHook;->deliverBatch(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_13

    return-object p1

    .line 6668
    :goto_1a
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FAIL "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final directAfterChatMessage(Ljava/lang/Object;)V
    .registers 9

    .line 3566
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2b

    :cond_7
    const/16 v1, 0x9

    .line 3568
    :try_start_9
    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->hookDisabled(I)Z

    move-result v2

    if-nez v2, :cond_2b

    # getter for: Lcom/chimeranft/core/Main;->lastPreparedMessage:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getLastPreparedMessage$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    goto :goto_2b

    .line 3569
    :cond_16
    const-string v2, "currentMessageObject"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1f

    goto :goto_2b

    .line 3570
    :cond_1f
    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 3571
    invoke-static/range {v0 .. v6}, Lcom/chimeranft/core/Main;->prepareChatMessageIdentity$default(Lcom/chimeranft/core/Main;Ljava/lang/Object;Ljava/lang/Object;ZZILjava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_2b

    :catchall_2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method public final directAfterChatResume(Ljava/lang/Object;)V
    .registers 4

    .line 3624
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_34

    :cond_7
    if-eqz p1, :cond_34

    const/16 v1, 0xc

    .line 3626
    :try_start_b
    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_34

    :cond_12
    const/4 v1, 0x1

    .line 3627
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V

    .line 3628
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setActiveChatFragment$p(Lcom/chimeranft/core/Main;Ljava/lang/ref/WeakReference;)V

    .line 3629
    const-string v1, "currentChat"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main$Companion;->isBroadcastChannel(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/chimeranft/core/Main;->access$setChatBroadcastDormant$p(Lcom/chimeranft/core/Main;Z)V

    .line 3630
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/chimeranft/core/SyncClient;->wakeAccessCheck()V
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_34

    :catchall_34
    :cond_34
    :goto_34
    return-void
.end method

.method public final directAfterGetChat(Ljava/lang/Object;)V
    .registers 14

    .line 3497
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_52

    .line 3499
    :cond_7
    :try_start_7
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-nez v1, :cond_13

    goto :goto_52

    :cond_13
    const/4 v2, 0x2

    .line 3500
    invoke-static {v2}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_52

    .line 3501
    :cond_1b
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_52

    .line 3502
    :cond_22
    invoke-virtual {v2}, Lcom/chimeranft/core/Badges;->hasAnyChat()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_52

    .line 3503
    :cond_29
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_52

    .line 3504
    invoke-virtual {v2, v5, v6}, Lcom/chimeranft/core/Badges;->hasChat(J)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_52

    .line 3505
    :cond_38
    # getter for: Lcom/chimeranft/core/Main;->chatStampThrottle:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatStampThrottle$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # getter for: Lcom/chimeranft/core/Main;->CHAT_STAMP_THROTTLE_MS:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getCHAT_STAMP_THROTTLE_MS$cp()J

    move-result-wide v10

    invoke-virtual/range {v4 .. v11}, Lcom/chimeranft/core/LongStamps;->throttled(JIJJ)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_52

    .line 3506
    :cond_4f
    invoke-virtual {v2, p1, v5, v6}, Lcom/chimeranft/core/Badges;->applyChatForId(Ljava/lang/Object;J)Z
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_52

    :catchall_52
    :cond_52
    :goto_52
    return-void
.end method

.method public final directAfterGetChatFull(Ljava/lang/Object;J)V
    .registers 10

    .line 3513
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_42

    .line 3515
    :cond_7
    :try_start_7
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-nez v1, :cond_13

    goto :goto_42

    :cond_13
    const/4 v2, 0x3

    .line 3516
    invoke-static {v2}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_42

    .line 3517
    :cond_1b
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_24

    goto :goto_25

    :cond_24
    move-wide p2, v1

    .line 3519
    :goto_25
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->hasAnyChat()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1, p1, p2, p3}, Lcom/chimeranft/core/Badges;->applyChatForId(Ljava/lang/Object;J)Z

    .line 3520
    :cond_3b
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    # invokes: Lcom/chimeranft/core/Main;->maybeBumpChannelGifts(Lcom/chimeranft/core/SyncClient;Ljava/lang/Object;)V
    invoke-static {v0, p2, p1}, Lcom/chimeranft/core/Main;->access$maybeBumpChannelGifts(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_42

    :catchall_42
    :goto_42
    return-void
.end method

.method public final directAfterGetUser(Ljava/lang/Object;)V
    .registers 10

    .line 3426
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_91

    .line 3428
    :cond_8
    :try_start_8
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_10

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-nez v1, :cond_15

    goto/16 :goto_91

    :cond_15
    const/4 v2, 0x0

    .line 3429
    invoke-static {v2}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_91

    .line 3430
    :cond_1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    # getter for: Lcom/chimeranft/core/Main;->selfCallThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSelfCallThread$p(Lcom/chimeranft/core/Main;)Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_2a

    goto/16 :goto_91

    .line 3431
    :cond_2a
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_33

    goto :goto_91

    .line 3433
    :cond_33
    # invokes: Lcom/chimeranft/core/Main;->ensureAccountFast()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccountFast(Lcom/chimeranft/core/Main;)V

    .line 3434
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v5

    const/4 v1, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_41

    const/4 v5, 0x1

    goto :goto_42

    :cond_41
    const/4 v5, 0x0

    .line 3435
    :goto_42
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v6

    if-eqz v6, :cond_50

    invoke-virtual {v6, v3, v4}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v6

    if-ne v6, v1, :cond_50

    const/4 v6, 0x1

    goto :goto_51

    :cond_50
    const/4 v6, 0x0

    :goto_51
    if-nez v5, :cond_60

    .line 3436
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v7

    if-eqz v7, :cond_60

    invoke-virtual {v7, v3, v4}, Lcom/chimeranft/core/SyncClient;->hasIdentityRecord(J)Z

    move-result v7

    if-ne v7, v1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    if-nez v5, :cond_68

    if-nez v6, :cond_68

    if-nez v1, :cond_68

    goto :goto_91

    :cond_68
    if-eqz v6, :cond_73

    .line 3438
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v6

    if-eqz v6, :cond_73

    invoke-virtual {v6, p1}, Lcom/chimeranft/core/Badges;->apply(Ljava/lang/Object;)Z

    .line 3439
    :cond_73
    # invokes: Lcom/chimeranft/core/Main;->hotThrottled(JLjava/lang/Object;)Z
    invoke-static {v0, v3, v4, p1}, Lcom/chimeranft/core/Main;->access$hotThrottled(Lcom/chimeranft/core/Main;JLjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_91

    :cond_7a
    if-eqz v5, :cond_86

    .line 3440
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    return-void

    :cond_86
    if-eqz v1, :cond_91

    .line 3441
    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual {v0, p1, v2}, Lcom/chimeranft/core/RemoteIdentity;->maybeApply(Ljava/lang/Object;Z)V
    :try_end_91
    .catchall {:try_start_8 .. :try_end_91} :catchall_91

    :catchall_91
    :cond_91
    :goto_91
    return-void
.end method

.method public final directAfterGetUserFull(Ljava/lang/Object;J)V
    .registers 18

    .line 3448
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v8

    if-nez v8, :cond_8

    goto/16 :goto_ca

    .line 3450
    :cond_8
    :try_start_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$UserFull;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_15

    goto/16 :goto_ca

    :cond_15
    const/4 v9, 0x1

    .line 3451
    invoke-static {v9}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_ca

    .line 3452
    :cond_1e
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 3453
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-nez v0, :cond_2b

    move-wide/from16 v2, p2

    .line 3455
    :cond_2b
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v4

    const/4 v12, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_36

    const/4 v13, 0x1

    goto :goto_37

    :cond_36
    const/4 v13, 0x0

    :goto_37
    if-nez v13, :cond_4b

    cmp-long v0, v2, v10

    if-lez v0, :cond_4b

    .line 3456
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0, v2, v3}, Lcom/chimeranft/core/SyncClient;->isProfileActive(J)Z

    move-result v0

    if-ne v0, v9, :cond_4b

    const/4 v0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    if-nez v13, :cond_5c

    if-nez v0, :cond_5c

    cmp-long v4, v2, v10

    if-lez v4, :cond_5c

    .line 3457
    # invokes: Lcom/chimeranft/core/Main;->fullThrottled(J)Z
    invoke-static {v8, v2, v3}, Lcom/chimeranft/core/Main;->access$fullThrottled(Lcom/chimeranft/core/Main;J)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto/16 :goto_ca

    :cond_5c
    if-eqz v13, :cond_6c

    .line 3459
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->ensureGiftCount(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v9, :cond_8e

    :goto_6a
    const/4 v12, 0x1

    goto :goto_8e

    :cond_6c
    cmp-long v4, v2, v10

    if-lez v4, :cond_8e

    if-eqz v0, :cond_85

    .line 3461
    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v0

    if-eqz v0, :cond_8e

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/RemoteIdentity;->ensureProfileState$default(Lcom/chimeranft/core/RemoteIdentity;Ljava/lang/Object;JZZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v9, :cond_8e

    goto :goto_6a

    .line 3462
    :cond_85
    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {v0, p1, v12}, Lcom/chimeranft/core/RemoteIdentity;->maybeApply(Ljava/lang/Object;Z)V

    :cond_8e
    :goto_8e
    cmp-long v0, v2, v10

    if-eqz v0, :cond_ab

    .line 3464
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v4

    if-eqz v4, :cond_ab

    invoke-virtual {v4, v2, v3}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v4

    if-ne v4, v9, :cond_ab

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v4

    if-eqz v4, :cond_ab

    invoke-virtual {v4, p1, v2, v3}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    move-result v2

    if-ne v2, v9, :cond_ab

    const/4 v12, 0x1

    :cond_ab
    if-nez v13, :cond_af

    if-nez v0, :cond_bc

    .line 3465
    :cond_af
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v0

    if-eqz v0, :cond_bc

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v9, :cond_bc

    goto :goto_bd

    :cond_bc
    move v9, v12

    :goto_bd
    if-eqz v13, :cond_ca

    if-eqz v9, :cond_ca

    .line 3466
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v8}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v0

    if-eqz v0, :cond_ca

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Notifier;->postUserInfo(Ljava/lang/Object;)V
    :try_end_ca
    .catchall {:try_start_8 .. :try_end_ca} :catchall_ca

    :catchall_ca
    :cond_ca
    :goto_ca
    return-void
.end method

.method public final directAfterProfileResume(Ljava/lang/Object;)V
    .registers 3

    .line 3586
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_13

    .line 3588
    :cond_7
    :try_start_7
    # invokes: Lcom/chimeranft/core/Main;->onProfileResume(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/chimeranft/core/Main;->access$onProfileResume(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V

    .line 3589
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/chimeranft/core/SyncClient;->wakeAccessCheck()V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_13

    :catchall_13
    :cond_13
    :goto_13
    return-void
.end method

.method public final directBeforeChatMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 3553
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2b

    :cond_7
    const/16 v1, 0x9

    .line 3555
    :try_start_9
    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2b

    :cond_10
    const/4 v1, 0x0

    .line 3556
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setChatPrepareNeedsAfterPass$p(Lcom/chimeranft/core/Main;Z)V

    .line 3557
    invoke-static {v0, p2}, Lcom/chimeranft/core/Main;->access$setLastPreparedMessage$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 3558
    invoke-static/range {v0 .. v6}, Lcom/chimeranft/core/Main;->prepareChatMessageIdentity$default(Lcom/chimeranft/core/Main;Ljava/lang/Object;Ljava/lang/Object;ZZILjava/lang/Object;)Z

    .line 3559
    # getter for: Lcom/chimeranft/core/Main;->chatPrepareNeedsAfterPass:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatPrepareNeedsAfterPass$p(Lcom/chimeranft/core/Main;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/chimeranft/core/Main;->access$setLastPreparedMessage$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_2b

    :catchall_2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method public final directBeforeChatPause(Ljava/lang/Object;)V
    .registers 5

    .line 3636
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2e

    .line 3638
    :cond_7
    :try_start_7
    # getter for: Lcom/chimeranft/core/Main;->activeChatFragment:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveChatFragment$p(Lcom/chimeranft/core/Main;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v2

    :goto_14
    if-eqz v1, :cond_19

    if-eq v1, p1, :cond_19

    goto :goto_2e

    .line 3640
    :cond_19
    invoke-static {v0, v2}, Lcom/chimeranft/core/Main;->access$setActiveChatFragment$p(Lcom/chimeranft/core/Main;Ljava/lang/ref/WeakReference;)V

    const/4 p1, 0x0

    .line 3641
    invoke-static {v0, p1}, Lcom/chimeranft/core/Main;->access$setChatBroadcastDormant$p(Lcom/chimeranft/core/Main;Z)V

    .line 3642
    invoke-static {}, Lcom/chimeranft/core/Repaint;->onChatClosed()V

    const-wide/16 v1, 0x0

    .line 3643
    # invokes: Lcom/chimeranft/core/Main;->setScrollWindow(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setScrollWindow(Lcom/chimeranft/core/Main;J)V

    .line 3644
    # invokes: Lcom/chimeranft/core/Main;->armEmojiFreezeSlot(Z)V
    invoke-static {v0, p1}, Lcom/chimeranft/core/Main;->access$armEmojiFreezeSlot(Lcom/chimeranft/core/Main;Z)V

    .line 3645
    # invokes: Lcom/chimeranft/core/Main;->ensureFlingSlotsLive()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureFlingSlotsLive(Lcom/chimeranft/core/Main;)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2e

    :catchall_2e
    :goto_2e
    return-void
.end method

.method public final directBeforeDialogCell(Ljava/lang/Object;)V
    .registers 8

    .line 3539
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3d

    :cond_7
    if-eqz p1, :cond_3d

    const/4 v1, 0x5

    .line 3541
    :try_start_a
    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_3d

    .line 3542
    :cond_11
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_3d

    .line 3543
    :cond_18
    invoke-virtual {v0}, Lcom/chimeranft/core/Badges;->hasAnyUser()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_3d

    .line 3544
    :cond_1f
    const-string v1, "user"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_3d

    .line 3545
    :cond_28
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3d

    .line 3546
    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v0, p1, v1, v2}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_3d

    :catchall_3d
    :cond_3d
    :goto_3d
    return-void
.end method

.method public final directBeforeProfileData(Ljava/lang/Object;)V
    .registers 4

    .line 3609
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 3610
    :try_start_8
    # invokes: Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z
    invoke-static {v0, p1, v1}, Lcom/chimeranft/core/Main;->access$ensureProfileGiftSection(Lcom/chimeranft/core/Main;Ljava/lang/Object;Z)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_b

    :catchall_b
    return-void
.end method

.method public final directBeforeProfilePause(Ljava/lang/Object;)V
    .registers 8

    .line 3595
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_36

    .line 3597
    :cond_7
    :try_start_7
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_36

    .line 3598
    const-string v1, "userId"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1f

    .line 3599
    const-string v1, "dialogId"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    .line 3600
    :cond_1f
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-virtual {p1, v1, v2}, Lcom/chimeranft/core/SyncClient;->deactivateProfile(J)V

    :cond_28
    const/4 p1, 0x0

    .line 3601
    invoke-static {v0, p1}, Lcom/chimeranft/core/Main;->access$setActiveProfileActivity$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V

    .line 3602
    # getter for: Lcom/chimeranft/core/Main;->activeProfileGeneration:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileGeneration$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setActiveProfileGeneration$p(Lcom/chimeranft/core/Main;J)V
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_36

    :catchall_36
    :cond_36
    :goto_36
    return-void
.end method

.method public final directBeforeProfileResume(Ljava/lang/Object;)V
    .registers 4

    .line 3577
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_e

    .line 3579
    :cond_7
    :try_start_7
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    const/4 v1, 0x1

    .line 3580
    # invokes: Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z
    invoke-static {v0, p1, v1}, Lcom/chimeranft/core/Main;->access$ensureProfileGiftSection(Lcom/chimeranft/core/Main;Ljava/lang/Object;Z)Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_e

    :catchall_e
    :goto_e
    return-void
.end method

.method public final directBeforeProfileTabs(Ljava/lang/Object;)V
    .registers 4

    .line 3615
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_14

    .line 3617
    :cond_7
    :try_start_7
    const-string v1, "this$0"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_14

    :cond_10
    const/4 v1, 0x0

    .line 3618
    # invokes: Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z
    invoke-static {v0, p1, v1}, Lcom/chimeranft/core/Main;->access$ensureProfileGiftSection(Lcom/chimeranft/core/Main;Ljava/lang/Object;Z)Z
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_14

    :catchall_14
    :goto_14
    return-void
.end method

.method public final directBeforePutUser(Ljava/lang/Object;)V
    .registers 12

    .line 3473
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_8b

    .line 3475
    :cond_8
    :try_start_8
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    if-nez v1, :cond_16

    goto/16 :goto_8b

    :cond_16
    const/16 v3, 0x8

    .line 3476
    invoke-static {v3}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_8b

    .line 3477
    :cond_20
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_29

    goto :goto_8b

    .line 3479
    :cond_29
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v5

    const/4 v1, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_35

    const/4 v5, 0x1

    goto :goto_36

    :cond_35
    const/4 v5, 0x0

    .line 3480
    :goto_36
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v6

    if-eqz v6, :cond_44

    invoke-virtual {v6, v3, v4}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v6

    if-ne v6, v7, :cond_44

    const/4 v6, 0x1

    goto :goto_45

    :cond_44
    const/4 v6, 0x0

    :goto_45
    if-nez v5, :cond_55

    .line 3481
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v8

    if-eqz v8, :cond_55

    invoke-virtual {v8, v3, v4}, Lcom/chimeranft/core/SyncClient;->hasIdentityRecord(J)Z

    move-result v8

    if-ne v8, v7, :cond_55

    const/4 v8, 0x1

    goto :goto_56

    :cond_55
    const/4 v8, 0x0

    :goto_56
    if-eqz v5, :cond_61

    .line 3482
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v9

    if-eqz v9, :cond_61

    invoke-virtual {v9, p1}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    :cond_61
    if-eqz v6, :cond_6c

    .line 3483
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v6

    if-eqz v6, :cond_6c

    invoke-virtual {v6, p1, v3, v4}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    :cond_6c
    if-eqz v8, :cond_77

    .line 3484
    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v6

    if-eqz v6, :cond_77

    invoke-virtual {v6, p1, v1}, Lcom/chimeranft/core/RemoteIdentity;->maybeApply(Ljava/lang/Object;Z)V

    .line 3485
    :cond_77
    invoke-static {v0, v7}, Lcom/chimeranft/core/Main;->access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V

    .line 3486
    # getter for: Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getHotSeen$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/chimeranft/core/LongStamps;->forget(J)V

    if-eqz v5, :cond_8b

    .line 3488
    invoke-static {v0, v2}, Lcom/chimeranft/core/Main;->access$setSelfUserCached$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V

    const-wide/16 v1, -0x1

    .line 3489
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setSelfUserAppliedRevision$p(Lcom/chimeranft/core/Main;J)V
    :try_end_8b
    .catchall {:try_start_8 .. :try_end_8b} :catchall_8b

    :catchall_8b
    :cond_8b
    :goto_8b
    return-void
.end method

.method public final directGiftBalance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3678
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_14

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/GiftHook;->directVisualBalance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_14

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    return-object p1

    :catchall_14
    :cond_14
    :goto_14
    return-object p2
.end method

.method public final directGiftBalanceAvailable(Ljava/lang/Object;Z)Z
    .registers 4

    .line 3673
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_11

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/GiftHook;->directBalanceAvailable(Ljava/lang/Object;Z)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    :cond_11
    return p2
.end method

.method public final directGiftBuy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z
    .registers 16

    const/4 v0, 0x0

    .line 3688
    :try_start_1
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v1

    if-eqz v1, :cond_1a

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v2

    if-eqz v2, :cond_1a

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/chimeranft/core/GiftHook;->directBuy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1a

    return p2

    :catchall_1a
    :cond_1a
    return v0
.end method

.method public final directGiftChatVisible(J)V
    .registers 4

    .line 3731
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_f

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/GiftHook;->directChatBecameVisible(J)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public final directGiftResaleConfirm(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 8

    const/4 p2, 0x0

    .line 3700
    :try_start_1
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object p3

    if-eqz p3, :cond_15

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {p3}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object p3

    if-eqz p3, :cond_15

    invoke-virtual {p3, p1, p5, p6, p7}, Lcom/chimeranft/core/GiftHook;->directResaleConfirm(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    const/4 p3, 0x1

    if-ne p1, p3, :cond_15

    return p3

    :catchall_15
    :cond_15
    return p2
.end method

.method public final directGiftResaleForm(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z
    .registers 14

    const/4 v0, 0x0

    .line 3693
    :try_start_1
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v1

    if-eqz v1, :cond_19

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/GiftHook;->directResellingGiftForm(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    const/4 p2, 0x1

    if-ne p1, p2, :cond_19

    return p2

    :catchall_19
    :cond_19
    return v0
.end method

.method public final directGiftSendSheetBuy(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    .line 3711
    :try_start_1
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v1

    if-eqz v1, :cond_15

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/GiftHook;->directSendSheetBuy(Ljava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    return v1

    :catchall_15
    :cond_15
    return v0
.end method

.method public final directGiftSendSheetShown(Ljava/lang/Object;)V
    .registers 3

    .line 3706
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_f

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->directSendSheetShown(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public final directGiftSheetArg(Ljava/lang/Object;)V
    .registers 3

    .line 3656
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_f

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->directEnsureGiftAvailability(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public final directGiftSheetMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 3663
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_f

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/GiftHook;->directGiftSheetMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public final directGiftTransactionRow(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 3721
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_f

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/GiftHook;->directTransactionRow(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public final directGiftTransfer(Ljava/lang/Object;JLjava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    .line 3683
    :try_start_1
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v1

    if-eqz v1, :cond_15

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/chimeranft/core/GiftHook;->directTransfer(Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    const/4 p2, 0x1

    if-ne p1, p2, :cond_15

    return p2

    :catchall_15
    :cond_15
    return v0
.end method

.method public final directGiftVisualTransactions(Ljava/lang/Object;)V
    .registers 3

    .line 3736
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_f

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->directVisualTransactions(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public final directGramButtons(Z)Z
    .registers 3

    .line 3790
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_10

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->directGramButtons(Z)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_10

    :catchall_10
    :cond_10
    return p1
.end method

.method public final directGramScreen(Ljava/lang/Object;Z)V
    .registers 4

    .line 3795
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_f

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/GiftHook;->directGramScreen(Ljava/lang/Object;Z)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public final directGramScreenCreated(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 3799
    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/Main$Companion;->directGramScreen(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final directGramScreenUpdated(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 3798
    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/Main$Companion;->directGramScreen(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final directHost(ILjava/lang/Object;J)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-eq p1, v0, :cond_10

    return-void

    .line 3532
    :cond_10
    invoke-virtual {p0, p2, p3, p4}, Lcom/chimeranft/core/Main$Companion;->directAfterGetChatFull(Ljava/lang/Object;J)V

    return-void

    .line 3531
    :cond_14
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/Main$Companion;->directAfterGetChat(Ljava/lang/Object;)V

    return-void

    .line 3530
    :cond_18
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/Main$Companion;->directBeforePutUser(Ljava/lang/Object;)V

    return-void

    .line 3529
    :cond_1c
    invoke-virtual {p0, p2, p3, p4}, Lcom/chimeranft/core/Main$Companion;->directAfterGetUserFull(Ljava/lang/Object;J)V

    return-void

    .line 3528
    :cond_20
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/Main$Companion;->directAfterGetUser(Ljava/lang/Object;)V

    return-void
.end method

.method public final directIosCaptureSelection(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 3741
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/IosCustomization;->captureSelection(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public final directIosInputPanelRefresh(Ljava/lang/Object;)V
    .registers 3

    .line 3769
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/IosCustomization;->refreshInputPanel(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public final directIosPrepareSelectionPopup(Ljava/lang/Object;)Z
    .registers 3

    .line 3746
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/IosCustomization;->INSTANCE:Lcom/chimeranft/core/IosCustomization;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/IosCustomization;->prepareSelectionPopup(Ljava/lang/Object;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return p1

    :catchall_7
    const/4 p1, 0x0

    return p1
.end method

.method public final directIosSelectionDismiss(Ljava/lang/Object;Z)Z
    .registers 4

    .line 3752
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/IosSelection;->dismiss(Ljava/lang/Object;Z)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return p1

    :catchall_7
    const/4 p1, 0x0

    return p1
.end method

.method public final directIosSelectionDraw(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 3764
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/IosSelection;->draw(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public final directIosSelectionSwallowTouch(Ljava/lang/Object;)Z
    .registers 3

    .line 3758
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/IosSelection;->INSTANCE:Lcom/chimeranft/core/IosSelection;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/IosSelection;->swallowTouch(Ljava/lang/Object;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return p1

    :catchall_7
    const/4 p1, 0x0

    return p1
.end method

.method public final directNoteTyping()V
    .registers 1

    .line 3651
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->noteTyping()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    :catchall_3
    return-void
.end method

.method public final directPremiumGiftBuy(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    .line 3716
    :try_start_1
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v1

    if-eqz v1, :cond_15

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/GiftHook;->directPremiumGift(Ljava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    return v1

    :catchall_15
    :cond_15
    return v0
.end method

.method public final directRepairPremiumAction(Ljava/lang/Object;)V
    .registers 3

    .line 3726
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_f

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->directRepairPremiumAction(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public final directShouldSkipGiftInvalidate(J)Z
    .registers 5

    const/4 v0, 0x0

    .line 3668
    :try_start_1
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v1

    if-eqz v1, :cond_15

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/GiftHook;->shouldSkipInvalidate(J)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    const/4 p2, 0x1

    if-ne p1, p2, :cond_15

    return p2

    :catchall_15
    :cond_15
    return v0
.end method

.method public final directStickerLottieSave(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 3779
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/chimeranft/core/StickerTweaks;->handleLottieSave(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p1

    :catchall_5
    const/4 p1, 0x0

    return p1
.end method

.method public final directStickerPanelHeader(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    .line 3784
    invoke-static {}, Lcom/chimeranft/core/StickerTweaks;->panelZipEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3785
    :cond_7
    :try_start_7
    invoke-static {p1, p2, p3}, Lcom/chimeranft/core/StickerTweaks;->bindPanelHeader(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method public final directStickerPreviewMenu(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 3774
    :try_start_0
    invoke-static {p1, p2}, Lcom/chimeranft/core/StickerTweaks;->addPreviewMenu(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    :catchall_3
    return-void
.end method

.method public final ensureAccountNow()V
    .registers 2

    .line 4591
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4592
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    :catchall_9
    :cond_9
    return-void
.end method

.method public final exportProfile()Ljava/lang/String;
    .registers 4

    .line 6923
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6924
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6925
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v0, "(not initialized)"

    return-object v0

    :catchall_10
    move-exception v0

    goto :goto_1e

    .line 6926
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->exportProfileSectionsJson()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_10

    return-object v0

    .line 6929
    :goto_1e
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXPORT FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final fetchUpgradeAttrs(J)Ljava/lang/String;
    .registers 4

    .line 6435
    :try_start_0
    invoke-static {p1, p2}, Lcom/chimeranft/core/UpgradeAttrs;->start(J)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p1

    :catchall_5
    move-exception p1

    .line 6438
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAccessDeniedDecision()Ljava/lang/String;
    .registers 2

    .line 3414
    # getter for: Lcom/chimeranft/core/Main;->accessDeniedDecision:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getAccessDeniedDecision$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAccountPollsCold()J
    .registers 3

    .line 4488
    # getter for: Lcom/chimeranft/core/Main;->accountPollsCold:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getAccountPollsCold$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAccountPollsHot()J
    .registers 3

    .line 4487
    # getter for: Lcom/chimeranft/core/Main;->accountPollsHot:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getAccountPollsHot$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCollectiblePriceJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 6093
    const-string v0, "{}"

    .line 6095
    :try_start_2
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    .line 6096
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6097
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v2

    if-nez v2, :cond_10

    return-object v0

    .line 6098
    :cond_10
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->getCollectiblePrice(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    return-object p1

    :catchall_20
    return-object v0
.end method

.method public final getDeferredRepaintDrops()J
    .registers 3

    .line 4964
    # getter for: Lcom/chimeranft/core/Main;->deferredRepaintDrops:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferredRepaintDrops$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getGiftCollectionsJson()Ljava/lang/String;
    .registers 3

    .line 6757
    const-string v0, "[]"

    .line 6759
    :try_start_2
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->ensureAccountNow()V

    .line 6760
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    .line 6761
    :cond_13
    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->giftCollectionsJson()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_17

    :catchall_17
    return-object v0
.end method

.method public final getGiftCount()I
    .registers 3

    const/4 v0, -0x1

    .line 7103
    :try_start_1
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_f

    return v0

    .line 7104
    :cond_f
    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->getGiftCount()I

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    :catchall_13
    return v0
.end method

.method public final getGiftDisplayJson()Ljava/lang/String;
    .registers 31

    .line 6974
    const-string v0, "b64"

    const-string v1, "resale_config"

    const-string v2, "ton_address"

    const-string v3, "custom_comment"

    const-string v4, "custom_date_ts"

    const-string v5, "custom_date"

    const-string v6, "custom_from"

    const-string v7, "locked_until_date"

    const-string v8, "crafted"

    const-string v9, "collection_ids"

    const-string v10, "inject"

    const-string v11, "num"

    const-string v12, "key"

    const-string v13, "base_gift_id"

    const-string v14, "saved_id"

    const-string v15, "unique_id"

    move-object/from16 v16, v0

    const-string v0, "title"

    const-string v17, "[]"

    move-object/from16 v18, v1

    const-string v1, "slug"

    move-object/from16 v19, v2

    const-string v2, ""

    .line 6976
    :try_start_2e
    invoke-virtual/range {p0 .. p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v20

    .line 6977
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static/range {v20 .. v20}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v21

    if-nez v21, :cond_39

    return-object v17

    :cond_39
    move-object/from16 v21, v3

    .line 6978
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 6979
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static/range {v20 .. v20}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v22, v3

    invoke-virtual/range {v20 .. v20}, Lcom/chimeranft/core/Store;->getAllGiftEntries()[Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v20, v4

    array-length v4, v3

    move-object/from16 v23, v3

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v4, :cond_1b6

    move/from16 v24, v3

    aget-object v3, v23, v24

    move/from16 v25, v4

    .line 6981
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v26, v5

    .line 6982
    const-string v5, "Gift"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6983
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v5, v0

    move-object/from16 v27, v1

    const-wide/16 v0, 0x0

    move-object/from16 v29, v5

    move-object/from16 v28, v6

    .line 6984
    invoke-virtual {v3, v15, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v15, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6985
    invoke-virtual {v3, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6986
    invoke-virtual {v3, v13, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v13, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6987
    invoke-virtual {v3, v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6988
    invoke-virtual {v3, v11, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v5, 0x0

    .line 6989
    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6992
    const-string v6, "hidden"

    const-string v0, "hidden_override"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6994
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 6995
    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_be
    const/4 v5, 0x0

    .line 6996
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 6997
    invoke-virtual {v3, v7, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6998
    const-string v0, "kind"

    const-string v1, "gift_kind"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v28

    .line 6999
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, v26

    .line 7000
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v28, v0

    move-object/from16 v26, v1

    move-object/from16 v5, v20

    const-wide/16 v0, 0x0

    .line 7001
    invoke-virtual {v3, v5, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v4, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, v21

    .line 7002
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, v19

    .line 7003
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v21, v0

    move-object/from16 v6, v18

    .line 7004
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11a

    .line 7005
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11a
    move-object/from16 v0, v16

    .line 7006
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7007
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_12b

    .line 7008
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_135

    :cond_12b
    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    :cond_131
    move-object/from16 v0, v22

    goto/16 :goto_19d

    :cond_135
    move-object/from16 v16, v0

    .line 7010
    # getter for: Lcom/chimeranft/core/Main;->ATTR_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getATTR_CACHE$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_181

    .line 7013
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v19, v1

    .line 7014
    invoke-static {v3}, Lcom/chimeranft/core/GiftCodec;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_154

    const/4 v1, 0x0

    move-object/from16 v18, v2

    goto :goto_15c

    :cond_154
    move-object/from16 v18, v2

    .line 7015
    const-string v2, "gift"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_15c
    if-eqz v1, :cond_164

    move-object/from16 v2, p0

    .line 7016
    invoke-direct {v2, v1, v0}, Lcom/chimeranft/core/Main$Companion;->fillAttrNames(Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_166

    :cond_164
    move-object/from16 v2, p0

    .line 7017
    :goto_166
    # getter for: Lcom/chimeranft/core/Main;->ATTR_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getATTR_CACHE$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_179

    # getter for: Lcom/chimeranft/core/Main;->ATTR_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getATTR_CACHE$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 7018
    :cond_179
    # getter for: Lcom/chimeranft/core/Main;->ATTR_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getATTR_CACHE$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_185

    :cond_181
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    .line 7020
    :goto_185
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 7021
    :goto_189
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 7022
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7023
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_189

    .line 7026
    :goto_19d
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v24, 0x1

    move-object/from16 v22, v0

    move-object/from16 v20, v5

    move-object/from16 v2, v18

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v1, v27

    move-object/from16 v0, v29

    move-object/from16 v18, v6

    move-object/from16 v6, v28

    goto/16 :goto_53

    :cond_1b6
    move-object/from16 v0, v22

    .line 7028
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1bc
    .catchall {:try_start_2e .. :try_end_1bc} :catchall_1bd

    return-object v0

    :catchall_1bd
    return-object v17
.end method

.method public final getGiftLibraryJson()Ljava/lang/String;
    .registers 3

    .line 7070
    const-string v0, "[]"

    .line 7072
    :try_start_2
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->ensureAccountNow()V

    .line 7073
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    .line 7074
    :cond_13
    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->giftLibraryJson()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_17

    :catchall_17
    return-object v0
.end method

.method public final getGramIconPath()Ljava/lang/String;
    .registers 2

    .line 3816
    # getter for: Lcom/chimeranft/core/Main;->gramIconPath:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getGramIconPath$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHookGroupNames()Ljava/lang/String;
    .registers 2

    .line 5720
    invoke-static {}, Lcom/chimeranft/core/Tuning;->groupNames()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance()Lcom/chimeranft/core/Main;
    .registers 2

    .line 3421
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/chimeranft/core/Main;

    invoke-direct {v0}, Lcom/chimeranft/core/Main;-><init>()V

    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$setInstance$cp(Lcom/chimeranft/core/Main;)V

    :cond_e
    return-object v0
.end method

.method public final getLastCrash()Ljava/lang/String;
    .registers 2

    .line 4418
    # getter for: Lcom/chimeranft/core/Main;->lastCrashReport:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getLastCrashReport$cp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    # getter for: Lcom/chimeranft/core/Main;->lastCrashReport:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getLastCrashReport$cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_19

    :cond_14
    # getter for: Lcom/chimeranft/core/Main;->lastCrashReport:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getLastCrashReport$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    :goto_19
    const-string v0, "(none)"

    return-object v0
.end method

.method public final getPerformanceMode()I
    .registers 2

    .line 5844
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v0

    return v0
.end method

.method public final getPerformanceStatusJson()Ljava/lang/String;
    .registers 2

    .line 5850
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->currentStatusJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPersistenceStatus()Ljava/lang/String;
    .registers 4

    .line 6640
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6641
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v0, "(not initialized)"

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_1b

    .line 6642
    :cond_f
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->summary()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_d

    return-object v0

    .line 6645
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PERSISTSTATUS FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSafetyReport()Ljava/lang/String;
    .registers 4

    .line 5653
    :try_start_0
    invoke-static {}, Lcom/chimeranft/core/Safe;->poll()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    move-exception v0

    .line 5656
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAFETY FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSettingsJson()Ljava/lang/String;
    .registers 4

    .line 7088
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->ensureAccountNow()V

    .line 7089
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-nez v0, :cond_15

    .line 7090
    const-string v0, "{}"

    return-object v0

    :catchall_13
    move-exception v0

    goto :goto_1a

    :cond_15
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->settingsJson()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_13

    return-object v0

    .line 7093
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"error\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStateSummary()Ljava/lang/String;
    .registers 4

    .line 5533
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->ensureAccountNow()V

    .line 5534
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-nez v0, :cond_15

    .line 5535
    const-string v0, "(not initialized)"

    return-object v0

    :catchall_13
    move-exception v0

    goto :goto_1a

    :cond_15
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->summary()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_13

    return-object v0

    .line 5538
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUMMARY FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupporterPopupIconId()J
    .registers 8

    const-wide/16 v0, 0x0

    .line 5450
    :try_start_2
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v2

    .line 5451
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v2}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v3

    if-nez v3, :cond_d

    return-wide v0

    .line 5453
    :cond_d
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v2}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 5456
    const-string v4, "userId"

    invoke-static {v3, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_25

    .line 5457
    const-string v4, "dialogId"

    invoke-static {v3, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_25

    :cond_24
    move-wide v4, v0

    :cond_25
    :goto_25
    cmp-long v3, v4, v0

    if-gtz v3, :cond_2d

    .line 5459
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v2}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v4

    .line 5460
    :cond_2d
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v2}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Lcom/chimeranft/core/Badges;->supporterIconFor(J)J

    move-result-wide v0
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_38

    :catchall_38
    return-wide v0
.end method

.method public final getSyncStatusJson()Ljava/lang/String;
    .registers 8

    .line 5822
    const-string v0, "duplicates_blocked"

    .line 5824
    :try_start_2
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    .line 5825
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v2

    if-nez v2, :cond_f

    const-string v0, "{\"state\":\"off\",\"enabled\":false}"

    return-object v0

    .line 5826
    :cond_f
    new-instance v2, Lorg/json/JSONObject;

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/chimeranft/core/SyncClient;->statusJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5827
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 5829
    const-string v3, "gift_count"

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/chimeranft/core/Store;->getGiftCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5830
    const-string v3, "local_duplicates_blocked"

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/chimeranft/core/Store;->getDuplicatesBlocked()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v3, 0x0

    .line 5831
    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->getDuplicatesBlocked()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5833
    :cond_5a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_5f

    return-object v0

    .line 5836
    :catchall_5f
    const-string v0, "{\"state\":\"error\"}"

    return-object v0
.end method

.method public final getVERSION_CODE()I
    .registers 2

    .line 3407
    # getter for: Lcom/chimeranft/core/Main;->VERSION_CODE:I
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getVERSION_CODE$cp()I

    move-result v0

    return v0
.end method

.method public final giftOrderDiag()Ljava/lang/String;
    .registers 4

    .line 5794
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5795
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v0, "(no gift hook)"

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_1b

    :cond_f
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->getLastOrderDiag()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_d

    return-object v0

    .line 5798
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ORDERDIAG FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final importProfile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 6940
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6941
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-eqz v1, :cond_69

    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_69

    .line 6942
    :cond_11
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->importProfileSections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6943
    # invokes: Lcom/chimeranft/core/Main;->configureIdentityFromStore()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$configureIdentityFromStore(Lcom/chimeranft/core/Main;)V

    .line 6944
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object p2

    if-eqz p2, :cond_47

    .line 6946
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->getInjectableEntries()[Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/chimeranft/core/GiftHook;->configure([Lorg/json/JSONObject;)V

    .line 6947
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/GiftHook;->reloadSelfGifts()V

    goto :goto_47

    :catchall_45
    move-exception p1

    goto :goto_6c

    .line 6949
    :cond_47
    :goto_47
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object p2

    if-eqz p2, :cond_57

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/Notifier;->refresh()V

    .line 6950
    :cond_57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "importProfile | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6941
    :cond_69
    :goto_69
    const-string p1, "(not initialized)"
    :try_end_6b
    .catchall {:try_start_0 .. :try_end_6b} :catchall_45

    return-object p1

    .line 6953
    :goto_6c
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMPORT FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 4046
    const-string v2, "deferred\u2192UI"

    .line 4048
    :try_start_6
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/Main$Companion;->installCrashHandler(Ljava/lang/String;)V

    .line 4049
    invoke-static {v0}, Lcom/chimeranft/core/Safe;->bindLog(Ljava/lang/String;)V

    .line 4054
    invoke-static {v0}, Lcom/chimeranft/core/BlackBox;->bind(Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 4055
    invoke-direct {v1, v3}, Lcom/chimeranft/core/Main$Companion;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v5, p3

    .line 4056
    invoke-direct {v1, v5}, Lcom/chimeranft/core/Main$Companion;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4057
    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v12

    .line 4062
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v5

    if-nez v5, :cond_35

    # getter for: Lcom/chimeranft/core/Main;->getUserSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getGetUserSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v5

    if-nez v5, :cond_35

    # getter for: Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getExteraBadgeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v5

    if-eqz v5, :cond_38

    goto :goto_35

    :catchall_32
    move-exception v0

    goto/16 :goto_227

    .line 4063
    :cond_35
    :goto_35
    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->shutdown()Ljava/lang/String;

    .line 4065
    :cond_38
    invoke-static {v12, v6, v7}, Lcom/chimeranft/core/Main;->access$setRealId$p(Lcom/chimeranft/core/Main;J)V

    .line 4066
    invoke-static {v12, v0}, Lcom/chimeranft/core/Main;->access$setDataDir$p(Lcom/chimeranft/core/Main;Ljava/lang/String;)V

    const-wide v8, 0x2540be400L

    sub-long v8, v3, v8

    long-to-int v5, v8

    .line 4067
    invoke-static {v12, v5}, Lcom/chimeranft/core/Main;->access$setCurrentSlot$p(Lcom/chimeranft/core/Main;I)V

    .line 4072
    new-instance v8, Lcom/chimeranft/core/Store;

    invoke-direct {v8, v0, v3, v4}, Lcom/chimeranft/core/Store;-><init>(Ljava/lang/String;J)V

    .line 4073
    invoke-static {v12, v8}, Lcom/chimeranft/core/Main;->access$setStore$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Store;)V

    .line 4074
    invoke-virtual {v8}, Lcom/chimeranft/core/Store;->load()Ljava/lang/String;

    move-result-object v3

    .line 4075
    # getter for: Lcom/chimeranft/core/Main;->storeBySlot:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getStoreBySlot$p(Lcom/chimeranft/core/Main;)Ljava/util/HashMap;

    move-result-object v4

    # getter for: Lcom/chimeranft/core/Main;->currentSlot:I
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getCurrentSlot$p(Lcom/chimeranft/core/Main;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4077
    new-instance v4, Lcom/chimeranft/core/Identity;

    invoke-direct {v4, v6, v7}, Lcom/chimeranft/core/Identity;-><init>(J)V

    .line 4078
    invoke-static {v12, v4}, Lcom/chimeranft/core/Main;->access$setIdentity$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Identity;)V

    .line 4079
    # invokes: Lcom/chimeranft/core/Main;->configureIdentityFromStore()V
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$configureIdentityFromStore(Lcom/chimeranft/core/Main;)V

    .line 4080
    sget-object v5, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v5}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->startNew()Lcom/chimeranft/core/PerformanceGovernor;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/chimeranft/core/Main;->access$setPerformance$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/PerformanceGovernor;)V

    .line 4082
    const-string v5, "chimeranft-profile-fastlane"

    const/4 v13, 0x4

    invoke-static {v5, v13}, Lcom/chimeranft/core/Safe;->factory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v5

    .line 4081
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/chimeranft/core/Main;->access$setProfilePrepareExecutor$p(Lcom/chimeranft/core/Main;Ljava/util/concurrent/ExecutorService;)V

    .line 4085
    new-instance v5, Lcom/chimeranft/core/SyncClient;

    const-string v9, "http://0.0.0.0:8787/00000"

    .line 4086
    const-string v10, "6ef78976213eb13982ee124c373b74411dd5cbf35e7250ab"

    # getter for: Lcom/chimeranft/core/Main;->accessUsername:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getAccessUsername$cp()Ljava/lang/String;

    move-result-object v11
    :try_end_90
    .catchall {:try_start_6 .. :try_end_90} :catchall_32

    const-string v14, ""

    if-nez v11, :cond_95

    move-object v11, v14

    .line 4085
    :cond_95
    :try_start_95
    invoke-direct/range {v5 .. v11}, Lcom/chimeranft/core/SyncClient;-><init>(JLcom/chimeranft/core/Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    invoke-static {v12, v5}, Lcom/chimeranft/core/Main;->access$setSync$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;)V

    .line 4088
    new-instance v9, Lcom/chimeranft/core/RemoteIdentity;

    invoke-direct {v9, v6, v7, v5}, Lcom/chimeranft/core/RemoteIdentity;-><init>(JLcom/chimeranft/core/SyncClient;)V

    invoke-static {v12, v9}, Lcom/chimeranft/core/Main;->access$setRemote$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/RemoteIdentity;)V

    .line 4092
    new-instance v9, Lcom/chimeranft/core/Badges;

    invoke-direct {v9}, Lcom/chimeranft/core/Badges;-><init>()V

    .line 4093
    invoke-static {v12, v9}, Lcom/chimeranft/core/Main;->access$setBadges$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Badges;)V

    .line 4094
    invoke-virtual {v9, v6, v7}, Lcom/chimeranft/core/Badges;->setSelfId(J)V

    .line 4095
    new-instance v10, Ljava/io/File;

    const-string v11, "badges_public_cache.json"

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/chimeranft/core/Badges;->bindCache(Ljava/io/File;)V

    .line 4096
    invoke-virtual {v5, v9}, Lcom/chimeranft/core/SyncClient;->bindBadges(Lcom/chimeranft/core/Badges;)V

    .line 4103
    new-array v0, v13, [J

    fill-array-data v0, :array_23e

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_c2
    if-ge v11, v13, :cond_d6

    move-object/from16 p3, v14

    .line 4104
    aget-wide v13, v0, v11

    .line 4105
    new-instance v15, Lcom/chimeranft/core/Main$Companion$init$1;

    invoke-direct {v15, v9}, Lcom/chimeranft/core/Main$Companion$init$1;-><init>(Lcom/chimeranft/core/Badges;)V

    invoke-direct {v1, v15, v13, v14}, Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v14, p3

    const/4 v13, 0x4

    goto :goto_c2

    :cond_d6
    move-object/from16 p3, v14

    .line 4115
    new-instance v0, Lcom/chimeranft/core/Notifier;

    invoke-direct {v0, v6, v7, v4}, Lcom/chimeranft/core/Notifier;-><init>(JLcom/chimeranft/core/Identity;)V

    .line 4116
    invoke-static {v12, v0}, Lcom/chimeranft/core/Main;->access$setNotifier$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Notifier;)V

    .line 4117
    invoke-virtual {v9, v0}, Lcom/chimeranft/core/Badges;->bindNotifier(Lcom/chimeranft/core/Notifier;)V

    .line 4120
    invoke-static {v12, v2}, Lcom/chimeranft/core/Main;->access$setHookStatus$p(Lcom/chimeranft/core/Main;Ljava/lang/String;)V

    .line 4121
    invoke-static {v12, v2}, Lcom/chimeranft/core/Main;->access$setGiftStatus$p(Lcom/chimeranft/core/Main;Ljava/lang/String;)V

    .line 4123
    new-instance v2, Lcom/chimeranft/core/GiftHook;

    invoke-direct {v2, v6, v7}, Lcom/chimeranft/core/GiftHook;-><init>(J)V

    .line 4124
    invoke-static {v12, v2}, Lcom/chimeranft/core/Main;->access$setGiftHook$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/GiftHook;)V

    .line 4125
    invoke-virtual {v8}, Lcom/chimeranft/core/Store;->getInjectableEntries()[Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/chimeranft/core/GiftHook;->configure([Lorg/json/JSONObject;)V

    .line 4126
    invoke-virtual {v2, v4, v8, v0}, Lcom/chimeranft/core/GiftHook;->bindWear(Lcom/chimeranft/core/Identity;Lcom/chimeranft/core/Store;Lcom/chimeranft/core/Notifier;)V

    .line 4127
    invoke-virtual {v2, v5}, Lcom/chimeranft/core/GiftHook;->bindSync(Lcom/chimeranft/core/SyncClient;)V

    .line 4131
    # invokes: Lcom/chimeranft/core/Main;->notifyVisualBalanceChanged()V
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$notifyVisualBalanceChanged(Lcom/chimeranft/core/Main;)V

    .line 4134
    invoke-static {}, Lcom/chimeranft/core/MemoryPressure;->install()V

    .line 4137
    new-instance v0, Lcom/chimeranft/core/GiftReveal;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftReveal;-><init>()V

    .line 4138
    invoke-static {v12, v0}, Lcom/chimeranft/core/Main;->access$setGiftReveal$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/GiftReveal;)V

    .line 4139
    invoke-virtual {v2, v0}, Lcom/chimeranft/core/GiftHook;->bindReveal(Lcom/chimeranft/core/GiftReveal;)V

    .line 4141
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/chimeranft/core/Main$Companion$init$2;

    invoke-direct {v2, v12}, Lcom/chimeranft/core/Main$Companion$init$2;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v0, v2}, Lcom/chimeranft/core/SyncClient;->bindTransferSink(Lcom/chimeranft/core/SyncClient$TransferSink;)V

    .line 4149
    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v0

    if-eqz v0, :cond_133

    .line 4151
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/chimeranft/core/Main$Companion$init$3;

    invoke-direct {v4, v0}, Lcom/chimeranft/core/Main$Companion$init$3;-><init>(Lcom/chimeranft/core/RemoteIdentity;)V

    invoke-virtual {v2, v4}, Lcom/chimeranft/core/SyncClient;->bindRecordSink(Lcom/chimeranft/core/SyncClient$RecordSink;)V

    .line 4178
    :cond_133
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/chimeranft/core/Main$Companion$init$4;

    invoke-direct {v2}, Lcom/chimeranft/core/Main$Companion$init$4;-><init>()V

    invoke-virtual {v0, v2}, Lcom/chimeranft/core/SyncClient;->bindRecoverySink(Lcom/chimeranft/core/SyncClient$RecoverySink;)V

    .line 4198
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_159

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Lcom/chimeranft/core/SyncClient;->setEnabled(Z)V

    .line 4199
    :cond_159
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->start()V

    .line 4202
    # invokes: Lcom/chimeranft/core/Main;->scheduleHookInstall()V
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$scheduleHookInstall(Lcom/chimeranft/core/Main;)V

    .line 4206
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    .line 4207
    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v2

    .line 4208
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v4

    .line 4209
    # getter for: Lcom/chimeranft/core/Main;->profilePrepareExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getProfilePrepareExecutor$p(Lcom/chimeranft/core/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5
    :try_end_176
    .catchall {:try_start_95 .. :try_end_176} :catchall_32

    if-eqz v5, :cond_187

    .line 4216
    :try_start_178
    new-instance v6, Lcom/chimeranft/core/Main$Companion$init$5;

    invoke-direct {v6, v0, v4, v2}, Lcom/chimeranft/core/Main$Companion$init$5;-><init>(Lcom/chimeranft/core/GiftHook;Lcom/chimeranft/core/SyncClient;Lcom/chimeranft/core/RemoteIdentity;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_180
    .catchall {:try_start_178 .. :try_end_180} :catchall_181

    goto :goto_187

    :catchall_181
    move-exception v0

    .line 4247
    :try_start_182
    const-string v2, "init.fastLaneSubmit"

    invoke-static {v2, v0}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4250
    :cond_187
    :goto_187
    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->getVERSION_CODE()I

    move-result v0

    .line 4251
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chimeranft/core/Identity;->describe()Ljava/lang/String;

    move-result-object v2

    .line 4252
    # getter for: Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getHookStatus$p(Lcom/chimeranft/core/Main;)Ljava/lang/String;

    move-result-object v4

    .line 4253
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/chimeranft/core/GiftHook;->describe()Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/chimeranft/core/Main;->giftStatus:Ljava/lang/String;
    invoke-static {v12}, Lcom/chimeranft/core/Main;->access$getGiftStatus$p(Lcom/chimeranft/core/Main;)Ljava/lang/String;

    move-result-object v6

    .line 4254
    invoke-static {}, Lcom/chimeranft/core/NativeFastPath;->status()Ljava/lang/String;

    move-result-object v7

    .line 4256
    # getter for: Lcom/chimeranft/core/Main;->lastCrashReport:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getLastCrashReport$cp()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1bd

    move-object/from16 v14, p3

    goto :goto_1dd

    .line 4259
    :cond_1bd
    # getter for: Lcom/chimeranft/core/Main;->lastCrashReport:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getLastCrashReport$cp()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f4

    invoke-direct {v1, v8, v9}, Lcom/chimeranft/core/Main$Companion;->firstLine(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " | \u26a0 LASTCRASH["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_1dd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | id["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] | hook["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] | gift["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] | fast["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] | sync[started server=http://0.0.0.0:8787/00000]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_226
    .catchall {:try_start_182 .. :try_end_226} :catchall_32

    return-object v0

    .line 4262
    :goto_227
    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INIT FATAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_23e
    .array-data 8
        0x5dc
        0xfa0
        0x2710
        0x61a8
    .end array-data
.end method

.method public final inspectFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 7114
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Store$Companion;->inspect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isChatScreenActive()Z
    .registers 3

    .line 5117
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5119
    :cond_8
    # getter for: Lcom/chimeranft/core/Main;->activeChatFragment:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveChatFragment$p(Lcom/chimeranft/core/Main;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 5120
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    return v1
.end method

.method public final isChatScrollingFast()Z
    .registers 2

    .line 5141
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5142
    # getter for: Lcom/chimeranft/core/Main;->chatScrolling:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatScrolling$p(Lcom/chimeranft/core/Main;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final isChatScrollingNow()Z
    .registers 8

    .line 5149
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5151
    :cond_8
    # getter for: Lcom/chimeranft/core/Main;->chatScrollUntilMs:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatScrollUntilMs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_13

    return v1

    .line 5153
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_1d

    const/4 v0, 0x1

    return v0

    .line 5154
    :cond_1d
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setChatScrolling$p(Lcom/chimeranft/core/Main;Z)V

    return v1
.end method

.method public final isHookDisabled(Ljava/lang/String;)I
    .registers 2

    .line 5727
    :try_start_0
    invoke-static {p1}, Lcom/chimeranft/core/Tuning;->isDisabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p1

    :catchall_5
    const/4 p1, 0x0

    return p1
.end method

.method public final isMarketSpendEnabled()I
    .registers 4

    const/4 v0, 0x1

    .line 6282
    :try_start_1
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    .line 6283
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6284
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v2

    if-nez v2, :cond_f

    return v0

    .line 6285
    :cond_f
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->isMarketSpendEnabled()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1a

    :catchall_1a
    return v0
.end method

.method public final isOptimizationEnabled(Ljava/lang/String;)I
    .registers 2

    .line 5755
    :try_start_0
    invoke-static {p1}, Lcom/chimeranft/core/Tuning;->isOptionEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p1

    :catchall_5
    const/4 p1, 0x0

    return p1
.end method

.method public final isProfileScreenActive()Z
    .registers 2

    .line 5134
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5135
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final isTransitionNow()Z
    .registers 9

    .line 4862
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4864
    :cond_8
    # getter for: Lcom/chimeranft/core/Main;->uiTransitionUntilMs:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_13

    return v1

    .line 4866
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/chimeranft/core/Main$Companion;->transitionOpenAt(JJ)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v0, 0x1

    return v0

    .line 4867
    :cond_1f
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setUiTransitionDepth$p(Lcom/chimeranft/core/Main;I)V

    .line 4868
    invoke-static {v0, v4, v5}, Lcom/chimeranft/core/Main;->access$setUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;J)V

    return v1
.end method

.method public final isTypingNow()Z
    .registers 8

    .line 4793
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 4794
    # getter for: Lcom/chimeranft/core/Main;->uiTyping:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiTyping$p(Lcom/chimeranft/core/Main;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_24

    .line 4795
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lcom/chimeranft/core/Main;->uiTypingUntilMs:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiTypingUntilMs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1c

    const/4 v0, 0x1

    return v0

    .line 4796
    :cond_1c
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setUiTyping$p(Lcom/chimeranft/core/Main;Z)V

    const-wide/16 v2, 0x0

    .line 4797
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Main;->access$setUiTypingUntilMs$p(Lcom/chimeranft/core/Main;J)V

    :cond_24
    :goto_24
    return v1
.end method

.method public final isUiBusyNow()Z
    .registers 2

    .line 4878
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->isUiScrollingNow()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->isTypingNow()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->isTransitionNow()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public final isUiScrollingFast()Z
    .registers 2

    .line 4763
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 4764
    # getter for: Lcom/chimeranft/core/Main;->uiScrolling:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiScrolling$p(Lcom/chimeranft/core/Main;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final isUiScrollingNow()Z
    .registers 8

    .line 4770
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 4771
    # getter for: Lcom/chimeranft/core/Main;->uiScrolling:Z
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiScrolling$p(Lcom/chimeranft/core/Main;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_24

    .line 4772
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lcom/chimeranft/core/Main;->uiScrollUntilMs:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiScrollUntilMs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1c

    const/4 v0, 0x1

    return v0

    .line 4773
    :cond_1c
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setUiScrolling$p(Lcom/chimeranft/core/Main;Z)V

    const-wide/16 v2, 0x0

    .line 4774
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Main;->access$setUiScrollUntilMs$p(Lcom/chimeranft/core/Main;J)V

    :cond_24
    :goto_24
    return v1
.end method

.method public final localAccountId(Ljava/lang/Object;)J
    .registers 9

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 4557
    :cond_5
    sget-object v2, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    const-string v4, "getClientUserId"

    invoke-static {p1, v4, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4558
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_1a

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_1b

    :cond_1a
    move-wide v4, v0

    :goto_1b
    cmp-long v6, v4, v0

    if-gtz v6, :cond_25

    .line 4559
    const-string v4, "clientUserId"

    invoke-static {p1, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    :cond_25
    cmp-long v6, v4, v0

    if-gtz v6, :cond_35

    .line 4562
    const-string v4, "getCurrentUser"

    invoke-static {p1, v4, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4563
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    :cond_35
    cmp-long p1, v4, v0

    if-lez p1, :cond_3a

    return-wide v4

    :cond_3a
    return-wide v0
.end method

.method public final localAccountIds()[J
    .registers 13

    .line 4570
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->localAccounts()Lorg/json/JSONArray;

    move-result-object v0

    .line 4571
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [J

    .line 4573
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v5, v3, :cond_2f

    .line 4575
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-nez v7, :cond_1d

    move-wide v10, v8

    goto :goto_23

    .line 4576
    :cond_1d
    const-string v10, "id"

    invoke-virtual {v7, v10, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    :goto_23
    cmp-long v7, v10, v8

    if-lez v7, :cond_2c

    add-int/lit8 v7, v6, 0x1

    .line 4577
    aput-wide v10, v2, v6

    move v6, v7

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_2f
    if-ne v6, v1, :cond_32

    return-object v2

    .line 4580
    :cond_32
    new-array v0, v6, [J

    .line 4581
    invoke-static {v2, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final localAccounts()Lorg/json/JSONArray;
    .registers 14

    .line 4511
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4512
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4515
    :try_start_a
    # getter for: Lcom/chimeranft/core/Main;->UC_CLS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getUC_CLS$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAX_ACCOUNT_COUNT"

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_94

    if-lez v2, :cond_1e

    const/16 v3, 0x40

    if-le v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v4, v2

    :cond_1e
    :goto_1e
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v4, :cond_94

    .line 4521
    :try_start_22
    # getter for: Lcom/chimeranft/core/Main;->UC_CLS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getUC_CLS$cp()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getInstance"

    const/4 v7, 0x1

    .line 4522
    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v2

    .line 4521
    invoke-static {v5, v6, v8, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_91

    .line 4526
    const-string v6, "isClientActivated"

    sget-object v7, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v8, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_51

    .line 4527
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 4528
    :cond_51
    invoke-virtual {p0, v5}, Lcom/chimeranft/core/Main$Companion;->localAccountId(Ljava/lang/Object;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-lez v6, :cond_91

    .line 4529
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    goto :goto_91

    .line 4530
    :cond_66
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4531
    const-string v11, "id"

    invoke-virtual {v6, v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4532
    const-string v9, "slot"

    invoke-virtual {v6, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4533
    const-string v9, "getCurrentUser"

    invoke-static {v5, v9, v7, v8}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_7b
    .catchall {:try_start_22 .. :try_end_7b} :catchall_91

    .line 4534
    const-string v7, "username"

    if-nez v5, :cond_81

    const/4 v5, 0x0

    goto :goto_85

    :cond_81
    :try_start_81
    invoke-static {v5, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    :goto_85
    if-eqz v5, :cond_8e

    .line 4535
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4536
    :cond_8e
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_91
    .catchall {:try_start_81 .. :try_end_91} :catchall_91

    :catchall_91
    :cond_91
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :catchall_94
    :cond_94
    return-object v0
.end method

.method public final mergeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 6577
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6578
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6579
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_4d

    .line 6580
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->mergeExternalState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6581
    const-string v1, "mergeState: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 6583
    # invokes: Lcom/chimeranft/core/Main;->configureIdentityFromStore()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$configureIdentityFromStore(Lcom/chimeranft/core/Main;)V

    .line 6584
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v1

    if-eqz v1, :cond_3b

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/Notifier;->refresh()V

    .line 6586
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeState | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_10

    return-object p1

    .line 6589
    :goto_4d
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MERGESTATE FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final noteTransitionEnd()V
    .registers 5

    .line 4836
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_d

    .line 4838
    :cond_7
    # getter for: Lcom/chimeranft/core/Main;->uiTransitionDepth:I
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiTransitionDepth$p(Lcom/chimeranft/core/Main;)I

    move-result v1

    if-gtz v1, :cond_e

    :goto_d
    return-void

    .line 4840
    :cond_e
    invoke-virtual {p0, v1}, Lcom/chimeranft/core/Main$Companion;->transitionEndClears(I)Z

    move-result v2

    if-eqz v2, :cond_19

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Main;->access$setUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;J)V

    :cond_19
    add-int/lit8 v1, v1, -0x1

    .line 4841
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setUiTransitionDepth$p(Lcom/chimeranft/core/Main;I)V

    return-void
.end method

.method public final noteTransitionStart()V
    .registers 8

    .line 4805
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4807
    :cond_7
    # getter for: Lcom/chimeranft/core/Main;->uiTransitionDepth:I
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiTransitionDepth$p(Lcom/chimeranft/core/Main;)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    add-int/2addr v1, v2

    .line 4808
    :goto_11
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setUiTransitionDepth$p(Lcom/chimeranft/core/Main;I)V

    .line 4809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # getter for: Lcom/chimeranft/core/Main;->TRANSITION_MAX_MS:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getTRANSITION_MAX_MS$cp()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v0, v3, v4}, Lcom/chimeranft/core/Main;->access$setUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;J)V

    .line 4811
    invoke-static {v0, v2}, Lcom/chimeranft/core/Main;->access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V

    return-void
.end method

.method public final noteTyping()V
    .registers 6

    .line 4785
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4787
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # getter for: Lcom/chimeranft/core/Main;->TYPING_WINDOW_MS:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getTYPING_WINDOW_MS$cp()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setUiTypingUntilMs$p(Lcom/chimeranft/core/Main;J)V

    const/4 v1, 0x1

    .line 4788
    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setUiTyping$p(Lcom/chimeranft/core/Main;Z)V

    return-void
.end method

.method public final noteUiPulse(J)V
    .registers 7

    .line 4850
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_21

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_d

    goto :goto_21

    .line 4852
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 4853
    # getter for: Lcom/chimeranft/core/Main;->uiTransitionUntilMs:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide p1

    cmp-long v3, v1, p1

    if-lez v3, :cond_1d

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;J)V

    :cond_1d
    const/4 p1, 0x1

    .line 4854
    invoke-static {v0, p1}, Lcom/chimeranft/core/Main;->access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final notifyVisualBalanceChangedNow()V
    .registers 2

    .line 5949
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5950
    # invokes: Lcom/chimeranft/core/Main;->notifyVisualBalanceChanged()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$notifyVisualBalanceChanged(Lcom/chimeranft/core/Main;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    :catchall_9
    :cond_9
    return-void
.end method

.method public final onBadgesChanged()V
    .registers 6

    .line 5266
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5268
    :cond_7
    # getter for: Lcom/chimeranft/core/Main;->chatIdentityGeneration:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatIdentityGeneration$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setChatIdentityGeneration$p(Lcom/chimeranft/core/Main;J)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    .line 5269
    # invokes: Lcom/chimeranft/core/Main;->queueRestamp(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Main;->access$queueRestamp(Lcom/chimeranft/core/Main;JZ)V

    return-void
.end method

.method public final onPinnedChannelResolved(J)V
    .registers 10

    .line 6496
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4e

    .line 6498
    :cond_7
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_4e

    .line 6500
    :cond_e
    const-string v1, "userInfo"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_4e

    .line 6502
    :cond_17
    const-string v2, "personal_channel_id"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_29

    .line 6503
    const-string v2, "personalChannelId"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    :cond_29
    cmp-long v1, v2, p1

    if-eqz v1, :cond_2e

    goto :goto_4e

    .line 6505
    :cond_2e
    const-string p1, "updateRows"

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 6506
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 6505
    invoke-static {v0, p1, v2, v5}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6507
    const-string p1, "updateProfileData"

    new-array v2, v1, [Ljava/lang/Class;

    aput-object p2, v2, v3

    .line 6508
    new-array p2, v1, [Ljava/lang/Object;

    aput-object v4, p2, v3

    .line 6507
    invoke-static {v0, p1, v2, p2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_4e

    :catchall_4e
    :goto_4e
    return-void
.end method

.method public final persistAccessDeniedDecision(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 13

    .line 3952
    const-string v0, "checked_at"

    const/4 v1, 0x0

    if-eqz p1, :cond_143

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_143

    :cond_d
    if-nez p2, :cond_11

    goto/16 :goto_143

    .line 3953
    :cond_11
    new-instance v2, Ljava/io/File;

    const-string v3, "plugin_access.json"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3956
    new-instance v3, Ljava/io/File;

    const-string v4, "plugin_access.json.core.tmp"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3957
    new-instance v4, Ljava/io/File;

    const-string v5, "plugin_access.json.core.bak"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    :try_start_26
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 3961
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_11b

    if-nez p1, :cond_42

    .line 4026
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 4030
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_41

    :catchall_41
    :cond_41
    return v1

    .line 3962
    :cond_42
    :try_start_42
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3963
    invoke-direct {p0, v2}, Lcom/chimeranft/core/Main$Companion;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 3964
    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_11b

    if-nez v6, :cond_5c

    goto :goto_62

    .line 3968
    :cond_5c
    :try_start_5c
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_62

    move-object p1, v6

    .line 3973
    :catchall_62
    :cond_62
    :goto_62
    :try_start_62
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_66
    if-eqz v5, :cond_7c

    .line 3974
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 3976
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3977
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_66

    .line 3979
    :cond_7c
    const-string p2, "allowed"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3980
    const-string p2, "banned_client"

    const/4 v5, 0x1

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3981
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_97

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-gtz p2, :cond_a1

    .line 3982
    :cond_97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3984
    :cond_a1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a6
    .catchall {:try_start_62 .. :try_end_a6} :catchall_11b

    .line 3987
    :try_start_a6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3988
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_bb
    .catchall {:try_start_a6 .. :try_end_bb} :catchall_116

    .line 3991
    :try_start_bb
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_c2

    .line 3999
    :catchall_c2
    :try_start_c2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 4002
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_ce

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 4003
    :cond_ce
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e4

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_d8
    .catchall {:try_start_c2 .. :try_end_d8} :catchall_11b

    if-nez p1, :cond_e4

    .line 4026
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e3

    .line 4030
    :try_start_e0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e3

    :catchall_e3
    :cond_e3
    return v1

    .line 4004
    :cond_e4
    :try_start_e4
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_103

    .line 4006
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_f9

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_f9

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_f9
    .catchall {:try_start_e4 .. :try_end_f9} :catchall_11b

    .line 4026
    :cond_f9
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_102

    .line 4030
    :try_start_ff
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_102

    :catchall_102
    :cond_102
    return v1

    .line 4009
    :cond_103
    :try_start_103
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_10c

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_10c
    .catchall {:try_start_103 .. :try_end_10c} :catchall_11b

    .line 4026
    :cond_10c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_115

    .line 4030
    :try_start_112
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_115

    :catchall_115
    :cond_115
    return v5

    :catchall_116
    move-exception p1

    .line 3999
    :try_start_117
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_11b

    .line 4013
    :catchall_11b
    :try_start_11b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_12f

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_125
    .catchall {:try_start_11b .. :try_end_125} :catchall_12d

    if-eqz p1, :cond_12f

    .line 4017
    :try_start_127
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_12b

    goto :goto_12f

    :catchall_12b
    nop

    goto :goto_12f

    :catchall_12d
    move-exception p1

    goto :goto_139

    .line 4026
    :cond_12f
    :goto_12f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_138

    .line 4030
    :try_start_135
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_138

    :catchall_138
    :cond_138
    return v1

    .line 4026
    :goto_139
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_142

    .line 4030
    :try_start_13f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_142

    .line 4032
    :catchall_142
    :cond_142
    throw p1

    :cond_143
    :goto_143
    return v1
.end method

.method public final persistAccessDeniedDecision(Lorg/json/JSONObject;)Z
    .registers 3

    .line 3861
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3862
    const-string v0, ""

    goto :goto_d

    :cond_9
    # getter for: Lcom/chimeranft/core/Main;->dataDir:Ljava/lang/String;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getDataDir$p(Lcom/chimeranft/core/Main;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p0, v0, p1}, Lcom/chimeranft/core/Main$Companion;->persistAccessDeniedDecision(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public final pinChannelByUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6395
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6396
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6397
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p1, "fail|(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_17

    .line 6398
    :cond_12
    invoke-static {p1}, Lcom/chimeranft/core/PinnedChannel;->startPin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_10

    return-object p1

    .line 6401
    :goto_17
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final pinnedChannelRecord()Lorg/json/JSONObject;
    .registers 2

    .line 6483
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 6484
    :cond_8
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    :goto_c
    if-nez v0, :cond_14

    .line 6485
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    :cond_14
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->getPinnedChannelState()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object v0

    .line 6488
    :catchall_19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final pollGifts()Ljava/lang/String;
    .registers 4

    .line 5780
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5781
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v0, "(no gift hook)"

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_1b

    :cond_f
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->poll()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_d

    return-object v0

    .line 5784
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIFTPOLL FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pollHooks()Ljava/lang/String;
    .registers 31

    move-object/from16 v1, p0

    .line 5599
    const-string v0, " "

    const-string v2, "\n"

    .line 5601
    :try_start_6
    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v3

    .line 5602
    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->getVERSION_CODE()I

    move-result v4

    invoke-static {}, Lcom/chimeranft/core/Tuning;->poll()Ljava/lang/String;

    move-result-object v5

    .line 5603
    invoke-direct {v1, v3}, Lcom/chimeranft/core/Main$Companion;->describeFlingSlots(Lcom/chimeranft/core/Main;)Ljava/lang/String;

    move-result-object v6

    .line 5607
    # getter for: Lcom/chimeranft/core/Main;->uiScrollDeferrals:J
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$getUiScrollDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v7

    .line 5608
    # getter for: Lcom/chimeranft/core/Main;->uiTypingDeferrals:J
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$getUiTypingDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v9

    .line 5609
    # getter for: Lcom/chimeranft/core/Main;->uiTransitionDeferrals:J
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$getUiTransitionDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v11

    .line 5610
    # getter for: Lcom/chimeranft/core/Main;->transitionUnhooks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$getTransitionUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 5611
    # getter for: Lcom/chimeranft/core/Main;->typingWindowUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$getTypingWindowUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v14
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_13c

    if-eqz v14, :cond_38

    :try_start_30
    const-string v14, "on"
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_35

    :goto_32
    move-object/from16 v16, v14

    goto :goto_3b

    :catchall_35
    move-exception v0

    goto/16 :goto_13f

    :cond_38
    :try_start_38
    const-string v14, "off"

    goto :goto_32

    .line 5614
    :goto_3b
    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->getAccountPollsHot()J

    move-result-wide v14

    move-wide/from16 v17, v14

    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->getAccountPollsCold()J

    move-result-wide v14

    move-wide/from16 v19, v14

    .line 5615
    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->getDeferredRepaintDrops()J

    move-result-wide v14

    .line 5620
    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v21

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v21}, Lcom/chimeranft/core/OpenTrace;->report()Ljava/lang/String;

    move-result-object v2

    .line 5623
    # getter for: Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v21

    move-object/from16 v23, v2

    invoke-virtual/range {v21 .. v21}, Lcom/chimeranft/core/OpenTrace;->report()Ljava/lang/String;

    move-result-object v2

    .line 5625
    sget-object v21, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    move-object/from16 v24, v2

    invoke-virtual/range {v21 .. v21}, Lcom/chimeranft/core/HookSlot$Companion;->report()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    invoke-static {}, Lcom/chimeranft/core/BlackBox;->describe()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    .line 5626
    invoke-static {}, Lcom/chimeranft/core/Repaint;->poll()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    .line 5627
    invoke-direct {v1, v3}, Lcom/chimeranft/core/Main$Companion;->describeBadgeSlots(Lcom/chimeranft/core/Main;)Ljava/lang/String;

    move-result-object v2

    .line 5628
    # getter for: Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;
    invoke-static {v3}, Lcom/chimeranft/core/Main;->access$getCellStamps$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/CellStamps;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chimeranft/core/CellStamps;->poll()Ljava/lang/String;

    move-result-object v3

    .line 5632
    invoke-direct/range {p0 .. p0}, Lcom/chimeranft/core/Main$Companion;->uiBlockLine()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    .line 5633
    invoke-static {}, Lcom/chimeranft/core/Safe;->poll()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v3

    const-string v3, "v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nslots: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ngate[scrollDeferred="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " typingDeferred="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " transitionDeferred="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " transitionHooks="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " typingHook="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " accountPolls="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v17

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "hot/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v19

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "cold queueDrops="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_13b
    .catchall {:try_start_38 .. :try_end_13b} :catchall_13c

    return-object v0

    :catchall_13c
    move-exception v0

    move-object/from16 v1, p0

    .line 5636
    :goto_13f
    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOOKPOLL FATAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pollIdentity()Ljava/lang/String;
    .registers 50

    .line 5545
    const-string v0, "/"

    .line 5547
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    .line 5548
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v0, "(no identity)"

    return-object v0

    :catchall_f
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_22e

    .line 5549
    :cond_14
    # getter for: Lcom/chimeranft/core/Main;->profileFastOpens:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getProfileFastOpens$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_20

    move-wide v2, v4

    goto :goto_29

    .line 5552
    :cond_20
    # getter for: Lcom/chimeranft/core/Main;->profileFastApplyTotalUs:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getProfileFastApplyTotalUs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    # getter for: Lcom/chimeranft/core/Main;->profileFastOpens:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getProfileFastOpens$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v6

    div-long/2addr v2, v6

    .line 5553
    :goto_29
    # getter for: Lcom/chimeranft/core/Main;->profileFastOpens:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getProfileFastOpens$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gtz v8, :cond_32

    goto :goto_3f

    .line 5556
    :cond_32
    # getter for: Lcom/chimeranft/core/Main;->profileFastCacheHits:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getProfileFastCacheHits$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long v4, v4, v6

    # getter for: Lcom/chimeranft/core/Main;->profileFastOpens:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getProfileFastOpens$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v6

    div-long/2addr v4, v6

    .line 5557
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lcom/chimeranft/core/Main$Companion;->getVERSION_CODE()I

    move-result v6

    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/chimeranft/core/Identity;->pollCounters()Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getHookStatus$p(Lcom/chimeranft/core/Main;)Ljava/lang/String;

    move-result-object v8

    .line 5558
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v9
    :try_end_56
    .catchall {:try_start_2 .. :try_end_56} :catchall_f

    const-string v10, "]"

    if-nez v9, :cond_5d

    .line 5559
    :try_start_5a
    const-string v9, ""

    goto :goto_9b

    .line 5561
    :cond_5d
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/chimeranft/core/Badges;->poll()Ljava/lang/String;

    move-result-object v9

    .line 5562
    sget-object v11, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Companion;->supporterSlotOwner()Ljava/lang/String;

    move-result-object v11

    .line 5563
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v12, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " | badges["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " slot="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " extera="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5564
    :goto_9b
    # getter for: Lcom/chimeranft/core/Main;->profileFastOpens:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getProfileFastOpens$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v11

    .line 5565
    # getter for: Lcom/chimeranft/core/Main;->profileFastApplyMaxUs:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getProfileFastApplyMaxUs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v13

    .line 5566
    # getter for: Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getCellStamps$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/CellStamps;

    move-result-object v15

    invoke-virtual {v15}, Lcom/chimeranft/core/CellStamps;->poll()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 5567
    # getter for: Lcom/chimeranft/core/Main;->chatLayoutApplies:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatLayoutApplies$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v18, v0

    # getter for: Lcom/chimeranft/core/Main;->chatLayoutSkips:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatLayoutSkips$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v20, v0

    .line 5568
    # getter for: Lcom/chimeranft/core/Main;->chatNegativeHits:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatNegativeHits$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v22, v0

    # getter for: Lcom/chimeranft/core/Main;->chatDeferredCells:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatDeferredCells$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v24, v0

    .line 5569
    # getter for: Lcom/chimeranft/core/Main;->chatAuthorRestamps:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatAuthorRestamps$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v26, v0

    .line 5570
    # getter for: Lcom/chimeranft/core/Main;->chatBatchPrefetches:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatBatchPrefetches$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v28, v0

    .line 5571
    # getter for: Lcom/chimeranft/core/Main;->chatScrollStarts:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatScrollStarts$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v30, v0

    # getter for: Lcom/chimeranft/core/Main;->chatScrollStops:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatScrollStops$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    .line 5572
    # getter for: Lcom/chimeranft/core/Main;->chatBroadcastDormant:Z
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatBroadcastDormant$p(Lcom/chimeranft/core/Main;)Z

    move-result v32
    :try_end_e1
    .catchall {:try_start_5a .. :try_end_e1} :catchall_f

    const-string v33, "off"

    if-eqz v32, :cond_ec

    :try_start_e5
    const-string v32, "ON"

    move-object/from16 v34, v32

    :goto_e9
    move-wide/from16 v35, v0

    goto :goto_ef

    :cond_ec
    move-object/from16 v34, v33

    goto :goto_e9

    .line 5573
    :goto_ef
    # getter for: Lcom/chimeranft/core/Main;->chatDormantSkips:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getChatDormantSkips$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v37, v0

    .line 5574
    # getter for: Lcom/chimeranft/core/Main;->unhookCycles:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getUnhookCycles$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v39, v0

    # getter for: Lcom/chimeranft/core/Main;->unhookSkippedCycles:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getUnhookSkippedCycles$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v41, v0

    .line 5575
    # getter for: Lcom/chimeranft/core/Main;->uiScrollDeferrals:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getUiScrollDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    move-wide/from16 v43, v0

    .line 5576
    # getter for: Lcom/chimeranft/core/Main;->uiTypingDeferrals:J
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getUiTypingDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    .line 5577
    # getter for: Lcom/chimeranft/core/Main;->typingWindowUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static/range {v17 .. v17}, Lcom/chimeranft/core/Main;->access$getTypingWindowUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v17

    if-eqz v17, :cond_113

    const-string v33, "on"

    :cond_113
    move-object/from16 v45, v33

    move-wide/from16 v32, v0

    .line 5580
    invoke-virtual/range {p0 .. p0}, Lcom/chimeranft/core/Main$Companion;->getDeferredRepaintDrops()J

    move-result-wide v0

    move-wide/from16 v46, v0

    .line 5581
    invoke-static {}, Lcom/chimeranft/core/Repaint;->poll()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/chimeranft/core/MemoryPressure;->poll()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v48, v0

    const-string v0, "v"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | hook["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | fastProfile[opens="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " cache="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "% applyAvg="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "us max="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "us] | fastChat["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " layoutApply="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v18

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " layoutSkip="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v20

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " negative="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v22

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " deferred="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " restamp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v26

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " batches="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v28

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " scroll="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v30

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v35

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " dormant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v37

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " unhookCycles="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v39

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v41

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " repaintsDeferred="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v43

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " typingDeferred="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v32

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " typingHook="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " queueDrops="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v46

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v48

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | timings: see \u00ab\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430 \u0445\u0443\u043a\u043e\u0432\u00bb"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_22d
    .catchall {:try_start_e5 .. :try_end_22d} :catchall_f

    return-object v0

    .line 5587
    :goto_22e
    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POLL FATAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pollPinChannel()Ljava/lang/String;
    .registers 4

    .line 6411
    :try_start_0
    invoke-static {}, Lcom/chimeranft/core/PinnedChannel;->pollPin()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    move-exception v0

    .line 6414
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pollSync()Ljava/lang/String;
    .registers 7

    .line 5807
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5808
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v0, "(no sync)"

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_7b

    .line 5809
    :cond_f
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/SyncClient;->poll()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_d

    const-string v3, ""

    if-nez v2, :cond_24

    move-object v2, v3

    goto :goto_45

    :cond_24
    :try_start_24
    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity;->poll()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " | remote["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5810
    :goto_45
    # getter for: Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftReveal$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v4

    if-nez v4, :cond_4c

    goto :goto_68

    :cond_4c
    # getter for: Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftReveal$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal;->poll()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7a
    .catchall {:try_start_24 .. :try_end_7a} :catchall_d

    return-object v0

    .line 5813
    :goto_7b
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYNCPOLL FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pollUpgradeAttrs(J)Ljava/lang/String;
    .registers 4

    .line 6448
    :try_start_0
    invoke-static {p1, p2}, Lcom/chimeranft/core/UpgradeAttrs;->poll(J)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p1

    :catchall_5
    move-exception p1

    .line 6451
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final postUiAfterScroll(Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    return-void
.end method

.method public final postUiAfterScroll(Ljava/lang/Runnable;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 5183
    :cond_3
    new-instance v0, Lcom/chimeranft/core/Main$Companion$postUiAfterScroll$1;

    invoke-direct {v0, p1, p2}, Lcom/chimeranft/core/Main$Companion$postUiAfterScroll$1;-><init>(Ljava/lang/Runnable;Z)V

    const-wide/16 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final postUiLater(Ljava/lang/Runnable;J)V
    .registers 4

    .line 5212
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final previewSnapshot()Ljava/lang/String;
    .registers 5

    .line 5975
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5976
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 5977
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v0, "(not initialized)"

    return-object v0

    :catchall_10
    move-exception v0

    goto :goto_49

    .line 5978
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/chimeranft/core/Store;->buildSyncSnapshot(J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5979
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xdac

    if-le v1, v2, :cond_48

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "...<truncated>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_10

    :cond_48
    return-object v0

    .line 5982
    :goto_49
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PREVIEW FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pullSelfTest()Ljava/lang/String;
    .registers 4

    .line 5858
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5859
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v0, "(no sync)"

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_1b

    :cond_f
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pullSelfTestAsync()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_d

    return-object v0

    .line 5862
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PULLTEST FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pushSyncNow()Ljava/lang/String;
    .registers 4

    .line 5961
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5962
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v0, "(no sync)"

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_1b

    :cond_f
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushNowAsync()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_d

    return-object v0

    .line 5965
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUSH FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final reloadAll()Ljava/lang/String;
    .registers 5

    .line 4606
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 4607
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 4608
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-eqz v1, :cond_6c

    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_6c

    .line 4609
    :cond_14
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->reload()Ljava/lang/String;

    move-result-object v1

    .line 4610
    # invokes: Lcom/chimeranft/core/Main;->configureIdentityFromStore()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$configureIdentityFromStore(Lcom/chimeranft/core/Main;)V

    .line 4611
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 4613
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/chimeranft/core/Store;->getInjectableEntries()[Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chimeranft/core/GiftHook;->configure([Lorg/json/JSONObject;)V

    .line 4614
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftHook;->reloadSelfGifts()V

    goto :goto_4a

    :catchall_48
    move-exception v0

    goto :goto_6f

    .line 4616
    :cond_4a
    :goto_4a
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    if-eqz v2, :cond_5a

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/Notifier;->refresh()V

    .line 4617
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadAll | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4608
    :cond_6c
    :goto_6c
    const-string v0, "(not initialized)"
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_48

    return-object v0

    .line 4620
    :goto_6f
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RELOADALL FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final removeGift(J)Ljava/lang/String;
    .registers 5

    .line 6714
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6715
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6716
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_42

    .line 6717
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->removeGiftById(J)Ljava/lang/String;

    move-result-object p1

    .line 6718
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6719
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    if-eqz p2, :cond_30

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6720
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeGift | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_10

    return-object p1

    .line 6723
    :goto_42
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RMGIFT FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final removeGiftCollection(I)Ljava/lang/String;
    .registers 4

    .line 6791
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6792
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6793
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_42

    .line 6794
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->deleteGiftCollection(I)Ljava/lang/String;

    move-result-object p1

    .line 6795
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6796
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    if-eqz v1, :cond_30

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6797
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collection remove | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_10

    return-object p1

    .line 6800
    :goto_42
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COLLECTIONRM FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final removeGifts(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6734
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6735
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6736
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_42

    .line 6737
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->removeGiftsByIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6738
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6739
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    if-eqz v1, :cond_30

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6740
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeGifts | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_10

    return-object p1

    .line 6743
    :goto_42
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RMGIFTS FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final repaintHeld(ZZZZ)Z
    .registers 5

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    if-eqz p4, :cond_9

    if-eqz p3, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public final replaceGift(JLjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 6697
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6698
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6699
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_32

    .line 6700
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/chimeranft/core/Store;->replaceGiftEntry(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6701
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6702
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "replaceGift | "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_10

    return-object p1

    .line 6705
    :goto_32
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "REPLGIFT FATAL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final resetHookMetrics()Ljava/lang/String;
    .registers 4

    .line 5767
    :try_start_0
    invoke-static {}, Lcom/chimeranft/core/Tuning;->reset()V

    .line 5768
    const-string v0, "hook metrics reset"
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-object v0

    :catchall_6
    move-exception v0

    .line 5771
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESET FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resetLocalProfile()Ljava/lang/String;
    .registers 7

    .line 6616
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6617
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6618
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-eqz v1, :cond_80

    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_80

    .line 6619
    :cond_14
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->resetLocalProfile()Ljava/lang/String;

    move-result-object v1

    .line 6620
    const-string v2, "FAIL"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_3c

    const-string v3, "resetLocalProfile | "

    if-eqz v2, :cond_3e

    :try_start_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_3c
    move-exception v0

    goto :goto_83

    .line 6621
    :cond_3e
    # invokes: Lcom/chimeranft/core/Main;->configureIdentityFromStore()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$configureIdentityFromStore(Lcom/chimeranft/core/Main;)V

    .line 6622
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6623
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    if-eqz v2, :cond_54

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chimeranft/core/Notifier;->refresh()V

    .line 6624
    :cond_54
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v2

    if-eqz v2, :cond_66

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushResetSnapshotAsync()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    :cond_66
    const-string v0, "no sync"

    .line 6625
    :goto_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | server: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6618
    :cond_80
    :goto_80
    const-string v0, "(not initialized)"
    :try_end_82
    .catchall {:try_start_2c .. :try_end_82} :catchall_3c

    return-object v0

    .line 6628
    :goto_83
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESET FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final runAfterChatScroll(Ljava/lang/Runnable;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 5166
    :cond_3
    const-string v0, "main.afterChatScroll"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    .line 5167
    :goto_d
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->isChatScrollingNow()Z

    move-result v0

    if-nez v0, :cond_17

    .line 5168
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 5171
    :cond_17
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 5172
    # getter for: Lcom/chimeranft/core/Main;->chatScrollDeferrals:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatScrollDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setChatScrollDeferrals$p(Lcom/chimeranft/core/Main;J)V

    .line 5173
    :cond_27
    new-instance v0, Lcom/chimeranft/core/Main$Companion$runAfterChatScroll$1;

    invoke-direct {v0, p1}, Lcom/chimeranft/core/Main$Companion$runAfterChatScroll$1;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x70

    invoke-direct {p0, v0, v1, v2}, Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final runAfterUiScroll(Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/chimeranft/core/Main$Companion;->runAfterUiScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    return-void
.end method

.method public final runAfterUiScroll(Ljava/lang/Runnable;Z)V
    .registers 10

    if-nez p1, :cond_4

    goto/16 :goto_bb

    .line 4918
    :cond_4
    const-string v0, "main.afterUiScroll"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    move-object p1, v0

    .line 4919
    :goto_e
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->isUiScrollingNow()Z

    move-result v0

    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->isTypingNow()Z

    move-result v1

    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->isTransitionNow()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/chimeranft/core/Main$Companion;->repaintHeld(ZZZZ)Z

    move-result p2

    if-nez p2, :cond_24

    .line 4921
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4927
    :cond_24
    # getter for: Lcom/chimeranft/core/Main;->runOnUiThreadResolved:Z
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRunOnUiThreadResolved$cp()Z

    move-result p2

    if-eqz p2, :cond_34

    # getter for: Lcom/chimeranft/core/Main;->runOnUiThread:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getRunOnUiThread$cp()Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_34

    .line 4928
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4931
    :cond_34
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object p2

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_64

    .line 4934
    # getter for: Lcom/chimeranft/core/Main;->uiScrollDeferrals:J
    invoke-static {p2}, Lcom/chimeranft/core/Main;->access$getUiScrollDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p2, v2, v3}, Lcom/chimeranft/core/Main;->access$setUiScrollDeferrals$p(Lcom/chimeranft/core/Main;J)V

    .line 4935
    # getter for: Lcom/chimeranft/core/Main;->uiTyping:Z
    invoke-static {p2}, Lcom/chimeranft/core/Main;->access$getUiTyping$p(Lcom/chimeranft/core/Main;)Z

    move-result v2

    if-eqz v2, :cond_52

    # getter for: Lcom/chimeranft/core/Main;->uiTypingDeferrals:J
    invoke-static {p2}, Lcom/chimeranft/core/Main;->access$getUiTypingDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p2, v2, v3}, Lcom/chimeranft/core/Main;->access$setUiTypingDeferrals$p(Lcom/chimeranft/core/Main;J)V

    .line 4936
    :cond_52
    # getter for: Lcom/chimeranft/core/Main;->uiTransitionUntilMs:J
    invoke-static {p2}, Lcom/chimeranft/core/Main;->access$getUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_64

    # getter for: Lcom/chimeranft/core/Main;->uiTransitionDeferrals:J
    invoke-static {p2}, Lcom/chimeranft/core/Main;->access$getUiTransitionDeferrals$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p2, v2, v3}, Lcom/chimeranft/core/Main;->access$setUiTransitionDeferrals$p(Lcom/chimeranft/core/Main;J)V

    .line 4939
    :cond_64
    # getter for: Lcom/chimeranft/core/Main;->DEFER_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDEFER_LOCK$cp()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 4942
    :try_start_69
    # getter for: Lcom/chimeranft/core/Main;->deferredRepaints:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferredRepaints$cp()Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_95

    if-eqz v2, :cond_75

    monitor-exit p2

    return-void

    .line 4943
    :cond_75
    :goto_75
    :try_start_75
    # getter for: Lcom/chimeranft/core/Main;->deferredRepaints:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferredRepaints$cp()Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    # getter for: Lcom/chimeranft/core/Main;->MAX_DEFERRED_REPAINTS:I
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getMAX_DEFERRED_REPAINTS$cp()I

    move-result v3

    if-lt v2, v3, :cond_97

    .line 4945
    # getter for: Lcom/chimeranft/core/Main;->deferredRepaints:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferredRepaints$cp()Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 4946
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/Main$Companion;->getDeferredRepaintDrops()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/chimeranft/core/Main$Companion;->setDeferredRepaintDrops(J)V

    goto :goto_75

    :catchall_95
    move-exception p1

    goto :goto_bc

    .line 4948
    :cond_97
    # getter for: Lcom/chimeranft/core/Main;->deferredRepaints:Ljava/util/ArrayDeque;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferredRepaints$cp()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 4949
    # getter for: Lcom/chimeranft/core/Main;->deferredDrainArmed:Z
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDeferredDrainArmed$cp()Z

    move-result p1

    const/4 v0, 0x1

    .line 4950
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$setDeferredDrainArmed$cp(Z)V

    .line 4951
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a8
    .catchall {:try_start_75 .. :try_end_a8} :catchall_95

    .line 4939
    monitor-exit p2

    if-nez p1, :cond_bb

    .line 4953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/chimeranft/core/Main;->access$setDeferArmedAtMs$cp(J)V

    .line 4954
    # getter for: Lcom/chimeranft/core/Main;->DEFER_DRAIN:Ljava/lang/Runnable;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getDEFER_DRAIN$cp()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x82

    invoke-direct {p0, p1, v0, v1}, Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V

    :cond_bb
    :goto_bb
    return-void

    .line 4939
    :goto_bc
    monitor-exit p2

    throw p1
.end method

.method public final selfTestPersist()Ljava/lang/String;
    .registers 4

    .line 7121
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-nez v0, :cond_12

    .line 7122
    const-string v0, "(not initialized)"

    return-object v0

    :catchall_10
    move-exception v0

    goto :goto_17

    :cond_12
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->selfTestPersist()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_10

    return-object v0

    .line 7125
    :goto_17
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELFTEST FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAccessDeniedCallback(Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 2

    .line 3822
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$setAccessDeniedCallback$cp(Ljava/lang/Runnable;)V

    if-nez p1, :cond_8

    .line 3823
    const-string p1, "access callback cleared"

    return-object p1

    :cond_8
    const-string p1, "access callback ready"

    return-object p1
.end method

.method public final setAccessUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    .line 3829
    const-string p1, ""

    :cond_4
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$setAccessUsername$cp(Ljava/lang/String;)V

    .line 3830
    # getter for: Lcom/chimeranft/core/Main;->accessUsername:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getAccessUsername$cp()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setAccountPollsCold(J)V
    .registers 3

    .line 4488
    invoke-static {p1, p2}, Lcom/chimeranft/core/Main;->access$setAccountPollsCold$cp(J)V

    return-void
.end method

.method public final setAccountPollsHot(J)V
    .registers 3

    .line 4487
    invoke-static {p1, p2}, Lcom/chimeranft/core/Main;->access$setAccountPollsHot$cp(J)V

    return-void
.end method

.method public final setCollectiblePrice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 17

    .line 6076
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6077
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6078
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_13

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception v0

    move-object p1, v0

    goto :goto_35

    .line 6079
    :cond_13
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/chimeranft/core/Store;->setCollectiblePrice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 6080
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    if-eqz p2, :cond_34

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_10

    :cond_34
    return-object p1

    .line 6084
    :goto_35
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SETCOLPRICE FATAL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setDeferredRepaintDrops(J)V
    .registers 3

    .line 4964
    invoke-static {p1, p2}, Lcom/chimeranft/core/Main;->access$setDeferredRepaintDrops$cp(J)V

    return-void
.end method

.method public final setGiftCollection(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 6773
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6774
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6775
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_42

    .line 6776
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->upsertGiftCollection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6777
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6778
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    if-eqz p2, :cond_30

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6779
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collection | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_10

    return-object p1

    .line 6782
    :goto_42
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "COLLECTION FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setGiftCollectionMembership(JII)Ljava/lang/String;
    .registers 7

    .line 6809
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6810
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6811
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_47

    .line 6812
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p4, :cond_1d

    const/4 p4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p4, 0x0

    :goto_1e
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/chimeranft/core/Store;->setGiftCollectionMembership(JIZ)Ljava/lang/String;

    move-result-object p1

    .line 6813
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6814
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    if-eqz p2, :cond_35

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6815
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "collection member | "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_10

    return-object p1

    .line 6818
    :goto_47
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "COLLECTIONMEM FATAL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setGiftInject(JI)Ljava/lang/String;
    .registers 6

    .line 6845
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6846
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6847
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_37

    .line 6848
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p3, :cond_1d

    const/4 p3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p3, 0x0

    :goto_1e
    invoke-virtual {v1, p1, p2, p3}, Lcom/chimeranft/core/Store;->setGiftInject(JZ)Ljava/lang/String;

    move-result-object p1

    .line 6849
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setGiftInject | "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_10

    return-object p1

    .line 6853
    :goto_37
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SETINJECT FATAL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setGiftVisibility(JI)Ljava/lang/String;
    .registers 9

    .line 6863
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6864
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6865
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_64

    .line 6866
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    invoke-virtual {v1, p1, p2, v4}, Lcom/chimeranft/core/Store;->setGiftHidden(JZ)Ljava/lang/String;

    move-result-object p1

    .line 6867
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6868
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object p2

    if-eqz p2, :cond_37

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/GiftHook;->reloadSelfGifts()V

    .line 6869
    :cond_37
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    if-eqz p2, :cond_47

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    :cond_47
    if-eqz p3, :cond_4a

    const/4 v2, 0x1

    .line 6870
    :cond_4a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "gift visible="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " | "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_10

    return-object p1

    .line 6873
    :goto_64
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SETGIFTVIS FATAL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setGramIconPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    .line 3810
    const-string p1, ""

    :cond_4
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$setGramIconPath$cp(Ljava/lang/String;)V

    .line 3811
    # getter for: Lcom/chimeranft/core/Main;->gramIconPath:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getGramIconPath$cp()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setHideOfficialGifts(I)Ljava/lang/String;
    .registers 7

    .line 6217
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6218
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6219
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_51

    .line 6220
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    invoke-virtual {v1, v4}, Lcom/chimeranft/core/Store;->setHideOfficialGifts(Z)Ljava/lang/String;

    move-result-object v1

    .line 6221
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v4

    if-eqz v4, :cond_34

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->reloadSelfGifts()V

    :cond_34
    if-eqz p1, :cond_37

    const/4 v2, 0x1

    .line 6222
    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_0 .. :try_end_50} :catchall_10

    return-object p1

    .line 6225
    :goto_51
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETHIDE FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setHookDisabled(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    .line 5709
    :goto_5
    :try_start_5
    invoke-static {p1, p2}, Lcom/chimeranft/core/Tuning;->setDisabled(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    return-object p1

    :catchall_a
    move-exception p1

    .line 5712
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HOOKSET FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setLocalPremium(I)Ljava/lang/String;
    .registers 5

    .line 5910
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5911
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 5912
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-eqz v1, :cond_65

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_65

    :cond_14
    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 5914
    :goto_19
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Identity;->setLocalPremium(Z)V

    .line 5915
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->setLocalPremium(Z)Ljava/lang/String;

    move-result-object v1

    .line 5916
    # getter for: Lcom/chimeranft/core/Main;->currentSlot:I
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getCurrentSlot$p(Lcom/chimeranft/core/Main;)I

    move-result v2

    invoke-static {v2, p1}, Lcom/chimeranft/core/LocalPremium;->apply(IZ)V

    .line 5917
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 5918
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v2

    if-eqz v2, :cond_4b

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    goto :goto_4b

    :catchall_49
    move-exception p1

    goto :goto_68

    .line 5919
    :cond_4b
    :goto_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local premium="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5912
    :cond_65
    :goto_65
    const-string p1, "(not initialized)"
    :try_end_67
    .catchall {:try_start_0 .. :try_end_67} :catchall_49

    return-object p1

    .line 5922
    :goto_68
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETPREMIUM FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setMarketSpendEnabled(I)Ljava/lang/String;
    .registers 4

    .line 6265
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6266
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6267
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_23

    .line 6268
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Store;->setMarketSpendEnabled(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_10

    return-object p1

    .line 6271
    :goto_23
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETMARKETSPEND FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setNativeLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3804
    invoke-static {p1}, Lcom/chimeranft/core/NativeFastPath;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setNumber(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 6110
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6111
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6112
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-eqz v1, :cond_b4

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_15

    goto/16 :goto_b4

    .line 6113
    :cond_15
    invoke-direct {p0, p2}, Lcom/chimeranft/core/Main$Companion;->splitCsv(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 6115
    :goto_1e
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Identity;->setNumbers(Z[Ljava/lang/String;)V

    .line 6116
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->setNftNumber(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6117
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 6120
    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4f

    .line 6121
    const-string v3, "dialogId"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_4f

    :catchall_4c
    move-exception v0

    move-object p1, v0

    goto :goto_b7

    .line 6122
    :cond_4f
    :goto_4f
    const-string v5, "userInfo"

    invoke-static {v2, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 6123
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v6

    cmp-long v2, v3, v6

    if-nez v2, :cond_7b

    if-eqz v5, :cond_7b

    .line 6125
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    .line 6126
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    if-eqz v2, :cond_7b

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/Notifier;->postProfileInfo(JLjava/lang/Object;J)V

    .line 6129
    :cond_7b
    # invokes: Lcom/chimeranft/core/Main;->reapplySelfIdentityAfterEdit()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$reapplySelfIdentityAfterEdit(Lcom/chimeranft/core/Main;)V

    .line 6130
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 6131
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v2

    if-eqz v2, :cond_91

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6132
    :cond_91
    array-length p2, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number on="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " n="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6112
    :cond_b4
    :goto_b4
    const-string p1, "(not initialized)"
    :try_end_b6
    .catchall {:try_start_0 .. :try_end_b6} :catchall_4c

    return-object p1

    .line 6135
    :goto_b7
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SETNUM FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setOptimization(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 5740
    :goto_5
    :try_start_5
    invoke-static {p1, v0}, Lcom/chimeranft/core/Tuning;->setOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_18

    .line 5742
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/chimeranft/core/Main;->ensureFlingSlotsLive()V
    invoke-static {p2}, Lcom/chimeranft/core/Main;->access$ensureFlingSlotsLive(Lcom/chimeranft/core/Main;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception p1

    goto :goto_19

    :cond_18
    return-object p1

    .line 5746
    :goto_19
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OPTSET FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setPinnedChannel(IJLjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;
    .registers 26

    .line 6322
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6323
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6324
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v0, "(not initialized)"

    return-object v0

    :catchall_10
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_ca

    .line 6325
    :cond_15
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez p1, :cond_74

    cmp-long v4, p2, v2

    if-gtz v4, :cond_74

    if-eqz v1, :cond_74

    .line 6331
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/chimeranft/core/Store;->getPinnedChannelState()Lorg/json/JSONObject;

    move-result-object v4

    .line 6332
    const-string v5, "userId"

    invoke-static {v1, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gtz v7, :cond_3e

    .line 6333
    const-string v5, "dialogId"

    invoke-static {v1, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    .line 6334
    :cond_3e
    const-string v7, "userInfo"

    invoke-static {v1, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 6335
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_74

    if-eqz v7, :cond_74

    const-string v5, "enabled"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 6336
    const-string v5, "last_managed_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 6338
    const-string v4, "personal_channel_id"

    invoke-static {v7, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_6e

    .line 6339
    const-string v4, "personalChannelId"

    invoke-static {v7, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    :cond_6e
    cmp-long v6, v4, v2

    if-lez v6, :cond_74

    move-wide v6, v4

    goto :goto_76

    :cond_74
    move-wide/from16 v6, p2

    .line 6344
    :goto_76
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_81

    const/4 v5, 0x1

    goto :goto_82

    :cond_81
    const/4 v5, 0x0

    .line 6345
    :goto_82
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v14

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    .line 6344
    invoke-virtual/range {v4 .. v15}, Lcom/chimeranft/core/Store;->setPinnedChannel(ZJLjava/lang/String;Ljava/lang/String;IIJJ)Ljava/lang/String;

    move-result-object v4

    .line 6346
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 6347
    const-string v6, "pinned_channel"

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/chimeranft/core/Store;->getPinnedChannelState()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6348
    invoke-static {v5}, Lcom/chimeranft/core/PinnedChannel;->ensureCached(Lorg/json/JSONObject;)V

    .line 6354
    sget-object v6, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    new-instance v7, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;

    invoke-direct {v7, v1, v0, v5}, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;-><init>(Ljava/lang/Object;Lcom/chimeranft/core/Main;Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7, v2, v3}, Lcom/chimeranft/core/Main$Companion;->postUiLater(Ljava/lang/Runnable;J)V

    .line 6369
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 6370
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    if-eqz v1, :cond_c9

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V
    :try_end_c9
    .catchall {:try_start_0 .. :try_end_c9} :catchall_10

    :cond_c9
    return-object v4

    .line 6374
    :goto_ca
    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETPINNEDCHANNEL FATAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setRating(IIII)Ljava/lang/String;
    .registers 16

    .line 6147
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object p4

    .line 6148
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6149
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v0

    if-eqz v0, :cond_109

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-nez v0, :cond_15

    goto/16 :goto_109

    :cond_15
    const/16 v0, 0x64

    .line 6150
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 6151
    invoke-static {p2, p3}, Lcom/chimeranft/core/Rating;->clampValue(II)I

    move-result p2

    .line 6152
    invoke-static {p3}, Lcom/chimeranft/core/Rating;->nextGoalForLevel(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    if-lez p2, :cond_2f

    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    .line 6154
    :goto_30
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/chimeranft/core/Identity;->setRating(ZIII)V

    .line 6155
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/chimeranft/core/Store;->setRating(ZIII)Ljava/lang/String;

    move-result-object v1

    .line 6160
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_dc

    .line 6163
    const-string v4, "userId"

    invoke-static {v3, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_62

    .line 6164
    const-string v4, "dialogId"

    invoke-static {v3, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_62

    :catchall_5e
    move-exception v0

    move-object p1, v0

    goto/16 :goto_10c

    .line 6165
    :cond_62
    :goto_62
    const-string v6, "userInfo"

    invoke-static {v3, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 6166
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-nez v9, :cond_dc

    if-eqz v6, :cond_dc

    if-eqz p1, :cond_7f

    .line 6169
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    goto :goto_82

    .line 6171
    :cond_7f
    invoke-static {v6}, Lcom/chimeranft/core/Rating;->clear(Ljava/lang/Object;)Z

    .line 6176
    :goto_82
    const-string v7, "ratingView"

    invoke-static {v3, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 6177
    const-string v7, "stars_rating"

    invoke-static {v6, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_96

    .line 6178
    const-string v7, "starsRating"

    invoke-static {v6, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_96
    .catchall {:try_start_0 .. :try_end_96} :catchall_5e

    :cond_96
    if-eqz v3, :cond_c8

    .line 6181
    const-string v8, "set"

    if-eqz v7, :cond_ac

    .line 6184
    :try_start_9c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Class;

    aput-object v9, v10, v2

    .line 6185
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v2

    .line 6183
    invoke-static {v3, v8, v10, v0}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    .line 6191
    :cond_ac
    const-string v7, "org.telegram.tgnet.tl.TL_stars$Tl_starsRating"

    invoke-static {v7}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_ba

    .line 6192
    const-string v7, "org.telegram.tgnet.tl.TL_stars$TL_starsRating"

    invoke-static {v7}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    :cond_ba
    if-eqz v7, :cond_c8

    .line 6196
    new-array v9, v0, [Ljava/lang/Class;

    aput-object v7, v9, v2

    .line 6197
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v7, v0, v2

    .line 6195
    invoke-static {v3, v8, v9, v0}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6201
    :cond_c8
    :goto_c8
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v0

    if-eqz v0, :cond_dc

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v3, v4

    move-object v5, v6

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/Notifier;->postProfileInfo(JLjava/lang/Object;J)V

    .line 6204
    :cond_dc
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {p4}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 6205
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rating on="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " v="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " L"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6149
    :cond_109
    :goto_109
    const-string p1, "(not initialized)"
    :try_end_10b
    .catchall {:try_start_9c .. :try_end_10b} :catchall_5e

    return-object p1

    .line 6208
    :goto_10c
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SETRATING FATAL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setShowUnavailableGifts(I)Ljava/lang/String;
    .registers 4

    .line 6249
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6250
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6251
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_23

    .line 6252
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Store;->setShowUnavailableGifts(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_10

    return-object p1

    .line 6255
    :goto_23
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETSHOWUNAVAIL FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setSmoothMode(I)Ljava/lang/String;
    .registers 4

    .line 6234
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6235
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6236
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_23

    .line 6237
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Store;->setSmoothModeEnabled(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_10

    return-object p1

    .line 6240
    :goto_23
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETSMOOTH FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setSupporterPopupCallback(Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 5

    .line 5414
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$setSupporterPopupCallback$cp(Ljava/lang/Runnable;)V

    .line 5421
    new-instance v0, Lcom/chimeranft/core/Main$Companion$setSupporterPopupCallback$1;

    invoke-direct {v0}, Lcom/chimeranft/core/Main$Companion$setSupporterPopupCallback$1;-><init>()V

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V

    if-nez p1, :cond_12

    .line 5431
    const-string p1, "support popup detached"

    return-object p1

    :cond_12
    const-string p1, "support popup ready"

    return-object p1
.end method

.method public final setSyncEnabled(I)Ljava/lang/String;
    .registers 4

    .line 5888
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5889
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 5891
    :goto_c
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-eqz v1, :cond_1f

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->setSyncEnabled(Z)Ljava/lang/String;

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_54

    .line 5892
    :cond_1f
    :goto_1f
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    if-eqz v1, :cond_2f

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/SyncClient;->setEnabled(Z)V

    .line 5895
    :cond_2f
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 5896
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-eqz v1, :cond_42

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->reloadSelfGifts()V

    .line 5897
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_53
    .catchall {:try_start_0 .. :try_end_53} :catchall_1d

    return-object p1

    .line 5900
    :goto_54
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETSYNC FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setSyncEndpoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 5872
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5873
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    if-nez v1, :cond_f

    const-string p1, "(no sync)"

    return-object p1

    :catchall_d
    move-exception p1

    goto :goto_36

    .line 5874
    :cond_f
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/SyncClient;->updateEndpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 5875
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chimeranft/core/SyncClient;->getServer()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sync endpoint -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_d

    return-object p1

    .line 5878
    :goto_36
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SETENDPOINT FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setUsername(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 5994
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5995
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 5996
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-eqz v1, :cond_b4

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_15

    goto/16 :goto_b4

    .line 5997
    :cond_15
    invoke-direct {p0, p2}, Lcom/chimeranft/core/Main$Companion;->splitCsv(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 5999
    :goto_1e
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Identity;->setUsernames(Z[Ljava/lang/String;)V

    .line 6000
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->setNftUsername(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6004
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 6007
    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4f

    .line 6008
    const-string v3, "dialogId"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_4f

    :catchall_4c
    move-exception v0

    move-object p1, v0

    goto :goto_b7

    .line 6009
    :cond_4f
    :goto_4f
    const-string v5, "userInfo"

    invoke-static {v2, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 6010
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v6

    cmp-long v2, v3, v6

    if-nez v2, :cond_7b

    if-eqz v5, :cond_7b

    .line 6012
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    .line 6013
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    if-eqz v2, :cond_7b

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/Notifier;->postProfileInfo(JLjava/lang/Object;J)V

    .line 6016
    :cond_7b
    # invokes: Lcom/chimeranft/core/Main;->reapplySelfIdentityAfterEdit()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$reapplySelfIdentityAfterEdit(Lcom/chimeranft/core/Main;)V

    .line 6017
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 6018
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v2

    if-eqz v2, :cond_91

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6019
    :cond_91
    array-length p2, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "username on="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " n="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5996
    :cond_b4
    :goto_b4
    const-string p1, "(not initialized)"
    :try_end_b6
    .catchall {:try_start_0 .. :try_end_b6} :catchall_4c

    return-object p1

    .line 6022
    :goto_b7
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SETUNAME FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setUsernameReplaceOriginal(I)Ljava/lang/String;
    .registers 10

    .line 6036
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6037
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6038
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-eqz v1, :cond_a7

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_15

    goto/16 :goto_a7

    :cond_15
    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 6040
    :goto_1a
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Identity;->setUsernameReplace(Z)V

    .line 6041
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->setReplaceOriginalUsernames(Z)Ljava/lang/String;

    move-result-object v1

    .line 6042
    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 6045
    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4b

    .line 6046
    const-string v3, "dialogId"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_4b

    :catchall_48
    move-exception v0

    move-object p1, v0

    goto :goto_aa

    .line 6047
    :cond_4b
    :goto_4b
    const-string v5, "userInfo"

    invoke-static {v2, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 6048
    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v6

    cmp-long v2, v3, v6

    if-nez v2, :cond_77

    if-eqz v5, :cond_77

    .line 6050
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    .line 6051
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    if-eqz v2, :cond_77

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/Notifier;->postProfileInfo(JLjava/lang/Object;J)V

    .line 6054
    :cond_77
    # invokes: Lcom/chimeranft/core/Main;->reapplySelfIdentityAfterEdit()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$reapplySelfIdentityAfterEdit(Lcom/chimeranft/core/Main;)V

    .line 6055
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 6056
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v2

    if-eqz v2, :cond_8d

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6057
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unameReplace on="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6038
    :cond_a7
    :goto_a7
    const-string p1, "(not initialized)"
    :try_end_a9
    .catchall {:try_start_0 .. :try_end_a9} :catchall_48

    return-object p1

    .line 6060
    :goto_aa
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETUNAMEREPL FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setVerificationMode(I)Ljava/lang/String;
    .registers 5

    .line 6530
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6531
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6532
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-eqz v1, :cond_48

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_48

    .line 6533
    :cond_14
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Identity;->setVerificationMode(I)V

    .line 6534
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Store;->setLocalVerificationMode(I)Ljava/lang/String;

    move-result-object v1

    .line 6535
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 6536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verif mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_46
    move-exception p1

    goto :goto_4b

    .line 6532
    :cond_48
    :goto_48
    const-string p1, "(not initialized)"
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_46

    return-object p1

    .line 6539
    :goto_4b
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETVERIF FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setVisualBalances(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 5932
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 5933
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 5934
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_21

    .line 5935
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->setVisualBalances(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5936
    # invokes: Lcom/chimeranft/core/Main;->notifyVisualBalanceChanged()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$notifyVisualBalanceChanged(Lcom/chimeranft/core/Main;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_10

    return-object p1

    .line 5940
    :goto_21
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SETBALANCE FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setWearEnabled(I)Ljava/lang/String;
    .registers 6

    .line 6298
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6299
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6300
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    if-eqz v1, :cond_48

    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_48

    :cond_14
    if-nez p1, :cond_45

    .line 6303
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chimeranft/core/Identity;->disableWear()V

    .line 6304
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/chimeranft/core/Store;->saveWear(JLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 6305
    # invokes: Lcom/chimeranft/core/Main;->refresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$refresh(Lcom/chimeranft/core/Main;)V

    .line 6306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wear off | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_43
    move-exception p1

    goto :goto_4b

    .line 6308
    :cond_45
    const-string p1, "wear enable: set via gift \u041d\u043e\u0441\u0438\u0442\u044c"

    return-object p1

    .line 6300
    :cond_48
    :goto_48
    const-string p1, "(not initialized)"
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_43

    return-object p1

    .line 6311
    :goto_4b
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SETWEAR FATAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final shouldSuspendReadHooks(I)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldThrottleForeignFull(ZZZ)Z
    .registers 4

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    if-eqz p3, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final shutdown()Ljava/lang/String;
    .registers 10

    .line 7156
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 7157
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_f3

    if-eqz v1, :cond_14

    .line 7161
    :try_start_a
    # getter for: Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Identity;->restoreAll()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_14

    .line 7166
    :catchall_14
    :cond_14
    :try_start_14
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_f3

    if-eqz v1, :cond_24

    .line 7170
    :try_start_1a
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Notifier;->refresh()V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_24

    .line 7181
    :catchall_24
    :cond_24
    :try_start_24
    # getter for: Lcom/chimeranft/core/Main;->getUserSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGetUserSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setGetUserSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7182
    # getter for: Lcom/chimeranft/core/Main;->getUserFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGetUserFullUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setGetUserFullUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7183
    # getter for: Lcom/chimeranft/core/Main;->getChatSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGetChatSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setGetChatSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7184
    # getter for: Lcom/chimeranft/core/Main;->getChatFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGetChatFullUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setGetChatFullUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7185
    # getter for: Lcom/chimeranft/core/Main;->botVerifIconSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBotVerifIconSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setBotVerifIconSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7186
    # getter for: Lcom/chimeranft/core/Main;->dialogCellBadgeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getDialogCellBadgeUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setDialogCellBadgeUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7187
    # getter for: Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getExteraBadgeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setExteraBadgeSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7188
    # getter for: Lcom/chimeranft/core/Main;->exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getExteraBadgeSourceSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setExteraBadgeSourceSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7189
    # getter for: Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getExteraSecondarySlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setExteraSecondarySlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7190
    # getter for: Lcom/chimeranft/core/Main;->exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getExteraSecondaryRuleSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setExteraSecondaryRuleSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7191
    # getter for: Lcom/chimeranft/core/Main;->exteraBulletinSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getExteraBulletinSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setExteraBulletinSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7192
    # getter for: Lcom/chimeranft/core/Main;->chatResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatResumeUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setChatResumeUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7193
    # getter for: Lcom/chimeranft/core/Main;->chatPauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatPauseUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setChatPauseUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7194
    # getter for: Lcom/chimeranft/core/Main;->chatCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatCreateUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setChatCreateUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7195
    # getter for: Lcom/chimeranft/core/Main;->chatViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatViewUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setChatViewUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7196
    # getter for: Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chimeranft/core/OpenTrace;->reset()V

    .line 7197
    # getter for: Lcom/chimeranft/core/Main;->typingWindowUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getTypingWindowUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setTypingWindowUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7198
    # getter for: Lcom/chimeranft/core/Main;->transitionUnhooks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getTransitionUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e5
    if-ge v4, v2, :cond_f6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 7200
    invoke-direct {p0, v5}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_e5

    :catchall_f3
    move-exception v0

    goto/16 :goto_35f

    .line 7205
    :cond_f6
    # getter for: Lcom/chimeranft/core/Main;->transitionUnhooks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getTransitionUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7206
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setUiTransitionDepth$p(Lcom/chimeranft/core/Main;I)V

    const-wide/16 v1, 0x0

    .line 7207
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;J)V

    .line 7208
    # getter for: Lcom/chimeranft/core/Main;->supporterPopupUnhooks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSupporterPopupUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_10e
    if-ge v6, v5, :cond_11c

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 7210
    invoke-direct {p0, v7}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_10e

    .line 7212
    :cond_11c
    # getter for: Lcom/chimeranft/core/Main;->supporterPopupUnhooks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSupporterPopupUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 7213
    # getter for: Lcom/chimeranft/core/Main;->supporterBulletinActionUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSupporterBulletinActionUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setSupporterBulletinActionUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7214
    # getter for: Lcom/chimeranft/core/Main;->supporterDeepLinkUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSupporterDeepLinkUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setSupporterDeepLinkUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7217
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setSupporterHooksInstalled$p(Lcom/chimeranft/core/Main;Z)V

    .line 7218
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setSupporterScanAttempts$p(Lcom/chimeranft/core/Main;I)V

    .line 7219
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setExteraSourceHookSettled$p(Lcom/chimeranft/core/Main;Z)V

    .line 7220
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setExteraControllerHooksSettled$p(Lcom/chimeranft/core/Main;Z)V

    const/4 v4, 0x0

    .line 7221
    invoke-static {v4}, Lcom/chimeranft/core/Main;->access$setSupporterPopupCallback$cp(Ljava/lang/Runnable;)V

    .line 7222
    # getter for: Lcom/chimeranft/core/Main;->putUserIdentityUnhooks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getPutUserIdentityUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_152
    if-ge v7, v6, :cond_160

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 7224
    invoke-direct {p0, v8}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_152

    .line 7226
    :cond_160
    # getter for: Lcom/chimeranft/core/Main;->putUserIdentityUnhooks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getPutUserIdentityUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7227
    # getter for: Lcom/chimeranft/core/Main;->chatMessageIdentitySlots:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatMessageIdentitySlots$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_170
    if-ge v7, v6, :cond_17e

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/chimeranft/core/HookSlot;

    .line 7229
    invoke-direct {p0, v8}, Lcom/chimeranft/core/Main$Companion;->removeQuietly(Lcom/chimeranft/core/HookSlot;)Lcom/chimeranft/core/HookSlot;

    goto :goto_170

    .line 7231
    :cond_17e
    # getter for: Lcom/chimeranft/core/Main;->chatMessageIdentitySlots:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatMessageIdentitySlots$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7232
    # getter for: Lcom/chimeranft/core/Main;->chatFastLaneUnhooks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatFastLaneUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_18e
    if-ge v7, v6, :cond_19c

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 7234
    invoke-direct {p0, v8}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_18e

    .line 7236
    :cond_19c
    # getter for: Lcom/chimeranft/core/Main;->chatFastLaneUnhooks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatFastLaneUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7237
    # getter for: Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getEmojiFreezeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v5

    if-eqz v5, :cond_1b6

    .line 7238
    # getter for: Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getEmojiFreezeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/chimeranft/core/HookSlot;->remove()Z

    .line 7239
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setEmojiFreezeSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V

    .line 7241
    :cond_1b6
    # getter for: Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getFlingSlots$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7242
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setFlingUnhooked$p(Lcom/chimeranft/core/Main;Z)V

    .line 7243
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setFlingPassActive$p(Lcom/chimeranft/core/Main;Z)V

    .line 7244
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setUiScrolling$p(Lcom/chimeranft/core/Main;Z)V

    .line 7245
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setUiScrollUntilMs$p(Lcom/chimeranft/core/Main;J)V

    .line 7246
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setScrollingList$p(Lcom/chimeranft/core/Main;Ljava/lang/ref/WeakReference;)V

    .line 7247
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setScrollPollScheduled$p(Lcom/chimeranft/core/Main;Z)V

    .line 7249
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->clearDeferredRepaints()V

    .line 7250
    invoke-static {}, Lcom/chimeranft/core/Repaint;->reset()V

    .line 7253
    invoke-static {}, Lcom/chimeranft/core/MemoryPressure;->uninstall()V

    .line 7254
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setChatBroadcastDormant$p(Lcom/chimeranft/core/Main;Z)V

    .line 7255
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setActiveChatFragment$p(Lcom/chimeranft/core/Main;Ljava/lang/ref/WeakReference;)V

    .line 7256
    # invokes: Lcom/chimeranft/core/Main;->invalidateControllerCache()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$invalidateControllerCache(Lcom/chimeranft/core/Main;)V

    .line 7257
    # getter for: Lcom/chimeranft/core/Main;->chatAuthorCacheStampMs:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatAuthorCacheStampMs$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chimeranft/core/LongStamps;->clear()V

    .line 7258
    # getter for: Lcom/chimeranft/core/Main;->chatAuthorFetchMs:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatAuthorFetchMs$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chimeranft/core/LongStamps;->clear()V

    .line 7259
    # getter for: Lcom/chimeranft/core/Main;->chatStampThrottle:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatStampThrottle$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chimeranft/core/LongStamps;->clear()V

    .line 7260
    # getter for: Lcom/chimeranft/core/Main;->channelGiftBumpMs:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChannelGiftBumpMs$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chimeranft/core/LongStamps;->clear()V

    .line 7261
    # getter for: Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getHotSeen$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chimeranft/core/LongStamps;->clear()V

    .line 7262
    # getter for: Lcom/chimeranft/core/Main;->fullSeen:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getFullSeen$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chimeranft/core/LongStamps;->clear()V

    .line 7263
    # getter for: Lcom/chimeranft/core/Main;->eligKey:[J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getEligKey$p(Lcom/chimeranft/core/Main;)[J

    move-result-object v5

    invoke-static {v5, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 7264
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setChatPendingAuthorCount$p(Lcom/chimeranft/core/Main;I)V

    .line 7265
    # getter for: Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatPendingCells$p(Lcom/chimeranft/core/Main;)Ljava/util/WeakHashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_21a
    .catchall {:try_start_24 .. :try_end_21a} :catchall_f3

    .line 7266
    :try_start_21a
    # getter for: Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatPendingCells$p(Lcom/chimeranft/core/Main;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->clear()V

    .line 7267
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_223
    .catchall {:try_start_21a .. :try_end_223} :catchall_35c

    .line 7265
    :try_start_223
    monitor-exit v5

    .line 7268
    # invokes: Lcom/chimeranft/core/Main;->setScrollWindow(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main;->access$setScrollWindow(Lcom/chimeranft/core/Main;J)V

    .line 7269
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setSelectedAccountField$p(Lcom/chimeranft/core/Main;Ljava/lang/reflect/Field;)V

    .line 7270
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setSelectedAccountFieldResolved$p(Lcom/chimeranft/core/Main;Z)V

    .line 7271
    # getter for: Lcom/chimeranft/core/Main;->profilePrepareExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getProfilePrepareExecutor$p(Lcom/chimeranft/core/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5
    :try_end_231
    .catchall {:try_start_223 .. :try_end_231} :catchall_f3

    if-eqz v5, :cond_243

    .line 7275
    :try_start_233
    # getter for: Lcom/chimeranft/core/Main;->profilePrepareExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getProfilePrepareExecutor$p(Lcom/chimeranft/core/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_23d
    .catchall {:try_start_233 .. :try_end_23d} :catchall_23e

    goto :goto_240

    .line 7277
    :catchall_23e
    :try_start_23e
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7279
    :goto_240
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setProfilePrepareExecutor$p(Lcom/chimeranft/core/Main;Ljava/util/concurrent/ExecutorService;)V

    .line 7281
    :cond_243
    # getter for: Lcom/chimeranft/core/Main;->prefetchExec:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getPrefetchExec$p(Lcom/chimeranft/core/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5
    :try_end_247
    .catchall {:try_start_23e .. :try_end_247} :catchall_f3

    if-eqz v5, :cond_259

    .line 7285
    :try_start_249
    # getter for: Lcom/chimeranft/core/Main;->prefetchExec:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getPrefetchExec$p(Lcom/chimeranft/core/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_253
    .catchall {:try_start_249 .. :try_end_253} :catchall_254

    goto :goto_256

    .line 7287
    :catchall_254
    :try_start_254
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7289
    :goto_256
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setPrefetchExec$p(Lcom/chimeranft/core/Main;Ljava/util/concurrent/ExecutorService;)V

    .line 7291
    :cond_259
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v5

    if-eqz v5, :cond_26c

    .line 7292
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/chimeranft/core/GiftHook;->uninstall()V

    .line 7293
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setGiftHook$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/GiftHook;)V

    .line 7295
    :cond_26c
    # getter for: Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftReveal$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v5

    if-eqz v5, :cond_27f

    .line 7296
    # getter for: Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftReveal$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/chimeranft/core/GiftReveal;->stop()V

    .line 7297
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setGiftReveal$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/GiftReveal;)V

    .line 7299
    :cond_27f
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v5

    if-eqz v5, :cond_292

    .line 7300
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/chimeranft/core/SyncClient;->stop()V

    .line 7301
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setSync$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;)V

    .line 7306
    :cond_292
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v5

    if-eqz v5, :cond_2a5

    .line 7307
    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/chimeranft/core/Badges;->stop()V

    .line 7308
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setBadges$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Badges;)V
    :try_end_2a5
    .catchall {:try_start_254 .. :try_end_2a5} :catchall_f3

    .line 7314
    :cond_2a5
    :try_start_2a5
    # getter for: Lcom/chimeranft/core/Main;->currentSlot:I
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getCurrentSlot$p(Lcom/chimeranft/core/Main;)I

    move-result v5

    invoke-static {v5, v3}, Lcom/chimeranft/core/LocalPremium;->apply(IZ)V
    :try_end_2ac
    .catchall {:try_start_2a5 .. :try_end_2ac} :catchall_2ac

    .line 7318
    :catchall_2ac
    :try_start_2ac
    # getter for: Lcom/chimeranft/core/Main;->performance:Lcom/chimeranft/core/PerformanceGovernor;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getPerformance$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/PerformanceGovernor;

    move-result-object v5

    if-eqz v5, :cond_2bf

    .line 7319
    # getter for: Lcom/chimeranft/core/Main;->performance:Lcom/chimeranft/core/PerformanceGovernor;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getPerformance$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/PerformanceGovernor;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/chimeranft/core/PerformanceGovernor;->stop()V

    .line 7320
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setPerformance$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/PerformanceGovernor;)V

    .line 7322
    :cond_2bf
    # getter for: Lcom/chimeranft/core/Main;->profileResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getProfileResumeUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/chimeranft/core/Main;->access$setProfileResumeUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7323
    # getter for: Lcom/chimeranft/core/Main;->profilePauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getProfilePauseUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/chimeranft/core/Main;->access$setProfilePauseUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7324
    # getter for: Lcom/chimeranft/core/Main;->profileDataUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getProfileDataUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/chimeranft/core/Main;->access$setProfileDataUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7325
    # getter for: Lcom/chimeranft/core/Main;->profileTabsUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getProfileTabsUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/chimeranft/core/Main;->access$setProfileTabsUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7326
    # getter for: Lcom/chimeranft/core/Main;->profileCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getProfileCreateUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/chimeranft/core/Main;->access$setProfileCreateUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7327
    # getter for: Lcom/chimeranft/core/Main;->profileViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getProfileViewUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chimeranft/core/Main$Companion;->unhookQuietly(Lde/robv/android/xposed/XC_MethodHook$Unhook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/chimeranft/core/Main;->access$setProfileViewUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V

    .line 7328
    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chimeranft/core/OpenTrace;->reset()V

    .line 7329
    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setBadgeHookRetryPending$p(Lcom/chimeranft/core/Main;Z)V

    .line 7330
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setRemote$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/RemoteIdentity;)V

    .line 7331
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setNotifier$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Notifier;)V

    .line 7332
    const-string v3, "(no hook)"

    invoke-static {v0, v3}, Lcom/chimeranft/core/Main;->access$setHookStatus$p(Lcom/chimeranft/core/Main;Ljava/lang/String;)V

    .line 7333
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setStore$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Store;)V

    .line 7334
    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setIdentity$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Identity;)V

    .line 7337
    invoke-direct {p0}, Lcom/chimeranft/core/Main$Companion;->uninstallCrashHandler()V

    .line 7338
    invoke-static {}, Lcom/chimeranft/core/Safe;->swallowed()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_32a

    const-string v0, ""

    goto :goto_344

    :cond_32a
    invoke-static {}, Lcom/chimeranft/core/Safe;->swallowed()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " | safety["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " swallowed]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7339
    :goto_344
    invoke-static {}, Lcom/chimeranft/core/Safe;->reset()V

    .line 7340
    invoke-static {}, Lcom/chimeranft/core/UiGuard;->reset()V

    .line 7341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdown ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_35c
    move-exception v0

    .line 7265
    monitor-exit v5

    throw v0
    :try_end_35f
    .catchall {:try_start_2ac .. :try_end_35f} :catchall_f3

    .line 7344
    :goto_35f
    invoke-virtual {p0, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHUTDOWN FATAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final stringify(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7

    .line 7364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-eqz p1, :cond_46

    const/4 v3, 0x6

    if-ge v2, v3, :cond_46

    .line 7368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7369
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 7370
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7371
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 7372
    array-length v4, v3

    if-lez v4, :cond_38

    const-string v4, " @ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7373
    :cond_38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 7374
    const-string v3, " <- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 7377
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final takeUpgradeAttrs(J)Ljava/util/ArrayList;
    .registers 4

    const/4 v0, 0x0

    .line 6469
    :try_start_1
    invoke-static {p1, p2}, Lcom/chimeranft/core/UpgradeAttrs;->take(J)Ljava/lang/Object;

    move-result-object p1

    .line 6470
    instance-of p2, p1, Ljava/util/ArrayList;

    if-eqz p2, :cond_c

    check-cast p1, Ljava/util/ArrayList;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    return-object p1

    :catchall_c
    :cond_c
    return-object v0
.end method

.method public final textLayoutIsHeavy(IZ)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p2, :cond_8

    if-le p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p1, 0x0

    return p1

    :cond_8
    :goto_8
    return v0
.end method

.method public final transitionEndClears(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final transitionOpenAt(JJ)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_c

    cmp-long v0, p1, p3

    if-gez v0, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final trimCaches(Z)V
    .registers 4

    .line 5034
    # getter for: Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getInstance$cp()Lcom/chimeranft/core/Main;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_6f

    .line 5038
    :cond_7
    :try_start_7
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-eqz v1, :cond_17

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/GiftHook;->trimCaches(Z)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_17

    .line 5044
    :catchall_17
    :cond_17
    :try_start_17
    # getter for: Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftReveal$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v1

    if-eqz v1, :cond_29

    # getter for: Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftReveal$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/GiftReveal;->trimCaches(Z)V
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    goto :goto_29

    :catchall_28
    nop

    :cond_29
    :goto_29
    if-nez p1, :cond_2c

    goto :goto_6f

    .line 5053
    :cond_2c
    :try_start_2c
    # getter for: Lcom/chimeranft/core/Main;->chatStampThrottle:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatStampThrottle$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chimeranft/core/LongStamps;->clear()V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_33

    .line 5059
    :catchall_33
    :try_start_33
    # getter for: Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getHotSeen$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chimeranft/core/LongStamps;->clear()V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3a

    .line 5065
    :catchall_3a
    :try_start_3a
    # getter for: Lcom/chimeranft/core/Main;->chatAuthorCacheStampMs:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatAuthorCacheStampMs$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chimeranft/core/LongStamps;->clear()V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_41

    .line 5071
    :catchall_41
    :try_start_41
    # getter for: Lcom/chimeranft/core/Main;->chatAuthorFetchMs:Lcom/chimeranft/core/LongStamps;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatAuthorFetchMs$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chimeranft/core/LongStamps;->clear()V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_48

    .line 5077
    :catchall_48
    :try_start_48
    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object p1

    if-eqz p1, :cond_58

    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chimeranft/core/RemoteIdentity;->trimCaches()V
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_58

    .line 5085
    :catchall_58
    :cond_58
    :try_start_58
    # getter for: Lcom/chimeranft/core/Main;->ATTR_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getATTR_CACHE$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_5f

    .line 5091
    :catchall_5f
    :try_start_5f
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p1

    if-eqz p1, :cond_6f

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chimeranft/core/SyncClient;->trimCaches()V
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_6f

    :catchall_6f
    :cond_6f
    :goto_6f
    return-void
.end method

.method public final updateGift(JLjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 6882
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6883
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6884
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_42

    .line 6885
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/chimeranft/core/Store;->updateGiftEntry(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6886
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6887
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    if-eqz p2, :cond_30

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6888
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateGift | "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_10

    return-object p1

    .line 6891
    :goto_42
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UPDGIFT FATAL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final updateGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 6901
    :try_start_0
    invoke-virtual {p0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 6902
    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 6903
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "(not initialized)"

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_42

    .line 6904
    :cond_12
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Store;->updateGiftEntries(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6905
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 6906
    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    if-eqz p2, :cond_30

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    .line 6907
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateGifts | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_10

    return-object p1

    .line 6910
    :goto_42
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPDGIFTS FATAL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
