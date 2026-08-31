.class public final Lcom/chimeranft/core/GiftReveal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AU:Ljava/lang/String;

.field public static final Companion:Lcom/chimeranft/core/GiftReveal$Companion;

.field private static final FIREWORKS_DEFER_STEP_MS:J

.field private static final FIREWORKS_MAX_DEFERRALS:I

.field private static final FLAG_FROM_ID:I

.field private static final FLAG_OUT:I

.field private static final FLAG_RESALE_AMOUNT:I

.field private static final FLEX_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final LA:Ljava/lang/String;

.field private static final MC:Ljava/lang/String;

.field private static final MO:Ljava/lang/String;

.field private static final MS:Ljava/lang/String;

.field private static final NO_MATCH:Ljava/lang/Object;

.field private static final SERVICE_UID:J

.field private static final TL_ACTION:Ljava/lang/String;

.field private static final TL_ACTION_OFFER:Ljava/lang/String;

.field private static final TL_ACTION_OFFER_DECLINED:Ljava/lang/String;

.field private static final TL_ACTION_PREMIUM:Ljava/lang/String;

.field private static final TL_ACTION_SENT:Ljava/lang/String;

.field private static final TL_MSG:Ljava/lang/String;

.field private static final TL_MSG_SERVICE:Ljava/lang/String;

.field private static final TL_PEER_USER:Ljava/lang/String;

.field private static final TL_STARS_AMOUNT:Ljava/lang/String;

.field private static final TL_TON_AMOUNT:Ljava/lang/String;

.field private static final TL_TWE:Ljava/lang/String;

.field private static final UC:Ljava/lang/String;

.field private static final offerMessages:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private volatile dialogReloadsSkipped:J

.field private volatile duplicatesSuppressed:J

.field private final fastLane:Lcom/chimeranft/core/GiftFastLane;

.field private volatile lastFireworksMs:J

.field private volatile lastResult:Ljava/lang/String;

.field private volatile messageObjectConstructor:Ljava/lang/reflect/Constructor;

.field private volatile messageObjectSetType:Ljava/lang/reflect/Method;

.field private final messageStoreExecutor:Ljava/util/concurrent/ExecutorService;

.field private final messagesControllers:Ljava/util/concurrent/ConcurrentHashMap;

.field private final offerCards:Ljava/util/concurrent/ConcurrentHashMap;

.field private final offerCardsByOffer:Ljava/util/concurrent/ConcurrentHashMap;

.field private final pendingConfetti:Ljava/util/Set;

.field private final pendingDialogReloads:Ljava/util/Set;

.field private final recentRevealKeys:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile reflectionCacheHits:J

.field private volatile shown:J

.field private volatile targetedChatUpdates:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/GiftReveal$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/GiftReveal$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->Companion:Lcom/chimeranft/core/GiftReveal$Companion;

    const/16 v0, 0xc

    .line 1830
    sput v0, Lcom/chimeranft/core/GiftReveal;->FIREWORKS_MAX_DEFERRALS:I

    const-wide/16 v0, 0xdc

    .line 1831
    sput-wide v0, Lcom/chimeranft/core/GiftReveal;->FIREWORKS_DEFER_STEP_MS:J

    .line 1833
    const-string v0, "org.telegram.messenger.UserConfig"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    .line 1834
    const-string v0, "org.telegram.messenger.MessagesController"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->MC:Ljava/lang/String;

    .line 1835
    const-string v0, "org.telegram.messenger.MessagesStorage"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->MS:Ljava/lang/String;

    .line 1836
    const-string v0, "org.telegram.messenger.AndroidUtilities"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->AU:Ljava/lang/String;

    .line 1837
    const-string v0, "org.telegram.messenger.MessageObject"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->MO:Ljava/lang/String;

    .line 1838
    const-string v0, "org.telegram.ui.LaunchActivity"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->LA:Ljava/lang/String;

    .line 1839
    const-string v0, "org.telegram.tgnet.TLRPC$TL_messageService"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    .line 1840
    const-string v0, "org.telegram.tgnet.TLRPC$TL_messageActionStarGiftUnique"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_ACTION:Ljava/lang/String;

    .line 1841
    const-string v0, "org.telegram.tgnet.TLRPC$TL_messageActionStarGiftPurchaseOffer"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_OFFER:Ljava/lang/String;

    .line 1842
    const-string v0, "org.telegram.tgnet.TLRPC$TL_messageActionStarGiftPurchaseOfferDeclined"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_OFFER_DECLINED:Ljava/lang/String;

    .line 1843
    const-string v0, "org.telegram.tgnet.TLRPC$TL_message"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_MSG:Ljava/lang/String;

    const-wide/32 v0, 0xbdb28

    .line 1845
    sput-wide v0, Lcom/chimeranft/core/GiftReveal;->SERVICE_UID:J

    .line 1853
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->offerMessages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1866
    const-string v0, "org.telegram.tgnet.TLRPC$TL_peerUser"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_PEER_USER:Ljava/lang/String;

    const/16 v0, 0x100

    .line 1868
    sput v0, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    const/4 v1, 0x2

    .line 1870
    sput v1, Lcom/chimeranft/core/GiftReveal;->FLAG_OUT:I

    .line 1872
    const-string v1, "org.telegram.tgnet.tl.TL_stars$TL_starsAmount"

    sput-object v1, Lcom/chimeranft/core/GiftReveal;->TL_STARS_AMOUNT:Ljava/lang/String;

    .line 1873
    const-string v1, "org.telegram.tgnet.tl.TL_stars$TL_starsTonAmount"

    sput-object v1, Lcom/chimeranft/core/GiftReveal;->TL_TON_AMOUNT:Ljava/lang/String;

    .line 1874
    sput v0, Lcom/chimeranft/core/GiftReveal;->FLAG_RESALE_AMOUNT:I

    .line 1876
    const-string v0, "org.telegram.tgnet.TLRPC$TL_messageActionStarGift"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_SENT:Ljava/lang/String;

    .line 1877
    const-string v0, "org.telegram.tgnet.TLRPC$TL_messageActionGiftPremium"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_PREMIUM:Ljava/lang/String;

    .line 1878
    const-string v0, "org.telegram.tgnet.TLRPC$TL_textWithEntities"

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->TL_TWE:Ljava/lang/String;

    .line 1893
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    .line 1894
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftReveal;->FLEX_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "(none)"

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->recentRevealKeys:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Lcom/chimeranft/core/GiftFastLane;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftFastLane;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->fastLane:Lcom/chimeranft/core/GiftFastLane;

    .line 29
    const-string v0, "chimeranft-message-store"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Safe;->factory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messageStoreExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->pendingDialogReloads:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messagesControllers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->pendingConfetti:Ljava/util/Set;

    .line 978
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->offerCards:Ljava/util/concurrent/ConcurrentHashMap;

    .line 980
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->offerCardsByOffer:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$buildAnsweredOfferMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftFastLane$Prepared;Lcom/chimeranft/core/GiftReveal$PendingOffer;IZ)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    .registers 5

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/GiftReveal;->buildAnsweredOfferMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;Lcom/chimeranft/core/GiftReveal$PendingOffer;IZ)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildPreparedOfferMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftFastLane$Prepared;JJJIZZLjava/lang/String;Ljava/lang/String;)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    .registers 13

    .line 21
    invoke-direct/range {p0 .. p12}, Lcom/chimeranft/core/GiftReveal;->buildPreparedOfferMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;JJJIZZLjava/lang/String;Ljava/lang/String;)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildPreparedSentMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftFastLane$Prepared;JLjava/lang/String;Z)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    .registers 6

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/chimeranft/core/GiftReveal;->buildPreparedSentMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;JLjava/lang/String;Z)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$bumpDialogs(Lcom/chimeranft/core/GiftReveal;I)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->bumpDialogs(I)V

    return-void
.end method

