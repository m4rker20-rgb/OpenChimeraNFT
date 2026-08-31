.class public final Lcom/chimeranft/core/RemoteIdentity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AU:Ljava/lang/String;

.field public static final Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

.field private static final MAX_ANNOUNCE_MEMOS:I

.field private static final MC:Ljava/lang/String;

.field private static final NC:Ljava/lang/String;

.field private static final PREP_MASK:I

.field private static final PREP_SLOTS:I

.field private static final PROFILE_FETCH_GATE_MS:J

.field private static final RESTAMP_THROTTLE_MS:J

.field private static final STARS_CTRL:Ljava/lang/String;

.field private static final TL_COLLECTIBLE:Ljava/lang/String;

.field private static final TL_USERNAME:Ljava/lang/String;

.field private static final UC:Ljava/lang/String;

.field private static volatile giftSigSource:Lorg/json/JSONObject;

.field private static volatile giftSigValue:Ljava/lang/String;

.field private static volatile profileSigSource:Lorg/json/JSONObject;

.field private static volatile profileSigValue:Ljava/lang/String;


# instance fields
.field private final announceMs:Ljava/util/HashMap;

.field private final announceSig:Ljava/util/HashMap;

.field private announces:J

.field private volatile anyPremiumStamp:Z

.field private applies:J

.field private final applyState:Ljava/util/WeakHashMap;

.field private foreignInvalidations:J

.field private hits:J

.field private final inAnnounce:Ljava/lang/ThreadLocal;

.field private final invalSig:Ljava/util/HashMap;

.field private lastError:Ljava/lang/String;

.field private final lastFullMs:Ljava/util/HashMap;

.field private memoTrims:J

.field private final myId:J

.field private final premiumStamped:Ljava/util/WeakHashMap;

.field private final preparedProfiles:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private final profileFetchGate:Lcom/chimeranft/core/LongStamps;

.field private final statusCache:Ljava/util/HashMap;

.field private final sync:Lcom/chimeranft/core/SyncClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/RemoteIdentity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/RemoteIdentity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    .line 1061
    const-string v0, "org.telegram.tgnet.TLRPC$TL_emojiStatusCollectible"

    sput-object v0, Lcom/chimeranft/core/RemoteIdentity;->TL_COLLECTIBLE:Ljava/lang/String;

    .line 1062
    const-string v0, "org.telegram.tgnet.TLRPC$TL_username"

    sput-object v0, Lcom/chimeranft/core/RemoteIdentity;->TL_USERNAME:Ljava/lang/String;

    .line 1064
    const-string v0, "org.telegram.ui.Stars.StarsController"

    sput-object v0, Lcom/chimeranft/core/RemoteIdentity;->STARS_CTRL:Ljava/lang/String;

    .line 1065
    const-string v0, "org.telegram.messenger.UserConfig"

    sput-object v0, Lcom/chimeranft/core/RemoteIdentity;->UC:Ljava/lang/String;

    .line 1066
    const-string v0, "org.telegram.messenger.AndroidUtilities"

    sput-object v0, Lcom/chimeranft/core/RemoteIdentity;->AU:Ljava/lang/String;

    .line 1067
    const-string v0, "org.telegram.messenger.MessagesController"

    sput-object v0, Lcom/chimeranft/core/RemoteIdentity;->MC:Ljava/lang/String;

    .line 1068
    const-string v0, "org.telegram.messenger.NotificationCenter"

    sput-object v0, Lcom/chimeranft/core/RemoteIdentity;->NC:Ljava/lang/String;

    const/16 v0, 0x100

    .line 1089
    sput v0, Lcom/chimeranft/core/RemoteIdentity;->PREP_SLOTS:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1090
    sput v0, Lcom/chimeranft/core/RemoteIdentity;->PREP_MASK:I

    const/16 v0, 0x200

    .line 1092
    sput v0, Lcom/chimeranft/core/RemoteIdentity;->MAX_ANNOUNCE_MEMOS:I

    const-wide/16 v0, 0x4b0

    .line 1098
    sput-wide v0, Lcom/chimeranft/core/RemoteIdentity;->PROFILE_FETCH_GATE_MS:J

    const-wide/16 v0, 0x1388

    .line 1102
    sput-wide v0, Lcom/chimeranft/core/RemoteIdentity;->RESTAMP_THROTTLE_MS:J

    return-void
.end method