.method public static final synthetic access$doShow(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;JLjava/lang/String;ZZ)Ljava/lang/String;
    .registers 7

    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/chimeranft/core/GiftReveal;->doShow(Ljava/lang/Object;JLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$doShowPremiumSent(Lcom/chimeranft/core/GiftReveal;JIJ)Ljava/lang/String;
    .registers 6

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/chimeranft/core/GiftReveal;->doShowPremiumSent(JIJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$doShowPurchase(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;JJ)Ljava/lang/String;
    .registers 6

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/chimeranft/core/GiftReveal;->doShowPurchase(Ljava/lang/Object;JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFLEX_METHODS$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 21
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->FLEX_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getMS$cp()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->MS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOfferMessages$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 21
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->offerMessages:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getPendingDialogReloads$p(Lcom/chimeranft/core/GiftReveal;)Ljava/util/Set;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/chimeranft/core/GiftReveal;->pendingDialogReloads:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getUC$cp()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$invokeFlexible(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$navigateAndThen(Lcom/chimeranft/core/GiftReveal;JLjava/lang/Runnable;)Ljava/lang/String;
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/GiftReveal;->navigateAndThen(JLjava/lang/Runnable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postPremiumReveal(Lcom/chimeranft/core/GiftReveal;IJIJZZ)Ljava/lang/String;
    .registers 9

    .line 21
    invoke-direct/range {p0 .. p8}, Lcom/chimeranft/core/GiftReveal;->postPremiumReveal(IJIJZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postPurchaseCard(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJJJ)Ljava/lang/String;
    .registers 9

    .line 21
    invoke-direct/range {p0 .. p8}, Lcom/chimeranft/core/GiftReveal;->postPurchaseCard(Ljava/lang/Object;IJJJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postReveal(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJZZ)Ljava/lang/String;
    .registers 7

    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/chimeranft/core/GiftReveal;->postReveal(Ljava/lang/Object;IJZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postSentReveal(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;Ljava/lang/String;IJZZ)Ljava/lang/String;
    .registers 8

    .line 21
    invoke-direct/range {p0 .. p7}, Lcom/chimeranft/core/GiftReveal;->postSentReveal(Ljava/lang/Object;Ljava/lang/String;IJZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postServiceNotice(Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->postServiceNotice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$publishPreparedMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)Ljava/lang/String;
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->publishPreparedMessage(Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$replaceInOpenChat(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->replaceInOpenChat(Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V

    return-void
.end method

.method public static final synthetic access$runUi(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Runnable;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->runUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$scheduleDelayed(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Runnable;J)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic access$triggerFireworks(Lcom/chimeranft/core/GiftReveal;I)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks(I)V

    return-void
.end method

.method private final armConfetti(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_f

    .line 1459
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->pendingConfetti:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private final buildAnsweredOfferMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;Lcom/chimeranft/core/GiftReveal$PendingOffer;IZ)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_7

    .line 822
    :cond_5
    iget-object p1, p1, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    :goto_7
    if-nez p1, :cond_a

    return-object v0

    .line 823
    :cond_a
    sget-object v1, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v2, "selectedAccount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 824
    sget-object v2, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_OFFER:Ljava/lang/String;

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    return-object v0

    .line 825
    :cond_1c
    const-string v4, "gift"

    invoke-static {v2, v4, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 826
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->getNanoTon()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 p1, 0x1

    cmp-long v8, v4, v6

    if-lez v8, :cond_2e

    const/4 v4, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    if-eqz v4, :cond_34

    .line 827
    sget-object v5, Lcom/chimeranft/core/GiftReveal;->TL_TON_AMOUNT:Ljava/lang/String;

    goto :goto_36

    :cond_34
    sget-object v5, Lcom/chimeranft/core/GiftReveal;->TL_STARS_AMOUNT:Ljava/lang/String;

    :goto_36
    invoke-static {v5}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3d

    return-object v0

    :cond_3d
    if-eqz v4, :cond_44

    .line 828
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->getNanoTon()J

    move-result-wide v6

    goto :goto_48

    :cond_44
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->getStars()J

    move-result-wide v6

    :goto_48
    const-string v4, "amount"

    invoke-static {v5, v4, v6, v7}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 829
    const-string v4, "price"

    invoke-static {v2, v4, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 831
    const-string v4, "accepted"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    xor-int/2addr p1, p4

    .line 832
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p4, "declined"

    invoke-static {v2, p4, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 833
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->getExpiresAt()I

    move-result p1

    int-to-long v4, p1

    const-string p1, "expires_at"

    invoke-static {v2, p1, v4, v5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 834
    sget-object p1, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_78

    return-object v0

    .line 835
    :cond_78
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->getPeerId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object p4

    .line 836
    const-string v4, "id"

    int-to-long v5, p3

    invoke-static {p1, v4, v5, v6}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 837
    const-string p3, "peer_id"

    invoke-static {p1, p3, p4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 838
    const-string p3, "dialog_id"

    invoke-virtual {p2}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->getPeerId()J

    move-result-wide v4

    invoke-static {p1, p3, v4, v5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 839
    invoke-direct {p0, v1}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result p3

    int-to-long v4, p3

    const-string p3, "date"

    invoke-static {p1, p3, v4, v5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 840
    const-string p3, "action"

    invoke-static {p1, p3, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 841
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "unread"

    invoke-static {p1, v2, p3}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 842
    sget v2, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    int-to-long v4, v2

    const-string v2, "flags"

    invoke-static {p1, v2, v4, v5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 843
    const-string v2, "out"

    invoke-static {p1, v2, p3}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 844
    const-string v2, "from_id"

    invoke-static {p1, v2, p4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 845
    const-string p4, "send_state"

    invoke-static {p1, p4, v3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 846
    const-string p4, "media_unread"

    invoke-static {p1, p4, p3}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 847
    invoke-direct {p0, v1, p1}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_cd

    return-object v0

    .line 848
    :cond_cd
    invoke-direct {p0, p3}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    .line 849
    new-instance p4, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    invoke-direct {p4}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;-><init>()V

    .line 850
    invoke-virtual {p4, v1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setAcc(I)V

    .line 851
    invoke-virtual {p2}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->getPeerId()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setPeerId(J)V

    .line 852
    invoke-virtual {p4, v3}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setOutgoing(Z)V

    .line 853
    invoke-virtual {p4, p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMsg(Ljava/lang/Object;)V

    .line 854
    invoke-virtual {p4, p3}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMo(Ljava/lang/Object;)V

    .line 855
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 856
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-virtual {p4, p2}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMessages(Ljava/util/ArrayList;)V

    .line 858
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 859
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-virtual {p4, p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setObjects(Ljava/util/ArrayList;)V

    return-object p4
.end method

.method private final buildPeerUser(J)Ljava/lang/Object;
    .registers 5

    .line 1653
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->TL_PEER_USER:Ljava/lang/String;

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1654
    const-string v1, "user_id"

    invoke-static {v0, v1, p1, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    :cond_d
    return-object v0
.end method

.method private final buildPreparedOfferMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;JJJIZZLjava/lang/String;Ljava/lang/String;)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p11

    const/4 v9, 0x0

    if-nez v1, :cond_13

    move-object v1, v9

    goto :goto_15

    .line 904
    :cond_13
    iget-object v1, v1, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    :goto_15
    if-nez v1, :cond_18

    return-object v9

    .line 905
    :cond_18
    sget-object v10, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v11, "selectedAccount"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 906
    invoke-direct {v0, v10}, Lcom/chimeranft/core/GiftReveal;->clientUserId(I)J

    move-result-wide v13

    if-eqz p10, :cond_2a

    .line 907
    sget-object v11, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_OFFER_DECLINED:Ljava/lang/String;

    goto :goto_2c

    :cond_2a
    sget-object v11, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_OFFER:Ljava/lang/String;

    :goto_2c
    invoke-static {v11}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_33

    return-object v9

    .line 909
    :cond_33
    const-string v15, "gift"

    invoke-static {v11, v15, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    const-wide/16 v15, 0x0

    cmp-long v1, v4, v15

    if-lez v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    if-eqz v1, :cond_46

    .line 913
    sget-object v15, Lcom/chimeranft/core/GiftReveal;->TL_TON_AMOUNT:Ljava/lang/String;

    goto :goto_48

    :cond_46
    sget-object v15, Lcom/chimeranft/core/GiftReveal;->TL_STARS_AMOUNT:Ljava/lang/String;

    :goto_48
    invoke-static {v15}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_4f

    return-object v9

    :cond_4f
    move-wide/from16 v16, v13

    if-eqz v1, :cond_55

    move-wide v12, v4

    goto :goto_57

    :cond_55
    move-wide/from16 v12, p4

    .line 915
    :goto_57
    const-string v1, "amount"

    invoke-static {v15, v1, v12, v13}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 916
    const-string v1, "price"

    invoke-static {v11, v1, v15}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    if-eqz p10, :cond_6b

    .line 919
    const-string v1, "expired"

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11, v1, v12}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_7d

    .line 923
    :cond_6b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v12, "accepted"

    invoke-static {v11, v12, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 924
    const-string v12, "declined"

    invoke-static {v11, v12, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 925
    const-string v1, "expires_at"

    int-to-long v12, v6

    invoke-static {v11, v1, v12, v13}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 927
    :goto_7d
    sget-object v1, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_86

    return-object v9

    .line 929
    :cond_86
    invoke-direct {v0, v2, v3}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v12

    .line 930
    invoke-direct {v0, v10}, Lcom/chimeranft/core/GiftReveal;->newMessageId(I)I

    move-result v13

    .line 931
    const-string v14, "id"

    invoke-static {v1, v14, v13}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 932
    const-string v14, "peer_id"

    invoke-static {v1, v14, v12}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 933
    const-string v14, "dialog_id"

    invoke-static {v1, v14, v2, v3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 934
    const-string v14, "date"

    invoke-direct {v0, v10}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result v15

    invoke-static {v1, v14, v15}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 935
    const-string v14, "action"

    invoke-static {v1, v14, v11}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    xor-int/lit8 v11, v7, 0x1

    .line 936
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v14, "unread"

    invoke-static {v1, v14, v11}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 937
    sget v11, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    if-eqz v7, :cond_bd

    sget v14, Lcom/chimeranft/core/GiftReveal;->FLAG_OUT:I

    goto :goto_be

    :cond_bd
    const/4 v14, 0x0

    :goto_be
    or-int/2addr v11, v14

    const-string v14, "flags"

    invoke-static {v1, v14, v11}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 938
    const-string v11, "out"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v1, v11, v14}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    if-eqz v7, :cond_d5

    move-wide/from16 v14, v16

    .line 939
    invoke-direct {v0, v14, v15}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v12

    :cond_d5
    const-string v11, "from_id"

    invoke-static {v1, v11, v12}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 940
    const-string v11, "send_state"

    const/4 v12, 0x0

    invoke-static {v1, v11, v12}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 941
    const-string v11, "media_unread"

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v11, v12}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 942
    invoke-direct {v0, v10, v1}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_ee

    return-object v9

    .line 944
    :cond_ee
    invoke-direct {v0, v11}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    if-nez p10, :cond_12b

    .line 947
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_fa

    goto :goto_12b

    :cond_fa
    if-nez v7, :cond_101

    .line 950
    sget-object v9, Lcom/chimeranft/core/GiftReveal;->Companion:Lcom/chimeranft/core/GiftReveal$Companion;

    invoke-virtual {v9, v13, v8}, Lcom/chimeranft/core/GiftReveal$Companion;->rememberOfferMessage(ILjava/lang/String;)V

    .line 953
    :cond_101
    iget-object v9, v0, Lcom/chimeranft/core/GiftReveal;->offerCardsByOffer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    new-instance v8, Lcom/chimeranft/core/GiftReveal$PendingOffer;

    invoke-direct {v8}, Lcom/chimeranft/core/GiftReveal$PendingOffer;-><init>()V

    move-object/from16 v9, p12

    .line 955
    invoke-virtual {v8, v9}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->setB64(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v8, v2, v3}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->setPeerId(J)V

    move-wide/from16 v14, p4

    .line 957
    invoke-virtual {v8, v14, v15}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->setStars(J)V

    .line 958
    invoke-virtual {v8, v4, v5}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->setNanoTon(J)V

    .line 959
    invoke-virtual {v8, v6}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->setExpiresAt(I)V

    .line 960
    iget-object v4, v0, Lcom/chimeranft/core/GiftReveal;->offerCards:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_12b
    :goto_12b
    new-instance v4, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    invoke-direct {v4}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;-><init>()V

    .line 963
    invoke-virtual {v4, v10}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setAcc(I)V

    .line 964
    invoke-virtual {v4, v2, v3}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setPeerId(J)V

    .line 965
    invoke-virtual {v4, v7}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setOutgoing(Z)V

    .line 966
    invoke-virtual {v4, v1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMsg(Ljava/lang/Object;)V

    .line 967
    invoke-virtual {v4, v11}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMo(Ljava/lang/Object;)V

    .line 968
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 969
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-virtual {v4, v2}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMessages(Ljava/util/ArrayList;)V

    .line 971
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 972
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-virtual {v4, v1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setObjects(Ljava/util/ArrayList;)V

    return-object v4
.end method

.method private final buildPreparedSentMessage(Lcom/chimeranft/core/GiftFastLane$Prepared;JLjava/lang/String;Z)Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p5

    const/4 v5, 0x0

    if-nez v1, :cond_d

    move-object v6, v5

    goto :goto_f

    .line 995
    :cond_d
    iget-object v6, v1, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    :goto_f
    if-nez v6, :cond_12

    return-object v5

    :cond_12
    if-eqz v1, :cond_13a

    .line 997
    iget-object v1, v1, Lcom/chimeranft/core/GiftFastLane$Prepared;->card:Lcom/chimeranft/core/GiftFastLane$CardTemplate;

    if-nez v1, :cond_1a

    goto/16 :goto_13a

    .line 998
    :cond_1a
    sget-object v7, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v8, "selectedAccount"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 999
    invoke-direct {v0, v7}, Lcom/chimeranft/core/GiftReveal;->clientUserId(I)J

    move-result-wide v10

    .line 1001
    iget-boolean v8, v1, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->unique:Z

    const-string v12, "gift"

    const-string v13, "flags"

    if-eqz v8, :cond_54

    .line 1003
    sget-object v1, Lcom/chimeranft/core/GiftReveal;->TL_ACTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    return-object v5

    .line 1005
    :cond_38
    invoke-static {v1, v12, v6}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1006
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "upgrade"

    invoke-static {v1, v8, v6}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1007
    const-string v8, "saved"

    invoke-static {v1, v8, v6}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1008
    const-string v8, "refunded"

    invoke-static {v1, v8, v6}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1009
    const-string v6, "transferred"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v6, v8}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_a1

    .line 1013
    :cond_54
    sget-object v8, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_SENT:Ljava/lang/String;

    invoke-static {v8}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5d

    return-object v5

    .line 1015
    :cond_5d
    invoke-static {v8, v12, v6}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1016
    const-string v6, "forceIn"

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v6, v12}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1017
    const-string v6, "convert_stars"

    .line 1018
    iget-wide v14, v1, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->convertStars:J

    .line 1017
    invoke-static {v8, v6, v14, v15}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 1019
    invoke-static {v8, v13}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v14

    if-eqz p4, :cond_9d

    .line 1020
    invoke-static/range {p4 .. p4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_83

    goto :goto_9d

    .line 1022
    :cond_83
    invoke-static/range {p4 .. p4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chimeranft/core/GiftReveal;->buildTextWithEntities(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 1023
    const-string v6, "message"

    invoke-static {v8, v6, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const-wide/16 v16, 0x2

    or-long v14, v14, v16

    .line 1025
    :cond_9d
    :goto_9d
    invoke-static {v8, v13, v14, v15}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-object v1, v8

    .line 1027
    :goto_a1
    sget-object v6, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    invoke-static {v6}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_aa

    return-object v5

    .line 1029
    :cond_aa
    invoke-direct {v0, v2, v3}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v8

    .line 1030
    const-string v12, "id"

    invoke-direct {v0, v7}, Lcom/chimeranft/core/GiftReveal;->newMessageId(I)I

    move-result v14

    invoke-static {v6, v12, v14}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1031
    const-string v12, "peer_id"

    invoke-static {v6, v12, v8}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1032
    const-string v12, "dialog_id"

    invoke-static {v6, v12, v2, v3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 1033
    const-string v12, "date"

    invoke-direct {v0, v7}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result v14

    invoke-static {v6, v12, v14}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1034
    const-string v12, "action"

    invoke-static {v6, v12, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    xor-int/lit8 v1, v4, 0x1

    .line 1035
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v12, "unread"

    invoke-static {v6, v12, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1036
    sget v1, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    if-eqz v4, :cond_e1

    sget v12, Lcom/chimeranft/core/GiftReveal;->FLAG_OUT:I

    goto :goto_e2

    :cond_e1
    const/4 v12, 0x0

    :goto_e2
    or-int/2addr v1, v12

    invoke-static {v6, v13, v1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1037
    const-string v1, "out"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v6, v1, v12}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    if-eqz v4, :cond_f5

    .line 1038
    invoke-direct {v0, v10, v11}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v8

    :cond_f5
    const-string v1, "from_id"

    invoke-static {v6, v1, v8}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1039
    const-string v1, "send_state"

    invoke-static {v6, v1, v9}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1040
    const-string v1, "media_unread"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v1, v8}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1041
    invoke-direct {v0, v7, v6}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10d

    return-object v5

    .line 1043
    :cond_10d
    invoke-direct {v0, v1}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    .line 1044
    new-instance v5, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    invoke-direct {v5}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;-><init>()V

    .line 1045
    invoke-virtual {v5, v7}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setAcc(I)V

    .line 1046
    invoke-virtual {v5, v2, v3}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setPeerId(J)V

    .line 1047
    invoke-virtual {v5, v4}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setOutgoing(Z)V

    .line 1048
    invoke-virtual {v5, v6}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMsg(Ljava/lang/Object;)V

    .line 1049
    invoke-virtual {v5, v1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMo(Ljava/lang/Object;)V

    .line 1050
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    invoke-virtual {v5, v2}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setMessages(Ljava/util/ArrayList;)V

    .line 1053
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    invoke-virtual {v5, v2}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->setObjects(Ljava/util/ArrayList;)V

    :cond_13a
    :goto_13a
    return-object v5
.end method

.method private final buildSoldText(Ljava/lang/String;JJJ)Ljava/lang/String;
    .registers 11

    .line 724
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const-string p1, "NFT"

    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_24

    .line 726
    invoke-direct {p0, p4, p5}, Lcom/chimeranft/core/GiftReveal;->formatGram(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " GRAM"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_35

    .line 728
    :cond_24
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u2b50 "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 729
    :goto_35
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    const-string p4, "\u0412\u0430\u0448 \u043f\u043e\u0434\u0430\u0440\u043e\u043a "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u0431\u044b\u043b \u043f\u0440\u043e\u0434\u0430\u043d \u0437\u0430 "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p2, p6, v0

    if-lez p2, :cond_5e

    .line 732
    const-string p2, "\n\u0411\u0430\u043b\u0430\u043d\u0441 \u0437\u0432\u0451\u0437\u0434 \u043f\u043e\u043f\u043e\u043b\u043d\u0435\u043d \u043d\u0430 \u2b50 "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_5e
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final buildTextWithEntities(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 1212
    :try_start_1
    sget-object v1, Lcom/chimeranft/core/GiftReveal;->TL_TWE:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v0

    .line 1214
    :cond_a
    const-string v2, "text"

    invoke-static {v1, v2, p1}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1a

    .line 1217
    :try_start_f
    const-string p1, "entities"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, p1, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_19

    :catchall_19
    return-object v1

    :catchall_1a
    return-object v0
.end method

.method private final bumpDialogs(I)V
    .registers 8

    .line 1708
    const-string v0, "org.telegram.messenger.NotificationCenter"

    .line 1710
    :try_start_2
    const-string v1, "getInstance"

    const/4 v2, 0x1

    .line 1711
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 1710
    invoke-static {v0, v1, v3, v4}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1712
    const-string v1, "dialogsNeedReload"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_35

    if-ltz v0, :cond_35

    .line 1713
    const-string v1, "postNotificationName"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v3, v4, v2

    invoke-direct {p0, p1, v1, v4}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_35

    :catchall_35
    :cond_35
    return-void
.end method

.method private final bumpDialogsCoalesced(I)V
    .registers 5

    .line 1732
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->pendingDialogReloads:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 1733
    :cond_d
    new-instance v0, Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;

    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;-><init>(Lcom/chimeranft/core/GiftReveal;I)V

    .line 1738
    sget-object p1, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1e

    const-wide/16 v1, 0xb4

    goto :goto_20

    :cond_1e
    const-wide/16 v1, 0x48

    .line 1733
    :goto_20
    invoke-direct {p0, v0, v1, v2}, Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final claimReveal(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_9

    .line 378
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 380
    iget-object p4, p0, Lcom/chimeranft/core/GiftReveal;->recentRevealKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    if-eqz p4, :cond_4d

    .line 381
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x7530

    cmp-long p4, v1, v3

    if-gez p4, :cond_4d

    .line 383
    iget-wide p1, p0, Lcom/chimeranft/core/GiftReveal;->duplicatesSuppressed:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/chimeranft/core/GiftReveal;->duplicatesSuppressed:J

    .line 384
    const-string p1, "duplicate reveal suppressed"

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return v0

    .line 387
    :cond_4d
    iget-object p4, p0, Lcom/chimeranft/core/GiftReveal;->recentRevealKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal;->recentRevealKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const/16 p2, 0x100

    if-le p1, p2, :cond_65

    iget-object p1, p0, Lcom/chimeranft/core/GiftReveal;->recentRevealKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_65
    const/4 p1, 0x1

    return p1
.end method

.method private final clientUserId(I)J
    .registers 8

    .line 1535
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1536
    const-string v0, "getClientUserId"

    new-array v1, v5, [Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1537
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2d

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-wide v0

    :catchall_2d
    :cond_2d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final currentTime(I)I
    .registers 8

    .line 1642
    :try_start_0
    const-string v0, "org.telegram.tgnet.ConnectionsManager"

    const-string v1, "getInstance"

    const/4 v2, 0x1

    .line 1643
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 1642
    invoke-static {v0, v1, v3, v2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1644
    const-string v0, "getCurrentTime"

    new-array v1, v5, [Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1645
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2d

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return p1

    .line 1649
    :catchall_2d
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 p1, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method private final doShow(Ljava/lang/Object;JLjava/lang/String;ZZ)Ljava/lang/String;
    .registers 15

    if-nez p1, :cond_5

    .line 1231
    const-string v0, "no-gift"

    return-object v0

    .line 1232
    :cond_5
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v1, "selectedAccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1237
    new-instance v0, Lcom/chimeranft/core/GiftReveal$doShow$card$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/chimeranft/core/GiftReveal$doShow$card$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJZZ)V

    if-eqz p6, :cond_30

    .line 1253
    invoke-direct {p0, p2, p3, v0}, Lcom/chimeranft/core/GiftReveal;->navigateAndThen(JLjava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nav="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1257
    :cond_30
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$doShow$card$1;->run()V

    .line 1258
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return-object v0
.end method

.method private final doShowPremiumSent(JIJ)Ljava/lang/String;
    .registers 17

    .line 456
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v1, "selectedAccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 458
    new-instance v3, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;

    move-object v4, p0

    move-wide v6, p1

    move v8, p3

    move-wide v9, p4

    invoke-direct/range {v3 .. v10}, Lcom/chimeranft/core/GiftReveal$doShowPremiumSent$card$1;-><init>(Lcom/chimeranft/core/GiftReveal;IJIJ)V

    .line 470
    invoke-direct {p0, p1, p2, v3}, Lcom/chimeranft/core/GiftReveal;->navigateAndThen(JLjava/lang/Runnable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "nav="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final doShowPurchase(Ljava/lang/Object;JJ)Ljava/lang/String;
    .registers 19

    if-nez p1, :cond_5

    .line 203
    const-string p1, "buy no-gift"

    return-object p1

    .line 204
    :cond_5
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v1, "selectedAccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 205
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->clientUserId(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1b

    .line 206
    const-string p1, "buy no-self"

    return-object p1

    .line 208
    :cond_1b
    sget-object v1, Lcom/chimeranft/core/GiftReveal;->TL_ACTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_26

    .line 209
    const-string p1, "buy no-action-cls"

    return-object p1

    .line 210
    :cond_26
    const-string v1, "gift"

    invoke-static {v6, v1, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 211
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "upgrade"

    invoke-static {v6, v1, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 212
    const-string v1, "transferred"

    invoke-static {v6, v1, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 213
    const-string v1, "saved"

    invoke-static {v6, v1, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 214
    const-string v1, "refunded"

    invoke-static {v6, v1, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 215
    const-string v1, "flags"

    invoke-static {v6, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v11

    move-object v5, p0

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 216
    invoke-direct/range {v5 .. v12}, Lcom/chimeranft/core/GiftReveal;->stampResaleAmount(Ljava/lang/Object;JJJ)J

    move-result-wide v9

    .line 217
    invoke-static {v6, v1, v9, v10}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 219
    sget-object v7, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    invoke-static {v7}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5d

    .line 220
    const-string p1, "buy no-msg-cls"

    return-object p1

    .line 221
    :cond_5d
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->newMessageId(I)I

    move-result v8

    .line 222
    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v9

    .line 223
    const-string v10, "id"

    invoke-static {v7, v10, v8}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 224
    const-string v10, "peer_id"

    invoke-static {v7, v10, v9}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 225
    const-string v10, "dialog_id"

    invoke-static {v7, v10, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 226
    const-string v10, "date"

    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 227
    const-string v10, "action"

    invoke-static {v7, v10, v6}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 228
    const-string v6, "out"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v6, v10}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 229
    const-string v6, "unread"

    invoke-static {v7, v6, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 230
    sget v6, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    sget v10, Lcom/chimeranft/core/GiftReveal;->FLAG_OUT:I

    or-int/2addr v6, v10

    invoke-static {v7, v1, v6}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 231
    const-string v1, "from_id"

    invoke-static {v7, v1, v9}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 232
    const-string v1, "send_state"

    invoke-static {v7, v1, v2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 233
    const-string v1, "media_unread"

    invoke-static {v7, v1, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0, v0, v7}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_ae

    .line 236
    const-string p1, "buy no-MO"

    return-object p1

    .line 237
    :cond_ae
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->persistMessagesAsync(ILjava/util/ArrayList;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->messagesController(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_e9

    .line 250
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v2

    aput-object v6, v10, v1

    const/4 v6, 0x2

    aput-object v9, v10, v6

    .line 249
    const-string v6, "updateInterfaceWithMessages"

    invoke-direct {p0, p1, v6, v10}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 250
    sget-object v6, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    if-eq p1, v6, :cond_e9

    const/4 p1, 0x1

    goto :goto_ea

    :cond_e9
    const/4 p1, 0x0

    .line 252
    :goto_ea
    invoke-direct {p0, v0, v3, v4}, Lcom/chimeranft/core/GiftReveal;->refreshDialogListIfNeeded(IJ)V

    .line 253
    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/GiftReveal;->isViewingChat(J)Z

    move-result v0

    if-eqz v0, :cond_f7

    const/4 v0, 0x0

    invoke-static {p0, v2, v1, v0}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    .line 254
    :cond_f7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BUY-OK mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " self="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v7, p2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " upd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final doShowSent(Ljava/lang/Object;JLjava/lang/String;ZZ)Ljava/lang/String;
    .registers 17

    if-nez p1, :cond_5

    .line 1082
    const-string v0, "sent no-gift"

    return-object v0

    .line 1083
    :cond_5
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v1, "selectedAccount"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1089
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->Companion:Lcom/chimeranft/core/GiftReveal$Companion;

    # invokes: Lcom/chimeranft/core/GiftReveal$Companion;->isUniqueGift(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/chimeranft/core/GiftReveal$Companion;->access$isUniqueGift(Lcom/chimeranft/core/GiftReveal$Companion;Ljava/lang/Object;)Z

    move-result v0

    const-string v9, "nav="

    if-eqz v0, :cond_3f

    .line 1093
    new-instance v0, Lcom/chimeranft/core/GiftReveal$doShowSent$cardU$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/chimeranft/core/GiftReveal$doShowSent$cardU$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;IJZZ)V

    if-eqz p6, :cond_39

    .line 1105
    invoke-direct {p0, p2, p3, v0}, Lcom/chimeranft/core/GiftReveal;->navigateAndThen(JLjava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1106
    :cond_39
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$doShowSent$cardU$1;->run()V

    .line 1107
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return-object v0

    .line 1112
    :cond_3f
    new-instance v0, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move v7, p5

    move/from16 v8, p6

    move v4, v3

    move-object v3, p4

    invoke-direct/range {v0 .. v8}, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;Ljava/lang/String;IJZZ)V

    if-eqz p6, :cond_62

    .line 1124
    invoke-direct {p0, p2, p3, v0}, Lcom/chimeranft/core/GiftReveal;->navigateAndThen(JLjava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_62
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$doShowSent$card$1;->run()V

    .line 1126
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return-object v0
.end method

.method private final formatGram(J)Ljava/lang/String;
    .registers 8

    const-wide/32 v0, 0x3b9aca00

    .line 737
    div-long v2, p1, v0

    .line 738
    rem-long/2addr p1, v0

    const-wide/32 v0, 0x989680

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_15

    .line 739
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const-wide/16 v0, 0xa

    cmp-long v4, p1, v0

    if-gez v4, :cond_1e

    const-string v0, "0"

    goto :goto_20

    :cond_1e
    const-string v0, ""

    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final hideSpamBar(Ljava/lang/Object;J)V
    .registers 10

    if-eqz p1, :cond_33

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_9

    goto :goto_33

    .line 1525
    :cond_9
    :try_start_9
    const-string v0, "getUser"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {p1, v0, v2, v5}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1526
    const-string v2, "hidePeerSettingsBar"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v4

    aput-object v0, p3, v1

    const/4 p2, 0x2

    const/4 v0, 0x0

    aput-object v0, p3, p2

    invoke-direct {p0, p1, v2, p3}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_33

    :catchall_33
    :cond_33
    :goto_33
    return-void
.end method

.method private final invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    if-nez p1, :cond_5

    .line 1801
    sget-object p1, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    return-object p1

    .line 1802
    :cond_5
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->Companion:Lcom/chimeranft/core/GiftReveal$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p3

    # invokes: Lcom/chimeranft/core/GiftReveal$Companion;->flexibleMethods(Ljava/lang/Class;Ljava/lang/String;I)[Ljava/lang/reflect/Method;
    invoke-static {v0, v1, p2, v2}, Lcom/chimeranft/core/GiftReveal$Companion;->access$flexibleMethods(Lcom/chimeranft/core/GiftReveal$Companion;Ljava/lang/Class;Ljava/lang/String;I)[Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_15

    new-array p2, v0, [Ljava/lang/reflect/Method;

    :cond_15
    array-length v1, p2

    :goto_16
    if-ge v0, v1, :cond_37

    aget-object v2, p2, v0

    .line 1804
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1805
    sget-object v4, Lcom/chimeranft/core/GiftReveal;->Companion:Lcom/chimeranft/core/GiftReveal$Companion;

    # invokes: Lcom/chimeranft/core/GiftReveal$Companion;->coerce([Ljava/lang/Class;[Ljava/lang/Object;)[Ljava/lang/Object;
    invoke-static {v4, v3, p3}, Lcom/chimeranft/core/GiftReveal$Companion;->access$coerce(Lcom/chimeranft/core/GiftReveal$Companion;[Ljava/lang/Class;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1809
    :try_start_26
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_33

    .line 1810
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_34

    :cond_33
    return-object v2

    :catchall_34
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1815
    :cond_37
    sget-object p1, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    return-object p1
.end method

.method private final isChatWithDialog(Ljava/lang/Object;J)Z
    .registers 8

    const/4 v0, 0x0

    .line 1408
    :try_start_1
    const-string v1, "org.telegram.ui.ChatActivity"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2c

    if-eqz p1, :cond_2c

    .line 1409
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2c

    .line 1410
    :cond_12
    const-string v1, "getDialogId"

    new-array v2, v0, [Ljava/lang/Class;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1411
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2c

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2c

    cmp-long p1, v1, p2

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    return p1

    :catchall_2c
    :cond_2c
    :goto_2c
    return v0
.end method

.method private final isViewingChat(J)Z
    .registers 5

    .line 1480
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->LA:Ljava/lang/String;

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    .line 1481
    :cond_a
    const-string v1, "getLastFragment"

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->staticNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_10
    if-nez v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 1482
    const-string v1, "getSafeLastFragment"

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->staticNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1483
    :cond_1a
    invoke-direct {p0, v1, p1, p2}, Lcom/chimeranft/core/GiftReveal;->isChatWithDialog(Ljava/lang/Object;J)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    const/4 p1, 0x0

    return p1
.end method

.method private final messagesController(I)Ljava/lang/Object;
    .registers 7

    .line 1545
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1546
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messagesControllers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1549
    iget-wide v1, p0, Lcom/chimeranft/core/GiftReveal;->reflectionCacheHits:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/GiftReveal;->reflectionCacheHits:J

    return-object v0

    .line 1552
    :cond_14
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->MC:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1553
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 1552
    const-string v3, "getInstance"

    invoke-static {v0, v3, v2, v1}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1554
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal;->messagesControllers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-object v0
.end method

.method private final navigateAndThen(JLjava/lang/Runnable;)Ljava/lang/String;
    .registers 14

    const-wide/16 v0, 0x1f4

    .line 1364
    :try_start_2
    sget-object v2, Lcom/chimeranft/core/GiftReveal;->LA:Ljava/lang/String;

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    move-object v4, v3

    goto :goto_13

    .line 1365
    :cond_d
    const-string v4, "getLastFragment"

    invoke-direct {p0, v2, v4}, Lcom/chimeranft/core/GiftReveal;->staticNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :goto_13
    if-nez v4, :cond_20

    if-eqz v2, :cond_20

    .line 1366
    const-string v4, "getSafeLastFragment"

    invoke-direct {p0, v2, v4}, Lcom/chimeranft/core/GiftReveal;->staticNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_20

    :catchall_1e
    move-exception p1

    goto :goto_83

    .line 1369
    :cond_20
    :goto_20
    invoke-direct {p0, v4, p1, p2}, Lcom/chimeranft/core/GiftReveal;->isChatWithDialog(Ljava/lang/Object;J)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1370
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1371
    const-string p1, "already-there"

    return-object p1

    .line 1374
    :cond_2c
    const-string v2, "org.telegram.ui.ChatActivity"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_1e

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_50

    .line 1380
    :try_start_36
    const-string v7, "of"

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, v5

    invoke-virtual {v2, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_4f

    goto :goto_50

    :catchall_4f
    nop

    :cond_50
    :goto_50
    if-eqz v3, :cond_7d

    if-nez v4, :cond_55

    goto :goto_7d

    .line 1393
    :cond_55
    :try_start_55
    const-string p1, "whenFullyVisible"

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p3, p2, v5

    invoke-direct {p0, v3, p1, p2}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1394
    const-string p2, "presentFragment"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-direct {p0, v4, p2, v2}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v2, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    if-eq p2, v2, :cond_6e

    const/4 v5, 0x1

    :cond_6e
    if-ne p1, v2, :cond_75

    const-wide/16 p1, 0x258

    .line 1395
    invoke-direct {p0, p3, p1, p2}, Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V

    :cond_75
    if-eqz v5, :cond_7a

    .line 1396
    const-string p1, "ok"

    goto :goto_7c

    :cond_7a
    const-string p1, "present-fail"

    :goto_7c
    return-object p1

    .line 1388
    :cond_7d
    :goto_7d
    invoke-direct {p0, p3, v0, v1}, Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V

    .line 1389
    const-string p1, "no-frag"
    :try_end_82
    .catchall {:try_start_55 .. :try_end_82} :catchall_1e

    return-object p1

    .line 1399
    :goto_83
    invoke-direct {p0, p3, v0, v1}, Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V

    .line 1400
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERR "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final newMessageId(I)I
    .registers 8

    .line 1630
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1631
    const-string v0, "getNewMessageId"

    new-array v1, v5, [Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1632
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2d

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return p1

    .line 1636
    :catchall_2d
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method private final newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 14

    const/4 v0, 0x0

    .line 1662
    :try_start_1
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal;->messageObjectConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v1, :cond_26

    .line 1665
    iget-wide v7, p0, Lcom/chimeranft/core/GiftReveal;->reflectionCacheHits:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/chimeranft/core/GiftReveal;->reflectionCacheHits:J

    .line 1666
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v5, v3

    aput-object p1, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1668
    :cond_26
    sget-object v1, Lcom/chimeranft/core/GiftReveal;->MO:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2f

    return-object v0

    .line 1670
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    .line 1672
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 1673
    array-length v9, v8

    if-ne v9, v5, :cond_37

    .line 1674
    aget-object v9, v8, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_37

    .line 1675
    aget-object v9, v8, v3

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_37

    aget-object v9, v8, v2

    if-eq v9, v10, :cond_5b

    goto :goto_37

    .line 1676
    :cond_5b
    aget-object v8, v8, v6

    invoke-virtual {v8, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 1677
    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1678
    iput-object v7, p0, Lcom/chimeranft/core/GiftReveal;->messageObjectConstructor:Ljava/lang/reflect/Constructor;

    .line 1679
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v1, v3

    aput-object p1, v1, v2

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7d

    return-object p1

    :catchall_7d
    :cond_7d
    return-object v0
.end method

.method private final notifyGift(ILjava/lang/Object;)Ljava/lang/String;
    .registers 9

    .line 1499
    :try_start_0
    const-string v0, "org.telegram.messenger.NotificationsController"

    const-string v1, "getInstance"

    const/4 v2, 0x1

    .line 1500
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 1499
    invoke-static {v0, v1, v3, v4}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1f

    .line 1501
    const-string p1, "no-nc"

    return-object p1

    :catchall_1d
    move-exception p1

    goto :goto_49

    .line 1502
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    const-string p2, "processNewMessages"

    const/4 v1, 0x4

    .line 1505
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, v1, v2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1504
    invoke-direct {p0, p1, p2, v1}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1506
    sget-object p2, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    if-ne p1, p2, :cond_46

    const-string p1, "no-method"

    return-object p1

    :cond_46
    const-string p1, "ok"
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_1d

    return-object p1

    .line 1509
    :goto_49
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERR "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final offerIdForMessage(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/GiftReveal;->Companion:Lcom/chimeranft/core/GiftReveal$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/GiftReveal$Companion;->offerIdForMessage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final openSheet(Ljava/lang/Object;IJ)Ljava/lang/String;
    .registers 15

    .line 1566
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->LA:Ljava/lang/String;

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_15

    .line 1567
    :cond_b
    const-string v2, "instance"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_1c

    .line 1568
    const-string p1, "no-activity"

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_89

    .line 1569
    :cond_1c
    const-string v2, "org.telegram.ui.Stars.StarGiftSheet"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_27

    .line 1570
    const-string p1, "no-cls"

    return-object p1

    .line 1572
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 1574
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1575
    array-length v8, v7

    if-ne v8, v5, :cond_2f

    aget-object v8, v7, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_2f

    aget-object v7, v7, v4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_2f

    goto :goto_53

    :cond_52
    move-object v3, v1

    :goto_53
    if-nez v3, :cond_58

    .line 1580
    const-string p1, "no-ctor"

    return-object p1

    .line 1581
    :cond_58
    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1582
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p4, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p4, v2

    aput-object p2, p4, v6

    aput-object p3, p4, v4

    const/4 p2, 0x3

    aput-object v1, p4, p2

    invoke-virtual {v3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1583
    const-string p3, "set"

    new-array p4, v6, [Ljava/lang/Object;

    aput-object p1, p4, v2

    invoke-direct {p0, p2, p3, p4}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    const-string p1, "show"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1, p3}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    invoke-direct {p0, p2}, Lcom/chimeranft/core/GiftReveal;->sheetFireworks(Ljava/lang/Object;)V

    .line 1588
    const-string p1, "ok"
    :try_end_88
    .catchall {:try_start_0 .. :try_end_88} :catchall_1a

    return-object p1

    .line 1591
    :goto_89
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERR "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final persistMessagesAsync(ILjava/util/ArrayList;)V
    .registers 5

    .line 362
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messageStoreExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;-><init>(ILcom/chimeranft/core/GiftReveal;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final postPremiumReveal(IJIJZZ)Ljava/lang/String;
    .registers 22

    move-wide v0, p2

    move/from16 v2, p4

    .line 476
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/GiftReveal;->clientUserId(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, p5, v5

    if-gtz v7, :cond_14

    .line 477
    sget-object v5, Lcom/chimeranft/core/GiftHook;->Companion:Lcom/chimeranft/core/GiftHook$Companion;

    invoke-virtual {v5, v2}, Lcom/chimeranft/core/GiftHook$Companion;->premiumStarsForMonths(I)J

    move-result-wide v5

    goto :goto_16

    :cond_14
    move-wide/from16 v5, p5

    .line 478
    :goto_16
    sget-object v7, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_PREMIUM:Ljava/lang/String;

    invoke-static {v7}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_21

    .line 479
    const-string p1, "prem no-action-cls"

    return-object p1

    .line 483
    :cond_21
    const-string v8, "months"

    invoke-static {v7, v8, v2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    const/4 v8, 0x1

    .line 484
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x1e

    mul-long v9, v9, v11

    const-string v11, "days"

    invoke-static {v7, v11, v9, v10}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 487
    :try_start_35
    const-string v9, "currency"

    const-string v10, "XTR"

    invoke-static {v7, v9, v10}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3c

    .line 493
    :catchall_3c
    :try_start_3c
    const-string v9, "amount"

    invoke-static {v7, v9, v5, v6}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_42

    goto :goto_43

    :catchall_42
    nop

    .line 497
    :goto_43
    sget-object v5, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    invoke-static {v5}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4e

    .line 498
    const-string p1, "prem no-msg-cls"

    return-object p1

    .line 499
    :cond_4e
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/GiftReveal;->newMessageId(I)I

    move-result v6

    .line 500
    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v9

    if-eqz p7, :cond_5d

    .line 501
    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_5e

    :cond_5d
    move-object v3, v9

    .line 502
    :goto_5e
    const-string v4, "id"

    invoke-static {v5, v4, v6}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 503
    const-string v4, "peer_id"

    invoke-static {v5, v4, v9}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 504
    const-string v4, "dialog_id"

    invoke-static {v5, v4, v0, v1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 505
    const-string v4, "date"

    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result v9

    invoke-static {v5, v4, v9}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 506
    const-string v4, "action"

    invoke-static {v5, v4, v7}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    xor-int/lit8 v4, p7, 0x1

    .line 507
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "unread"

    invoke-static {v5, v7, v4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 508
    sget v4, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    const/4 v7, 0x0

    if-eqz p7, :cond_8e

    sget v9, Lcom/chimeranft/core/GiftReveal;->FLAG_OUT:I

    goto :goto_8f

    :cond_8e
    const/4 v9, 0x0

    :goto_8f
    or-int/2addr v4, v9

    const-string v9, "flags"

    invoke-static {v5, v9, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 509
    const-string v4, "out"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v5, v4, v9}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 510
    const-string v4, "from_id"

    invoke-static {v5, v4, v3}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 511
    const-string v3, "send_state"

    invoke-static {v5, v3, v7}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 512
    const-string v3, "media_unread"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v3, v4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 514
    invoke-direct {p0, p1, v5}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b8

    .line 515
    const-string p1, "prem no-MO"

    return-object p1

    .line 516
    :cond_b8
    invoke-direct {p0, v3}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    .line 518
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 519
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-direct {p0, p1, v4}, Lcom/chimeranft/core/GiftReveal;->persistMessagesAsync(ILjava/util/ArrayList;)V

    .line 525
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/GiftReveal;->messagesController(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_eb

    .line 528
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v7

    aput-object v5, v11, v8

    const/4 v5, 0x2

    aput-object v10, v11, v5

    .line 527
    const-string v5, "updateInterfaceWithMessages"

    invoke-direct {p0, v4, v5, v11}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_eb
    invoke-direct/range {p0 .. p3}, Lcom/chimeranft/core/GiftReveal;->refreshDialogListIfNeeded(IJ)V

    const/4 v5, 0x0

    if-eqz p8, :cond_f7

    .line 534
    invoke-static {p0, v7, v8, v5}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    .line 535
    const-string p1, "confetti=now"

    goto :goto_12d

    .line 539
    :cond_f7
    invoke-direct {p0, v4, v0, v1}, Lcom/chimeranft/core/GiftReveal;->hideSpamBar(Ljava/lang/Object;J)V

    .line 540
    invoke-direct {p0, p1, v3}, Lcom/chimeranft/core/GiftReveal;->notifyGift(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->isViewingChat(J)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 543
    invoke-static {p0, v7, v8, v5}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confetti=now(in-chat) notif="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_12d

    .line 548
    :cond_119
    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->armConfetti(J)V

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confetti=armed notif="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 552
    :goto_12d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PREM-OK mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " months="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final postPurchaseCard(Ljava/lang/Object;IJJJ)Ljava/lang/String;
    .registers 24

    move/from16 v0, p2

    move-wide/from16 v1, p3

    .line 303
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->clientUserId(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_11

    .line 304
    const-string v0, "buyFor no-self"

    return-object v0

    .line 306
    :cond_11
    sget-object v5, Lcom/chimeranft/core/GiftReveal;->TL_ACTION:Ljava/lang/String;

    invoke-static {v5}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1c

    .line 307
    const-string v0, "buyFor no-action-cls"

    return-object v0

    .line 308
    :cond_1c
    const-string v5, "gift"

    move-object/from16 v6, p1

    invoke-static {v7, v5, v6}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 309
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "upgrade"

    invoke-static {v7, v6, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 310
    const-string v6, "transferred"

    invoke-static {v7, v6, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 311
    const-string v6, "saved"

    invoke-static {v7, v6, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 312
    const-string v6, "refunded"

    invoke-static {v7, v6, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 313
    const-string v14, "flags"

    invoke-static {v7, v14}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v12

    move-object v6, p0

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    .line 314
    invoke-direct/range {v6 .. v13}, Lcom/chimeranft/core/GiftReveal;->stampResaleAmount(Ljava/lang/Object;JJJ)J

    move-result-wide v10

    .line 315
    invoke-static {v7, v14, v10, v11}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 317
    sget-object v8, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    invoke-static {v8}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_56

    .line 318
    const-string v0, "buyFor no-msg-cls"

    return-object v0

    .line 319
    :cond_56
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->newMessageId(I)I

    move-result v9

    .line 320
    invoke-direct {p0, v1, v2}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v10

    .line 321
    const-string v11, "id"

    invoke-static {v8, v11, v9}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 322
    const-string v11, "peer_id"

    invoke-static {v8, v11, v10}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 323
    const-string v10, "dialog_id"

    invoke-static {v8, v10, v1, v2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 324
    const-string v10, "date"

    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result v11

    invoke-static {v8, v10, v11}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 325
    const-string v10, "action"

    invoke-static {v8, v10, v7}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 326
    const-string v7, "out"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v7, v10}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 327
    const-string v7, "unread"

    invoke-static {v8, v7, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 328
    sget v7, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    sget v10, Lcom/chimeranft/core/GiftReveal;->FLAG_OUT:I

    or-int/2addr v7, v10

    invoke-static {v8, v14, v7}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 329
    const-string v7, "from_id"

    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v7, v3}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 330
    const-string v3, "send_state"

    const/4 v4, 0x0

    invoke-static {v8, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 331
    const-string v3, "media_unread"

    invoke-static {v8, v3, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0, v0, v8}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_ac

    .line 334
    const-string v0, "buyFor no-MO"

    return-object v0

    .line 335
    :cond_ac
    invoke-direct {p0, v3}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    .line 337
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-direct {p0, v0, v5}, Lcom/chimeranft/core/GiftReveal;->persistMessagesAsync(ILjava/util/ArrayList;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->messagesController(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 348
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    const/4 v3, 0x1

    aput-object v7, v8, v3

    const/4 v7, 0x2

    aput-object v5, v8, v7

    .line 347
    const-string v5, "updateInterfaceWithMessages"

    invoke-direct {p0, v0, v5, v8}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    sget-object v5, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    if-eq v0, v5, :cond_e6

    const/4 v4, 0x1

    .line 352
    :cond_e6
    new-instance v0, Lcom/chimeranft/core/GiftReveal$postPurchaseCard$1;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/GiftReveal$postPurchaseCard$1;-><init>(Lcom/chimeranft/core/GiftReveal;)V

    const-wide/16 v7, 0xb4

    invoke-direct {p0, v0, v7, v8}, Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUYFOR-OK mid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " peer="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p5

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " upd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final postReveal(Ljava/lang/Object;IJZZ)Ljava/lang/String;
    .registers 15

    .line 1271
    invoke-direct {p0, p2}, Lcom/chimeranft/core/GiftReveal;->clientUserId(I)J

    move-result-wide v0

    .line 1274
    sget-object v2, Lcom/chimeranft/core/GiftReveal;->TL_ACTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1275
    const-string p1, "no-action-cls"

    return-object p1

    .line 1276
    :cond_f
    const-string v3, "gift"

    invoke-static {v2, v3, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1277
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "upgrade"

    invoke-static {v2, v3, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1278
    const-string v3, "saved"

    invoke-static {v2, v3, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1279
    const-string v3, "refunded"

    invoke-static {v2, v3, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1280
    const-string v3, "transferred"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1283
    sget-object v3, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_37

    .line 1284
    const-string p1, "no-msg-cls"

    return-object p1

    .line 1285
    :cond_37
    invoke-direct {p0, p2}, Lcom/chimeranft/core/GiftReveal;->newMessageId(I)I

    move-result v4

    .line 1286
    invoke-direct {p0, p3, p4}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz p5, :cond_46

    .line 1287
    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_47

    :cond_46
    move-object v0, v5

    .line 1288
    :goto_47
    const-string v1, "id"

    invoke-static {v3, v1, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1289
    const-string v1, "peer_id"

    invoke-static {v3, v1, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1290
    const-string v1, "dialog_id"

    invoke-static {v3, v1, p3, p4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 1291
    const-string v1, "date"

    invoke-direct {p0, p2}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result v5

    invoke-static {v3, v1, v5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1292
    const-string v1, "action"

    invoke-static {v3, v1, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    xor-int/lit8 v1, p5, 0x1

    .line 1293
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "unread"

    invoke-static {v3, v2, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1294
    sget v1, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    const/4 v2, 0x0

    if-eqz p5, :cond_77

    sget v5, Lcom/chimeranft/core/GiftReveal;->FLAG_OUT:I

    goto :goto_78

    :cond_77
    const/4 v5, 0x0

    :goto_78
    or-int/2addr v1, v5

    const-string v5, "flags"

    invoke-static {v3, v5, v1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1295
    const-string v1, "out"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1296
    const-string v1, "from_id"

    invoke-static {v3, v1, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1301
    const-string v0, "send_state"

    invoke-static {v3, v0, v2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1302
    const-string v0, "media_unread"

    invoke-static {v3, v0, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1305
    invoke-direct {p0, p2, v3}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9f

    .line 1306
    const-string p1, "no-MO"

    return-object p1

    .line 1307
    :cond_9f
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-direct {p0, p2, v0}, Lcom/chimeranft/core/GiftReveal;->persistMessagesAsync(ILjava/util/ArrayList;)V

    .line 1317
    invoke-direct {p0, p2}, Lcom/chimeranft/core/GiftReveal;->messagesController(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_da

    .line 1321
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v1, v7, v3

    const/4 v1, 0x2

    aput-object v6, v7, v1

    .line 1320
    const-string v1, "updateInterfaceWithMessages"

    invoke-direct {p0, v0, v1, v7}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1321
    sget-object v5, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    if-eq v1, v5, :cond_da

    const/4 v1, 0x1

    goto :goto_db

    :cond_da
    const/4 v1, 0x0

    .line 1325
    :goto_db
    invoke-direct {p0, p2, p3, p4}, Lcom/chimeranft/core/GiftReveal;->refreshDialogListIfNeeded(IJ)V

    const/4 v5, 0x0

    if-eqz p6, :cond_e7

    .line 1331
    invoke-static {p0, v2, v3, v5}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    .line 1332
    const-string p1, "confetti=now"

    goto :goto_11d

    .line 1338
    :cond_e7
    invoke-direct {p0, v0, p3, p4}, Lcom/chimeranft/core/GiftReveal;->hideSpamBar(Ljava/lang/Object;J)V

    .line 1340
    invoke-direct {p0, p2, p1}, Lcom/chimeranft/core/GiftReveal;->notifyGift(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1341
    invoke-direct {p0, p3, p4}, Lcom/chimeranft/core/GiftReveal;->isViewingChat(J)Z

    move-result p2

    if-eqz p2, :cond_109

    .line 1343
    invoke-static {p0, v2, v3, v5}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    .line 1344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "confetti=now(in-chat) notif="

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11d

    .line 1348
    :cond_109
    invoke-direct {p0, p3, p4}, Lcom/chimeranft/core/GiftReveal;->armConfetti(J)V

    .line 1349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "confetti=armed notif="

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1352
    :goto_11d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "OK mid="

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " peer="

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " out="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " upd="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final postSentReveal(Ljava/lang/Object;Ljava/lang/String;IJZZ)Ljava/lang/String;
    .registers 16

    .line 1131
    const-string v0, "convert_stars"

    invoke-direct {p0, p3}, Lcom/chimeranft/core/GiftReveal;->clientUserId(I)J

    move-result-wide v1

    .line 1132
    sget-object v3, Lcom/chimeranft/core/GiftReveal;->TL_ACTION_SENT:Ljava/lang/String;

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    .line 1133
    const-string p1, "sent no-action-cls"

    return-object p1

    .line 1134
    :cond_11
    const-string v4, "gift"

    invoke-static {v3, v4, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1135
    const-string v4, "forceIn"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1138
    :try_start_1d
    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v0, v4, v5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_25

    goto :goto_26

    :catchall_25
    nop

    .line 1142
    :goto_26
    const-string p1, "flags"

    invoke-static {v3, p1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    if-eqz p2, :cond_56

    .line 1143
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_56

    .line 1145
    :cond_3d
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/chimeranft/core/GiftReveal;->buildTextWithEntities(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_56

    .line 1146
    const-string v0, "message"

    invoke-static {v3, v0, p2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    const-wide/16 v6, 0x2

    or-long/2addr v4, v6

    .line 1148
    :cond_56
    :goto_56
    invoke-static {v3, p1, v4, v5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 1150
    sget-object p2, Lcom/chimeranft/core/GiftReveal;->TL_MSG_SERVICE:Ljava/lang/String;

    invoke-static {p2}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_64

    .line 1151
    const-string p1, "sent no-msg-cls"

    return-object p1

    .line 1152
    :cond_64
    invoke-direct {p0, p3}, Lcom/chimeranft/core/GiftReveal;->newMessageId(I)I

    move-result v0

    .line 1153
    invoke-direct {p0, p4, p5}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v4

    if-eqz p6, :cond_73

    .line 1154
    invoke-direct {p0, v1, v2}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_74

    :cond_73
    move-object v1, v4

    .line 1155
    :goto_74
    const-string v2, "id"

    invoke-static {p2, v2, v0}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1156
    const-string v2, "peer_id"

    invoke-static {p2, v2, v4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1157
    const-string v2, "dialog_id"

    invoke-static {p2, v2, p4, p5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 1158
    const-string v2, "date"

    invoke-direct {p0, p3}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1159
    const-string v2, "action"

    invoke-static {p2, v2, v3}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    xor-int/lit8 v2, p6, 0x1

    .line 1160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "unread"

    invoke-static {p2, v3, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1161
    sget v2, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    const/4 v3, 0x0

    if-eqz p6, :cond_a4

    sget v4, Lcom/chimeranft/core/GiftReveal;->FLAG_OUT:I

    goto :goto_a5

    :cond_a4
    const/4 v4, 0x0

    :goto_a5
    or-int/2addr v2, v4

    invoke-static {p2, p1, v2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1162
    const-string p1, "out"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, p1, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1163
    const-string p1, "from_id"

    invoke-static {p2, p1, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1164
    const-string p1, "send_state"

    invoke-static {p2, p1, v3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 1165
    const-string p1, "media_unread"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1167
    invoke-direct {p0, p3, p2}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_cc

    .line 1168
    const-string p1, "sent no-MO"

    return-object p1

    .line 1169
    :cond_cc
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    .line 1171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    invoke-direct {p0, p3, v1}, Lcom/chimeranft/core/GiftReveal;->persistMessagesAsync(ILjava/util/ArrayList;)V

    .line 1178
    invoke-direct {p0, p3}, Lcom/chimeranft/core/GiftReveal;->messagesController(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_107

    .line 1182
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    aput-object p2, v6, v2

    const/4 p2, 0x2

    aput-object v5, v6, p2

    .line 1181
    const-string p2, "updateInterfaceWithMessages"

    invoke-direct {p0, v1, p2, v6}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1182
    sget-object v4, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    if-eq p2, v4, :cond_107

    const/4 p2, 0x1

    goto :goto_108

    :cond_107
    const/4 p2, 0x0

    .line 1183
    :goto_108
    invoke-direct {p0, p3, p4, p5}, Lcom/chimeranft/core/GiftReveal;->refreshDialogListIfNeeded(IJ)V

    const/4 v4, 0x0

    if-eqz p7, :cond_114

    .line 1188
    invoke-static {p0, v3, v2, v4}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    .line 1189
    const-string p1, "confetti=now"

    goto :goto_14a

    .line 1193
    :cond_114
    invoke-direct {p0, v1, p4, p5}, Lcom/chimeranft/core/GiftReveal;->hideSpamBar(Ljava/lang/Object;J)V

    .line 1194
    invoke-direct {p0, p3, p1}, Lcom/chimeranft/core/GiftReveal;->notifyGift(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1195
    invoke-direct {p0, p4, p5}, Lcom/chimeranft/core/GiftReveal;->isViewingChat(J)Z

    move-result p3

    if-eqz p3, :cond_136

    .line 1197
    invoke-static {p0, v3, v2, v4}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    .line 1198
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "confetti=now(in-chat) notif="

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14a

    .line 1202
    :cond_136
    invoke-direct {p0, p4, p5}, Lcom/chimeranft/core/GiftReveal;->armConfetti(J)V

    .line 1203
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "confetti=armed notif="

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1206
    :goto_14a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "SENT-OK mid="

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, " peer="

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " out="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " upd="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final postServiceNotice(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 744
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->UC:Ljava/lang/String;

    const-string v1, "selectedAccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 745
    sget-object v1, Lcom/chimeranft/core/GiftReveal;->TL_MSG:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    const-string p1, "notice no-msg-cls"

    return-object p1

    .line 746
    :cond_14
    sget-wide v3, Lcom/chimeranft/core/GiftReveal;->SERVICE_UID:J

    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/GiftReveal;->buildPeerUser(J)Ljava/lang/Object;

    move-result-object v5

    .line 747
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->newMessageId(I)I

    move-result v6

    int-to-long v6, v6

    const-string v8, "id"

    invoke-static {v1, v8, v6, v7}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 748
    const-string v6, "peer_id"

    invoke-static {v1, v6, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 749
    const-string v6, "dialog_id"

    invoke-static {v1, v6, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 750
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->currentTime(I)I

    move-result v6

    int-to-long v6, v6

    const-string v8, "date"

    invoke-static {v1, v8, v6, v7}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 751
    const-string v6, "message"

    invoke-static {v1, v6, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 752
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "out"

    invoke-static {v1, v6, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 753
    const-string v6, "unread"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v6, v7}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 754
    sget v6, Lcom/chimeranft/core/GiftReveal;->FLAG_FROM_ID:I

    int-to-long v6, v6

    const-string v8, "flags"

    invoke-static {v1, v8, v6, v7}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 755
    const-string v6, "from_id"

    invoke-static {v1, v6, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 756
    const-string v5, "send_state"

    invoke-static {v1, v5, v2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 757
    const-string v5, "media_unread"

    invoke-static {v1, v5, p1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 758
    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->newMessageObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6b

    const-string p1, "notice no-MO"

    return-object p1

    .line 759
    :cond_6b
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->setMessageType(Ljava/lang/Object;)V

    .line 760
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 761
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 763
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-direct {p0, v0, v5}, Lcom/chimeranft/core/GiftReveal;->persistMessagesAsync(ILjava/util/ArrayList;)V

    .line 765
    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->messagesController(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9f

    .line 768
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v2

    const/4 v2, 0x1

    aput-object v1, v8, v2

    const/4 v1, 0x2

    aput-object v7, v8, v1

    .line 767
    const-string v1, "updateInterfaceWithMessages"

    invoke-direct {p0, v5, v1, v8}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_9f
    invoke-direct {p0, v0, v3, v4}, Lcom/chimeranft/core/GiftReveal;->refreshDialogListIfNeeded(IJ)V

    .line 770
    invoke-direct {p0, v0, p1}, Lcom/chimeranft/core/GiftReveal;->notifyGift(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOLD-OK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final prepareGift(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V
    .registers 6

    .line 75
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->fastLane:Lcom/chimeranft/core/GiftFastLane;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$prepareGift$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/chimeranft/core/GiftReveal$prepareGift$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    invoke-virtual {v0, p2, v1}, Lcom/chimeranft/core/GiftFastLane;->prepare(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Callback;)V

    return-void
.end method

.method private final prepareGiftBackground(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->fastLane:Lcom/chimeranft/core/GiftFastLane;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/chimeranft/core/GiftReveal$prepareGiftBackground$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    invoke-virtual {v0, p2, v1}, Lcom/chimeranft/core/GiftFastLane;->prepare(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Callback;)V

    return-void
.end method

.method private final publishPreparedMessage(Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_5

    .line 1060
    const-string p1, "SENT-PREPARED missing"

    return-object p1

    .line 1061
    :cond_5
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getAcc()I

    move-result v0

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/GiftReveal;->persistMessagesAsync(ILjava/util/ArrayList;)V

    .line 1062
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getAcc()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/chimeranft/core/GiftReveal;->messagesController(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 1064
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getPeerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getObjects()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v3, 0x2

    aput-object v4, v5, v3

    .line 1063
    const-string v3, "updateInterfaceWithMessages"

    invoke-direct {p0, v0, v3, v5}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1064
    sget-object v4, Lcom/chimeranft/core/GiftReveal;->NO_MATCH:Ljava/lang/Object;

    if-eq v3, v4, :cond_41

    const/4 v1, 0x1

    .line 1065
    :cond_41
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getAcc()I

    move-result v2

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getPeerId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/chimeranft/core/GiftReveal;->refreshDialogListIfNeeded(IJ)V

    .line 1066
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getOutgoing()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1067
    invoke-direct {p0}, Lcom/chimeranft/core/GiftReveal;->schedulePolishedFireworks()V

    goto :goto_7d

    .line 1070
    :cond_56
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getPeerId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/chimeranft/core/GiftReveal;->hideSpamBar(Ljava/lang/Object;J)V

    .line 1071
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getAcc()I

    move-result v0

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getMo()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/chimeranft/core/GiftReveal;->notifyGift(ILjava/lang/Object;)Ljava/lang/String;

    .line 1072
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getPeerId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/chimeranft/core/GiftReveal;->isViewingChat(J)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1073
    invoke-direct {p0}, Lcom/chimeranft/core/GiftReveal;->schedulePolishedFireworks()V

    goto :goto_7d

    .line 1075
    :cond_76
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getPeerId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/chimeranft/core/GiftReveal;->armConfetti(J)V

    .line 1077
    :goto_7d
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getPeerId()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SENT-PREPARED peer="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " upd="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final refreshDialogListIfNeeded(IJ)V
    .registers 8

    .line 1721
    iget-wide v0, p0, Lcom/chimeranft/core/GiftReveal;->targetedChatUpdates:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/GiftReveal;->targetedChatUpdates:J

    .line 1722
    invoke-direct {p0, p2, p3}, Lcom/chimeranft/core/GiftReveal;->isViewingChat(J)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1724
    iget-wide p1, p0, Lcom/chimeranft/core/GiftReveal;->dialogReloadsSkipped:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/chimeranft/core/GiftReveal;->dialogReloadsSkipped:J

    return-void

    .line 1727
    :cond_13
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->bumpDialogsCoalesced(I)V

    return-void
.end method

.method public static final rememberOfferMessage(ILjava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/GiftReveal;->Companion:Lcom/chimeranft/core/GiftReveal$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/GiftReveal$Companion;->rememberOfferMessage(ILjava/lang/String;)V

    return-void
.end method

.method private final replaceInOpenChat(Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V
    .registers 10

    .line 873
    const-string v0, "org.telegram.messenger.NotificationCenter"

    if-nez p1, :cond_5

    goto :goto_55

    .line 876
    :cond_5
    :try_start_5
    const-string v1, "getInstance"

    const/4 v2, 0x1

    .line 877
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getAcc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v5

    .line 876
    invoke-static {v0, v1, v3, v6}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 879
    const-string v3, "replaceMessagesObjects"

    const/4 v4, -0x1

    .line 878
    invoke-static {v0, v3, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_55

    if-gez v0, :cond_2b

    goto :goto_55

    .line 881
    :cond_2b
    const-string v3, "postNotificationName"

    .line 882
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 883
    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getPeerId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->getObjects()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v6, 0x3

    .line 884
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    aput-object p1, v6, v2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x2

    aput-object p1, v6, v4

    .line 883
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v5

    aput-object v6, p1, v2

    .line 881
    invoke-direct {p0, v1, v3, p1}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_53

    return-void

    :catchall_53
    move-exception p1

    goto :goto_56

    :cond_55
    :goto_55
    return-void

    .line 887
    :goto_56
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replaceEXC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return-void
.end method

.method private final runUi(Ljava/lang/Runnable;)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_b

    .line 102
    :cond_3
    const-string v0, "giftReveal.runUi"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_c

    :goto_b
    return-void

    .line 105
    :cond_c
    :try_start_c
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->AU:Ljava/lang/String;

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 106
    const-string v1, "runOnUIThread"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 108
    :cond_26
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2a

    return-void

    .line 111
    :catchall_2a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final scheduleDelayed(Ljava/lang/Runnable;J)V
    .registers 11

    if-nez p1, :cond_3

    goto :goto_b

    .line 1432
    :cond_3
    const-string v0, "giftReveal.delayed"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_c

    :goto_b
    return-void

    .line 1435
    :cond_c
    :try_start_c
    sget-object v0, Lcom/chimeranft/core/GiftReveal;->AU:Ljava/lang/String;

    const-string v1, "runOnUIThread"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1436
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v5

    aput-object p2, p3, v6

    .line 1435
    invoke-static {v0, v1, v3, p3}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2b

    return-void

    .line 1439
    :catchall_2b
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final schedulePolishedFireworks()V
    .registers 3

    .line 1447
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$schedulePolishedFireworks$1;

    invoke-direct {v1, p0}, Lcom/chimeranft/core/GiftReveal$schedulePolishedFireworks$1;-><init>(Lcom/chimeranft/core/GiftReveal;)V

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Main$Companion;->runAfterChatScroll(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final setMessageType(Ljava/lang/Object;)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_23

    .line 1691
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messageObjectSetType:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 1694
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setType"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 1695
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1696
    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messageObjectSetType:Ljava/lang/reflect/Method;

    goto :goto_20

    .line 1699
    :cond_19
    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal;->reflectionCacheHits:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/chimeranft/core/GiftReveal;->reflectionCacheHits:J

    .line 1700
    :goto_20
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_23

    :catchall_23
    :goto_23
    return-void
.end method

.method private final sheetFireworks(Ljava/lang/Object;)V
    .registers 11

    .line 1599
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->allowHeavyEffects()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 1600
    :cond_9
    new-instance v0, Lcom/chimeranft/core/GiftReveal$sheetFireworks$r$1;

    invoke-direct {v0, p1, p0}, Lcom/chimeranft/core/GiftReveal$sheetFireworks$r$1;-><init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftReveal;)V

    .line 1614
    :try_start_e
    sget-object p1, Lcom/chimeranft/core/GiftReveal;->AU:Ljava/lang/String;

    const-string v1, "runOnUIThread"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-wide/16 v7, 0x15e

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v4, v2, v6

    invoke-static {p1, v1, v3, v2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_2f

    return-void

    .line 1619
    :catchall_2f
    :try_start_2f
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$sheetFireworks$r$1;->run()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_32

    :catchall_32
    :goto_32
    return-void
.end method

.method private final stampResaleAmount(Ljava/lang/Object;JJJ)J
    .registers 12

    .line 162
    const-string v0, "amount"

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_19

    .line 164
    sget-object p4, Lcom/chimeranft/core/GiftReveal;->TL_STARS_AMOUNT:Ljava/lang/String;

    invoke-static {p4}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_13

    .line 165
    invoke-static {p4, v0, p2, p3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 166
    :cond_13
    const-string p5, "resale_stars"

    invoke-static {p1, p5, p2, p3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    goto :goto_2b

    :cond_19
    cmp-long p2, p4, v1

    if-lez p2, :cond_2a

    .line 170
    sget-object p2, Lcom/chimeranft/core/GiftReveal;->TL_TON_AMOUNT:Ljava/lang/String;

    invoke-static {p2}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 171
    invoke-static {p2, v0, p4, p5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    :cond_28
    move-object p4, p2

    goto :goto_2b

    :cond_2a
    const/4 p4, 0x0

    :goto_2b
    if-eqz p4, :cond_3a

    .line 173
    const-string p2, "resale_amount"

    invoke-static {p1, p2, p4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    sget p1, Lcom/chimeranft/core/GiftReveal;->FLAG_RESALE_AMOUNT:I

    int-to-long p1, p1

    or-long/2addr p1, p6

    return-wide p1

    :cond_3a
    return-wide p6
.end method

.method private final staticNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1422
    :cond_4
    :try_start_4
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_d

    return-object p1

    :catchall_d
    return-object v0
.end method

.method private final triggerFireworks()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    return-void
.end method

.method private final triggerFireworks(I)V
    .registers 11

    .line 1758
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isChatScrollingNow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1760
    new-instance v1, Lcom/chimeranft/core/GiftReveal$triggerFireworks$1;

    invoke-direct {v1, p0, p1}, Lcom/chimeranft/core/GiftReveal$triggerFireworks$1;-><init>(Lcom/chimeranft/core/GiftReveal;I)V

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Main$Companion;->runAfterChatScroll(Ljava/lang/Runnable;)V

    return-void

    .line 1767
    :cond_11
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    goto :goto_86

    .line 1768
    :cond_1b
    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->criticalRemainingMs()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    cmp-long v7, v3, v5

    if-lez v7, :cond_3d

    .line 1769
    sget v5, Lcom/chimeranft/core/GiftReveal;->FIREWORKS_MAX_DEFERRALS:I

    if-ge p1, v5, :cond_3d

    add-int/2addr p1, v1

    .line 1772
    new-instance v0, Lcom/chimeranft/core/GiftReveal$triggerFireworks$2;

    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/GiftReveal$triggerFireworks$2;-><init>(Lcom/chimeranft/core/GiftReveal;I)V

    .line 1776
    sget-wide v1, Lcom/chimeranft/core/GiftReveal;->FIREWORKS_DEFER_STEP_MS:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    .line 1772
    invoke-direct {p0, v0, v1, v2}, Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 1779
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1782
    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result p1

    if-ne p1, v2, :cond_4a

    const-wide/16 v5, 0xa28

    goto :goto_4c

    :cond_4a
    const-wide/16 v5, 0x4b0

    .line 1783
    :goto_4c
    iget-wide v7, p0, Lcom/chimeranft/core/GiftReveal;->lastFireworksMs:J

    sub-long v7, v3, v7

    cmp-long p1, v7, v5

    if-gez p1, :cond_55

    goto :goto_86

    .line 1784
    :cond_55
    iput-wide v3, p0, Lcom/chimeranft/core/GiftReveal;->lastFireworksMs:J

    .line 1787
    :try_start_57
    sget-object p1, Lcom/chimeranft/core/GiftReveal;->LA:Ljava/lang/String;

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_60

    goto :goto_86

    .line 1789
    :cond_60
    const-string v0, "instance"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6e

    goto :goto_86

    .line 1791
    :cond_6e
    const-string v0, "getFireworksOverlay"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 1792
    const-string v0, "start"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_57 .. :try_end_86} :catchall_86

    :catchall_86
    :cond_86
    :goto_86
    return-void
.end method

.method static synthetic triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1757
    :cond_5
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks(I)V

    return-void
.end method


# virtual methods
.method public final getDuplicatesSuppressed()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/chimeranft/core/GiftReveal;->duplicatesSuppressed:J

    return-wide v0
.end method

.method public final getLastResult()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getShown()J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/chimeranft/core/GiftReveal;->shown:J

    return-wide v0
.end method

.method public final markOfferAnswered(IZ)V
    .registers 6

    .line 788
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->offerCards:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chimeranft/core/GiftReveal$PendingOffer;

    if-nez v0, :cond_f

    return-void

    .line 789
    :cond_f
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$PendingOffer;->getB64()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1;-><init>(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PendingOffer;IZ)V

    const-string p1, "offerDone"

    invoke-direct {p0, p1, v1, v2}, Lcom/chimeranft/core/GiftReveal;->prepareGiftBackground(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    return-void
.end method

.method public final markOfferAnsweredById(Ljava/lang/String;Z)V
    .registers 4

    .line 783
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->offerCardsByOffer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 784
    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/GiftReveal;->markOfferAnswered(IZ)V

    :cond_11
    return-void
.end method

.method public final onChatBecameVisible(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1d

    .line 1468
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->pendingConfetti:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_1d

    .line 1469
    :cond_13
    new-instance p1, Lcom/chimeranft/core/GiftReveal$onChatBecameVisible$1;

    invoke-direct {p1, p0}, Lcom/chimeranft/core/GiftReveal$onChatBecameVisible$1;-><init>(Lcom/chimeranft/core/GiftReveal;)V

    const-wide/16 v0, 0xdc

    invoke-direct {p0, p1, v0, v1}, Lcom/chimeranft/core/GiftReveal;->scheduleDelayed(Ljava/lang/Runnable;J)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final poll()Ljava/lang/String;
    .registers 16

    .line 1819
    iget-wide v0, p0, Lcom/chimeranft/core/GiftReveal;->shown:J

    iget-wide v2, p0, Lcom/chimeranft/core/GiftReveal;->duplicatesSuppressed:J

    .line 1820
    iget-wide v4, p0, Lcom/chimeranft/core/GiftReveal;->targetedChatUpdates:J

    iget-wide v6, p0, Lcom/chimeranft/core/GiftReveal;->dialogReloadsSkipped:J

    .line 1821
    iget-wide v8, p0, Lcom/chimeranft/core/GiftReveal;->reflectionCacheHits:J

    .line 1822
    iget-object v10, p0, Lcom/chimeranft/core/GiftReveal;->pendingConfetti:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    iget-object v11, p0, Lcom/chimeranft/core/GiftReveal;->fastLane:Lcom/chimeranft/core/GiftFastLane;

    invoke-virtual {v11}, Lcom/chimeranft/core/GiftFastLane;->poll()Ljava/lang/String;

    move-result-object v11

    .line 1823
    iget-object v12, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reveal[shown="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " dedup="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " targeted="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " reloadSkip="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " reflHit="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " pendConfetti="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " last="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setDuplicatesSuppressed(J)V
    .registers 3

    .line 24
    iput-wide p1, p0, Lcom/chimeranft/core/GiftReveal;->duplicatesSuppressed:J

    return-void
.end method

.method public final setLastResult(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return-void
.end method

.method public final setShown(J)V
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/chimeranft/core/GiftReveal;->shown:J

    return-void
.end method

.method public final show(Ljava/lang/String;JLjava/lang/String;ZZ)V
    .registers 14

    .line 138
    new-instance v0, Lcom/chimeranft/core/GiftReveal$show$1;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/chimeranft/core/GiftReveal$show$1;-><init>(Lcom/chimeranft/core/GiftReveal;JLjava/lang/String;ZZ)V

    const-string p2, "reveal"

    invoke-direct {p0, p2, p1, v0}, Lcom/chimeranft/core/GiftReveal;->prepareGift(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    return-void
.end method

.method public final showBoughtFor(Ljava/lang/String;JJJZ)V
    .registers 18

    .line 267
    const-string v0, "buyfor"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/chimeranft/core/GiftReveal;->claimReveal(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 268
    :cond_9
    new-instance v0, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    move/from16 v1, p8

    invoke-direct/range {v0 .. v8}, Lcom/chimeranft/core/GiftReveal$showBoughtFor$1;-><init>(ZLcom/chimeranft/core/GiftReveal;JJJ)V

    const-string v1, "buyFor"

    invoke-direct {p0, v1, p1, v0}, Lcom/chimeranft/core/GiftReveal;->prepareGift(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    return-void
.end method

.method public final showOffer(Ljava/lang/String;JJJIZLjava/lang/String;)V
    .registers 23

    .line 625
    new-instance v0, Lcom/chimeranft/core/GiftReveal$showOffer$1;

    move-object v1, p0

    move-object v11, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/chimeranft/core/GiftReveal$showOffer$1;-><init>(Lcom/chimeranft/core/GiftReveal;JJJIZLjava/lang/String;Ljava/lang/String;)V

    const-string p2, "offer"

    invoke-direct {p0, p2, p1, v0}, Lcom/chimeranft/core/GiftReveal;->prepareGiftBackground(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    return-void
.end method

.method public final showOfferDeclined(Ljava/lang/String;JJJ)V
    .registers 17

    .line 663
    new-instance v0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;

    move-object v1, p0

    move-object v8, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1;-><init>(Lcom/chimeranft/core/GiftReveal;JJJLjava/lang/String;)V

    const-string p2, "offerNo"

    invoke-direct {p0, p2, p1, v0}, Lcom/chimeranft/core/GiftReveal;->prepareGiftBackground(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    return-void
.end method

.method public final showPremiumReceived(JIJ)V
    .registers 13

    .line 428
    new-instance v0, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;-><init>(Lcom/chimeranft/core/GiftReveal;JIJ)V

    .line 444
    :try_start_9
    sget-object p1, Lcom/chimeranft/core/GiftReveal;->AU:Ljava/lang/String;

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 445
    const-string p2, "runOnUIThread"

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Class;

    const-class p5, Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object p5, p4, v2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v2

    invoke-static {p1, p2, p4, p3}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_23
    move-exception v0

    move-object p1, v0

    goto :goto_2a

    .line 447
    :cond_26
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$showPremiumReceived$r$1;->run()V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_23

    return-void

    .line 450
    :goto_2a
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "premIncomingDispatch "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return-void
.end method

.method public final showPremiumSent(JIJ)V
    .registers 13

    .line 398
    new-instance v0, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;-><init>(Lcom/chimeranft/core/GiftReveal;JIJ)V

    .line 413
    :try_start_9
    sget-object p1, Lcom/chimeranft/core/GiftReveal;->AU:Ljava/lang/String;

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 414
    const-string p2, "runOnUIThread"

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Class;

    const-class p5, Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object p5, p4, v2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v2

    invoke-static {p1, p2, p4, p3}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_23
    move-exception v0

    move-object p1, v0

    goto :goto_2a

    .line 416
    :cond_26
    invoke-virtual {v0}, Lcom/chimeranft/core/GiftReveal$showPremiumSent$r$1;->run()V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_23

    return-void

    .line 419
    :goto_2a
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "premDispatch "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/chimeranft/core/GiftReveal;->lastResult:Ljava/lang/String;

    return-void
.end method

.method public final showPurchase(Ljava/lang/String;JJ)V
    .registers 13

    .line 185
    const-string v0, "purchase"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/chimeranft/core/GiftReveal;->claimReveal(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 186
    :cond_b
    new-instance v1, Lcom/chimeranft/core/GiftReveal$showPurchase$1;

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/chimeranft/core/GiftReveal$showPurchase$1;-><init>(Lcom/chimeranft/core/GiftReveal;JJ)V

    const-string p2, "buy"

    invoke-direct {p0, p2, p1, v1}, Lcom/chimeranft/core/GiftReveal;->prepareGift(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    return-void
.end method

.method public final showSent(Ljava/lang/String;JLjava/lang/String;ZZ)V
    .registers 14

    .line 563
    new-instance v0, Lcom/chimeranft/core/GiftReveal$showSent$1;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/chimeranft/core/GiftReveal$showSent$1;-><init>(Lcom/chimeranft/core/GiftReveal;JLjava/lang/String;ZZ)V

    const-string p2, "sent"

    invoke-direct {p0, p2, p1, v0}, Lcom/chimeranft/core/GiftReveal;->prepareGiftBackground(Ljava/lang/String;Ljava/lang/String;Lcom/chimeranft/core/GiftReveal$GiftReady;)V

    return-void
.end method

.method public final showSoldNotice(Ljava/lang/String;JJJ)V
    .registers 8

    .line 706
    invoke-direct/range {p0 .. p7}, Lcom/chimeranft/core/GiftReveal;->buildSoldText(Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    .line 707
    new-instance p3, Lcom/chimeranft/core/GiftReveal$showSoldNotice$1;

    invoke-direct {p3, p0, p1}, Lcom/chimeranft/core/GiftReveal$showSoldNotice$1;-><init>(Lcom/chimeranft/core/GiftReveal;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/chimeranft/core/GiftReveal;->runUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->fastLane:Lcom/chimeranft/core/GiftFastLane;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftFastLane;->stop()V

    .line 120
    :try_start_5
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messageStoreExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_a

    .line 124
    :catchall_a
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->pendingDialogReloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 125
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messagesControllers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messageObjectConstructor:Ljava/lang/reflect/Constructor;

    .line 127
    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal;->messageObjectSetType:Ljava/lang/reflect/Method;

    return-void
.end method

.method public final trimCaches(Z)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal;->fastLane:Lcom/chimeranft/core/GiftFastLane;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftFastLane;->trim(Z)V

    return-void
.end method