.method public constructor <init>(JLcom/chimeranft/core/SyncClient;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    iput-object p3, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->invalSig:Ljava/util/HashMap;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->statusCache:Ljava/util/HashMap;

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget p2, Lcom/chimeranft/core/RemoteIdentity;->PREP_SLOTS:I

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->preparedProfiles:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 36
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->premiumStamped:Ljava/util/WeakHashMap;

    .line 51
    new-instance p1, Lcom/chimeranft/core/LongStamps;

    const/16 p2, 0x200

    invoke-direct {p1, p2}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->profileFetchGate:Lcom/chimeranft/core/LongStamps;

    .line 56
    const-string p1, ""

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->announceMs:Ljava/util/HashMap;

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastFullMs:Ljava/util/HashMap;

    .line 67
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->inAnnounce:Ljava/lang/ThreadLocal;

    .line 80
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->applyState:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static final synthetic access$announceNow(Lcom/chimeranft/core/RemoteIdentity;J)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->announceNow(J)V

    return-void
.end method

.method public static final synthetic access$announceNowInner(Lcom/chimeranft/core/RemoteIdentity;J)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->announceNowInner(J)V

    return-void
.end method

.method public static final synthetic access$applyPreparedToObj(Lcom/chimeranft/core/RemoteIdentity;Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAnnounceSig$p(Lcom/chimeranft/core/RemoteIdentity;)Ljava/util/HashMap;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getGiftSigSource$cp()Lorg/json/JSONObject;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->giftSigSource:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static final synthetic access$getGiftSigValue$cp()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->giftSigValue:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMC$cp()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->MC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPREP_MASK$cp()I
    .registers 1

    .line 22
    sget v0, Lcom/chimeranft/core/RemoteIdentity;->PREP_MASK:I

    return v0
.end method

.method public static final synthetic access$getProfileSigSource$cp()Lorg/json/JSONObject;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->profileSigSource:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static final synthetic access$getProfileSigValue$cp()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->profileSigValue:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTARS_CTRL$cp()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->STARS_CTRL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUC$cp()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->UC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$maybeAnnounce(Lcom/chimeranft/core/RemoteIdentity;JLorg/json/JSONObject;Z)V
    .registers 5

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/RemoteIdentity;->maybeAnnounce(JLorg/json/JSONObject;Z)V

    return-void
.end method

.method public static final synthetic access$maybeInvalidateForeignGifts(Lcom/chimeranft/core/RemoteIdentity;JLorg/json/JSONObject;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity;->maybeInvalidateForeignGifts(JLorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic access$preparedProfile(Lcom/chimeranft/core/RemoteIdentity;JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity;->preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setGiftSigSource$cp(Lorg/json/JSONObject;)V
    .registers 1

    .line 22
    sput-object p0, Lcom/chimeranft/core/RemoteIdentity;->giftSigSource:Lorg/json/JSONObject;

    return-void
.end method

.method public static final synthetic access$setGiftSigValue$cp(Ljava/lang/String;)V
    .registers 1

    .line 22
    sput-object p0, Lcom/chimeranft/core/RemoteIdentity;->giftSigValue:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setProfileSigSource$cp(Lorg/json/JSONObject;)V
    .registers 1

    .line 22
    sput-object p0, Lcom/chimeranft/core/RemoteIdentity;->profileSigSource:Lorg/json/JSONObject;

    return-void
.end method

.method public static final synthetic access$setProfileSigValue$cp(Ljava/lang/String;)V
    .registers 1

    .line 22
    sput-object p0, Lcom/chimeranft/core/RemoteIdentity;->profileSigValue:Ljava/lang/String;

    return-void
.end method

.method private final announceNow(J)V
    .registers 5

    .line 437
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    new-instance v1, Lcom/chimeranft/core/RemoteIdentity$announceNow$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$announceNow$1;-><init>(Lcom/chimeranft/core/RemoteIdentity;J)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/chimeranft/core/Main$Companion;->runAfterUiScroll(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private final announceNowInner(J)V
    .registers 13

    .line 447
    const-string v0, "getInstance"

    .line 449
    :try_start_2
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->inAnnounce:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 450
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_4d

    if-nez v1, :cond_13

    .line 505
    :goto_d
    iget-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->inAnnounce:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    .line 451
    :cond_13
    :try_start_13
    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_d

    .line 453
    :cond_1a
    invoke-direct {p0, p1, p2, v1}, Lcom/chimeranft/core/RemoteIdentity;->preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    move-result-object v1

    .line 454
    sget-object v2, Lcom/chimeranft/core/RemoteIdentity;->UC:Ljava/lang/String;

    const-string v3, "selectedAccount"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 455
    sget-object v3, Lcom/chimeranft/core/RemoteIdentity;->MC:Ljava/lang/String;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v5, v7, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v4

    invoke-static {v3, v0, v7, v9}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3f

    goto :goto_d

    .line 457
    :cond_3f
    sget-object v7, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    const-string v8, "getUser"

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->controllerEntity(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    invoke-static {v7, v3, v8, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$controllerEntity(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_50

    .line 458
    invoke-direct {p0, v8, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    goto :goto_50

    :catchall_4d
    move-exception p1

    goto/16 :goto_c9

    .line 459
    :cond_50
    :goto_50
    const-string v9, "getUserFull"

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->controllerEntity(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    invoke-static {v7, v3, v9, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$controllerEntity(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_68

    .line 462
    invoke-direct {p0, v3, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    .line 463
    const-string v9, "user"

    invoke-static {v3, v9}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_68

    if-eq v9, v3, :cond_68

    .line 464
    invoke-direct {p0, v9, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    .line 466
    :cond_68
    sget-object v1, Lcom/chimeranft/core/RemoteIdentity;->NC:Ljava/lang/String;

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v5, v9, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v4

    invoke-static {v1, v0, v9, v5}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7d

    goto :goto_d

    .line 481
    :cond_7d
    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v2, :cond_88

    invoke-virtual {v2, p1, p2}, Lcom/chimeranft/core/SyncClient;->isProfileActive(J)Z

    move-result v2

    if-eqz v2, :cond_88

    goto :goto_90

    .line 482
    :cond_88
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/Main$Companion;->isChatScreenActive()Z

    move-result v2

    if-nez v2, :cond_97

    .line 489
    :goto_90
    invoke-static {}, Lcom/chimeranft/core/Repaint;->nameAndStatusMask()I

    move-result v2

    invoke-static {v2}, Lcom/chimeranft/core/Repaint;->updateInterfaces(I)V

    .line 493
    :cond_97
    const-string v2, "userEmojiStatusUpdated"

    invoke-static {v1, v2, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_a8

    if-eqz v8, :cond_a8

    .line 495
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v8, v5, v4

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->postNc(Ljava/lang/Object;I[Ljava/lang/Object;)V
    invoke-static {v7, v0, v2, v5}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$postNc(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 496
    :cond_a8
    const-string v2, "userInfoDidLoad"

    invoke-static {v1, v2, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_c0

    if-eqz v3, :cond_c0

    .line 497
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v4

    aput-object v3, p2, v6

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->postNc(Ljava/lang/Object;I[Ljava/lang/Object;)V
    invoke-static {v7, v0, v1, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$postNc(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 498
    :cond_c0
    iget-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->announces:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->announces:J
    :try_end_c7
    .catchall {:try_start_13 .. :try_end_c7} :catchall_4d

    goto/16 :goto_d

    .line 501
    :goto_c9
    :try_start_c9
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "announce: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;
    :try_end_e2
    .catchall {:try_start_c9 .. :try_end_e2} :catchall_e4

    goto/16 :goto_d

    :catchall_e4
    move-exception p1

    .line 505
    iget-object p2, p0, Lcom/chimeranft/core/RemoteIdentity;->inAnnounce:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    throw p1
.end method

.method private final applyNumberStrTo(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_6e

    .line 1032
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6e

    .line 1033
    :cond_a
    const-string v1, "phone"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1034
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1b

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v0

    .line 1036
    :cond_1b
    invoke-static {p1, v1, p2}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez p1, :cond_22

    return v0

    .line 1039
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 1041
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_2e

    .line 1042
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 1043
    invoke-static {v5, v1, v0, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    const-string v6, "number"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1045
    :cond_61
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, p2}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_69
    .catchall {:try_start_22 .. :try_end_69} :catchall_6d

    if-eqz v4, :cond_2e

    const/4 v2, 0x1

    goto :goto_2e

    :catchall_6d
    :cond_6d
    return v2

    :cond_6e
    :goto_6e
    return v0
.end method

.method private final applyPremiumTo(Ljava/lang/Object;Z)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_76

    .line 777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "premium"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_76

    .line 782
    :cond_10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "premium"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz p2, :cond_20

    goto :goto_27

    .line 783
    :cond_20
    iget-boolean v2, p0, Lcom/chimeranft/core/RemoteIdentity;->anyPremiumStamp:Z

    if-nez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    if-eqz v2, :cond_2a

    return v0

    .line 784
    :cond_2a
    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity;->premiumStamped:Ljava/util/WeakHashMap;

    monitor-enter v2

    if-eqz p2, :cond_52

    .line 787
    :try_start_2f
    const-string p2, "premium"

    invoke-static {p1, p2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_4e

    if-eqz p2, :cond_3d

    monitor-exit v2

    return v0

    .line 788
    :cond_3d
    :try_start_3d
    const-string p2, "premium"

    invoke-static {p1, p2, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 790
    iget-object p2, p0, Lcom/chimeranft/core/RemoteIdentity;->premiumStamped:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iput-boolean v3, p0, Lcom/chimeranft/core/RemoteIdentity;->anyPremiumStamp:Z
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4e

    .line 792
    monitor-exit v2

    return v3

    :catchall_4e
    move-exception p1

    goto :goto_74

    .line 794
    :cond_50
    monitor-exit v2

    return v0

    .line 796
    :cond_52
    :try_start_52
    iget-object p2, p0, Lcom/chimeranft/core/RemoteIdentity;->premiumStamped:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_70

    const-string p2, "premium"

    invoke-static {p1, p2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 798
    const-string p2, "premium"

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_4e

    monitor-exit v2

    return p1

    .line 800
    :cond_70
    :try_start_70
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_4e

    .line 784
    monitor-exit v2

    return v0

    :goto_74
    monitor-exit v2

    throw p1

    :cond_76
    :goto_76
    return v0
.end method

.method private final applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_ea

    if-nez p2, :cond_7

    goto/16 :goto_ea

    .line 737
    :cond_7
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_42

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "emoji_status"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 739
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleStatus()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_33

    .line 742
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getWearData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v3, v4, v1}, Lcom/chimeranft/core/RemoteIdentity;->collectibleFor(JLorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 743
    invoke-virtual {p2, v1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setCollectibleStatus(Ljava/lang/Object;)V

    :cond_33
    if-eqz v1, :cond_42

    .line 745
    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_42

    .line 746
    invoke-static {p1, v2, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    .line 749
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "username"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_5a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "usernames"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 750
    :cond_5a
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getUsernames()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_70

    .line 751
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getUsernames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getUsernamesReplace()Z

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/chimeranft/core/RemoteIdentity;->applyUsernameTokensTo(Ljava/lang/Object;[Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v0, 0x1

    .line 753
    :cond_70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "phone"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_87

    goto :goto_92

    .line 754
    :cond_87
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyNumberStrTo(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    const/4 v0, 0x1

    .line 756
    :cond_92
    :goto_92
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getRatingValue()I

    move-result v1

    if-lez v1, :cond_ab

    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getRatingValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getRatingLevel()I

    move-result v2

    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getRatingNextGoal()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/chimeranft/core/Rating;->apply(Ljava/lang/Object;III)Z

    move-result v1

    if-eqz v1, :cond_ab

    const/4 v0, 0x1

    .line 757
    :cond_ab
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getLocalPremium()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyPremiumTo(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_b6

    const/4 v0, 0x1

    .line 758
    :cond_b6
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getPinnedWrapper()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d9

    .line 760
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getPinnedWrapper()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/chimeranft/core/PinnedChannel;->apply(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_c7

    const/4 v0, 0x1

    .line 765
    :cond_c7
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getPinnedResolved()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 767
    invoke-virtual {p2, v5}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setPinnedResolved(Z)V

    .line 768
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getPinnedWrapper()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d9

    .line 769
    invoke-static {v1}, Lcom/chimeranft/core/PinnedChannel;->ensureCached(Lorg/json/JSONObject;)V

    .line 772
    :cond_d9
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getGiftCount()I

    move-result v1

    if-lez v1, :cond_ea

    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getGiftCount()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->bumpStargiftsCount(Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_ea

    return v5

    :cond_ea
    :goto_ea
    return v0
.end method

.method private final applyRecordToObj(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .registers 11

    .line 512
    const-string v0, "wear_collectible_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 513
    const-string v0, "wear_active"

    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_32

    cmp-long v0, v3, v1

    if-lez v0, :cond_32

    .line 515
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->normalizedRemoteWear(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    invoke-static {v0, p2, v3, v4}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$normalizedRemoteWear(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v3, v4, v0}, Lcom/chimeranft/core/RemoteIdentity;->collectibleFor(JLorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 516
    const-string v1, "emoji_status"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_32

    .line 518
    invoke-static {p1, v1, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 522
    :goto_33
    const-string v1, "username_state"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 523
    const-string v2, "tokens"

    const-string v3, "enabled"

    if-eqz v1, :cond_5c

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 525
    sget-object v4, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->tokensOf(Lorg/json/JSONArray;Z)[Ljava/lang/String;
    invoke-static {v4, v7, v5}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$tokensOf(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONArray;Z)[Ljava/lang/String;

    move-result-object v4

    .line 526
    const-string v7, "replace_original"

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, p1, v4, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyUsernameTokensTo(Ljava/lang/Object;[Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v0, 0x1

    .line 529
    :cond_5c
    const-string v1, "number_state"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 530
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 532
    sget-object v4, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->tokensOf(Lorg/json/JSONArray;Z)[Ljava/lang/String;
    invoke-static {v4, v1, v6}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$tokensOf(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONArray;Z)[Ljava/lang/String;

    move-result-object v1

    .line 533
    array-length v2, v1

    if-lez v2, :cond_80

    aget-object v1, v1, v5

    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyNumberStrTo(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v0, 0x1

    .line 536
    :cond_80
    const-string v1, "rating_state"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 537
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ad

    const-string v2, "value"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_ad

    .line 539
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "next_goal"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/chimeranft/core/Rating;->apply(Ljava/lang/Object;III)Z

    move-result v1

    if-eqz v1, :cond_ad

    const/4 v0, 0x1

    .line 541
    :cond_ad
    const-string v1, "local_premium"

    invoke-virtual {p2, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyPremiumTo(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_ba

    const/4 v0, 0x1

    .line 542
    :cond_ba
    invoke-static {p1, p2}, Lcom/chimeranft/core/PinnedChannel;->apply(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const/4 v0, 0x1

    .line 543
    :cond_c1
    invoke-static {p2}, Lcom/chimeranft/core/PinnedChannel;->has(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-static {p2}, Lcom/chimeranft/core/PinnedChannel;->ensureCached(Lorg/json/JSONObject;)V

    .line 546
    :cond_ca
    sget-object v1, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v1, p2}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result p2

    if-lez p2, :cond_d9

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->bumpStargiftsCount(Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_d9

    return v6

    :cond_d9
    return v0
.end method

.method private final applyUsernameTokensTo(Ljava/lang/Object;[Ljava/lang/String;Z)Z
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_a3

    .line 865
    array-length v1, p2

    if-nez v1, :cond_8

    goto/16 :goto_a3

    .line 866
    :cond_8
    const-string v1, "username"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 867
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_23

    aget-object v3, p2, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz p3, :cond_22

    .line 868
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->hasForeignUsername(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    return v0

    .line 871
    :cond_23
    const-string v2, "usernames"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_3a

    .line 874
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 875
    invoke-static {p1, v2, v5}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object v3, v5

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    .line 880
    :goto_3b
    instance-of v5, v3, Ljava/util/List;

    if-eqz v5, :cond_5b

    .line 883
    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 884
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v5

    :cond_47
    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/chimeranft/core/RemoteIdentity;->ensureUsernameInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    const/4 v2, 0x1

    goto :goto_47

    .line 886
    :cond_5b
    const-string v3, "active_usernames"

    const-string v5, "editable_usernames"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_64
    const/4 v6, 0x2

    if-ge v5, v6, :cond_90

    aget-object v6, v3, v5

    .line 888
    invoke-static {p1, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 889
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_8d

    .line 892
    invoke-static {v6}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 893
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v7

    :cond_79
    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Lcom/chimeranft/core/RemoteIdentity;->ensureStringInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_79

    const/4 v2, 0x1

    goto :goto_79

    :cond_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    :cond_90
    if-eqz p3, :cond_99

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->stripForeignUsernames(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_99

    const/4 v2, 0x1

    .line 899
    :cond_99
    aget-object p2, p2, v0

    invoke-static {p1, v1, p2}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a2

    return v4

    :cond_a2
    return v2

    :cond_a3
    :goto_a3
    return v0
.end method

.method private final buildCollectible(JLorg/json/JSONObject;)Ljava/lang/Object;
    .registers 15

    .line 831
    const-string v0, "slug"

    const-string v1, ""

    const-string v2, "title"

    const/4 v3, 0x0

    .line 833
    :try_start_7
    sget-object v4, Lcom/chimeranft/core/RemoteIdentity;->TL_COLLECTIBLE:Ljava/lang/String;

    invoke-static {v4}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_17

    .line 835
    const-string p1, "no TL_emojiStatusCollectible"

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    return-object v3

    :catchall_14
    move-exception v0

    move-object p1, v0

    goto :goto_78

    .line 838
    :cond_17
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 839
    const-string v5, "collectible_id"

    invoke-static {v4, v5, p1, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 840
    const-string p1, "until"

    const/4 p2, 0x0

    invoke-static {v4, p1, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    if-eqz p3, :cond_77

    .line 843
    const-string v5, "center_color"

    const-string v6, "edge_color"

    const-string v7, "pattern_color"

    const-string v8, "text_color"

    const-string v9, "document_id"

    const-string v10, "pattern_document_id"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object p1

    :goto_38
    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    if-ge p2, v7, :cond_4d

    aget-object v7, p1, p2

    .line 845
    invoke-virtual {p3, v7, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-eqz v10, :cond_4a

    .line 846
    invoke-static {v4, v7, v8, v9}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    :cond_4a
    add-int/lit8 p2, p2, 0x1

    goto :goto_38

    .line 848
    :cond_4d
    sget-object p1, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v7, "num"

    invoke-virtual {p3, v7, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {p1, p2, v5, v6}, Lcom/chimeranft/core/Store$Companion;->formatWearTitle(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 849
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_64

    goto :goto_67

    :cond_64
    invoke-static {v4, v2, p1}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 850
    :goto_67
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 851
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_74

    return-object v4

    :cond_74
    invoke-static {v4, v0, p1}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_77
    .catchall {:try_start_7 .. :try_end_77} :catchall_14

    :cond_77
    return-object v4

    .line 856
    :goto_78
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buildCollectible: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    return-object v3
.end method

.method private final bumpStargiftsCount(Ljava/lang/Object;I)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    if-gtz p2, :cond_6

    goto :goto_33

    .line 606
    :cond_6
    const-string v1, "stargifts_count"

    const-string v2, "stargiftsCount"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/chimeranft/core/Refl;->isUserFullShape(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    return v0

    .line 607
    :cond_15
    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    int-to-long v5, p2

    cmp-long v7, v5, v3

    if-gtz v7, :cond_27

    return v0

    .line 610
    :cond_27
    invoke-static {p1, v1, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result v0

    .line 611
    invoke-static {p1, v2, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    :goto_33
    return v0
.end method

.method private final collectibleFor(JLorg/json/JSONObject;)Ljava/lang/Object;
    .registers 9

    if-nez p3, :cond_5

    .line 817
    const-string v0, ""

    goto :goto_1b

    .line 819
    :cond_5
    sget-object v0, Lcom/chimeranft/core/Store;->Companion:Lcom/chimeranft/core/Store$Companion;

    .line 820
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "num"

    const-wide/16 v3, 0x0

    invoke-virtual {p3, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 819
    invoke-virtual {v0, v1, v2, v3}, Lcom/chimeranft/core/Store$Companion;->formatWearTitle(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->statusCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 822
    :try_start_32
    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity;->statusCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_48

    if-eqz v2, :cond_3c

    .line 823
    monitor-exit v1

    return-object v2

    .line 824
    :cond_3c
    :try_start_3c
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity;->buildCollectible(JLorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 825
    iget-object p2, p0, Lcom/chimeranft/core/RemoteIdentity;->statusCache:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_48

    goto :goto_4a

    :catchall_48
    move-exception p1

    goto :goto_4c

    .line 826
    :cond_4a
    :goto_4a
    monitor-exit v1

    return-object p1

    :goto_4c
    monitor-exit v1

    throw p1
.end method

.method private final createTlUsername(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 1016
    :try_start_1
    sget-object v1, Lcom/chimeranft/core/RemoteIdentity;->TL_USERNAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v0

    .line 1018
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 1019
    const-string v2, "username"

    invoke-static {v1, v2, p1}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1020
    const-string p1, "active"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p1, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1021
    const-string p1, "editable"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p1, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1022
    const-string p1, "flags"

    const/4 v2, 0x2

    invoke-static {v1, p1, v2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    return-object v1

    :catchall_28
    return-object v0
.end method

.method private final ensureGiftCount(Ljava/lang/Object;JLorg/json/JSONObject;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_31

    .line 622
    iget-wide v1, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v3, p2, v1

    if-eqz v3, :cond_31

    if-nez p4, :cond_12

    goto :goto_31

    .line 628
    :cond_12
    const-string p2, "stargifts_count"

    const-string p3, "stargiftsCount"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chimeranft/core/Refl;->isUserFullShape(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_21

    return v0

    .line 629
    :cond_21
    sget-object p2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {p2, p4}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result p2

    if-lez p2, :cond_31

    .line 630
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->bumpStargiftsCount(Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x1

    return p1

    :cond_31
    :goto_31
    return v0
.end method

.method public static synthetic ensureProfileState$default(Lcom/chimeranft/core/RemoteIdentity;Ljava/lang/Object;JZZILjava/lang/Object;)Z
    .registers 14

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_b

    const/4 p5, 0x1

    const/4 v5, 0x1

    :goto_6
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    goto :goto_d

    :cond_b
    move v5, p5

    goto :goto_6

    .line 633
    :goto_d
    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/RemoteIdentity;->ensureProfileState(Ljava/lang/Object;JZZ)Z

    move-result p0

    return p0
.end method

.method private final ensureStringInList(Ljava/util/List;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    .line 996
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2a

    .line 997
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    if-ge v2, v1, :cond_26

    .line 999
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 1000
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    return v0

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1004
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
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_56

    .line 965
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_56

    .line 966
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    if-ge v2, v1, :cond_48

    .line 968
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 970
    sget-object v5, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    sget-object v6, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    const-string v7, "username"

    invoke-static {v4, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->str(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$str(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 971
    invoke-static {v5, p2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 973
    const-string p1, "active"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, p1, p2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 974
    const-string p1, "editable"

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, p1, p2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 975
    const-string p1, "flags"

    const/4 p2, 0x2

    invoke-static {v4, p1, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    return v0

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 979
    :cond_48
    invoke-direct {p0, p2}, Lcom/chimeranft/core/RemoteIdentity;->createTlUsername(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 983
    :try_start_4e
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v3

    .line 986
    :cond_52
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_56

    return v3

    :catchall_56
    :cond_56
    :goto_56
    return v0
.end method

.method private final hasForeignUsername(Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 13

    .line 904
    const-string v0, "usernames"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 905
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    .line 907
    check-cast v0, Ljava/util/List;

    .line 908
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v1, :cond_37

    .line 910
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 912
    sget-object v6, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    sget-object v7, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    const-string v8, "username"

    invoke-static {v5, v8}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->str(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$str(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->isOwnToken(Ljava/lang/String;[Ljava/lang/String;)Z
    invoke-static {v6, v5, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$isOwnToken(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_34

    return v3

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 915
    :cond_37
    const-string v0, "active_usernames"

    const-string v1, "editable_usernames"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_40
    const/4 v4, 0x2

    if-ge v1, v4, :cond_75

    aget-object v4, v0, v1

    .line 917
    invoke-static {p1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 918
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_72

    .line 919
    check-cast v4, Ljava/util/List;

    .line 920
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_54
    if-ge v6, v5, :cond_72

    .line 922
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6f

    .line 923
    sget-object v8, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    sget-object v9, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->isOwnToken(Ljava/lang/String;[Ljava/lang/String;)Z
    invoke-static {v8, v7, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$isOwnToken(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6f

    return v3

    :cond_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_75
    return v2
.end method

.method private final maybeAnnounce(JLorg/json/JSONObject;Z)V
    .registers 13

    .line 361
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->inAnnounce:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 362
    :cond_f
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->hasProfileState(Lorg/json/JSONObject;)Z
    invoke-static {v0, p3}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$hasProfileState(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_18

    :goto_17
    return-void

    .line 363
    :cond_18
    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->profileSigCached(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$profileSigCached(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 365
    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    monitor-enter v2

    const/4 v3, 0x0

    if-eqz p4, :cond_51

    .line 373
    :try_start_26
    iget-object p4, p0, Lcom/chimeranft/core/RemoteIdentity;->lastFullMs:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    if-eqz p4, :cond_43

    .line 374
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long p4, v4, v6

    if-lez p4, :cond_44

    goto :goto_43

    :catchall_41
    move-exception p1

    goto :goto_a4

    :cond_43
    :goto_43
    const/4 v3, 0x1

    .line 375
    :cond_44
    iget-object p4, p0, Lcom/chimeranft/core/RemoteIdentity;->lastFullMs:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_51
    iget-object p4, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4
    :try_end_5f
    .catchall {:try_start_26 .. :try_end_5f} :catchall_41

    if-nez v3, :cond_65

    if-eqz p4, :cond_65

    .line 378
    monitor-exit v2

    return-void

    .line 379
    :cond_65
    :try_start_65
    iget-object p4, p0, Lcom/chimeranft/core/RemoteIdentity;->announceMs:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    if-eqz p4, :cond_81

    .line 380
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_41

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5dc

    cmp-long p4, v3, v5

    if-gez p4, :cond_81

    monitor-exit v2

    return-void

    .line 381
    :cond_81
    :try_start_81
    invoke-direct {p0}, Lcom/chimeranft/core/RemoteIdentity;->trimAnnounceMemos()V

    .line 382
    iget-object p4, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object p3, p0, Lcom/chimeranft/core/RemoteIdentity;->announceMs:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_41

    .line 365
    monitor-exit v2

    const-wide/16 p3, 0x2bc

    .line 388
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/RemoteIdentity;->scheduleAnnounce(JJ)V

    return-void

    .line 365
    :goto_a4
    monitor-exit v2

    throw p1
.end method

.method private final maybeInvalidateForeignGifts(JLorg/json/JSONObject;)V
    .registers 8

    .line 553
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v0, p3}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 554
    :cond_9
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->giftSigCached(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$giftSigCached(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    .line 555
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->invalSig:Ljava/util/HashMap;

    monitor-enter v0

    .line 556
    :try_start_12
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->invalSig:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_70

    if-eqz v1, :cond_24

    monitor-exit v0

    return-void

    .line 557
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->invalSig:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_70

    .line 555
    monitor-exit v0

    .line 559
    new-instance p3, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;

    invoke-direct {p3, p1, p2, p0}, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;-><init>(JLcom/chimeranft/core/RemoteIdentity;)V

    .line 589
    :try_start_36
    sget-object p1, Lcom/chimeranft/core/RemoteIdentity;->AU:Ljava/lang/String;

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_52

    .line 590
    const-string p2, "runOnUIThread"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v3

    invoke-static {p1, p2, v1, v0}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_50
    move-exception p1

    goto :goto_56

    .line 592
    :cond_52
    invoke-virtual {p3}, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;->run()V
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_50

    return-void

    .line 595
    :goto_56
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "finvalSetup: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    return-void

    :catchall_70
    move-exception p1

    .line 555
    monitor-exit v0

    throw p1
.end method

.method private final preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;
    .registers 11

    .line 679
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->prepSlot(J)I
    invoke-static {v0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$prepSlot(Lcom/chimeranft/core/RemoteIdentity$Companion;J)I

    move-result v1

    .line 680
    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity;->preparedProfiles:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    if-eqz v2, :cond_1f

    .line 681
    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getUid()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_1f

    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getSource()Lorg/json/JSONObject;

    move-result-object v3

    if-ne v3, p3, :cond_1f

    return-object v2

    .line 682
    :cond_1f
    new-instance v2, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    invoke-direct {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;-><init>()V

    .line 683
    invoke-virtual {v2, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setUid(J)V

    .line 684
    invoke-virtual {v2, p3}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setSource(Lorg/json/JSONObject;)V

    .line 685
    invoke-virtual {v0, p3}, Lcom/chimeranft/core/RemoteIdentity$Companion;->hasUserIdentity(Lorg/json/JSONObject;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setHasIdentity(Z)V

    .line 686
    const-string p1, "wear_active"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 688
    const-string p1, "wear_collectible_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p3, p1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setCollectibleId(J)V

    .line 689
    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleId()J

    move-result-wide v5

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->normalizedRemoteWear(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    invoke-static {v0, p3, v5, v6}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$normalizedRemoteWear(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setWearData(Lorg/json/JSONObject;)V

    .line 690
    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleId()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_67

    .line 691
    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getWearData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v3, v4, p1}, Lcom/chimeranft/core/RemoteIdentity;->collectibleFor(JLorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setCollectibleStatus(Ljava/lang/Object;)V

    .line 693
    :cond_67
    const-string p1, "username_state"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 694
    const-string v3, "tokens"

    const-string v4, "enabled"

    if-eqz p1, :cond_8d

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 696
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->tokensOf(Lorg/json/JSONArray;Z)[Ljava/lang/String;
    invoke-static {v0, v5, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$tokensOf(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONArray;Z)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setUsernames([Ljava/lang/String;)V

    .line 697
    const-string v5, "replace_original"

    invoke-virtual {p1, v5, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setUsernamesReplace(Z)V

    .line 699
    :cond_8d
    const-string p1, "number_state"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v5, 0x1

    if-eqz p1, :cond_ac

    .line 700
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 702
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->tokensOf(Lorg/json/JSONArray;Z)[Ljava/lang/String;
    invoke-static {v0, p1, v5}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$tokensOf(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONArray;Z)[Ljava/lang/String;

    move-result-object p1

    .line 703
    array-length v0, p1

    if-lez v0, :cond_ac

    aget-object p1, p1, p2

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setNumber(Ljava/lang/String;)V

    .line 705
    :cond_ac
    const-string p1, "rating_state"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d5

    .line 706
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 708
    const-string v0, "value"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setRatingValue(I)V

    .line 709
    const-string v0, "level"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setRatingLevel(I)V

    .line 710
    const-string v0, "next_goal"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setRatingNextGoal(I)V

    .line 712
    :cond_d5
    const-string p1, "local_premium"

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setLocalPremium(Z)V

    .line 713
    const-string p1, "pinned_channel"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setPinnedChannel(Lorg/json/JSONObject;)V

    .line 714
    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getPinnedChannel()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_103

    .line 716
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 717
    invoke-virtual {v2, p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setPinnedWrapper(Lorg/json/JSONObject;)V

    .line 720
    :try_start_f5
    invoke-virtual {v2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getPinnedChannel()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fc
    .catchall {:try_start_f5 .. :try_end_fc} :catchall_fd

    goto :goto_103

    :catchall_fd
    const/4 p1, 0x0

    .line 723
    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setPinnedWrapper(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 727
    :cond_103
    :goto_103
    sget-object p1, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {p1, p3}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setGiftCount(I)V

    .line 729
    iget-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->preparedProfiles:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v2
.end method

.method private final scheduleAnnounce(JJ)V
    .registers 11

    .line 392
    new-instance v0, Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;-><init>(Lcom/chimeranft/core/RemoteIdentity;J)V

    .line 408
    :try_start_5
    sget-object p1, Lcom/chimeranft/core/RemoteIdentity;->AU:Ljava/lang/String;

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_2c

    .line 410
    const-string p2, "runOnUIThread"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Runnable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 411
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    aput-object v0, p4, v4

    aput-object p3, p4, v5

    .line 410
    invoke-static {p1, p2, v2, p4}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_2a
    move-exception p1

    goto :goto_30

    .line 414
    :cond_2c
    invoke-virtual {v0}, Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;->run()V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2a

    return-void

    .line 417
    :goto_30
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "announceSetup: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    return-void
.end method

.method private final stripForeignUsernames(Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 13

    .line 931
    const-string v0, "usernames"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 932
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_43

    .line 935
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 936
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v5, 0x0

    :goto_17
    if-ge v2, v1, :cond_44

    .line 938
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_22

    .line 939
    const-string v6, ""

    goto :goto_34

    :cond_22
    sget-object v7, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    sget-object v8, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    const-string v9, "username"

    invoke-static {v6, v9}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->str(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v8, v6}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$str(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 940
    :goto_34
    sget-object v7, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->isOwnToken(Ljava/lang/String;[Ljava/lang/String;)Z
    invoke-static {v7, v6, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$isOwnToken(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 941
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x1

    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_43
    const/4 v5, 0x0

    .line 946
    :cond_44
    const-string v0, "active_usernames"

    const-string v1, "editable_usernames"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_4c
    const/4 v1, 0x2

    if-ge v4, v1, :cond_86

    aget-object v1, v0, v4

    .line 948
    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 949
    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_83

    .line 951
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 952
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_62
    if-ge v2, v6, :cond_83

    .line 954
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_80

    .line 955
    sget-object v8, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    sget-object v9, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/chimeranft/core/Identity$Companion;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->isOwnToken(Ljava/lang/String;[Ljava/lang/String;)Z
    invoke-static {v8, v7, p2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$isOwnToken(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 956
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x1

    :cond_80
    add-int/lit8 v6, v6, -0x1

    goto :goto_62

    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_86
    return v5
.end method

.method private final trimAnnounceMemos()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget v1, Lcom/chimeranft/core/RemoteIdentity;->MAX_ANNOUNCE_MEMOS:I

    if-ge v0, v1, :cond_b

    return-void

    .line 130
    :cond_b
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 131
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->announceMs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 132
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->lastFullMs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->memoTrims:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->memoTrims:J

    return-void
.end method

.method private final uidOf(Ljava/lang/Object;)J
    .registers 8

    .line 805
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_d

    return-wide v1

    .line 807
    :cond_d
    const-string v1, "user"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 809
    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-lez p1, :cond_1e

    return-wide v0

    :cond_1e
    return-wide v3
.end method


# virtual methods
.method public final chatRevision(J)J
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_29

    .line 246
    iget-wide v2, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v4, p1, v2

    if-eqz v4, :cond_29

    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    if-nez v2, :cond_11

    goto :goto_29

    .line 249
    :cond_11
    :try_start_11
    invoke-virtual {v2, p1, p2}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_18

    return-wide v0

    .line 251
    :cond_18
    const-string p2, "updated_at"

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_23

    return-wide v2

    .line 252
    :cond_23
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_29

    int-to-long p1, p1

    return-wide p1

    :catchall_29
    :cond_29
    :goto_29
    return-wide v0
.end method

.method public final ensureChatIdentity(Ljava/lang/Object;J)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_69

    .line 222
    iget-wide v1, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v3, p2, v1

    if-eqz v3, :cond_69

    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    if-nez v1, :cond_14

    goto :goto_69

    .line 225
    :cond_14
    :try_start_14
    invoke-virtual {v1, p2, p3}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1b

    return v0

    .line 227
    :cond_1b
    invoke-direct {p0, p2, p3, v1}, Lcom/chimeranft/core/RemoteIdentity;->preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getHasIdentity()Z

    move-result v2

    if-nez v2, :cond_26

    return v0

    .line 229
    :cond_26
    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    move-result v2

    .line 230
    const-string v3, "user"

    invoke-static {p1, v3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_46

    if-eq v3, p1, :cond_46

    .line 231
    invoke-direct {p0, v3}, Lcom/chimeranft/core/RemoteIdentity;->uidOf(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long p1, v4, p2

    if-nez p1, :cond_46

    .line 232
    invoke-direct {p0, v3, v1}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 v2, 0x1

    goto :goto_46

    :catchall_44
    move-exception p1

    goto :goto_50

    :cond_46
    :goto_46
    if-eqz v2, :cond_4f

    .line 234
    iget-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->hits:J

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->hits:J
    :try_end_4f
    .catchall {:try_start_14 .. :try_end_4f} :catchall_44

    :cond_4f
    return v2

    .line 238
    :goto_50
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chatApply: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    :cond_69
    :goto_69
    return v0
.end method

.method public final ensureGiftCount(Ljava/lang/Object;J)Z
    .registers 7

    if-eqz p1, :cond_1c

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1c

    .line 617
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1c

    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    if-nez v0, :cond_13

    goto :goto_1c

    .line 618
    :cond_13
    invoke-virtual {v0, p2, p3}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chimeranft/core/RemoteIdentity;->ensureGiftCount(Ljava/lang/Object;JLorg/json/JSONObject;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final ensureProfileState(Ljava/lang/Object;JZ)Z
    .registers 13

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/chimeranft/core/RemoteIdentity;->ensureProfileState$default(Lcom/chimeranft/core/RemoteIdentity;Ljava/lang/Object;JZZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ensureProfileState(Ljava/lang/Object;JZZ)Z
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-lez v3, :cond_92

    .line 634
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v3, p2, v0

    if-eqz v3, :cond_92

    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    if-nez v0, :cond_13

    goto/16 :goto_92

    :cond_13
    if-eqz p4, :cond_2d

    .line 637
    :try_start_15
    iget-object v3, p0, Lcom/chimeranft/core/RemoteIdentity;->profileFetchGate:Lcom/chimeranft/core/LongStamps;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 638
    sget-wide v8, Lcom/chimeranft/core/RemoteIdentity;->PROFILE_FETCH_GATE_MS:J

    move-wide v4, p2

    .line 637
    invoke-virtual/range {v3 .. v9}, Lcom/chimeranft/core/LongStamps;->throttled(JJJ)Z

    move-result p2

    if-nez p2, :cond_2e

    .line 640
    iget-object p2, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {p2, v4, v5}, Lcom/chimeranft/core/SyncClient;->requestRemoteState(J)V

    goto :goto_2e

    :catchall_2a
    move-exception v0

    move-object p1, v0

    goto :goto_79

    :cond_2d
    move-wide v4, p2

    .line 642
    :cond_2e
    :goto_2e
    iget-object p2, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {p2, v4, v5}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_37

    return v2

    .line 644
    :cond_37
    invoke-direct {p0, v4, v5, p2}, Lcom/chimeranft/core/RemoteIdentity;->preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p1, :cond_54

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    move-result p4

    .line 650
    const-string v0, "user"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    if-eq v0, p1, :cond_55

    .line 651
    invoke-direct {p0, v0, p2}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 p4, 0x1

    goto :goto_55

    :cond_54
    const/4 p4, 0x0

    :cond_55
    :goto_55
    if-eqz p5, :cond_6e

    .line 663
    invoke-virtual {p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getHasIdentity()Z

    move-result p5

    if-eqz p5, :cond_6e

    .line 665
    sget-object p5, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p5, v4, v5}, Lcom/chimeranft/core/Main$Companion;->cachedUserShared(J)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_6e

    if-eq p5, p1, :cond_6e

    .line 666
    invoke-direct {p0, p5, p2}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    move-result p1

    if-eqz p1, :cond_6e

    goto :goto_6f

    :cond_6e
    move p3, p4

    :goto_6f
    if-eqz p3, :cond_78

    .line 668
    iget-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->hits:J

    const-wide/16 p4, 0x1

    add-long/2addr p1, p4

    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->hits:J
    :try_end_78
    .catchall {:try_start_15 .. :try_end_78} :catchall_2a

    :cond_78
    return p3

    .line 672
    :goto_79
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "profileState: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    :cond_92
    :goto_92
    return v2
.end method

.method public final getAnnounces()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->announces:J

    return-wide v0
.end method

.method public final getApplies()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->applies:J

    return-wide v0
.end method

.method public final getForeignInvalidations()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->foreignInvalidations:J

    return-wide v0
.end method

.method public final getHits()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->hits:J

    return-wide v0
.end method

.method public final getLastError()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public final getMemoTrims()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->memoTrims:J

    return-wide v0
.end method

.method public final hasChatIdentity(J)Z
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-lez v3, :cond_24

    .line 263
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v3, p1, v0

    if-eqz v3, :cond_24

    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    if-nez v0, :cond_12

    goto :goto_24

    .line 266
    :cond_12
    :try_start_12
    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 267
    invoke-direct {p0, p1, p2, v0}, Lcom/chimeranft/core/RemoteIdentity;->preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getHasIdentity()Z

    move-result p1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_24

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    return p1

    :catchall_24
    :cond_24
    :goto_24
    return v2
.end method

.method public final maybeApply(Ljava/lang/Object;Z)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_de

    .line 166
    iget-object v2, v1, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    if-nez v2, :cond_c

    goto/16 :goto_de

    .line 167
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/RemoteIdentity;->uidOf(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_de

    .line 168
    iget-wide v6, v1, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v8, v2, v6

    if-nez v8, :cond_1e

    goto/16 :goto_de

    .line 169
    :cond_1e
    iget-wide v6, v1, Lcom/chimeranft/core/RemoteIdentity;->applies:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/chimeranft/core/RemoteIdentity;->applies:J

    if-eqz p2, :cond_30

    .line 172
    :try_start_27
    iget-object v6, v1, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v6, v2, v3}, Lcom/chimeranft/core/SyncClient;->requestRemoteState(J)V

    goto :goto_30

    :catchall_2d
    move-exception v0

    goto/16 :goto_c5

    .line 173
    :cond_30
    :goto_30
    iget-object v6, v1, Lcom/chimeranft/core/RemoteIdentity;->sync:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v6, v2, v3}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3a

    goto/16 :goto_de

    .line 178
    :cond_3a
    invoke-direct {v1, v0, v2, v3, v6}, Lcom/chimeranft/core/RemoteIdentity;->ensureGiftCount(Ljava/lang/Object;JLorg/json/JSONObject;)Z

    .line 180
    const-string v7, "updated_at"

    invoke-virtual {v6, v7, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 184
    iget-object v7, v1, Lcom/chimeranft/core/RemoteIdentity;->applyState:Ljava/util/WeakHashMap;

    monitor-enter v7
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_2d

    .line 185
    :try_start_4a
    iget-object v12, v1, Lcom/chimeranft/core/RemoteIdentity;->applyState:Ljava/util/WeakHashMap;

    invoke-virtual {v12, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [J

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_61

    .line 186
    aget-wide v15, v12, v13

    cmp-long v17, v15, v4

    if-eqz v17, :cond_5d

    goto :goto_61

    :cond_5d
    const/4 v15, 0x0

    goto :goto_62

    :catchall_5f
    move-exception v0

    goto :goto_c3

    :cond_61
    :goto_61
    const/4 v15, 0x1

    :goto_62
    if-eqz v12, :cond_71

    .line 187
    aget-wide v16, v12, v14

    sub-long v16, v10, v16

    sget-wide v18, Lcom/chimeranft/core/RemoteIdentity;->RESTAMP_THROTTLE_MS:J

    cmp-long v12, v16, v18

    if-lez v12, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 v12, 0x0

    goto :goto_72

    :cond_71
    :goto_71
    const/4 v12, 0x1

    :goto_72
    if-nez v15, :cond_76

    if-eqz v12, :cond_79

    :cond_76
    move-wide/from16 v16, v8

    goto :goto_7c

    :cond_79
    move-wide/from16 v16, v8

    goto :goto_88

    .line 188
    :goto_7c
    iget-object v8, v1, Lcom/chimeranft/core/RemoteIdentity;->applyState:Ljava/util/WeakHashMap;

    const/4 v9, 0x2

    new-array v9, v9, [J

    aput-wide v4, v9, v13

    aput-wide v10, v9, v14

    invoke-virtual {v8, v0, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_88
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8a
    .catchall {:try_start_4a .. :try_end_8a} :catchall_5f

    .line 184
    :try_start_8a
    monitor-exit v7

    if-nez v15, :cond_8f

    if-eqz v12, :cond_b8

    .line 195
    :cond_8f
    invoke-direct {v1, v2, v3, v6}, Lcom/chimeranft/core/RemoteIdentity;->preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    move-result-object v4

    .line 196
    invoke-direct {v1, v0, v4}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    move-result v5

    .line 197
    const-string v7, "user"

    invoke-static {v0, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b0

    if-eq v7, v0, :cond_b0

    .line 198
    invoke-direct {v1, v7}, Lcom/chimeranft/core/RemoteIdentity;->uidOf(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-nez v0, :cond_b0

    .line 200
    invoke-direct {v1, v7, v4}, Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const/4 v5, 0x1

    :cond_b0
    if-eqz v5, :cond_b8

    .line 202
    iget-wide v4, v1, Lcom/chimeranft/core/RemoteIdentity;->hits:J

    add-long v4, v4, v16

    iput-wide v4, v1, Lcom/chimeranft/core/RemoteIdentity;->hits:J

    :cond_b8
    if-eqz v15, :cond_bd

    .line 205
    invoke-direct {v1, v2, v3, v6}, Lcom/chimeranft/core/RemoteIdentity;->maybeInvalidateForeignGifts(JLorg/json/JSONObject;)V

    :cond_bd
    if-eqz p2, :cond_de

    .line 208
    invoke-direct {v1, v2, v3, v6, v14}, Lcom/chimeranft/core/RemoteIdentity;->maybeAnnounce(JLorg/json/JSONObject;Z)V

    return-void

    .line 184
    :goto_c3
    monitor-exit v7

    throw v0
    :try_end_c5
    .catchall {:try_start_8a .. :try_end_c5} :catchall_2d

    .line 211
    :goto_c5
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeApply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    :cond_de
    :goto_de
    return-void
.end method

.method public final onRecordPulled(JLorg/json/JSONObject;)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4d

    .line 298
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_4d

    if-nez p3, :cond_f

    goto :goto_4d

    .line 299
    :cond_f
    new-instance v0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;-><init>(Lorg/json/JSONObject;Lcom/chimeranft/core/RemoteIdentity;J)V

    .line 347
    :try_start_14
    sget-object p1, Lcom/chimeranft/core/RemoteIdentity;->AU:Ljava/lang/String;

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_30

    .line 348
    const-string p2, "runOnUIThread"

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v3

    invoke-static {p1, p2, v1, p3}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_2e
    move-exception p1

    goto :goto_34

    .line 350
    :cond_30
    invoke-virtual {v0}, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->run()V
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_2e

    return-void

    .line 353
    :goto_34
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onRecordDispatch: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final poll()Ljava/lang/String;
    .registers 10

    .line 1055
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity;->applies:J

    iget-wide v2, p0, Lcom/chimeranft/core/RemoteIdentity;->hits:J

    iget-wide v4, p0, Lcom/chimeranft/core/RemoteIdentity;->foreignInvalidations:J

    .line 1056
    iget-object v6, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_11

    const-string v6, ""

    goto :goto_24

    :cond_11
    iget-object v6, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

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

    const-string v8, "applies="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " hits="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " finval="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final prewarmRecord(JLorg/json/JSONObject;)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4b

    .line 278
    iget-wide v2, p0, Lcom/chimeranft/core/RemoteIdentity;->myId:J

    cmp-long v4, p1, v2

    if-eqz v4, :cond_4b

    if-nez p3, :cond_f

    goto :goto_4b

    .line 281
    :cond_f
    :try_start_f
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity;->preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleId()J

    move-result-wide p2

    cmp-long v2, p2, v0

    if-lez v2, :cond_4b

    invoke-virtual {p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleStatus()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4b

    .line 283
    invoke-virtual {p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getCollectibleId()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->getWearData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/chimeranft/core/RemoteIdentity;->collectibleFor(JLorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->setCollectibleStatus(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception p1

    .line 286
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "prewarm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final setAnnounces(J)V
    .registers 3

    .line 55
    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->announces:J

    return-void
.end method

.method public final setApplies(J)V
    .registers 3

    .line 53
    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->applies:J

    return-void
.end method

.method public final setForeignInvalidations(J)V
    .registers 3

    .line 27
    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->foreignInvalidations:J

    return-void
.end method

.method public final setHits(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->hits:J

    return-void
.end method

.method public final setLastError(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastError:Ljava/lang/String;

    return-void
.end method

.method public final setMemoTrims(J)V
    .registers 3

    .line 33
    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity;->memoTrims:J

    return-void
.end method

.method public final trimCaches()V
    .registers 5

    .line 100
    sget v0, Lcom/chimeranft/core/RemoteIdentity;->PREP_SLOTS:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_e

    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity;->preparedProfiles:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 103
    :cond_e
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->statusCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 104
    :try_start_11
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->statusCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 105
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_30

    .line 103
    monitor-exit v0

    .line 109
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    monitor-enter v0

    .line 110
    :try_start_1c
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 111
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->announceMs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 112
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity;->lastFullMs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2d

    .line 109
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_30
    move-exception v1

    .line 103
    monitor-exit v0

    throw v1
.end method
