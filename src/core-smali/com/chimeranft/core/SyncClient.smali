.class public final Lcom/chimeranft/core/SyncClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCESS_BACKOFF_MAX_MS:J = 0xc350L

.field public static final ACCESS_REVALIDATE_MS:J = 0x7530L

.field public static final ACCESS_STEADY_INTERVAL_MS:J = 0x7530L

.field public static final ACCESS_WAKE_MIN_GAP_MS:J = 0xfa0L

.field public static final ACTIVE_PROFILE_REPULL_MS:J = 0x5dcL

.field public static final BADGE_INTERVAL_MS:I = 0x1d4c0

.field private static final CHANNEL_KEY_PREFIX:Ljava/lang/String;

.field public static final Companion:Lcom/chimeranft/core/SyncClient$Companion;

.field public static final DEFAULT_KEY:Ljava/lang/String; = "6ef78976213eb13982ee124c373b74411dd5cbf35e7250ab"

.field public static final DEFAULT_SERVER:Ljava/lang/String; = "http://0.0.0.0:8787/00000"

.field public static final FULL_PUSH_INTERVAL_MS:J = 0x493e0L

.field public static final INITIAL_DELAY_MS:I = 0x4b0

.field public static final PREFETCH_BATCH_GRACE_MS:I = 0xc

.field public static final PREFETCH_BATCH_MAX:I = 0x18

.field private static final PREFETCH_GATE_MS:J

.field public static final PULL_INTERVAL_MS:I = 0x5dc

.field public static final PULL_TICK_MS:I = 0x1f4

.field public static final PUSH_INTERVAL_MS:I = 0xfa0

.field public static final SIBLING_SWEEP_MS:J = 0xea60L

.field public static final TIMEOUT_MS:I = 0x1770

.field private static final TRANSFER_IDLE_MAX_MS:J

.field public static final TRANSFER_INTERVAL_MS:I = 0xfa0

.field private static final USER_KEY_PREFIX:Ljava/lang/String;

.field public static final WATCH_REPULL_MS:J = 0xbb8L

.field public static final WATCH_TTL_MS:J = 0x3a98L


# instance fields
.field private accessBackoffMs:J

.field private final accessClientId:Ljava/lang/String;

.field private final accessEtag:Ljava/util/concurrent/ConcurrentHashMap;

.field private final accessEtagAt:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile accessOk:Z

.field private accessThread:Ljava/lang/Thread;

.field private final accessUsername:Ljava/lang/String;

.field private volatile activeProfileKey:J

.field private volatile badgeAttempts:J

.field private volatile badgeEtag:Ljava/lang/String;

.field private volatile badgeFail:J

.field private volatile badgeOk:J

.field private volatile badges:Lcom/chimeranft/core/Badges;

.field private volatile batchAttempts:J

.field private volatile batchCapability:I

.field private volatile batchFallbacks:J

.field private volatile batchOk:J

.field private volatile batchRecords:J

.field private batchTransientFailures:J

.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;

.field private final cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

.field private final cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

.field private final cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile cachedAccountNames:Ljava/lang/String;

.field private volatile cachedIds:Lcom/chimeranft/core/LongSet;

.field private volatile cachedSiblings:Ljava/lang/String;

.field private volatile cachedSiblingsFor:J

.field private volatile enabled:Z

.field private volatile forceFullAccessCheck:Z

.field private final forcePushPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile identityIds:Lcom/chimeranft/core/LongSet;

.field private final inFlightBatchIds:Ljava/util/Set;

.field private volatile inFlightPullUid:J

.field private final injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile lastAccessReport:Ljava/lang/String;

.field private volatile lastAccessWakeMs:J

.field private volatile lastBadgeFetchMs:J

.field private volatile lastBadgeResult:Ljava/lang/String;

.field private volatile lastError:Ljava/lang/String;

.field private volatile lastFullPushMs:J

.field private volatile lastMarketResult:Ljava/lang/String;

.field private volatile lastPayloadBytes:I

.field private volatile lastPullResult:Ljava/lang/String;

.field private volatile lastPushResult:Ljava/lang/String;

.field private volatile lastPushedVersion:J

.field private volatile lastSelfTest:Ljava/lang/String;

.field private volatile lastTransferFetchMs:J

.field public volatile lastTransferResult:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private volatile marketFeedFetches:J

.field private volatile marketFeedSupported:I

.field private volatile myId:J

.field private volatile offersSent:J

.field private final persistentLock:Ljava/lang/Object;

.field private persistentRecords:Lorg/json/JSONObject;

.field private persistentWriteDirty:Z

.field private persistentWriteQueued:Z

.field private final persistentWriter:Ljava/util/concurrent/ExecutorService;

.field private volatile pluginKey:Ljava/lang/String;

.field private final prefetchGate:Lcom/chimeranft/core/LongStamps;

.field private volatile pullAttempts:J

.field private volatile pullFail:J

.field private final pullFailureCounts:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile pullNetworkMaxMs:J

.field private volatile pullNetworkTotalMs:J

.field private volatile pullOk:J

.field private final pullQueue:Ljava/util/LinkedHashSet;

.field private final pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

.field private pullThread:Ljava/lang/Thread;

.field private volatile pullUnchanged:J

.field private volatile pushAttempts:J

.field private volatile pushBackoffMs:J

.field private volatile pushCoalesced:J

.field private volatile pushFail:J

.field private final pushLock:Ljava/lang/Object;

.field private volatile pushOk:J

.field private pushThread:Ljava/lang/Thread;

.field private final pushWorkerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile recordSink:Lcom/chimeranft/core/SyncClient$RecordSink;

.field private volatile recoverySink:Lcom/chimeranft/core/SyncClient$RecoverySink;

.field private volatile remoteDuplicates:J

.field private final restoredNotified:Ljava/util/Set;

.field private volatile running:Z

.field private final sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile server:Ljava/lang/String;

.field private volatile store:Lcom/chimeranft/core/Store;

.field private volatile transferBackoffMs:J

.field private volatile transferDuplicates:J

.field private volatile transferSink:Lcom/chimeranft/core/SyncClient$TransferSink;

.field private final urgentPullQueue:Ljava/util/LinkedHashSet;

.field private final watched:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile xferApplied:J

.field private volatile xferPolls:J

.field private volatile xferPushFail:J

.field private volatile xferPushOk:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/SyncClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    .line 2484
    const-string v0, "tg-main:"

    sput-object v0, Lcom/chimeranft/core/SyncClient;->USER_KEY_PREFIX:Ljava/lang/String;

    .line 2485
    const-string v0, "tg-channel:"

    sput-object v0, Lcom/chimeranft/core/SyncClient;->CHANNEL_KEY_PREFIX:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    .line 2494
    sput-wide v0, Lcom/chimeranft/core/SyncClient;->TRANSFER_IDLE_MAX_MS:J

    .line 2549
    sput-wide v0, Lcom/chimeranft/core/SyncClient;->PREFETCH_GATE_MS:J

    return-void
.end method

.method public constructor <init>(JLcom/chimeranft/core/Store;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    .line 34
    iput-object p3, p0, Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    .line 48
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->pushWorkerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->forcePushPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    const-string p2, "(none)"

    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->lastBadgeResult:Ljava/lang/String;

    const-wide/16 v0, 0xfa0

    .line 62
    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    .line 63
    const-string v2, ""

    iput-object v2, p0, Lcom/chimeranft/core/SyncClient;->badgeEtag:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    .line 72
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    .line 84
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->pullFailureCounts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    .line 101
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    .line 102
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->inFlightBatchIds:Ljava/util/Set;

    .line 104
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    .line 105
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->persistentLock:Ljava/lang/Object;

    .line 106
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->persistentRecords:Lorg/json/JSONObject;

    .line 110
    const-string v3, "chimeranft-snapshot-writer"

    invoke-static {v3, p1}, Lcom/chimeranft/core/Safe;->factory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    .line 109
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->persistentWriter:Ljava/util/concurrent/ExecutorService;

    .line 111
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->restoredNotified:Ljava/util/Set;

    .line 118
    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->lastSelfTest:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 133
    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pushBackoffMs:J

    const-wide/16 v0, -0x1

    .line 135
    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->lastPushedVersion:J

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->pushLock:Ljava/lang/Object;

    .line 153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->watched:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    new-instance v0, Lcom/chimeranft/core/LongStamps;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->prefetchGate:Lcom/chimeranft/core/LongStamps;

    const-wide/high16 v0, -0x8000000000000000L

    .line 177
    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->cachedSiblingsFor:J

    .line 179
    iput-boolean p1, p0, Lcom/chimeranft/core/SyncClient;->accessOk:Z

    .line 181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->accessEtag:Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->accessEtagAt:Ljava/util/concurrent/ConcurrentHashMap;

    .line 184
    iput-boolean p1, p0, Lcom/chimeranft/core/SyncClient;->forceFullAccessCheck:Z

    .line 187
    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->lastAccessReport:Ljava/lang/String;

    .line 191
    new-instance p1, Lcom/chimeranft/core/LongSet;

    invoke-direct {p1, p3}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->cachedIds:Lcom/chimeranft/core/LongSet;

    .line 192
    new-instance p1, Lcom/chimeranft/core/LongSet;

    invoke-direct {p1, p3}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->identityIds:Lcom/chimeranft/core/LongSet;

    .line 240
    sget-object p1, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trimUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, p4}, Lcom/chimeranft/core/SyncClient$Companion;->access$trimUrl(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    if-nez p5, :cond_fc

    move-object p5, v2

    .line 241
    :cond_fc
    iput-object p5, p0, Lcom/chimeranft/core/SyncClient;->pluginKey:Ljava/lang/String;

    .line 242
    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->normalizeAccessUsername(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, p6}, Lcom/chimeranft/core/SyncClient$Companion;->access$normalizeAccessUsername(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->accessUsername:Ljava/lang/String;

    .line 243
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/Main$Companion;->accessClientId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10d

    goto :goto_10e

    :cond_10d
    move-object v2, p1

    :goto_10e
    iput-object v2, p0, Lcom/chimeranft/core/SyncClient;->accessClientId:Ljava/lang/String;

    .line 244
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->loadPersistentCache()V

    return-void
.end method

.method private final acceptNotModified(J)V
    .registers 7

    .line 1119
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->pullFailureCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullOk:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullOk:J

    .line 1123
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullUnchanged:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullUnchanged:J

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "304 unchanged uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    return-void
.end method

.method private final acceptRecord(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    .line 1132
    iget-wide v5, v1, Lcom/chimeranft/core/SyncClient;->remoteDuplicates:J

    sget-object v7, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->normalizeRemoteGifts(Lorg/json/JSONObject;)I
    invoke-static {v7, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$normalizeRemoteGifts(Lcom/chimeranft/core/SyncClient$Companion;Lorg/json/JSONObject;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/chimeranft/core/SyncClient;->remoteDuplicates:J

    if-eqz v0, :cond_22

    .line 1139
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_22

    .line 1140
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_38

    :cond_22
    :goto_22
    if-eqz p5, :cond_30

    .line 1141
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_30

    .line 1142
    :cond_2b
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_38

    .line 1144
    :cond_30
    :goto_30
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 1145
    :goto_38
    iget-object v6, v1, Lcom/chimeranft/core/SyncClient;->cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_51

    .line 1146
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_4f

    goto :goto_51

    :cond_4f
    const/4 v6, 0x0

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v6, 0x1

    .line 1147
    :goto_52
    iget-object v9, v1, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v9

    if-nez v6, :cond_67

    .line 1148
    :try_start_57
    iget-object v10, v1, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_70

    goto :goto_67

    :catchall_64
    move-exception v0

    goto/16 :goto_1cd

    :cond_67
    :goto_67
    iget-object v10, v1, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    :cond_70
    iget-object v10, v1, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v10, v1, Lcom/chimeranft/core/SyncClient;->cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v11, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_a0

    .line 1151
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_97

    goto :goto_a0

    :cond_97
    iget-object v5, v1, Lcom/chimeranft/core/SyncClient;->cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_a0
    :goto_a0
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v5, 0x100

    if-le v0, v5, :cond_fb

    .line 1156
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const-wide v10, 0x7fffffffffffffffL

    :cond_ba
    :goto_ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1157
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    cmp-long v15, v13, v10

    if-gez v15, :cond_ba

    .line 1158
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 1159
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    goto :goto_ba

    :cond_e5
    if-eqz v5, :cond_fb

    .line 1163
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :cond_fb
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_fd
    .catchall {:try_start_57 .. :try_end_fd} :catchall_64

    .line 1147
    monitor-exit v9

    if-nez p6, :cond_103

    .line 1177
    invoke-direct {v1}, Lcom/chimeranft/core/SyncClient;->rebuildCacheGate()V

    .line 1178
    :cond_103
    iget-wide v9, v1, Lcom/chimeranft/core/SyncClient;->pullOk:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/chimeranft/core/SyncClient;->pullOk:J

    .line 1179
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->pullFailureCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    const-string v0, "username_state"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1182
    const-string v5, "number_state"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1183
    const-string v9, "rating_state"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1184
    sget-object v10, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v10, v4}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result v10

    .line 1185
    const-string v13, "wear_active"

    invoke-virtual {v4, v13, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v0, :cond_146

    .line 1186
    const-string v14, "enabled"

    invoke-virtual {v0, v14, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_146

    const/4 v0, 0x1

    goto :goto_147

    :cond_146
    const/4 v0, 0x0

    :goto_147
    if-eqz v5, :cond_153

    .line 1187
    const-string v14, "enabled"

    invoke-virtual {v5, v14, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_153

    const/4 v5, 0x1

    goto :goto_154

    :cond_153
    const/4 v5, 0x0

    :goto_154
    if-eqz v9, :cond_15f

    .line 1188
    const-string v14, "enabled"

    invoke-virtual {v9, v14, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_15f

    goto :goto_160

    :cond_15f
    const/4 v7, 0x0

    :goto_160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OK uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " gifts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " wear="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " un="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " num="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " rat="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    .line 1189
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->recordSink:Lcom/chimeranft/core/SyncClient$RecordSink;

    if-eqz v6, :cond_1c0

    if-eqz v0, :cond_1c0

    .line 1194
    :try_start_1a1
    invoke-interface {v0, v2, v3, v4}, Lcom/chimeranft/core/SyncClient$RecordSink;->onRecord(JLorg/json/JSONObject;)V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_1a5

    goto :goto_1c7

    :catchall_1a5
    move-exception v0

    .line 1197
    sget-object v5, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v5, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recSink: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    goto :goto_1c7

    :cond_1c0
    if-nez v6, :cond_1c7

    .line 1203
    iget-wide v7, v1, Lcom/chimeranft/core/SyncClient;->pullUnchanged:J

    add-long/2addr v7, v11

    iput-wide v7, v1, Lcom/chimeranft/core/SyncClient;->pullUnchanged:J

    :cond_1c7
    :goto_1c7
    if-eqz v6, :cond_1cc

    .line 1205
    invoke-direct/range {p0 .. p3}, Lcom/chimeranft/core/SyncClient;->persistRecord(JLorg/json/JSONObject;)V

    :cond_1cc
    return-void

    .line 1147
    :goto_1cd
    monitor-exit v9

    throw v0
.end method

.method static synthetic acceptRecord$default(Lcom/chimeranft/core/SyncClient;JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v5, p5

    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_11

    const/4 p6, 0x0

    const/4 v6, 0x0

    :goto_c
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    goto :goto_13

    :cond_11
    move v6, p6

    goto :goto_c

    .line 1131
    :goto_13
    invoke-direct/range {v0 .. v6}, Lcom/chimeranft/core/SyncClient;->acceptRecord(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$accessLoop(Lcom/chimeranft/core/SyncClient;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->accessLoop()V

    return-void
.end method

.method public static final synthetic access$fetchBadges(Lcom/chimeranft/core/SyncClient;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->fetchBadges()V

    return-void
.end method

.method public static final synthetic access$getCHANNEL_KEY_PREFIX$cp()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/chimeranft/core/SyncClient;->CHANNEL_KEY_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getForcePushPending$p(Lcom/chimeranft/core/SyncClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/chimeranft/core/SyncClient;->forcePushPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getMyId$p(Lcom/chimeranft/core/SyncClient;)J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    return-wide v0
.end method

.method public static final synthetic access$getPushWorkerRunning$p(Lcom/chimeranft/core/SyncClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/chimeranft/core/SyncClient;->pushWorkerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getStore$p(Lcom/chimeranft/core/SyncClient;)Lcom/chimeranft/core/Store;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;

    return-object p0
.end method

.method public static final synthetic access$getUSER_KEY_PREFIX$cp()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/chimeranft/core/SyncClient;->USER_KEY_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$nextPersistBody(Lcom/chimeranft/core/SyncClient;)Ljava/lang/String;
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->nextPersistBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$pullLoop(Lcom/chimeranft/core/SyncClient;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->pullLoop()V

    return-void
.end method

.method public static final synthetic access$pushLoop(Lcom/chimeranft/core/SyncClient;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->pushLoop()V

    return-void
.end method

.method private final accessLoop()V
    .registers 14

    const-wide/16 v0, 0x4b0

    .line 1481
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    .line 1484
    :catch_6
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->running:Z

    if-nez v0, :cond_d

    :cond_a
    move-object v5, p0

    goto/16 :goto_95

    :cond_d
    :goto_d
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 1488
    :goto_10
    iget-boolean v4, p0, Lcom/chimeranft/core/SyncClient;->running:Z

    if-eqz v4, :cond_a

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 1490
    invoke-static/range {v5 .. v10}, Lcom/chimeranft/core/SyncClient;->checkAccessDenied$default(Lcom/chimeranft/core/SyncClient;JLjava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto/16 :goto_95

    .line 1495
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v2

    const-wide/32 v10, 0xea60

    cmp-long v4, v8, v10

    if-lez v4, :cond_5d

    .line 1499
    invoke-virtual {p0}, Lcom/chimeranft/core/SyncClient;->invalidateSiblingCache()V

    .line 1500
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/Main$Companion;->localAccountIds()[J

    move-result-object v2

    .line 1501
    array-length v3, v2

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v3, :cond_5c

    .line 1503
    iget-boolean v8, v5, Lcom/chimeranft/core/SyncClient;->running:Z

    if-nez v8, :cond_41

    goto :goto_95

    .line 1504
    :cond_41
    aget-wide v8, v2, v4

    cmp-long v10, v8, v0

    if-lez v10, :cond_59

    iget-wide v10, v5, Lcom/chimeranft/core/SyncClient;->myId:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_4e

    goto :goto_59

    .line 1506
    :cond_4e
    aget-wide v8, v2, v4

    const-string v10, ""

    invoke-direct {p0, v8, v9, v10}, Lcom/chimeranft/core/SyncClient;->checkAccessDenied(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_59

    goto :goto_95

    :cond_59
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_5c
    move-wide v2, v6

    .line 1510
    :cond_5d
    iget-boolean v4, v5, Lcom/chimeranft/core/SyncClient;->accessOk:Z

    const-wide/16 v6, 0x7530

    if-nez v4, :cond_85

    .line 1514
    iget-wide v8, v5, Lcom/chimeranft/core/SyncClient;->accessBackoffMs:J

    cmp-long v4, v8, v0

    if-gtz v4, :cond_6a

    goto :goto_75

    :cond_6a
    const-wide/16 v6, 0x2

    mul-long v8, v8, v6

    const-wide/32 v6, 0xc350

    .line 1517
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1514
    :goto_75
    iput-wide v6, v5, Lcom/chimeranft/core/SyncClient;->accessBackoffMs:J

    .line 1518
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x40b3880000000000L    # 5000.0

    mul-double v8, v8, v10

    double-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_87

    .line 1522
    :cond_85
    iput-wide v0, v5, Lcom/chimeranft/core/SyncClient;->accessBackoffMs:J

    .line 1531
    :goto_87
    :try_start_87
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_10

    .line 1534
    :catch_8b
    iget-boolean v4, v5, Lcom/chimeranft/core/SyncClient;->running:Z

    if-nez v4, :cond_90

    goto :goto_95

    .line 1535
    :cond_90
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto/16 :goto_10

    :goto_95
    return-void
.end method

.method private final accountNamesFor()Ljava/lang/String;
    .registers 13

    .line 1325
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cachedAccountNames:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1327
    :cond_5
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->localAccounts()Lorg/json/JSONArray;

    move-result-object v0

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x60

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1329
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_59

    .line 1331
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 1333
    const-string v5, "id"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1334
    sget-object v5, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const-string v10, "username"

    const-string v11, ""

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->normalizeAccessUsername(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$normalizeAccessUsername(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    cmp-long v5, v8, v6

    if-lez v5, :cond_56

    .line 1335
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_40

    goto :goto_56

    .line 1336
    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4b

    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1337
    :cond_4b
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1339
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1340
    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->cachedAccountNames:Ljava/lang/String;

    return-object v0
.end method

.method private final declared-synchronized accountStillCurrent(J)Z
    .registers 6

    monitor-enter p0

    .line 644
    :try_start_1
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->myId:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    cmp-long v2, v0, p1

    if-nez v2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method private final ackTransfers(Ljava/util/List;)V
    .registers 11

    .line 2012
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2013
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_51

    if-eqz v1, :cond_1d

    :try_start_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_54

    .line 2014
    :cond_1d
    :try_start_1d
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2015
    const-string v1, "event_ids"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2016
    const-string v3, "POST"

    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/api/v1/transfers/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/ack"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_51

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    :try_start_4a
    invoke-static/range {v2 .. v8}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    :goto_4f
    move-object p1, v0

    goto :goto_54

    :catchall_51
    move-exception v0

    move-object v2, p0

    goto :goto_4f

    .line 2019
    :goto_54
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xferack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    return-void
.end method

.method private final checkAccessDenied(JLjava/lang/String;)Z
    .registers 15

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_8

    return v2

    .line 1219
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1220
    const-string v1, "/api/v1/xxxxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_38

    const/16 v1, 0x26

    .line 1222
    const-string v3, "UTF-8"

    const/16 v4, 0x3f

    if-eqz p3, :cond_3b

    :try_start_1f
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_26

    goto :goto_3b

    .line 1224
    :cond_26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "username="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x26

    goto :goto_3b

    :catchall_38
    move-exception p1

    goto/16 :goto_133

    .line 1227
    :cond_3b
    :goto_3b
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/SyncClient;->siblingsFor(J)Ljava/lang/String;

    move-result-object p3

    .line 1228
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_46

    goto :goto_53

    .line 1230
    :cond_46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "siblings="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x26

    .line 1233
    :goto_53
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->accessClientId:Ljava/lang/String;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_5d

    move v1, v4

    goto :goto_6e

    .line 1235
    :cond_5d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "client_id="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->accessClientId:Ljava/lang/String;

    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :goto_6e
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->accountNamesFor()Ljava/lang/String;

    move-result-object p3

    .line 1240
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_79

    goto :goto_88

    .line 1242
    :cond_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "account_usernames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :goto_88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 1262
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->accessEtag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1264
    iget-object v5, p0, Lcom/chimeranft/core/SyncClient;->accessEtagAt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    const/4 v6, 0x1

    if-eqz v5, :cond_b2

    .line 1265
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v3, v7

    const-wide/16 v9, 0x7530

    cmp-long v5, v7, v9

    if-lez v5, :cond_b0

    goto :goto_b2

    :cond_b0
    const/4 v5, 0x0

    goto :goto_b3

    :cond_b2
    :goto_b2
    const/4 v5, 0x1

    .line 1266
    :goto_b3
    iget-boolean v7, p0, Lcom/chimeranft/core/SyncClient;->forceFullAccessCheck:Z

    const/4 v8, 0x0

    if-nez v7, :cond_ba

    if-eqz v5, :cond_bb

    :cond_ba
    move-object v1, v8

    .line 1267
    :cond_bb
    const-string v5, "GET"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0, v8, v1}, Lcom/chimeranft/core/SyncClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1268
    sget-object v1, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    aget-object v5, v0, v2

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v1, v5}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v1

    const/16 v5, 0x130

    if-ne v1, v5, :cond_d4

    .line 1271
    iput-boolean v6, p0, Lcom/chimeranft/core/SyncClient;->accessOk:Z

    return v2

    :cond_d4
    const/16 v5, 0xc8

    if-lt v1, v5, :cond_130

    const/16 v5, 0x12c

    if-ge v1, v5, :cond_130

    .line 1274
    aget-object v1, v0, v6

    if-eqz v1, :cond_130

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e7

    goto :goto_130

    .line 1279
    :cond_e7
    iput-boolean v6, p0, Lcom/chimeranft/core/SyncClient;->accessOk:Z

    .line 1280
    iput-boolean v2, p0, Lcom/chimeranft/core/SyncClient;->forceFullAccessCheck:Z

    .line 1281
    array-length v1, v0

    const/4 v5, 0x2

    if-le v1, v5, :cond_10e

    aget-object v1, v0, v5

    if-eqz v1, :cond_10e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_fa

    goto :goto_10e

    .line 1283
    :cond_fa
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->accessEtag:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v5, v0, v5

    invoke-virtual {v1, p3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->accessEtagAt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    goto :goto_11b

    .line 1288
    :cond_10e
    :goto_10e
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->accessEtag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->accessEtagAt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    .line 1291
    :goto_11b
    new-instance p3, Lorg/json/JSONObject;

    aget-object v0, v0, v6

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1292
    const-string v0, "allowed"

    invoke-virtual {p3, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_14e

    .line 1294
    iput-boolean v2, p0, Lcom/chimeranft/core/SyncClient;->running:Z

    .line 1295
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/SyncClient;->onAccessDenied(JLorg/json/JSONObject;)V

    return v6

    .line 1276
    :cond_130
    :goto_130
    iput-boolean v2, p0, Lcom/chimeranft/core/SyncClient;->accessOk:Z
    :try_end_132
    .catchall {:try_start_1f .. :try_end_132} :catchall_38

    return v2

    .line 1300
    :goto_133
    iput-boolean v2, p0, Lcom/chimeranft/core/SyncClient;->accessOk:Z

    .line 1301
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "access: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    :cond_14e
    return v2
.end method

.method static synthetic checkAccessDenied$default(Lcom/chimeranft/core/SyncClient;JLjava/lang/String;ILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 1215
    iget-wide p1, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->accessUsername:Ljava/lang/String;

    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/SyncClient;->checkAccessDenied(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final fetchBadges()V
    .registers 11

    .line 1554
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->badges:Lcom/chimeranft/core/Badges;

    if-nez v0, :cond_5

    return-void

    .line 1555
    :cond_5
    iget-wide v1, p0, Lcom/chimeranft/core/SyncClient;->badgeAttempts:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/SyncClient;->badgeAttempts:J

    .line 1556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/chimeranft/core/SyncClient;->lastBadgeFetchMs:J

    const/4 v1, 0x0

    .line 1560
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->badgeEtag:Ljava/lang/String;

    const-string v5, "GET"

    const-string v6, "/api/v1/badges"

    invoke-direct {p0, v5, v6, v1, v2}, Lcom/chimeranft/core/SyncClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1561
    sget-object v2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v5, 0x0

    aget-object v6, v1, v5

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v2, v6}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x130

    if-ne v6, v7, :cond_47

    .line 1564
    iget-wide v1, p0, Lcom/chimeranft/core/SyncClient;->badgeOk:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/SyncClient;->badgeOk:J

    .line 1565
    invoke-virtual {v0}, Lcom/chimeranft/core/Badges;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK 304 (unchanged) badges="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastBadgeResult:Ljava/lang/String;

    return-void

    :cond_47
    const/16 v7, 0xc8

    if-lt v6, v7, :cond_bd

    const/16 v7, 0x12c

    if-ge v6, v7, :cond_bd

    const/4 v7, 0x1

    .line 1568
    aget-object v8, v1, v7

    if-eqz v8, :cond_bd

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_bd

    .line 1570
    array-length v5, v1

    if-le v5, v9, :cond_6d

    aget-object v5, v1, v9

    if-eqz v5, :cond_6d

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_69

    goto :goto_6d

    :cond_69
    aget-object v5, v1, v9

    iput-object v5, p0, Lcom/chimeranft/core/SyncClient;->badgeEtag:Ljava/lang/String;

    .line 1571
    :cond_6d
    :goto_6d
    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Badges;->updateFromJson(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1574
    iget-wide v1, p0, Lcom/chimeranft/core/SyncClient;->badgeOk:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/SyncClient;->badgeOk:J

    .line 1575
    invoke-virtual {v0}, Lcom/chimeranft/core/Badges;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " badges="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastBadgeResult:Ljava/lang/String;

    return-void

    .line 1579
    :cond_9a
    iget-wide v5, p0, Lcom/chimeranft/core/SyncClient;->badgeFail:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/chimeranft/core/SyncClient;->badgeFail:J

    .line 1580
    invoke-virtual {v0}, Lcom/chimeranft/core/Badges;->getLastError()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v0, v1}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse FAIL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastBadgeResult:Ljava/lang/String;

    return-void

    .line 1585
    :cond_bd
    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->badgeFail:J

    add-long/2addr v6, v3

    iput-wide v6, p0, Lcom/chimeranft/core/SyncClient;->badgeFail:J

    .line 1586
    aget-object v0, v1, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAIL code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastBadgeResult:Ljava/lang/String;

    return-void
.end method

.method private final fetchBatchOrFallback(Ljava/util/List;)V
    .registers 22

    move-object/from16 v1, p0

    .line 1022
    const-string v0, "items"

    if-eqz p1, :cond_1f6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_1f6

    .line 1023
    :cond_e
    iget v2, v1, Lcom/chimeranft/core/SyncClient;->batchCapability:I

    const-wide/16 v8, 0x1

    if-gez v2, :cond_31

    .line 1025
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchFallbacks:J

    add-long/2addr v2, v8

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchFallbacks:J

    .line 1026
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/chimeranft/core/SyncClient;->fetchOne(J)V

    goto :goto_1d

    .line 1029
    :cond_31
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchAttempts:J

    add-long/2addr v2, v8

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchAttempts:J

    .line 1032
    :try_start_36
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1033
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1034
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_7f

    const-string v10, "etag"

    const-string v11, "id"

    const-wide/16 v12, 0x0

    if-eqz v5, :cond_88

    :try_start_50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v12

    if-eqz v7, :cond_44

    .line 1037
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1038
    invoke-virtual {v7, v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1039
    iget-object v11, v1, Lcom/chimeranft/core/SyncClient;->cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_84

    .line 1040
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7b

    goto :goto_84

    :cond_7b
    invoke-virtual {v7, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_84

    :catchall_7f
    move-exception v0

    move-wide/from16 v17, v8

    goto/16 :goto_1d4

    .line 1041
    :cond_84
    :goto_84
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_44

    .line 1043
    :cond_88
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1044
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object v3, v2

    .line 1045
    const-string v2, "POST"

    move-object v4, v3

    const-string v3, "/api/v1/users/batch/state"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v14

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 1047
    iget-wide v5, v1, Lcom/chimeranft/core/SyncClient;->pullNetworkTotalMs:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lcom/chimeranft/core/SyncClient;->pullNetworkTotalMs:J

    .line 1048
    iget-wide v5, v1, Lcom/chimeranft/core/SyncClient;->pullNetworkMaxMs:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_b7

    iput-wide v3, v1, Lcom/chimeranft/core/SyncClient;->pullNetworkMaxMs:J

    .line 1049
    :cond_b7
    sget-object v3, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v14, 0x0

    aget-object v4, v2, v14

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x194

    if-eq v3, v4, :cond_1b1

    const/16 v4, 0x195

    if-eq v3, v4, :cond_1b1

    const/16 v4, 0x1f5

    if-eq v3, v4, :cond_1b1

    const/16 v15, 0xc8

    if-lt v3, v15, :cond_d9

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_d9

    const/4 v3, 0x1

    .line 1057
    aget-object v5, v2, v3

    if-nez v5, :cond_dd

    :cond_d9
    move-wide/from16 v17, v8

    goto/16 :goto_1a7

    .line 1071
    :cond_dd
    new-instance v5, Lorg/json/JSONObject;

    aget-object v2, v2, v3

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_19d

    .line 1074
    iput v3, v1, Lcom/chimeranft/core/SyncClient;->batchCapability:I

    .line 1075
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchOk:J

    add-long/2addr v2, v8

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchOk:J

    .line 1076
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    .line 1078
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_101
    if-ge v3, v2, :cond_175

    .line 1080
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_162

    move v7, v2

    move/from16 v16, v3

    .line 1082
    invoke-virtual {v6, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_110
    .catchall {:try_start_50 .. :try_end_110} :catchall_7f

    move-wide/from16 v17, v8

    .line 1083
    :try_start_112
    const-string v8, "status"

    invoke-virtual {v6, v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    cmp-long v9, v2, v12

    if-eqz v9, :cond_123

    const/16 v9, 0x130

    if-ne v8, v9, :cond_12c

    .line 1087
    invoke-direct {v1, v2, v3}, Lcom/chimeranft/core/SyncClient;->acceptNotModified(J)V

    :cond_123
    move v9, v5

    move/from16 v19, v7

    const/16 v8, 0x12c

    goto :goto_16b

    :catchall_129
    move-exception v0

    goto/16 :goto_1d4

    :cond_12c
    if-lt v8, v15, :cond_153

    if-ge v8, v4, :cond_153

    .line 1091
    const-string v8, "state"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_123

    .line 1094
    const-string v9, ""

    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v9, v5

    move-object v5, v6

    const/4 v6, 0x0

    move/from16 v19, v7

    const/4 v7, 0x1

    move-object v4, v8

    const/16 v8, 0x12c

    invoke-direct/range {v1 .. v7}, Lcom/chimeranft/core/SyncClient;->acceptRecord(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1095
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchRecords:J

    add-long v2, v2, v17

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchRecords:J

    add-int/lit8 v5, v9, 0x1

    goto :goto_16c

    :cond_153
    move v9, v5

    move/from16 v19, v7

    const/16 v8, 0x12c

    .line 1101
    invoke-direct {v1, v2, v3}, Lcom/chimeranft/core/SyncClient;->markPullFailure(J)V

    .line 1102
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->pullFail:J

    add-long v2, v2, v17

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->pullFail:J

    goto :goto_16b

    :cond_162
    move/from16 v19, v2

    move/from16 v16, v3

    move-wide/from16 v17, v8

    const/16 v8, 0x12c

    move v9, v5

    :goto_16b
    move v5, v9

    :goto_16c
    add-int/lit8 v3, v16, 0x1

    move-wide/from16 v8, v17

    move/from16 v2, v19

    const/16 v4, 0x12c

    goto :goto_101

    :cond_175
    move-wide/from16 v17, v8

    move v9, v5

    if-lez v9, :cond_17d

    .line 1106
    invoke-direct {v1}, Lcom/chimeranft/core/SyncClient;->rebuildCacheGate()V

    .line 1107
    :cond_17d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BATCH OK ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " records="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    return-void

    :cond_19d
    move-wide/from16 v17, v8

    .line 1073
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "batch items missing"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :goto_1a7
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchTransientFailures:J

    add-long v2, v2, v17

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchTransientFailures:J

    .line 1068
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/SyncClient;->requeueAfterBatchFailure(Ljava/util/List;)V

    return-void

    :cond_1b1
    move-wide/from16 v17, v8

    const/4 v0, -0x1

    .line 1052
    iput v0, v1, Lcom/chimeranft/core/SyncClient;->batchCapability:I

    .line 1053
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchFallbacks:J

    add-long v2, v2, v17

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchFallbacks:J

    .line 1054
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/chimeranft/core/SyncClient;->fetchOne(J)V
    :try_end_1d3
    .catchall {:try_start_112 .. :try_end_1d3} :catchall_129

    goto :goto_1c0

    .line 1111
    :goto_1d4
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchTransientFailures:J

    add-long v2, v2, v17

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->batchTransientFailures:J

    .line 1112
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch fallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 1113
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/SyncClient;->requeueAfterBatchFailure(Ljava/util/List;)V

    :cond_1f6
    :goto_1f6
    return-void
.end method

.method private final fetchOne(J)V
    .registers 15

    .line 938
    iget-wide v4, p0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    .line 939
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 940
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->keyFor(J)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/chimeranft/core/SyncClient$Companion;->access$keyFor(Lcom/chimeranft/core/SyncClient$Companion;J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/api/v1/users/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/state"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 941
    iget-object v7, p0, Lcom/chimeranft/core/SyncClient;->cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 940
    const-string v10, "GET"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v6, v11, v7}, Lcom/chimeranft/core/SyncClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 942
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v10, v4

    .line 943
    iget-wide v4, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkTotalMs:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkTotalMs:J

    .line 944
    iget-wide v4, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkMaxMs:J

    cmp-long v7, v10, v4

    if-lez v7, :cond_50

    iput-wide v10, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkMaxMs:J

    :cond_50
    const/4 v4, 0x0

    .line 945
    aget-object v5, v6, v4

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v0, v5}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x130

    if-ne v0, v5, :cond_5f

    .line 947
    invoke-direct/range {p0 .. p2}, Lcom/chimeranft/core/SyncClient;->acceptNotModified(J)V

    return-void

    :cond_5f
    const/16 v5, 0xc8

    if-lt v0, v5, :cond_bf

    const/16 v5, 0x12c

    if-ge v0, v5, :cond_bf

    const/4 v0, 0x1

    .line 950
    aget-object v5, v6, v0

    if-eqz v5, :cond_bf

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_bf

    .line 956
    :try_start_73
    new-instance v4, Lorg/json/JSONObject;

    aget-object v5, v6, v0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 957
    array-length v5, v6

    if-le v5, v7, :cond_82

    aget-object v5, v6, v7

    goto :goto_84

    :catchall_80
    move-exception v0

    goto :goto_8d

    :cond_82
    const-string v5, ""

    :goto_84
    aget-object v6, v6, v0

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    .line 956
    invoke-direct/range {v1 .. v7}, Lcom/chimeranft/core/SyncClient;->acceptRecord(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_80

    return-void

    .line 960
    :goto_8d
    invoke-direct/range {p0 .. p2}, Lcom/chimeranft/core/SyncClient;->markPullFailure(J)V

    .line 961
    iget-wide v4, p0, Lcom/chimeranft/core/SyncClient;->pullFail:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/chimeranft/core/SyncClient;->pullFail:J

    .line 962
    sget-object v4, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    sget-object v5, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v5, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v4, v0, v5}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse FAIL uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    return-void

    .line 968
    :cond_bf
    invoke-direct/range {p0 .. p2}, Lcom/chimeranft/core/SyncClient;->markPullFailure(J)V

    .line 969
    iget-wide v10, p0, Lcom/chimeranft/core/SyncClient;->pullFail:J

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/chimeranft/core/SyncClient;->pullFail:J

    .line 970
    aget-object v0, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAIL uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " code="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    return-void
.end method

.method private final fetchTransfers()V
    .registers 20

    move-object/from16 v1, p0

    .line 1716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->lastTransferFetchMs:J

    .line 1717
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->xferPolls:J

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->xferPolls:J

    .line 1718
    iget-object v10, v1, Lcom/chimeranft/core/SyncClient;->transferSink:Lcom/chimeranft/core/SyncClient$TransferSink;

    if-nez v10, :cond_15

    goto/16 :goto_124

    .line 1722
    :cond_15
    iget-wide v11, v1, Lcom/chimeranft/core/SyncClient;->myId:J

    .line 1723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/api/v1/transfers/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 1724
    sget-object v2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v2, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xc8

    const-wide/32 v13, 0xea60

    const-wide/16 v15, 0x2

    const-wide/16 v5, 0xfa0

    if-lt v2, v4, :cond_125

    const/16 v4, 0x12c

    if-ge v2, v4, :cond_125

    const/4 v2, 0x1

    .line 1725
    aget-object v4, v0, v2

    if-eqz v4, :cond_125

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x2

    if-ge v4, v7, :cond_59

    goto/16 :goto_125

    .line 1733
    :cond_59
    :try_start_59
    new-instance v4, Lorg/json/JSONObject;

    aget-object v0, v0, v2

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1734
    const-string v0, "transfers"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_6a

    const/4 v4, 0x0

    goto :goto_6f

    .line 1735
    :cond_6a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v4, v0

    .line 1736
    :goto_6f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_74
    if-ge v3, v4, :cond_bc

    .line 1739
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_b3

    if-eqz v0, :cond_b5

    .line 1744
    :try_start_7c
    invoke-interface {v10, v11, v12, v0}, Lcom/chimeranft/core/SyncClient$TransferSink;->apply(JLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_83

    move-wide/from16 v17, v8

    goto :goto_a0

    :catchall_83
    move-exception v0

    move-wide/from16 v17, v8

    .line 1747
    :try_start_86
    sget-object v8, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v8, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apply: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_a0
    if-eqz v0, :cond_b7

    .line 1750
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_a9

    goto :goto_b7

    .line 1751
    :cond_a9
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    iget-wide v8, v1, Lcom/chimeranft/core/SyncClient;->xferApplied:J

    add-long v8, v8, v17

    iput-wide v8, v1, Lcom/chimeranft/core/SyncClient;->xferApplied:J

    goto :goto_b7

    :catchall_b3
    move-exception v0

    goto :goto_f5

    :cond_b5
    move-wide/from16 v17, v8

    :cond_b7
    :goto_b7
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v8, v17

    goto :goto_74

    .line 1755
    :cond_bc
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c5

    invoke-direct {v1, v7}, Lcom/chimeranft/core/SyncClient;->ackTransfers(Ljava/util/List;)V

    :cond_c5
    if-lez v4, :cond_ca

    .line 1758
    iput-wide v5, v1, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    goto :goto_d5

    .line 1766
    :cond_ca
    sget-wide v2, Lcom/chimeranft/core/SyncClient;->TRANSFER_IDLE_MAX_MS:J

    iget-wide v8, v1, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    add-long/2addr v8, v5

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    .line 1768
    :goto_d5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poll OK got="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " acked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;
    :try_end_f4
    .catchall {:try_start_86 .. :try_end_f4} :catchall_b3

    goto :goto_124

    .line 1771
    :goto_f5
    sget-object v2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v0, v3}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poll parse FAIL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    .line 1772
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    mul-long v2, v2, v15

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    :goto_124
    return-void

    .line 1727
    :cond_125
    :goto_125
    aget-object v0, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poll FAIL code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    .line 1728
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    mul-long v2, v2, v15

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    return-void
.end method

.method private final http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    .line 2305
    const-string v0, "gzip"

    const-string v1, ""

    const-string v2, "sync.http"

    invoke-static {v2}, Lcom/chimeranft/core/UiGuard;->mustNotBlock(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2310
    :try_start_b
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_120

    .line 2312
    :try_start_2c
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p1, 0x1770

    .line 2313
    invoke-virtual {p2, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2314
    invoke-virtual {p2, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 2315
    const-string p1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {p2, p1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    const-string p1, "Accept-Encoding"

    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    const-string p1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {p2, p1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_5d

    .line 2318
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_53

    goto :goto_5d

    .line 2319
    :cond_53
    const-string p1, "If-None-Match"

    invoke-virtual {p2, p1, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :catchall_59
    move-exception p1

    move-object v2, p2

    goto/16 :goto_121

    .line 2320
    :cond_5d
    :goto_5d
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->pluginKey:Ljava/lang/String;

    if-eqz p1, :cond_6d

    .line 2321
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_68

    goto :goto_6d

    :cond_68
    const-string p4, "X-Plugin-Key"

    invoke-virtual {p2, p4, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :cond_6d
    :goto_6d
    iget-wide v4, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_80

    const-string p1, "X-EblanNFT-User-Id"

    iget-wide v4, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_2c .. :try_end_80} :catchall_59

    .line 2323
    :cond_80
    const-string p1, "Content-Encoding"

    const/4 p4, 0x1

    if-eqz p3, :cond_d9

    .line 2325
    :try_start_85
    invoke-virtual {p2, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 2326
    const-string v2, "Content-Type"

    const-string v4, "application/json; charset=utf-8"

    invoke-virtual {p2, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v2, "getBytes(...)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2328
    array-length v2, p3

    const/16 v4, 0x800

    if-lt v2, v4, :cond_c2

    .line 2330
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v4, p3

    div-int/lit8 v4, v4, 0x2

    const/16 v5, 0x200

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2331
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2332
    invoke-virtual {v4, p3}, Ljava/io/OutputStream;->write([B)V

    .line 2333
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 2334
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 2335
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 2336
    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    :cond_c2
    array-length v2, p3

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 2339
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_ca
    .catchall {:try_start_85 .. :try_end_ca} :catchall_59

    .line 2342
    :try_start_ca
    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 2343
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_d4

    .line 2348
    :try_start_d0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_d9

    :catchall_d4
    move-exception p1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p1

    .line 2351
    :cond_d9
    :goto_d9
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 v2, 0xc8

    if-lt p3, v2, :cond_ea

    const/16 v2, 0x190

    if-ge p3, v2, :cond_ea

    .line 2352
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_ee

    :cond_ea
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    :goto_ee
    if-eqz v2, :cond_100

    .line 2353
    invoke-virtual {p2, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 2354
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, p1

    :cond_100
    if-nez v2, :cond_104

    move-object p1, v1

    goto :goto_10a

    .line 2355
    :cond_104
    sget-object p1, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->readStream(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$readStream(Lcom/chimeranft/core/SyncClient$Companion;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_10a
    .catchall {:try_start_d0 .. :try_end_10a} :catchall_59

    .line 2357
    :goto_10a
    :try_start_10a
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2358
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    if-nez v0, :cond_117

    move-object v0, v1

    :cond_117
    filled-new-array {p3, p1, v0}, [Ljava/lang/String;

    move-result-object p1
    :try_end_11b
    .catchall {:try_start_10a .. :try_end_11b} :catchall_11c

    return-object p1

    :catchall_11c
    move-exception p1

    move-object v2, p2

    const/4 v3, 0x1

    goto :goto_121

    :catchall_120
    move-exception p1

    .line 2361
    :goto_121
    :try_start_121
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERR:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v1, v1}, [Ljava/lang/String;

    move-result-object p1
    :try_end_13c
    .catchall {:try_start_121 .. :try_end_13c} :catchall_144

    if-nez v3, :cond_143

    if-eqz v2, :cond_143

    .line 2369
    :try_start_140
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_143

    :catchall_143
    :cond_143
    return-object p1

    :catchall_144
    move-exception p1

    if-nez v3, :cond_14c

    if-eqz v2, :cond_14c

    :try_start_149
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_14c

    .line 2371
    :catchall_14c
    :cond_14c
    throw p1
.end method

.method static synthetic http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 2301
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/SyncClient;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final identitySnapshot([J)Lcom/chimeranft/core/Store;
    .registers 5

    .line 556
    monitor-enter p0

    .line 557
    :try_start_1
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    .line 558
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final loadPersistentCache()V
    .registers 13

    .line 2085
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;

    if-nez v0, :cond_6

    goto/16 :goto_96

    .line 2087
    :cond_6
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->getRemoteSnapshotFile()Ljava/io/File;

    move-result-object v0

    .line 2088
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2089
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 2090
    new-array v4, v3, [Ljava/io/File;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v7, v1

    const/4 v6, 0x0

    :goto_4e
    if-ge v6, v3, :cond_80

    .line 2093
    aget-object v8, v4, v6

    .line 2097
    :try_start_52
    sget-object v9, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->readPersistentFile(Ljava/io/File;)Lorg/json/JSONObject;
    invoke-static {v9, v8}, Lcom/chimeranft/core/SyncClient$Companion;->access$readPersistentFile(Lcom/chimeranft/core/SyncClient$Companion;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_7d

    .line 2098
    iget-object v9, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    const-string v10, "server"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5, v0, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6b

    goto :goto_7d

    .line 2099
    :cond_6b
    const-string v9, "records"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_75

    const/4 v9, 0x0

    goto :goto_79

    .line 2100
    :cond_75
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v9
    :try_end_79
    .catchall {:try_start_52 .. :try_end_79} :catchall_7d

    :goto_79
    if-le v9, v2, :cond_7d

    move-object v7, v8

    move v2, v9

    :catchall_7d
    :cond_7d
    :goto_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 2109
    :cond_80
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->persistentLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez v7, :cond_8e

    .line 2110
    :try_start_85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_8f

    :catchall_8b
    move-exception v1

    goto/16 :goto_112

    :cond_8e
    move-object v1, v7

    :goto_8f
    iput-object v1, p0, Lcom/chimeranft/core/SyncClient;->persistentRecords:Lorg/json/JSONObject;

    .line 2111
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_93
    .catchall {:try_start_85 .. :try_end_93} :catchall_8b

    .line 2109
    monitor-exit v0

    if-nez v7, :cond_97

    :goto_96
    return-void

    .line 2116
    :cond_97
    :try_start_97
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_9b
    :goto_9b
    if-eqz v0, :cond_10e

    .line 2117
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10e

    const/16 v1, 0x100

    if-ge v5, v1, :cond_10e

    .line 2119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_ad
    .catchall {:try_start_97 .. :try_end_ad} :catchall_f1

    .line 2123
    :try_start_ad
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_f3

    .line 2129
    :try_start_b1
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-eqz v4, :cond_9b

    if-nez v1, :cond_be

    goto :goto_9b

    .line 2131
    :cond_be
    sget-object v4, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->normalizeRemoteGifts(Lorg/json/JSONObject;)I
    invoke-static {v4, v1}, Lcom/chimeranft/core/SyncClient$Companion;->access$normalizeRemoteGifts(Lcom/chimeranft/core/SyncClient$Companion;Lorg/json/JSONObject;)I

    .line 2132
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 2133
    iget-object v6, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catchall {:try_start_b1 .. :try_end_ee} :catchall_f1

    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    :catchall_f1
    move-exception v0

    goto :goto_f5

    :catchall_f3
    nop

    goto :goto_9b

    .line 2140
    :goto_f5
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 2143
    :cond_10e
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->rebuildCacheGate()V

    return-void

    .line 2109
    :goto_112
    monitor-exit v0

    throw v1
.end method

.method private final markPullFailure(J)V
    .registers 9

    .line 1542
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1543
    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->pullFailureCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-nez p2, :cond_11

    const/4 p2, 0x1

    goto :goto_16

    .line 1544
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    :goto_16
    const/4 v1, 0x6

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1545
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->pullFailureCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    sub-int/2addr p2, v0

    .line 1548
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-wide/16 v0, 0x2ee

    shl-long/2addr v0, p2

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x406f400000000000L    # 250.0

    mul-double v2, v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    .line 1549
    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final nextPersistBody()Ljava/lang/String;
    .registers 7

    .line 2232
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->persistentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2233
    :try_start_3
    iget-boolean v1, p0, Lcom/chimeranft/core/SyncClient;->persistentWriteDirty:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_f

    .line 2235
    iput-boolean v3, p0, Lcom/chimeranft/core/SyncClient;->persistentWriteQueued:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 2236
    monitor-exit v0

    return-object v2

    :catchall_d
    move-exception v1

    goto :goto_4e

    .line 2238
    :cond_f
    :try_start_f
    iput-boolean v3, p0, Lcom/chimeranft/core/SyncClient;->persistentWriteDirty:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_d

    .line 2241
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2242
    const-string v4, "version"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2243
    const-string v4, "server"

    iget-object v5, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2244
    const-string v4, "records"

    iget-object v5, p0, Lcom/chimeranft/core/SyncClient;->persistentRecords:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2245
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_30

    monitor-exit v0

    return-object v1

    :catchall_30
    move-exception v1

    .line 2248
    :try_start_31
    iput-boolean v3, p0, Lcom/chimeranft/core/SyncClient;->persistentWriteQueued:Z

    .line 2249
    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persistBuild: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_31 .. :try_end_4c} :catchall_d

    .line 2250
    monitor-exit v0

    return-object v2

    :goto_4e
    monitor-exit v0

    throw v1
.end method

.method private final onAccessDenied(JLorg/json/JSONObject;)V
    .registers 11

    .line 1360
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->localAccounts()Lorg/json/JSONArray;

    move-result-object v1

    .line 1361
    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->localAccountIds()[J

    move-result-object v0

    .line 1364
    :try_start_a
    const-string v2, "denied_account"

    invoke-virtual {p3, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1365
    const-string v2, "banned_client"

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1366
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1367
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_2a

    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1368
    :cond_2a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1369
    :cond_37
    const-string v0, "banned_ids"

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3c

    .line 1373
    :catchall_3c
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/chimeranft/core/SyncClient;->reportBannedClient(JLorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 1376
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1, p3}, Lcom/chimeranft/core/Main$Companion;->accessDeniedFromServer(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final persistRecord(JLorg/json/JSONObject;)V
    .registers 10

    .line 2147
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;

    if-eqz v0, :cond_86

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_86

    if-nez p3, :cond_e

    goto/16 :goto_86

    .line 2149
    :cond_e
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->persistentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2152
    :try_start_11
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->persistentRecords:Lorg/json/JSONObject;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2154
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->persistentRecords:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    const/16 p2, 0x100

    if-le p1, p2, :cond_5f

    .line 2156
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2158
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x0

    :goto_34
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    if-ge v1, p2, :cond_5d

    .line 2161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v3

    goto :goto_34

    :catchall_5b
    move-exception p1

    goto :goto_63

    .line 2163
    :cond_5d
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->persistentRecords:Lorg/json/JSONObject;

    :cond_5f
    const/4 p1, 0x1

    .line 2165
    iput-boolean p1, p0, Lcom/chimeranft/core/SyncClient;->persistentWriteDirty:Z
    :try_end_62
    .catchall {:try_start_11 .. :try_end_62} :catchall_5b

    goto :goto_7c

    .line 2168
    :goto_63
    :try_start_63
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "persistCache: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 2171
    :goto_7c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7e
    .catchall {:try_start_63 .. :try_end_7e} :catchall_83

    .line 2149
    monitor-exit v0

    .line 2172
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->schedulePersistentWrite()V

    return-void

    :catchall_83
    move-exception p1

    .line 2149
    monitor-exit v0

    throw p1

    :cond_86
    :goto_86
    return-void
.end method

.method private final pullLoop()V
    .registers 15

    const-wide/16 v0, 0xfa

    .line 652
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_2cf

    .line 658
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;

    .line 659
    iget-boolean v1, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_96

    iget-wide v7, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    cmp-long v1, v7, v4

    if-lez v1, :cond_96

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->isLocallyEmpty()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 663
    :try_start_1e
    const-string v8, "GET"

    sget-object v1, Lcom/chimeranft/core/SyncClient;->USER_KEY_PREFIX:Ljava/lang/String;

    iget-wide v9, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/api/v1/users/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/state"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_7a

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    :try_start_43
    invoke-static/range {v7 .. v13}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 664
    sget-object v8, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    aget-object v9, v1, v3

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_97

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_97

    .line 665
    aget-object v8, v1, v6

    if-eqz v8, :cond_97

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v2, :cond_97

    .line 666
    new-instance v8, Lorg/json/JSONObject;

    aget-object v1, v1, v6

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/chimeranft/core/Store;->recoverFromSyncSnapshot(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 668
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->recoverySink:Lcom/chimeranft/core/SyncClient$RecoverySink;
    :try_end_70
    .catchall {:try_start_43 .. :try_end_70} :catchall_78

    if-eqz v0, :cond_97

    .line 671
    :try_start_72
    invoke-interface {v0}, Lcom/chimeranft/core/SyncClient$RecoverySink;->onRecovered()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_97

    :catchall_76
    nop

    goto :goto_97

    :catchall_78
    move-exception v0

    goto :goto_7c

    :catchall_7a
    move-exception v0

    move-object v7, p0

    .line 678
    :goto_7c
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "self-recovery: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    goto :goto_97

    :cond_96
    move-object v7, p0

    .line 682
    :cond_97
    :goto_97
    iget-boolean v0, v7, Lcom/chimeranft/core/SyncClient;->running:Z

    if-eqz v0, :cond_2ce

    .line 684
    iget-boolean v0, v7, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-eqz v0, :cond_bd

    .line 687
    :try_start_9f
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->requeueWatched()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_bd

    :catchall_a3
    move-exception v0

    .line 690
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "watch: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 696
    :cond_bd
    :goto_bd
    iget-object v1, v7, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    :try_start_c0
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 698
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_d8

    .line 699
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 700
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_d9

    :catchall_d5
    move-exception v0

    goto/16 :goto_2cc

    :cond_d8
    move-object v8, v9

    :goto_d9
    if-nez v8, :cond_15f

    .line 707
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_105

    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v0, v2, :cond_105

    .line 709
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v0
    :try_end_f1
    .catchall {:try_start_c0 .. :try_end_f1} :catchall_d5

    if-ne v0, v2, :cond_f6

    const-wide/16 v10, 0x18

    goto :goto_f8

    :cond_f6
    const-wide/16 v10, 0xc

    .line 715
    :goto_f8
    :try_start_f8
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    const-string v12, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_102
    .catch Ljava/lang/InterruptedException; {:try_start_f8 .. :try_end_102} :catch_103
    .catchall {:try_start_f8 .. :try_end_102} :catchall_d5

    goto :goto_105

    .line 718
    :catch_103
    monitor-exit v1

    return-void

    .line 722
    :cond_105
    :goto_105
    :try_start_105
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 723
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15f

    .line 726
    sget-object v10, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v10}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v11

    const/16 v12, 0x18

    if-nez v11, :cond_11e

    const/16 v10, 0x18

    goto :goto_129

    .line 729
    :cond_11e
    invoke-virtual {v10}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v10

    if-ne v10, v6, :cond_127

    const/16 v10, 0x10

    goto :goto_129

    :cond_127
    const/16 v10, 0x8

    .line 725
    :goto_129
    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 730
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v7, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 731
    :goto_13c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_153

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v10, :cond_153

    .line 733
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_13c

    .line 736
    :cond_153
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_15e

    .line 737
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_15f

    :cond_15e
    move-object v9, v11

    .line 742
    :cond_15f
    :goto_15f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_161
    .catchall {:try_start_105 .. :try_end_161} :catchall_d5

    .line 696
    monitor-exit v1

    if-eqz v9, :cond_1d1

    .line 743
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d1

    .line 745
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->inFlightBatchIds:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 748
    :try_start_16f
    invoke-direct {p0, v9}, Lcom/chimeranft/core/SyncClient;->fetchBatchOrFallback(Ljava/util/List;)V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_178

    .line 756
    :cond_172
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->inFlightBatchIds:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1ab

    :catchall_178
    move-exception v0

    .line 751
    :try_start_179
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "batch-pull: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 752
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_197
    if-ge v1, v0, :cond_172

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v1, v1, 0x1

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/chimeranft/core/SyncClient;->fetchOne(J)V
    :try_end_1a8
    .catchall {:try_start_179 .. :try_end_1a8} :catchall_1a9

    goto :goto_197

    :catchall_1a9
    move-exception v0

    goto :goto_1cb

    .line 758
    :goto_1ab
    iget-object v1, v7, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_1ae
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c3

    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0
    :try_end_1bc
    .catchall {:try_start_1ae .. :try_end_1bc} :catchall_1c1

    if-nez v0, :cond_1bf

    goto :goto_1c3

    :cond_1bf
    const/4 v0, 0x0

    goto :goto_1c4

    :catchall_1c1
    move-exception v0

    goto :goto_1c9

    :cond_1c3
    :goto_1c3
    const/4 v0, 0x1

    .line 758
    :goto_1c4
    monitor-exit v1

    if-eqz v0, :cond_226

    goto/16 :goto_97

    :goto_1c9
    monitor-exit v1

    throw v0

    .line 756
    :goto_1cb
    iget-object v1, v7, Lcom/chimeranft/core/SyncClient;->inFlightBatchIds:Ljava/util/Set;

    invoke-interface {v1, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    throw v0

    :cond_1d1
    if-eqz v8, :cond_226

    .line 765
    move-object v0, v8

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/chimeranft/core/SyncClient;->inFlightPullUid:J

    .line 768
    :try_start_1dc
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/SyncClient;->fetchOne(J)V
    :try_end_1e5
    .catchall {:try_start_1dc .. :try_end_1e5} :catchall_1e8

    .line 775
    :goto_1e5
    iput-wide v4, v7, Lcom/chimeranft/core/SyncClient;->inFlightPullUid:J

    goto :goto_203

    :catchall_1e8
    move-exception v0

    .line 771
    :try_start_1e9
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pull: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;
    :try_end_202
    .catchall {:try_start_1e9 .. :try_end_202} :catchall_222

    goto :goto_1e5

    .line 779
    :goto_203
    iget-object v1, v7, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_206
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21b

    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0
    :try_end_214
    .catchall {:try_start_206 .. :try_end_214} :catchall_219

    if-nez v0, :cond_217

    goto :goto_21b

    :cond_217
    const/4 v0, 0x0

    goto :goto_21c

    :catchall_219
    move-exception v0

    goto :goto_220

    :cond_21b
    :goto_21b
    const/4 v0, 0x1

    .line 779
    :goto_21c
    monitor-exit v1

    if-nez v0, :cond_97

    goto :goto_226

    :goto_220
    monitor-exit v1

    throw v0

    :catchall_222
    move-exception v0

    .line 775
    iput-wide v4, v7, Lcom/chimeranft/core/SyncClient;->inFlightPullUid:J

    throw v0

    .line 785
    :cond_226
    :goto_226
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->badges:Lcom/chimeranft/core/Badges;

    if-eqz v0, :cond_256

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, v7, Lcom/chimeranft/core/SyncClient;->lastBadgeFetchMs:J

    sub-long/2addr v0, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v10, v0, v8

    if-lez v10, :cond_256

    .line 789
    :try_start_238
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->fetchBadges()V
    :try_end_23b
    .catchall {:try_start_238 .. :try_end_23b} :catchall_23c

    goto :goto_256

    :catchall_23c
    move-exception v0

    .line 792
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "badges: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 797
    :cond_256
    :goto_256
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->transferSink:Lcom/chimeranft/core/SyncClient$TransferSink;

    if-eqz v0, :cond_29b

    iget-boolean v0, v7, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-eqz v0, :cond_29b

    iget-wide v0, v7, Lcom/chimeranft/core/SyncClient;->myId:J

    cmp-long v8, v0, v4

    if-lez v8, :cond_29b

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, v7, Lcom/chimeranft/core/SyncClient;->lastTransferFetchMs:J

    sub-long/2addr v0, v8

    iget-wide v8, v7, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    sget-object v10, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    const-wide/16 v11, 0xfa0

    invoke-virtual {v10, v11, v12}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->adaptiveInterval(J)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    cmp-long v10, v0, v8

    if-lez v10, :cond_29b

    .line 802
    :try_start_27d
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->fetchTransfers()V
    :try_end_280
    .catchall {:try_start_27d .. :try_end_280} :catchall_281

    goto :goto_29b

    :catchall_281
    move-exception v0

    .line 805
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xfer: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 809
    :cond_29b
    :goto_29b
    iget-object v1, v7, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 810
    :try_start_29e
    iget-boolean v0, v7, Lcom/chimeranft/core/SyncClient;->running:Z
    :try_end_2a0
    .catchall {:try_start_29e .. :try_end_2a0} :catchall_2c1

    if-nez v0, :cond_2a4

    monitor-exit v1

    return-void

    .line 811
    :cond_2a4
    :try_start_2a4
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c5

    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0
    :try_end_2b2
    .catchall {:try_start_2a4 .. :try_end_2b2} :catchall_2c1

    if-eqz v0, :cond_2c5

    .line 814
    :try_start_2b4
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    const-string v8, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2c0
    .catch Ljava/lang/InterruptedException; {:try_start_2b4 .. :try_end_2c0} :catch_2c3
    .catchall {:try_start_2b4 .. :try_end_2c0} :catchall_2c1

    goto :goto_2c5

    :catchall_2c1
    move-exception v0

    goto :goto_2ca

    .line 817
    :catch_2c3
    monitor-exit v1

    return-void

    .line 820
    :cond_2c5
    :goto_2c5
    :try_start_2c5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2c7
    .catchall {:try_start_2c5 .. :try_end_2c7} :catchall_2c1

    .line 809
    monitor-exit v1

    goto/16 :goto_97

    :goto_2ca
    monitor-exit v1

    throw v0

    .line 696
    :goto_2cc
    monitor-exit v1

    throw v0

    :cond_2ce
    return-void

    :catch_2cf
    move-object v7, p0

    return-void
.end method

.method private final pushLoop()V
    .registers 14

    const-wide/16 v0, 0x4b0

    .line 381
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_79

    .line 387
    :goto_5
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->running:Z

    if-eqz v0, :cond_79

    .line 395
    :try_start_9
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_21

    .line 396
    iget-object v5, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->getLastSyncServer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4, v3, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :catchall_1f
    move-exception v0

    goto :goto_5a

    :cond_21
    const/4 v5, 0x0

    .line 402
    :goto_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 403
    iget-wide v8, p0, Lcom/chimeranft/core/SyncClient;->lastFullPushMs:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x493e0

    cmp-long v12, v8, v10

    if-lez v12, :cond_33

    const/4 v8, 0x1

    goto :goto_34

    :cond_33
    const/4 v8, 0x0

    :goto_34
    if-nez v5, :cond_3a

    if-eqz v8, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 404
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v1}, Lcom/chimeranft/core/SyncClient;->pushOnce(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 405
    const-string v8, "OK"

    invoke-static {v1, v8, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    const-string v8, "skip-empty"

    invoke-static {v1, v8, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 407
    :cond_50
    iput-wide v6, p0, Lcom/chimeranft/core/SyncClient;->lastFullPushMs:J

    if-eqz v5, :cond_73

    .line 408
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Store;->setLastSyncServer(Ljava/lang/String;)Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_1f

    goto :goto_73

    .line 412
    :goto_5a
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 417
    :cond_73
    :goto_73
    :try_start_73
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pushBackoffMs:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_78} :catch_79

    goto :goto_5

    :catch_79
    :cond_79
    return-void
.end method

.method public static synthetic pushOnce$default(Lcom/chimeranft/core/SyncClient;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 563
    :cond_5
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/SyncClient;->pushOnce(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final rebuildCacheGate()V
    .registers 8

    .line 2065
    :try_start_0
    new-instance v0, Lcom/chimeranft/core/LongSet;

    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    .line 2066
    new-instance v1, Lcom/chimeranft/core/LongSet;

    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    .line 2067
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2069
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 2072
    invoke-virtual {v0, v4, v5}, Lcom/chimeranft/core/LongSet;->add(J)V

    .line 2073
    sget-object v6, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v6, v3}, Lcom/chimeranft/core/RemoteIdentity$Companion;->hasUserIdentity(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v1, v4, v5}, Lcom/chimeranft/core/LongSet;->add(J)V

    goto :goto_20

    .line 2075
    :cond_4b
    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->cachedIds:Lcom/chimeranft/core/LongSet;

    .line 2076
    iput-object v1, p0, Lcom/chimeranft/core/SyncClient;->identityIds:Lcom/chimeranft/core/LongSet;
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_4f

    :catchall_4f
    return-void
.end method

.method private final rememberSentTransfer(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_25

    .line 2003
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2004
    :cond_9
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_18

    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2005
    :cond_18
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method

.method public static final remoteGiftCount(Lorg/json/JSONObject;)I
    .registers 2

    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method private final reportBannedClient(JLorg/json/JSONObject;Lorg/json/JSONArray;)V
    .registers 10

    .line 1388
    const-string v0, "report_id"

    const-string v1, ""

    const-string v2, "reason"

    .line 1390
    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1391
    const-string v4, "banned_id"

    invoke-virtual {v3, v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1392
    const-string p1, "accounts"

    invoke-virtual {v3, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1393
    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1394
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1395
    const-string p1, "client"

    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2}, Lcom/chimeranft/core/Main$Companion;->getVERSION_CODE()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "chimeranft-dex/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1396
    const-string p1, "client_id"

    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->accessClientId:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1397
    const-string p1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    invoke-virtual {v3, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1398
    const-string p1, "chimeranft-access-report"

    new-instance p2, Lcom/chimeranft/core/SyncClient$reportBannedClient$1;

    invoke-direct {p2, p0, v3}, Lcom/chimeranft/core/SyncClient$reportBannedClient$1;-><init>(Lcom/chimeranft/core/SyncClient;Lorg/json/JSONObject;)V

    const/4 p3, 0x5

    invoke-static {p1, p3, p2}, Lcom/chimeranft/core/Safe;->start(Ljava/lang/String;ILjava/lang/Runnable;)Z
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_5e

    return-void

    :catchall_5e
    move-exception p1

    .line 1427
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "build FAIL "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastAccessReport:Ljava/lang/String;

    return-void
.end method

.method private final requestRemoteStateInternal(JZZ)V
    .registers 12

    .line 862
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-eqz v0, :cond_10e

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_10e

    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_12

    goto/16 :goto_10e

    .line 866
    :cond_12
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 867
    iget-object v3, p0, Lcom/chimeranft/core/SyncClient;->recordSink:Lcom/chimeranft/core/SyncClient$RecordSink;

    if-eqz v2, :cond_4e

    if-eqz v3, :cond_4e

    .line 868
    iget-object v4, p0, Lcom/chimeranft/core/SyncClient;->restoredNotified:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 872
    :try_start_30
    invoke-interface {v3, p1, p2, v2}, Lcom/chimeranft/core/SyncClient$RecordSink;->onRestored(JLorg/json/JSONObject;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_4e

    :catchall_34
    move-exception v2

    .line 875
    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v2}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSink: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    :cond_4e
    :goto_4e
    if-eqz p4, :cond_61

    .line 879
    iget-object p4, p0, Lcom/chimeranft/core/SyncClient;->watched:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    :cond_61
    iget-object p4, p0, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter p4

    .line 881
    :try_start_64
    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->inFlightPullUid:J

    cmp-long v4, p1, v2

    if-eqz v4, :cond_10a

    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->inFlightBatchIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a

    .line 882
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    goto/16 :goto_10a

    :cond_84
    if-eqz p3, :cond_9e

    .line 884
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    :catchall_9c
    move-exception p1

    goto :goto_10c

    :cond_9e
    :goto_9e
    if-nez p3, :cond_ae

    .line 885
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_aa
    .catchall {:try_start_64 .. :try_end_aa} :catchall_9c

    if-eqz v2, :cond_ae

    monitor-exit p4

    return-void

    .line 886
    :cond_ae
    :try_start_ae
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_ca

    .line 887
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_c4
    .catchall {:try_start_ae .. :try_end_c4} :catchall_9c

    cmp-long v6, v2, v4

    if-lez v6, :cond_ca

    monitor-exit p4

    return-void

    .line 888
    :cond_ca
    :try_start_ca
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_dc

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 889
    :cond_dc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x5dc

    cmp-long v4, v2, v0

    if-lez v4, :cond_106

    if-eqz p3, :cond_f3

    .line 892
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    .line 894
    :cond_f3
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 895
    :goto_fc
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 897
    :cond_106
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_108
    .catchall {:try_start_ca .. :try_end_108} :catchall_9c

    .line 880
    monitor-exit p4

    return-void

    .line 883
    :cond_10a
    :goto_10a
    monitor-exit p4

    return-void

    .line 880
    :goto_10c
    monitor-exit p4

    throw p1

    :cond_10e
    :goto_10e
    return-void
.end method

.method private final requeueAfterBatchFailure(Ljava/util/List;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 1011
    :cond_3
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    .line 1015
    invoke-direct {p0, v1, v2}, Lcom/chimeranft/core/SyncClient;->markPullFailure(J)V

    .line 1016
    iget-object v3, p0, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_2d
    move-exception p1

    goto :goto_33

    .line 1018
    :cond_2f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2d

    .line 1011
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0

    throw p1
.end method

.method private final requeueWatched()V
    .registers 18

    move-object/from16 v1, p0

    .line 902
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 903
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->adaptiveInterval(J)J

    move-result-wide v4

    .line 905
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->watched:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 907
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 908
    iget-wide v11, v1, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    cmp-long v13, v11, v9

    if-nez v13, :cond_38

    const/4 v11, 0x1

    goto :goto_39

    :cond_38
    const/4 v11, 0x0

    :goto_39
    if-nez v11, :cond_57

    .line 909
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    sub-long v12, v2, v12

    const-wide/16 v14, 0x3a98

    cmp-long v16, v12, v14

    if-lez v16, :cond_57

    .line 911
    iget-object v9, v1, Lcom/chimeranft/core/SyncClient;->watched:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 914
    :cond_57
    iget-object v8, v1, Lcom/chimeranft/core/SyncClient;->pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_6d

    .line 915
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v8, v12, v2

    if-gtz v8, :cond_1a

    .line 916
    :cond_6d
    iget-object v8, v1, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 917
    :try_start_70
    iget-wide v12, v1, Lcom/chimeranft/core/SyncClient;->inFlightPullUid:J

    cmp-long v14, v9, v12

    if-eqz v14, :cond_d5

    iget-object v12, v1, Lcom/chimeranft/core/SyncClient;->inFlightBatchIds:Ljava/util/Set;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d5

    .line 918
    iget-object v12, v1, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d5

    iget-object v12, v1, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b

    goto :goto_d5

    .line 920
    :cond_9b
    iget-object v12, v1, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_b0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_b2

    :catchall_ae
    move-exception v0

    goto :goto_da

    :cond_b0
    const-wide/16 v12, 0x0

    :goto_b2
    if-eqz v11, :cond_b7

    const-wide/16 v14, 0x5dc

    goto :goto_b8

    :cond_b7
    move-wide v14, v4

    :goto_b8
    sub-long v12, v2, v12

    cmp-long v16, v12, v14

    if-lez v16, :cond_d5

    if-eqz v11, :cond_cb

    .line 926
    iget-object v7, v1, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_d5

    .line 928
    :cond_cb
    iget-object v7, v1, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 930
    :cond_d5
    :goto_d5
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d7
    .catchall {:try_start_70 .. :try_end_d7} :catchall_ae

    .line 916
    monitor-exit v8

    goto/16 :goto_1a

    :goto_da
    monitor-exit v8

    throw v0

    :cond_dc
    if-eqz v7, :cond_f2

    .line 932
    iget-object v2, v1, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 933
    :try_start_e1
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 934
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ed
    .catchall {:try_start_e1 .. :try_end_ed} :catchall_ef

    .line 932
    monitor-exit v2

    return-void

    :catchall_ef
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_f2
    return-void
.end method

.method private final schedulePersistentWrite()V
    .registers 4

    .line 2179
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->persistentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2180
    :try_start_3
    iget-boolean v1, p0, Lcom/chimeranft/core/SyncClient;->persistentWriteQueued:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_41

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 2181
    :try_start_a
    iput-boolean v1, p0, Lcom/chimeranft/core/SyncClient;->persistentWriteQueued:Z

    .line 2182
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_41

    .line 2179
    monitor-exit v0

    .line 2185
    :try_start_f
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->persistentWriter:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/chimeranft/core/SyncClient$schedulePersistentWrite$2;

    invoke-direct {v1, p0}, Lcom/chimeranft/core/SyncClient$schedulePersistentWrite$2;-><init>(Lcom/chimeranft/core/SyncClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    .line 2217
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->persistentLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2218
    :try_start_1f
    iput-boolean v2, p0, Lcom/chimeranft/core/SyncClient;->persistentWriteQueued:Z

    .line 2219
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_3e

    .line 2217
    monitor-exit v1

    .line 2220
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistSchedule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    return-void

    :catchall_3e
    move-exception v0

    .line 2217
    monitor-exit v1

    throw v0

    :catchall_41
    move-exception v1

    .line 2179
    monitor-exit v0

    throw v1
.end method

.method private final siblingsFor(J)Ljava/lang/String;
    .registers 7

    .line 1315
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cachedSiblings:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1316
    iget-wide v1, p0, Lcom/chimeranft/core/SyncClient;->cachedSiblingsFor:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_b

    return-object v0

    .line 1317
    :cond_b
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1}, Lcom/chimeranft/core/Main$Companion;->localAccountIds()[J

    move-result-object v1

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->joinIds([JJ)Ljava/lang/String;
    invoke-static {v0, v1, p1, p2}, Lcom/chimeranft/core/SyncClient$Companion;->access$joinIds(Lcom/chimeranft/core/SyncClient$Companion;[JJ)Ljava/lang/String;

    move-result-object v0

    .line 1318
    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->cachedSiblings:Ljava/lang/String;

    .line 1319
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->cachedSiblingsFor:J

    return-object v0
.end method


# virtual methods
.method public final activateProfile(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_13

    .line 846
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    goto :goto_13

    .line 847
    :cond_d
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    const/4 v0, 0x1

    .line 848
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/chimeranft/core/SyncClient;->requestRemoteStateInternal(JZZ)V

    :cond_13
    :goto_13
    return-void
.end method

.method public final bindBadges(Lcom/chimeranft/core/Badges;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->badges:Lcom/chimeranft/core/Badges;

    return-void
.end method

.method public final bindRecordSink(Lcom/chimeranft/core/SyncClient$RecordSink;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->recordSink:Lcom/chimeranft/core/SyncClient$RecordSink;

    return-void
.end method

.method public final bindRecoverySink(Lcom/chimeranft/core/SyncClient$RecoverySink;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->recoverySink:Lcom/chimeranft/core/SyncClient$RecoverySink;

    return-void
.end method

.method public final bindTransferSink(Lcom/chimeranft/core/SyncClient$TransferSink;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->transferSink:Lcom/chimeranft/core/SyncClient$TransferSink;

    return-void
.end method

.method public final cacheSize()I
    .registers 2

    .line 2257
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final cachedRecords()Ljava/util/Collection;
    .registers 2

    .line 2033
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final deactivateProfile(J)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_e

    .line 854
    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_e

    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    :cond_e
    return-void
.end method

.method public final fetchBadgesNowAsync()Ljava/lang/String;
    .registers 4

    .line 1592
    new-instance v0, Lcom/chimeranft/core/SyncClient$fetchBadgesNowAsync$1;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/SyncClient$fetchBadgesNowAsync$1;-><init>(Lcom/chimeranft/core/SyncClient;)V

    const-string v1, "chimeranft-badges-now"

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/Safe;->start(Ljava/lang/String;ILjava/lang/Runnable;)Z

    .line 1602
    const-string v0, "badge fetch scheduled \u2014 tap \'poll sync\' for result"

    return-object v0
.end method

.method public final fetchMarketListings(JII)Lorg/json/JSONObject;
    .registers 15

    .line 1785
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1788
    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/api/v1/market/listings?gift_id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1790
    const-string p3, "&limit="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1791
    const-string v4, "GET"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_c2

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    :try_start_36
    invoke-static/range {v3 .. v9}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object p4

    .line 1792
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    aget-object v4, p4, v2

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v0, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x194

    if-eq v0, v4, :cond_ba

    const/16 v4, 0x195

    if-eq v0, v4, :cond_ba

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_a4

    const/16 v4, 0x12c

    if-ge v0, v4, :cond_a4

    .line 1799
    aget-object v0, p4, p3

    if-nez v0, :cond_57

    goto :goto_a4

    .line 1804
    :cond_57
    new-instance v0, Lorg/json/JSONObject;

    aget-object p4, p4, p3

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1805
    const-string p4, "ok"

    invoke-virtual {v0, p4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_6e

    .line 1807
    const-string p1, "feed rejected"

    iput-object p1, v3, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    return-object v1

    :catchall_6b
    move-exception v0

    :goto_6c
    move-object p1, v0

    goto :goto_c5

    .line 1810
    :cond_6e
    iput p3, v3, Lcom/chimeranft/core/SyncClient;->marketFeedSupported:I

    .line 1811
    iget-wide p3, v3, Lcom/chimeranft/core/SyncClient;->marketFeedFetches:J

    const-wide/16 v4, 0x1

    add-long/2addr p3, v4

    iput-wide p3, v3, Lcom/chimeranft/core/SyncClient;->marketFeedFetches:J

    .line 1813
    const-string p3, "listings"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    if-nez p3, :cond_80

    goto :goto_84

    :cond_80
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feed OK gift="

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " n="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1812
    iput-object p1, v3, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    return-object v0

    .line 1801
    :cond_a4
    :goto_a4
    aget-object p1, p4, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "feed FAIL code="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    return-object v1

    :cond_ba
    const/4 p1, -0x1

    .line 1795
    iput p1, v3, Lcom/chimeranft/core/SyncClient;->marketFeedSupported:I

    .line 1796
    const-string p1, "feed unsupported"

    iput-object p1, v3, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;
    :try_end_c1
    .catchall {:try_start_36 .. :try_end_c1} :catchall_6b

    return-object v1

    :catchall_c2
    move-exception v0

    move-object v3, p0

    goto :goto_6c

    .line 1817
    :goto_c5
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "marketFeed: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v3, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 1818
    sget-object p3, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p3, p1, p2}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "feed EXC "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    return-object v1
.end method

.method public final getBadgeAttempts()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->badgeAttempts:J

    return-wide v0
.end method

.method public final getBadgeFail()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->badgeFail:J

    return-wide v0
.end method

.method public final getBadgeOk()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->badgeOk:J

    return-wide v0
.end method

.method public final getBatchAttempts()J
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->batchAttempts:J

    return-wide v0
.end method

.method public final getBatchFallbacks()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->batchFallbacks:J

    return-wide v0
.end method

.method public final getBatchOk()J
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->batchOk:J

    return-wide v0
.end method

.method public final getBatchRecords()J
    .registers 3

    .line 128
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->batchRecords:J

    return-wide v0
.end method

.method public final getBatchTransientFailures()J
    .registers 3

    .line 173
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->batchTransientFailures:J

    return-wide v0
.end method

.method public final getCachedRecord(J)Lorg/json/JSONObject;
    .registers 4

    .line 2027
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method

.method public final getLastAccessReport()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastAccessReport:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastBadgeResult()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastBadgeResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastError()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastMarketResult()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastPayloadBytes()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/chimeranft/core/SyncClient;->lastPayloadBytes:I

    return v0
.end method

.method public final getLastPullResult()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastPushResult()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastSelfTest()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastSelfTest:Ljava/lang/String;

    return-object v0
.end method

.method public final getMarketFeedFetches()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->marketFeedFetches:J

    return-wide v0
.end method

.method public final getOffersSent()J
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->offersSent:J

    return-wide v0
.end method

.method public final getPullAttempts()J
    .registers 3

    .line 119
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    return-wide v0
.end method

.method public final getPullFail()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullFail:J

    return-wide v0
.end method

.method public final getPullNetworkMaxMs()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkMaxMs:J

    return-wide v0
.end method

.method public final getPullNetworkTotalMs()J
    .registers 3

    .line 123
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkTotalMs:J

    return-wide v0
.end method

.method public final getPullOk()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullOk:J

    return-wide v0
.end method

.method public final getPullUnchanged()J
    .registers 3

    .line 122
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pullUnchanged:J

    return-wide v0
.end method

.method public final getPushAttempts()J
    .registers 3

    .line 114
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pushAttempts:J

    return-wide v0
.end method

.method public final getPushCoalesced()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pushCoalesced:J

    return-wide v0
.end method

.method public final getPushFail()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pushFail:J

    return-wide v0
.end method

.method public final getPushOk()J
    .registers 3

    .line 115
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pushOk:J

    return-wide v0
.end method

.method public final getRemoteDuplicates()J
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->remoteDuplicates:J

    return-wide v0
.end method

.method public final getServer()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferDuplicates()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->transferDuplicates:J

    return-wide v0
.end method

.method public final getXferApplied()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->xferApplied:J

    return-wide v0
.end method

.method public final getXferPolls()J
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->xferPolls:J

    return-wide v0
.end method

.method public final getXferPushFail()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->xferPushFail:J

    return-wide v0
.end method

.method public final getXferPushOk()J
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->xferPushOk:J

    return-wide v0
.end method

.method public final hasCachedRecord(J)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_10

    .line 2045
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cachedIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public final hasIdentityRecord(J)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_10

    .line 2058
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->identityIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public final hasRemoteListing(JJJJLjava/lang/String;)Z
    .registers 24

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p9

    .line 1935
    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/SyncClient;->marketListingKnown(JJLjava/lang/String;)Z

    move-result v6

    const/4 v0, 0x1

    if-eqz v6, :cond_e

    return v0

    .line 1936
    :cond_e
    invoke-virtual/range {p0 .. p2}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 1938
    :cond_16
    const-string v3, "gifts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1f

    return v2

    .line 1940
    :cond_1f
    const-string v3, ""

    if-nez p9, :cond_25

    move-object v4, v3

    goto :goto_2d

    :cond_25
    invoke-static/range {p9 .. p9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1941
    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v5, :cond_b6

    .line 1943
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_b2

    .line 1944
    const-string v8, "resale_config"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_44

    goto/16 :goto_b2

    :cond_44
    const-wide/16 v9, 0x0

    cmp-long v11, p3, v9

    if-lez v11, :cond_60

    .line 1945
    const-string v11, "unique_id"

    invoke-virtual {v7, v11, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v13, v11, p3

    if-eqz v13, :cond_5e

    const-string v11, "saved_id"

    invoke-virtual {v7, v11, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v13, v11, p3

    if-nez v13, :cond_60

    :cond_5e
    const/4 v11, 0x1

    goto :goto_61

    :cond_60
    const/4 v11, 0x0

    :goto_61
    if-nez v11, :cond_74

    .line 1946
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_6a

    goto :goto_74

    :cond_6a
    const-string v11, "slug"

    invoke-virtual {v7, v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    :cond_74
    :goto_74
    if-nez v11, :cond_95

    cmp-long v12, p5, v9

    if-lez v12, :cond_95

    cmp-long v12, p7, v9

    if-lez v12, :cond_95

    .line 1948
    const-string v11, "base_gift_id"

    invoke-virtual {v7, v11, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v13, v11, p5

    if-nez v13, :cond_94

    const-string v11, "num"

    invoke-virtual {v7, v11, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v13, v11, p7

    if-nez v13, :cond_94

    const/4 v11, 0x1

    goto :goto_95

    :cond_94
    const/4 v11, 0x0

    .line 1949
    :cond_95
    :goto_95
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v11, :cond_b2

    if-eqz v7, :cond_b2

    .line 1950
    const-string v8, "stars"

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-gtz v8, :cond_b1

    const-string v8, "nanoton"

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v11, v7, v9

    if-lez v11, :cond_b2

    :cond_b1
    return v0

    :cond_b2
    :goto_b2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_32

    :cond_b6
    return v2
.end method

.method public final invalidateSiblingCache()V
    .registers 4

    const/4 v0, 0x0

    .line 1345
    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->cachedSiblings:Ljava/lang/String;

    const-wide/high16 v1, -0x8000000000000000L

    .line 1346
    iput-wide v1, p0, Lcom/chimeranft/core/SyncClient;->cachedSiblingsFor:J

    .line 1347
    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->cachedAccountNames:Ljava/lang/String;

    return-void
.end method

.method public final isProfileActive(J)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_e

    .line 858
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final marketFeedUsable()Z
    .registers 2

    .line 1826
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/chimeranft/core/SyncClient;->marketFeedSupported:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final marketListingKnown(JJLjava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_8

    return v0

    :cond_8
    const/4 v3, 0x1

    .line 1844
    const-string v4, ":"

    cmp-long v5, p3, v1

    if-eqz v5, :cond_2a

    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2a

    return v3

    :cond_2a
    if-eqz p5, :cond_61

    .line 1846
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_33

    goto :goto_61

    .line 1847
    :cond_33
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p4, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "toLowerCase(...)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    return v3

    :cond_61
    :goto_61
    return v0
.end method

.method public final mergeRemoteGift(JLjava/lang/String;)Z
    .registers 21

    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    move-object/from16 v0, p3

    .line 1660
    const-string v10, ":"

    iget-boolean v2, v1, Lcom/chimeranft/core/SyncClient;->enabled:Z

    const/4 v11, 0x0

    if-nez v2, :cond_12

    .line 1661
    const-string v0, "merge disabled"

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    return v11

    .line 1666
    :cond_12
    :try_start_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1667
    sget-object v12, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftKey(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v12, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$remoteGiftKey(Lcom/chimeranft/core/SyncClient$Companion;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "merge:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x2

    .line 1668
    invoke-static {v13, v10, v11, v15, v14}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    if-nez v2, :cond_64

    iget-object v2, v1, Lcom/chimeranft/core/SyncClient;->sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v13}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1670
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->transferDuplicates:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->transferDuplicates:J

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge dedup -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    return v16

    :catchall_61
    move-exception v0

    goto/16 :goto_100

    .line 1674
    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"gifts\":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1675
    const-string v2, "POST"

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->keyFor(J)Ljava/lang/String;
    invoke-static {v12, v8, v9}, Lcom/chimeranft/core/SyncClient$Companion;->access$keyFor(Lcom/chimeranft/core/SyncClient$Companion;J)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/users/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/gifts"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 1676
    aget-object v2, v0, v11

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v12, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_ba

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_ba

    .line 1677
    aget-object v2, v0, v16

    if-eqz v2, :cond_ba

    const-string v3, "\"ok\""

    invoke-static {v2, v3, v11, v15, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const/4 v2, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v2, 0x0

    :goto_bb
    if-eqz v2, :cond_da

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge OK -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    .line 1681
    invoke-static {v13, v10, v11, v15, v14}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-direct {v1, v13}, Lcom/chimeranft/core/SyncClient;->rememberSentTransfer(Ljava/lang/String;)V

    :cond_d9
    return v2

    .line 1684
    :cond_da
    aget-object v3, v0, v11

    aget-object v0, v0, v16

    const/16 v4, 0xa0

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v12, v0, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "merge FAIL code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;
    :try_end_ff
    .catchall {:try_start_12 .. :try_end_ff} :catchall_61

    return v2

    .line 1688
    :goto_100
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "merge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 1689
    sget-object v3, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v0, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    return v11
.end method

.method public final poll()Ljava/lang/String;
    .registers 71

    move-object/from16 v0, p0

    .line 2377
    iget-boolean v1, v0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    .line 2378
    iget-object v2, v0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    .line 2379
    iget-wide v3, v0, Lcom/chimeranft/core/SyncClient;->myId:J

    .line 2380
    iget-wide v5, v0, Lcom/chimeranft/core/SyncClient;->pushAttempts:J

    iget-wide v7, v0, Lcom/chimeranft/core/SyncClient;->pushOk:J

    iget-wide v9, v0, Lcom/chimeranft/core/SyncClient;->pushFail:J

    .line 2381
    iget v11, v0, Lcom/chimeranft/core/SyncClient;->lastPayloadBytes:I

    iget-object v12, v0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 2382
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    move-wide v15, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pullOk:J

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pullFail:J

    move-wide/from16 v19, v13

    .line 2383
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pullUnchanged:J

    move-wide/from16 v21, v13

    .line 2384
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    const-wide/16 v23, 0x0

    cmp-long v25, v13, v23

    if-gtz v25, :cond_2a

    goto :goto_32

    :cond_2a
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pullNetworkTotalMs:J

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    div-long v23, v23, v13

    .line 2385
    :goto_32
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pullNetworkMaxMs:J

    move-wide/from16 v25, v15

    .line 2386
    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->cacheSize()I

    move-result v15

    move/from16 v16, v15

    iget-object v15, v0, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    move-object/from16 v27, v15

    iget-object v15, v0, Lcom/chimeranft/core/SyncClient;->lastSelfTest:Ljava/lang/String;

    move-object/from16 v28, v15

    .line 2387
    iget v15, v0, Lcom/chimeranft/core/SyncClient;->batchCapability:I

    move-wide/from16 v29, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->batchAttempts:J

    move-wide/from16 v31, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->batchOk:J

    move-wide/from16 v33, v13

    .line 2388
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->batchFallbacks:J

    move-wide/from16 v35, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->batchRecords:J

    move-wide/from16 v37, v13

    .line 2389
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->badgeAttempts:J

    move-wide/from16 v39, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->badgeOk:J

    move-wide/from16 v41, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->badgeFail:J

    move-wide/from16 v43, v13

    .line 2390
    iget-object v13, v0, Lcom/chimeranft/core/SyncClient;->lastBadgeResult:Ljava/lang/String;

    move-object/from16 v45, v13

    .line 2391
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->xferPolls:J

    move-wide/from16 v46, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->xferApplied:J

    move-wide/from16 v48, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->xferPushOk:J

    move-wide/from16 v50, v13

    .line 2392
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->xferPushFail:J

    move-wide/from16 v52, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->transferDuplicates:J

    move-wide/from16 v54, v13

    iget-object v13, v0, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    move-object/from16 v56, v13

    .line 2393
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->marketFeedFetches:J

    move-wide/from16 v57, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->offersSent:J

    move-wide/from16 v59, v13

    .line 2394
    iget v13, v0, Lcom/chimeranft/core/SyncClient;->marketFeedSupported:I

    .line 2395
    iget-object v14, v0, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    move/from16 v61, v13

    move-object/from16 v62, v14

    .line 2396
    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->pushCoalesced:J

    move-wide/from16 v63, v13

    iget-wide v13, v0, Lcom/chimeranft/core/SyncClient;->remoteDuplicates:J

    .line 2397
    sget-object v65, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    move-wide/from16 v66, v13

    invoke-virtual/range {v65 .. v65}, Lcom/chimeranft/core/Main$Companion;->localAccountIds()[J

    move-result-object v13

    array-length v13, v13

    iget-object v14, v0, Lcom/chimeranft/core/SyncClient;->lastAccessReport:Ljava/lang/String;

    move-object/from16 v65, v14

    .line 2398
    iget-object v14, v0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move/from16 v68, v14

    const-string v14, "]"

    if-nez v68, :cond_b8

    const-string v68, ""

    move/from16 v69, v15

    move-object/from16 v0, v68

    move/from16 v68, v13

    goto :goto_da

    :cond_b8
    move/from16 v68, v13

    sget-object v13, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    move/from16 v69, v15

    iget-object v15, v0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    const/16 v0, 0xc8

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v13, v15, v0}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " err=["

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_da
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enabled="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " server="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " | push[attempts="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ok="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fail="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " last="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] | pull[attempts="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v25

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v17

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v19

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " unchanged="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v21

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " netAvgMs="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v23

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " netMaxMs="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v29

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " cache="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v16

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " selftest="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] | batch[cap="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v69

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " attempts="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v31

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v33

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " fallbacks="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v35

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " records="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v37

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "] | badge[attempts="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v39

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v41

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v43

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v45

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] | XFER[polls="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v46

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " applied="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v48

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pushOk="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v50

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pushFail="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v52

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dedup="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v54

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v56

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] | MARKET[feeds="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v57

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " offersSent="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v59

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " support="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v61

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v62

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] | optimize[pushCoalesced="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v63

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " remoteDedup="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v66

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] | access[accounts="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v68

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " report="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v65

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final prefetchRemoteState(J)V
    .registers 13

    .line 839
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-eqz v0, :cond_25

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_25

    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_11

    goto :goto_25

    .line 840
    :cond_11
    iget-object v3, p0, Lcom/chimeranft/core/SyncClient;->prefetchGate:Lcom/chimeranft/core/LongStamps;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/chimeranft/core/SyncClient;->PREFETCH_GATE_MS:J

    move-wide v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/chimeranft/core/LongStamps;->throttled(JJJ)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_25

    :cond_21
    const/4 p1, 0x0

    .line 841
    invoke-direct {p0, v4, v5, p1, p1}, Lcom/chimeranft/core/SyncClient;->requestRemoteStateInternal(JZZ)V

    :cond_25
    :goto_25
    return-void
.end method

.method public final pullSelfTestAsync()Ljava/lang/String;
    .registers 4

    .line 2268
    new-instance v0, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/SyncClient$pullSelfTestAsync$1;-><init>(Lcom/chimeranft/core/SyncClient;)V

    const-string v1, "chimeranft-sync-pulltest"

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/Safe;->start(Ljava/lang/String;ILjava/lang/Runnable;)Z

    .line 2298
    const-string v0, "pull self-test scheduled \u2014 tap \'poll sync\' for result"

    return-object v0
.end method

.method public final purchaseRemoteListing(Ljava/lang/String;JLjava/lang/String;JJJJJLjava/lang/String;ZLjava/lang/String;)Lorg/json/JSONObject;
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    .line 1961
    iget-boolean v10, v1, Lcom/chimeranft/core/SyncClient;->enabled:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_15a

    if-eqz v0, :cond_15a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1b

    goto/16 :goto_15a

    .line 1964
    :cond_1b
    :try_start_1b
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1965
    const-string v12, "request_id"

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1966
    const-string v0, "seller_id"

    invoke-virtual {v10, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1967
    const-string v0, "seller_name"
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_47

    const-string v12, ""

    if-nez p4, :cond_32

    move-object v13, v12

    goto :goto_34

    :cond_32
    move-object/from16 v13, p4

    :goto_34
    :try_start_34
    invoke-virtual {v10, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1968
    const-string v0, "buyer_id"

    invoke-virtual {v10, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1969
    const-string v0, "buyer_name"

    iget-wide v13, v1, Lcom/chimeranft/core/SyncClient;->myId:J

    cmp-long v15, v4, v13

    if-nez v15, :cond_4a

    const-string v4, "Chimera NFT buyer"

    goto :goto_4b

    :catchall_47
    move-exception v0

    goto/16 :goto_122

    :cond_4a
    move-object v4, v12

    :goto_4b
    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1970
    const-string v0, "recipient_id"

    invoke-virtual {v10, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1971
    const-string v0, "currency"

    if-eqz p16, :cond_5a

    const-string v4, "GRAM"

    goto :goto_5c

    :cond_5a
    const-string v4, "STARS"

    :goto_5c
    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1972
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1973
    const-string v4, "unique_id"

    invoke-virtual {v0, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1974
    const-string v4, "saved_id"

    invoke-virtual {v0, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1975
    const-string v4, "base_gift_id"

    move-wide/from16 v8, p11

    invoke-virtual {v0, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1976
    const-string v4, "num"

    move-wide/from16 v8, p13

    invoke-virtual {v0, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1977
    const-string v4, "slug"

    if-nez p15, :cond_81

    goto :goto_83

    :cond_81
    move-object/from16 v12, p15

    :goto_83
    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1978
    const-string v4, "selector"

    invoke-virtual {v10, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1979
    const-string v0, "delivery_gift"

    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v5, p17

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1980
    const-string v0, "POST"

    const-string v4, "/api/v1/market/purchase"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_9f
    .catchall {:try_start_34 .. :try_end_9f} :catchall_47

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 p10, v0

    move-object/from16 p9, v1

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    move-object/from16 p15, v9

    move-object/from16 p13, v10

    const/16 p14, 0x8

    :try_start_b1
    invoke-static/range {p9 .. p15}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v0
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_11f

    .line 1981
    :try_start_b5
    sget-object v4, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v5, 0x0

    aget-object v8, v0, v5

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v4, v8}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xc8

    const/4 v10, 0x1

    if-lt v8, v9, :cond_f9

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_f9

    .line 1982
    aget-object v8, v0, v10

    if-eqz v8, :cond_f9

    .line 1984
    new-instance v8, Lorg/json/JSONObject;

    aget-object v9, v0, v10

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1985
    const-string v9, "ok"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_f9

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market OK seller="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " recipient="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    .line 1988
    invoke-virtual {v1, v2, v3}, Lcom/chimeranft/core/SyncClient;->requestRemoteState(J)V

    return-object v8

    .line 1992
    :cond_f9
    aget-object v2, v0, v5

    aget-object v0, v0, v10

    const/16 v3, 0xa0

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v4, v0, v3}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market FAIL code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;
    :try_end_11e
    .catchall {:try_start_b5 .. :try_end_11e} :catchall_47

    goto :goto_15a

    :catchall_11f
    move-exception v0

    move-object/from16 v1, p9

    .line 1995
    :goto_122
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 1996
    sget-object v3, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v0, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    :cond_15a
    :goto_15a
    return-object v11
.end method

.method public final pushAuthoritativeStateAsync()V
    .registers 1

    .line 476
    invoke-virtual {p0}, Lcom/chimeranft/core/SyncClient;->pushNowAsync()Ljava/lang/String;

    return-void
.end method

.method public final pushNowAsync()Ljava/lang/String;
    .registers 5

    .line 432
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-nez v0, :cond_7

    const-string v0, "disabled"

    return-object v0

    .line 433
    :cond_7
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->forcePushPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 434
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->pushWorkerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_20

    .line 436
    iget-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pushCoalesced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->pushCoalesced:J

    .line 437
    const-string v0, "push coalesced"

    return-object v0

    .line 443
    :cond_20
    new-instance v0, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/SyncClient$pushNowAsync$1;-><init>(Lcom/chimeranft/core/SyncClient;)V

    const-string v1, "chimeranft-sync-pushnow"

    const/4 v3, 0x5

    invoke-static {v1, v3, v0}, Lcom/chimeranft/core/Safe;->start(Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 468
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->pushWorkerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 469
    const-string v0, "push not scheduled (thread refused)"

    return-object v0

    .line 471
    :cond_36
    const-string v0, "push scheduled \u2014 tap \'poll sync\' for result"

    return-object v0
.end method

.method public final pushOnce()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/chimeranft/core/SyncClient;->pushOnce$default(Lcom/chimeranft/core/SyncClient;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pushOnce(Z)Ljava/lang/String;
    .registers 23

    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 572
    new-array v2, v0, [J

    .line 573
    invoke-direct {v1, v2}, Lcom/chimeranft/core/SyncClient;->identitySnapshot([J)Lcom/chimeranft/core/Store;

    move-result-object v3

    const/4 v8, 0x0

    .line 574
    aget-wide v9, v2, v8

    .line 575
    iget-object v11, v1, Lcom/chimeranft/core/SyncClient;->pushLock:Ljava/lang/Object;

    monitor-enter v11

    .line 576
    :try_start_f
    iget-boolean v2, v1, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-nez v2, :cond_1e

    .line 577
    const-string v0, "disabled"

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 578
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1b

    monitor-exit v11

    return-object v0

    :catchall_1b
    move-exception v0

    goto/16 :goto_1b9

    :cond_1e
    const-wide/16 v4, 0x0

    cmp-long v2, v9, v4

    if-gtz v2, :cond_2c

    .line 581
    :try_start_24
    const-string v0, "no-uid"

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 582
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_1b

    monitor-exit v11

    return-object v0

    :cond_2c
    if-nez v3, :cond_36

    .line 585
    :try_start_2e
    const-string v0, "no-store"

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 586
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_1b

    monitor-exit v11

    return-object v0

    .line 588
    :cond_36
    :try_start_36
    invoke-virtual {v3}, Lcom/chimeranft/core/Store;->getWriteVersion()J

    move-result-wide v12

    if-nez p1, :cond_5e

    .line 589
    iget-wide v4, v1, Lcom/chimeranft/core/SyncClient;->lastPushedVersion:J

    cmp-long v2, v12, v4

    if-nez v2, :cond_5e

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip-unchanged (v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 592
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_36 .. :try_end_5c} :catchall_1b

    monitor-exit v11

    return-object v0

    .line 594
    :cond_5e
    :try_start_5e
    iget-wide v4, v1, Lcom/chimeranft/core/SyncClient;->pushAttempts:J

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    iput-wide v4, v1, Lcom/chimeranft/core/SyncClient;->pushAttempts:J
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_1b

    const-wide/16 v16, 0x2

    .line 597
    :try_start_67
    invoke-virtual {v3, v9, v10}, Lcom/chimeranft/core/Store;->buildSyncSnapshot(J)Lorg/json/JSONObject;

    move-result-object v2

    .line 601
    sget-object v3, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->snapshotEmpty(Lorg/json/JSONObject;)Z
    invoke-static {v3, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$snapshotEmpty(Lcom/chimeranft/core/SyncClient$Companion;Lorg/json/JSONObject;)Z

    move-result v18

    if-eqz v18, :cond_82

    .line 603
    const-string v0, "skip-empty (no local data \u2014 server kept)"

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 604
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_67 .. :try_end_79} :catchall_7b

    monitor-exit v11

    return-object v0

    :catchall_7b
    move-exception v0

    move-wide/from16 v19, v14

    const-wide/16 v14, 0xfa0

    goto/16 :goto_168

    .line 606
    :cond_82
    :try_start_82
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x1

    .line 607
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v4, "getBytes(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    iput v0, v1, Lcom/chimeranft/core/SyncClient;->lastPayloadBytes:I

    .line 608
    sget-object v0, Lcom/chimeranft/core/SyncClient;->USER_KEY_PREFIX:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v2

    .line 609
    const-string v2, "PUT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/api/v1/users/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/state"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c0
    .catchall {:try_start_82 .. :try_end_c0} :catchall_7b

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v19, v3

    move-object v3, v0

    move-object/from16 v0, v19

    move-wide/from16 v19, v14

    const-wide/16 v14, 0xfa0

    :try_start_cd
    invoke-static/range {v1 .. v7}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 610
    aget-object v3, v2, v8

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v0, v3}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_128

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_128

    .line 611
    aget-object v4, v2, v18

    if-eqz v4, :cond_128

    const-string v5, "\"ok\""

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v8, v7, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 612
    aget-object v4, v2, v18

    const-string v5, "true"

    invoke-static {v4, v5, v8, v7, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 615
    iget-wide v4, v1, Lcom/chimeranft/core/SyncClient;->pushOk:J

    add-long v4, v4, v19

    iput-wide v4, v1, Lcom/chimeranft/core/SyncClient;->pushOk:J

    .line 616
    iput-wide v14, v1, Lcom/chimeranft/core/SyncClient;->pushBackoffMs:J

    .line 621
    invoke-direct {v1, v9, v10}, Lcom/chimeranft/core/SyncClient;->accountStillCurrent(J)Z

    move-result v0

    if-eqz v0, :cond_10a

    iput-wide v12, v1, Lcom/chimeranft/core/SyncClient;->lastPushedVersion:J

    goto :goto_10a

    :catchall_108
    move-exception v0

    goto :goto_168

    .line 622
    :cond_10a
    :goto_10a
    iget v0, v1, Lcom/chimeranft/core/SyncClient;->lastPayloadBytes:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OK "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    goto :goto_164

    .line 626
    :cond_128
    iget-wide v3, v1, Lcom/chimeranft/core/SyncClient;->pushFail:J

    add-long v3, v3, v19

    iput-wide v3, v1, Lcom/chimeranft/core/SyncClient;->pushFail:J

    .line 627
    iget-wide v3, v1, Lcom/chimeranft/core/SyncClient;->pushBackoffMs:J

    mul-long v3, v3, v16

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/chimeranft/core/SyncClient;->pushBackoffMs:J

    .line 628
    aget-object v3, v2, v8

    aget-object v2, v2, v18

    const/16 v4, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v0, v2, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAIL code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 630
    :goto_164
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_166
    .catchall {:try_start_cd .. :try_end_166} :catchall_108

    monitor-exit v11

    return-object v0

    .line 633
    :goto_168
    :try_start_168
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->pushFail:J

    add-long v2, v2, v19

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->pushFail:J

    .line 634
    iget-wide v2, v1, Lcom/chimeranft/core/SyncClient;->pushBackoffMs:J

    mul-long v2, v2, v16

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v5, 0xea60

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chimeranft/core/SyncClient;->pushBackoffMs:J

    .line 635
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 636
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    iget-object v2, v1, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    const/16 v3, 0xa0

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 637
    iget-object v0, v1, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_1b7
    .catchall {:try_start_168 .. :try_end_1b7} :catchall_1b

    monitor-exit v11

    return-object v0

    :goto_1b9
    monitor-exit v11

    throw v0
.end method

.method public final pushResetSnapshot()Ljava/lang/String;
    .registers 15

    const/4 v0, 0x1

    .line 508
    new-array v1, v0, [J

    .line 509
    invoke-direct {p0, v1}, Lcom/chimeranft/core/SyncClient;->identitySnapshot([J)Lcom/chimeranft/core/Store;

    move-result-object v2

    const/4 v3, 0x0

    .line 510
    aget-wide v4, v1, v3

    .line 511
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->pushLock:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1f

    .line 513
    :try_start_13
    const-string v0, "reset no-uid"

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    move-object v7, p0

    goto/16 :goto_108

    :cond_1f
    if-nez v2, :cond_29

    .line 517
    :try_start_21
    const-string v0, "reset no-store"

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1b

    monitor-exit v1

    return-object v0

    .line 522
    :cond_29
    :try_start_29
    invoke-virtual {v2, v4, v5}, Lcom/chimeranft/core/Store;->buildSyncSnapshot(J)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 523
    const-string v8, "PUT"

    sget-object v6, Lcom/chimeranft/core/SyncClient;->USER_KEY_PREFIX:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/api/v1/users/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/state"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_cb

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    :try_start_53
    invoke-static/range {v7 .. v13}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v6

    .line 524
    sget-object v8, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    aget-object v9, v6, v3

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xc8

    if-lt v9, v10, :cond_a2

    const/16 v10, 0x12c

    if-ge v9, v10, :cond_a2

    .line 525
    aget-object v10, v6, v0

    if-eqz v10, :cond_a2

    const-string v11, "\"ok\""

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v10, v11, v3, v13, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 526
    aget-object v10, v6, v0

    const-string v11, "true"

    invoke-static {v10, v11, v3, v13, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 531
    invoke-direct {p0, v4, v5}, Lcom/chimeranft/core/SyncClient;->accountStillCurrent(J)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {v2}, Lcom/chimeranft/core/Store;->getWriteVersion()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/chimeranft/core/SyncClient;->lastPushedVersion:J

    goto :goto_8e

    :catchall_8c
    move-exception v0

    goto :goto_cd

    .line 532
    :cond_8e
    :goto_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset OK "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    goto :goto_c7

    .line 536
    :cond_a2
    aget-object v2, v6, v3

    aget-object v0, v6, v0

    const/16 v3, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v8, v0, v3}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset FAIL code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " body="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 538
    :goto_c7
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_c9
    .catchall {:try_start_53 .. :try_end_c9} :catchall_8c

    monitor-exit v1

    return-object v0

    :catchall_cb
    move-exception v0

    move-object v7, p0

    .line 541
    :goto_cd
    :try_start_cd
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetPush: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 542
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    iget-object v2, v7, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    const/16 v3, 0xa0

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    .line 543
    iget-object v0, v7, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;
    :try_end_105
    .catchall {:try_start_cd .. :try_end_105} :catchall_107

    monitor-exit v1

    return-object v0

    :catchall_107
    move-exception v0

    :goto_108
    monitor-exit v1

    throw v0
.end method

.method public final pushResetSnapshotAsync()Ljava/lang/String;
    .registers 4

    .line 489
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-nez v0, :cond_7

    const-string v0, "sync off (server record untouched)"

    return-object v0

    .line 490
    :cond_7
    new-instance v0, Lcom/chimeranft/core/SyncClient$pushResetSnapshotAsync$1;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/SyncClient$pushResetSnapshotAsync$1;-><init>(Lcom/chimeranft/core/SyncClient;)V

    const-string v1, "chimeranft-sync-reset"

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/Safe;->start(Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 501
    const-string v0, "reset push not scheduled (thread refused)"

    return-object v0

    .line 503
    :cond_18
    const-string v0, "reset push scheduled"

    return-object v0
.end method

.method public final pushTransfer(JLjava/lang/String;)Z
    .registers 18

    move-wide v8, p1

    .line 1611
    const-string v0, ""

    iget-boolean v2, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    const/4 v10, 0x0

    if-nez v2, :cond_d

    .line 1612
    const-string v0, "push disabled"

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    return v10

    .line 1620
    :cond_d
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1b

    move-object/from16 v4, p3

    :try_start_11
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "event_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1d

    goto :goto_1d

    :catchall_1b
    move-object/from16 v4, p3

    :catchall_1d
    :goto_1d
    const-wide/16 v11, 0x1

    .line 1624
    :try_start_1f
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v13, 0x1

    if-nez v2, :cond_27

    goto :goto_4b

    :cond_27
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1626
    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->transferDuplicates:J

    add-long/2addr v2, v11

    iput-wide v2, p0, Lcom/chimeranft/core/SyncClient;->transferDuplicates:J

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push dedup -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    return v13

    :catchall_48
    move-exception v0

    goto/16 :goto_d8

    .line 1630
    :cond_4b
    :goto_4b
    const-string v2, "PUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/transfers/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 1631
    sget-object v3, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    aget-object v4, v2, v10

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_87

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_87

    .line 1632
    aget-object v4, v2, v13

    if-eqz v4, :cond_87

    const-string v5, "\"ok\""

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v10, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    const/4 v4, 0x1

    goto :goto_88

    :cond_87
    const/4 v4, 0x0

    :goto_88
    if-eqz v4, :cond_ad

    .line 1635
    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->xferPushOk:J

    add-long/2addr v2, v11

    iput-wide v2, p0, Lcom/chimeranft/core/SyncClient;->xferPushOk:J

    .line 1636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push OK -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    .line 1637
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a9

    goto :goto_d7

    :cond_a9
    invoke-direct {p0, v0}, Lcom/chimeranft/core/SyncClient;->rememberSentTransfer(Ljava/lang/String;)V

    goto :goto_d7

    .line 1641
    :cond_ad
    iget-wide v5, p0, Lcom/chimeranft/core/SyncClient;->xferPushFail:J

    add-long/2addr v5, v11

    iput-wide v5, p0, Lcom/chimeranft/core/SyncClient;->xferPushFail:J

    .line 1642
    aget-object v0, v2, v10

    aget-object v2, v2, v13

    const/16 v5, 0xa0

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v2, v5}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push FAIL code="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;
    :try_end_d7
    .catchall {:try_start_1f .. :try_end_d7} :catchall_48

    :goto_d7
    return v4

    .line 1647
    :goto_d8
    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->xferPushFail:J

    add-long/2addr v2, v11

    iput-wide v2, p0, Lcom/chimeranft/core/SyncClient;->xferPushFail:J

    .line 1648
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xferpush: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 1649
    sget-object v3, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v0, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push EXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    return v10
.end method

.method public final pushTransferAsync(JLjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1697
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    if-nez v0, :cond_7

    const-string p1, "disabled"

    return-object p1

    .line 1698
    :cond_7
    new-instance v0, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/chimeranft/core/SyncClient$pushTransferAsync$1;-><init>(Lcom/chimeranft/core/SyncClient;JLjava/lang/String;)V

    const-string p3, "chimeranft-xfer-push"

    const/4 v1, 0x5

    invoke-static {p3, v1, v0}, Lcom/chimeranft/core/Safe;->start(Ljava/lang/String;ILjava/lang/Runnable;)Z

    .line 1711
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "transfer push scheduled -> "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final rememberInjectedListing(JJLjava/lang/String;)V
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    goto :goto_6e

    .line 1834
    :cond_7
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/16 v3, 0x1000

    if-le v2, v3, :cond_16

    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1835
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1836
    const-string v3, ":"

    cmp-long v4, p3, v0

    if-eqz v4, :cond_3b

    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    if-eqz p5, :cond_6e

    .line 1837
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_44

    return-void

    .line 1838
    :cond_44
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p4, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "toLowerCase(...)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    :goto_6e
    return-void
.end method

.method public final requestRemoteState(J)V
    .registers 4

    const/4 v0, 0x1

    .line 827
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/chimeranft/core/SyncClient;->requestRemoteStateInternal(JZZ)V

    return-void
.end method

.method public final respondOffer(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 13

    .line 1901
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_10

    :cond_d
    :goto_d
    move-object v3, p0

    goto/16 :goto_104

    :cond_10
    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_19

    goto :goto_d

    .line 1904
    :cond_19
    :try_start_19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1905
    const-string v2, "offer_id"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1906
    const-string p1, "action"
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_c9

    if-eqz p2, :cond_2f

    :try_start_27
    const-string v2, "accept"
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2a

    goto :goto_31

    :catchall_2a
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_cc

    :cond_2f
    :try_start_2f
    const-string v2, "decline"

    :goto_31
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1907
    const-string v4, "POST"

    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/api/v1/market/offers/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/respond"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_c9

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    :try_start_57
    invoke-static/range {v3 .. v9}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    .line 1908
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v2, 0x0

    aget-object v4, p1, v2

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v0, v4}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    const/4 v6, 0x1

    if-lt v4, v5, :cond_a3

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_a3

    .line 1909
    aget-object v4, p1, v6

    if-eqz v4, :cond_a3

    .line 1911
    new-instance v4, Lorg/json/JSONObject;

    aget-object v5, p1, v6

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1912
    const-string v5, "ok"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a3

    if-eqz p2, :cond_88

    .line 1914
    const-string p1, "accepted"

    goto :goto_8a

    :catchall_85
    move-exception v0

    :goto_86
    move-object p1, v0

    goto :goto_cc

    :cond_88
    const-string p1, "declined"

    :goto_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    if-eqz p2, :cond_a2

    .line 1916
    invoke-virtual {p0}, Lcom/chimeranft/core/SyncClient;->wakeTransfers()V

    :cond_a2
    return-object v4

    .line 1920
    :cond_a3
    aget-object p2, p1, v2

    aget-object p1, p1, v6

    const/16 v2, 0xa0

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v0, p1, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerRespond FAIL code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;
    :try_end_c8
    .catchall {:try_start_57 .. :try_end_c8} :catchall_85

    goto :goto_104

    :catchall_c9
    move-exception v0

    move-object v3, p0

    goto :goto_86

    .line 1923
    :goto_cc
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offerRespond: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 1924
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "offerRespond EXC "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    :goto_104
    return-object v1
.end method

.method public final sendOffer(JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JJLjava/lang/String;J)Lorg/json/JSONObject;
    .registers 27

    move-wide v0, p1

    move-wide/from16 v2, p8

    move-wide/from16 v4, p11

    .line 1857
    iget-boolean v6, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_149

    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-eqz v6, :cond_149

    iget-wide v10, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    cmp-long v6, v10, v8

    if-gtz v6, :cond_18

    goto/16 :goto_149

    .line 1860
    :cond_18
    :try_start_18
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1861
    const-string v10, "buyer_id"

    iget-wide v11, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    invoke-virtual {v6, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1862
    const-string v10, "buyer_name"
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_4a

    const-string v11, ""

    if-nez p4, :cond_2c

    move-object v12, v11

    goto :goto_2e

    :cond_2c
    move-object/from16 v12, p4

    :goto_2e
    :try_start_2e
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1863
    const-string v10, "seller_id"

    invoke-virtual {v6, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1864
    const-string v10, "seller_name"

    if-nez p3, :cond_3c

    move-object v12, v11

    goto :goto_3e

    :cond_3c
    move-object/from16 v12, p3

    :goto_3e
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1865
    const-string v10, "currency"

    cmp-long v12, v2, v8

    if-lez v12, :cond_4d

    const-string v12, "GRAM"

    goto :goto_4f

    :catchall_4a
    move-exception v0

    goto/16 :goto_111

    :cond_4d
    const-string v12, "STARS"

    :goto_4f
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1866
    const-string v10, "stars"

    move-wide/from16 v12, p6

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1867
    const-string v10, "nanoton"

    invoke-virtual {v6, v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1868
    const-string v2, "message"

    if-nez p10, :cond_63

    goto :goto_65

    :cond_63
    move-object/from16 v11, p10

    :goto_65
    invoke-virtual {v6, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    cmp-long v2, v4, v8

    if-lez v2, :cond_71

    .line 1871
    const-string v2, "expires_at"

    invoke-virtual {v6, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1872
    :cond_71
    const-string v2, "gift"

    move-object/from16 v3, p5

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1873
    const-string v2, "PUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/api/v1/market/offers/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 p3, p0

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p9, v6

    move-object/from16 p7, v8

    const/16 p8, 0x8

    invoke-static/range {p3 .. p9}, Lcom/chimeranft/core/SyncClient;->http$default(Lcom/chimeranft/core/SyncClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 1874
    sget-object v4, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    const/4 v5, 0x0

    aget-object v6, v2, v5

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->parseInt(Ljava/lang/String;)I
    invoke-static {v4, v6}, Lcom/chimeranft/core/SyncClient$Companion;->access$parseInt(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0xc8

    const/4 v9, 0x1

    if-lt v6, v8, :cond_eb

    const/16 v8, 0x12c

    if-ge v6, v8, :cond_eb

    .line 1875
    aget-object v6, v2, v9

    if-eqz v6, :cond_eb

    .line 1877
    new-instance v6, Lorg/json/JSONObject;

    aget-object v8, v2, v9

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1878
    const-string v8, "ok"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 1880
    iget-wide v4, p0, Lcom/chimeranft/core/SyncClient;->offersSent:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/chimeranft/core/SyncClient;->offersSent:J

    .line 1881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offer OK -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    .line 1882
    const-string v0, "offer"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 1885
    :cond_eb
    aget-object v0, v2, v5

    aget-object v1, v2, v9

    const/16 v2, 0xa0

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v4, v1, v2}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offer FAIL code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;
    :try_end_110
    .catchall {:try_start_2e .. :try_end_110} :catchall_4a

    goto :goto_149

    .line 1888
    :goto_111
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    .line 1889
    sget-object v2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x78

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trunc(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v0, v1}, Lcom/chimeranft/core/SyncClient$Companion;->access$trunc(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offer EXC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    :cond_149
    :goto_149
    return-object v7
.end method

.method public final setBadgeAttempts(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->badgeAttempts:J

    return-void
.end method

.method public final setBadgeFail(J)V
    .registers 3

    .line 56
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->badgeFail:J

    return-void
.end method

.method public final setBadgeOk(J)V
    .registers 3

    .line 55
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->badgeOk:J

    return-void
.end method

.method public final setBatchAttempts(J)V
    .registers 3

    .line 125
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->batchAttempts:J

    return-void
.end method

.method public final setBatchFallbacks(J)V
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->batchFallbacks:J

    return-void
.end method

.method public final setBatchOk(J)V
    .registers 3

    .line 126
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->batchOk:J

    return-void
.end method

.method public final setBatchRecords(J)V
    .registers 3

    .line 128
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->batchRecords:J

    return-void
.end method

.method public final setBatchTransientFailures(J)V
    .registers 3

    .line 173
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->batchTransientFailures:J

    return-void
.end method

.method public final setEnabled(Z)V
    .registers 2

    .line 248
    iput-boolean p1, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    return-void
.end method

.method public final setLastAccessReport(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastAccessReport:Ljava/lang/String;

    return-void
.end method

.method public final setLastBadgeResult(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastBadgeResult:Ljava/lang/String;

    return-void
.end method

.method public final setLastError(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastError:Ljava/lang/String;

    return-void
.end method

.method public final setLastMarketResult(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastMarketResult:Ljava/lang/String;

    return-void
.end method

.method public final setLastPayloadBytes(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/chimeranft/core/SyncClient;->lastPayloadBytes:I

    return-void
.end method

.method public final setLastPullResult(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastPullResult:Ljava/lang/String;

    return-void
.end method

.method public final setLastPushResult(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    return-void
.end method

.method public final setLastSelfTest(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->lastSelfTest:Ljava/lang/String;

    return-void
.end method

.method public final setMarketFeedFetches(J)V
    .registers 3

    .line 78
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->marketFeedFetches:J

    return-void
.end method

.method public final setOffersSent(J)V
    .registers 3

    .line 79
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->offersSent:J

    return-void
.end method

.method public final setPullAttempts(J)V
    .registers 3

    .line 119
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    return-void
.end method

.method public final setPullFail(J)V
    .registers 3

    .line 121
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pullFail:J

    return-void
.end method

.method public final setPullNetworkMaxMs(J)V
    .registers 3

    .line 124
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkMaxMs:J

    return-void
.end method

.method public final setPullNetworkTotalMs(J)V
    .registers 3

    .line 123
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkTotalMs:J

    return-void
.end method

.method public final setPullOk(J)V
    .registers 3

    .line 120
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pullOk:J

    return-void
.end method

.method public final setPullUnchanged(J)V
    .registers 3

    .line 122
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pullUnchanged:J

    return-void
.end method

.method public final setPushAttempts(J)V
    .registers 3

    .line 114
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pushAttempts:J

    return-void
.end method

.method public final setPushCoalesced(J)V
    .registers 3

    .line 70
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pushCoalesced:J

    return-void
.end method

.method public final setPushFail(J)V
    .registers 3

    .line 116
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pushFail:J

    return-void
.end method

.method public final setPushOk(J)V
    .registers 3

    .line 115
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->pushOk:J

    return-void
.end method

.method public final setRemoteDuplicates(J)V
    .registers 3

    .line 69
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->remoteDuplicates:J

    return-void
.end method

.method public final setTransferDuplicates(J)V
    .registers 3

    .line 68
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->transferDuplicates:J

    return-void
.end method

.method public final setXferApplied(J)V
    .registers 3

    .line 67
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->xferApplied:J

    return-void
.end method

.method public final setXferPolls(J)V
    .registers 3

    .line 66
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->xferPolls:J

    return-void
.end method

.method public final setXferPushFail(J)V
    .registers 3

    .line 65
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->xferPushFail:J

    return-void
.end method

.method public final setXferPushOk(J)V
    .registers 3

    .line 64
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->xferPushOk:J

    return-void
.end method

.method public final snapshotCachedRecords()Ljava/util/Map;
    .registers 3

    .line 2263
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final start()V
    .registers 4

    .line 330
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->running:Z

    if-eqz v0, :cond_5

    goto :goto_3f

    :cond_5
    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->running:Z

    .line 336
    new-instance v0, Lcom/chimeranft/core/SyncClient$start$1;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/SyncClient$start$1;-><init>(Lcom/chimeranft/core/SyncClient;)V

    const-string v1, "chimeranft-sync-push"

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/Safe;->thread(Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->pushThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1b

    .line 341
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    :cond_1b
    new-instance v0, Lcom/chimeranft/core/SyncClient$start$2;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/SyncClient$start$2;-><init>(Lcom/chimeranft/core/SyncClient;)V

    const-string v1, "chimeranft-sync-pull"

    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/Safe;->thread(Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->pullThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2d

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 348
    :cond_2d
    new-instance v0, Lcom/chimeranft/core/SyncClient$start$3;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/SyncClient$start$3;-><init>(Lcom/chimeranft/core/SyncClient;)V

    const-string v1, "chimeranft-access-watch"

    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/Safe;->thread(Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/SyncClient;->accessThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3f

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final statusJson()Ljava/lang/String;
    .registers 11

    .line 2402
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2407
    :try_start_5
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e9

    .line 2408
    :try_start_8
    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    .line 2409
    iget-object v3, p0, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    .line 2410
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_e6

    .line 2407
    :try_start_16
    monitor-exit v1

    .line 2411
    iget-boolean v1, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    const-wide/16 v4, 0x0

    if-nez v1, :cond_20

    const-string v1, "off"

    goto :goto_33

    :cond_20
    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pushFail:J

    iget-wide v8, p0, Lcom/chimeranft/core/SyncClient;->pushOk:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_31

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pushOk:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_31

    const-string v1, "error"

    goto :goto_33

    :cond_31
    const-string v1, "ready"

    .line 2412
    :goto_33
    const-string v6, "state"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2413
    const-string v1, "enabled"

    iget-boolean v6, p0, Lcom/chimeranft/core/SyncClient;->enabled:Z

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2414
    const-string v1, "server"

    iget-object v6, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2415
    const-string v1, "push_ok"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pushOk:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2416
    const-string v1, "push_fail"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pushFail:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2417
    const-string v1, "pull_ok"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pullOk:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2418
    const-string v1, "pull_fail"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pullFail:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2419
    const-string v1, "pull_network_avg_ms"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    cmp-long v8, v6, v4

    if-gtz v8, :cond_6c

    move-wide v6, v4

    goto :goto_71

    :cond_6c
    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkTotalMs:J

    iget-wide v8, p0, Lcom/chimeranft/core/SyncClient;->pullAttempts:J

    div-long/2addr v6, v8

    :goto_71
    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2420
    const-string v1, "pull_network_max_ms"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pullNetworkMaxMs:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2421
    const-string v1, "batch_capability"

    iget v6, p0, Lcom/chimeranft/core/SyncClient;->batchCapability:I

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2422
    const-string v1, "batch_attempts"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->batchAttempts:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2423
    const-string v1, "batch_ok"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->batchOk:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2424
    const-string v1, "batch_fallbacks"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->batchFallbacks:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2425
    const-string v1, "batch_records"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->batchRecords:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2426
    const-string v1, "transfers_applied"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->xferApplied:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2427
    const-string v1, "duplicates_blocked"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->transferDuplicates:J

    iget-wide v8, p0, Lcom/chimeranft/core/SyncClient;->remoteDuplicates:J

    add-long/2addr v6, v8

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2428
    const-string v1, "pushes_coalesced"

    iget-wide v6, p0, Lcom/chimeranft/core/SyncClient;->pushCoalesced:J

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2429
    const-string v1, "cache_users"

    invoke-virtual {p0}, Lcom/chimeranft/core/SyncClient;->cacheSize()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2430
    const-string v1, "queue"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2431
    const-string v1, "urgent_queue"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2432
    const-string v1, "active_profiles"

    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_d3

    const/4 v2, 0x1

    goto :goto_d4

    :cond_d3
    const/4 v2, 0x0

    :goto_d4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2433
    const-string v1, "last_push"

    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->lastPushResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2434
    const-string v1, "last_transfer"

    iget-object v2, p0, Lcom/chimeranft/core/SyncClient;->lastTransferResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f3

    :catchall_e6
    move-exception v2

    .line 2407
    monitor-exit v1

    throw v2
    :try_end_e9
    .catchall {:try_start_16 .. :try_end_e9} :catchall_e9

    .line 2439
    :catchall_e9
    :try_start_e9
    const-string v1, "state"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_f1

    goto :goto_f3

    .line 2441
    :catchall_f1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2445
    :goto_f3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final stop()V
    .registers 3

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->running:Z

    .line 358
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->pushThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    if-eqz v0, :cond_d

    .line 359
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 360
    :cond_d
    iput-object v1, p0, Lcom/chimeranft/core/SyncClient;->pushThread:Ljava/lang/Thread;

    .line 362
    :cond_f
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->pullThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1a

    if-eqz v0, :cond_18

    .line 363
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 364
    :cond_18
    iput-object v1, p0, Lcom/chimeranft/core/SyncClient;->pullThread:Ljava/lang/Thread;

    .line 366
    :cond_1a
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->accessThread:Ljava/lang/Thread;

    if-eqz v0, :cond_25

    if-eqz v0, :cond_23

    .line 367
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 368
    :cond_23
    iput-object v1, p0, Lcom/chimeranft/core/SyncClient;->accessThread:Ljava/lang/Thread;

    .line 372
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->persistentWriter:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2a

    :catchall_2a
    return-void
.end method

.method public final declared-synchronized switchAccount(JLcom/chimeranft/core/Store;)V
    .registers 5

    monitor-enter p0

    .line 289
    :try_start_1
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->myId:J

    if-eqz p3, :cond_a

    .line 290
    iput-object p3, p0, Lcom/chimeranft/core/SyncClient;->store:Lcom/chimeranft/core/Store;

    goto :goto_a

    :catchall_8
    move-exception p1

    goto :goto_82

    :cond_a
    :goto_a
    const-wide/16 p1, -0x1

    .line 291
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->lastPushedVersion:J

    const-wide/16 p1, 0x0

    .line 292
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->lastTransferFetchMs:J

    .line 293
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_8

    .line 294
    :try_start_15
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 295
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 296
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 297
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 298
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 299
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 300
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->rebuildCacheGate()V

    .line 301
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_7f

    .line 293
    :try_start_38
    monitor-exit p3

    .line 302
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->inFlightBatchIds:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    const/4 p3, 0x0

    .line 303
    iput p3, p0, Lcom/chimeranft/core/SyncClient;->batchCapability:I

    .line 304
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->watched:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 305
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    .line 306
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->pullFailureCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 307
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 308
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->restoredNotified:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 309
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 312
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 316
    invoke-virtual {p0}, Lcom/chimeranft/core/SyncClient;->invalidateSiblingCache()V

    .line 317
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->accessEtag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 318
    iget-object p3, p0, Lcom/chimeranft/core/SyncClient;->accessEtagAt:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p3, 0x1

    .line 319
    iput-boolean p3, p0, Lcom/chimeranft/core/SyncClient;->accessOk:Z

    .line 320
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->accessBackoffMs:J

    .line 323
    iput-boolean p3, p0, Lcom/chimeranft/core/SyncClient;->forceFullAccessCheck:Z

    .line 324
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->lastAccessWakeMs:J

    .line 325
    invoke-virtual {p0}, Lcom/chimeranft/core/SyncClient;->wakeAccessCheck()V

    .line 326
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->loadPersistentCache()V
    :try_end_7d
    .catchall {:try_start_38 .. :try_end_7d} :catchall_8

    .line 327
    monitor-exit p0

    return-void

    :catchall_7f
    move-exception p1

    .line 293
    :try_start_80
    monitor-exit p3

    throw p1

    :goto_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_8

    throw p1
.end method

.method public final trimCaches()V
    .registers 8

    .line 983
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_3
    iget-object v1, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 985
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 987
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 992
    iget-wide v4, p0, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_d

    iget-object v4, p0, Lcom/chimeranft/core/SyncClient;->watched:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_d

    .line 993
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 994
    iget-object v4, p0, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    iget-object v4, p0, Lcom/chimeranft/core/SyncClient;->cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v4, p0, Lcom/chimeranft/core/SyncClient;->cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v4, p0, Lcom/chimeranft/core/SyncClient;->restoredNotified:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    :catchall_5e
    move-exception v1

    goto :goto_67

    .line 999
    :cond_60
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->rebuildCacheGate()V

    .line 1000
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_5e

    .line 983
    monitor-exit v0

    return-void

    :goto_67
    monitor-exit v0

    throw v1
.end method

.method public final updateEndpoint(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_11

    .line 263
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    :cond_9
    sget-object v0, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    # invokes: Lcom/chimeranft/core/SyncClient$Companion;->trimUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/chimeranft/core/SyncClient$Companion;->access$trimUrl(Lcom/chimeranft/core/SyncClient$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient;->server:Ljava/lang/String;

    :cond_11
    :goto_11
    if-eqz p2, :cond_15

    .line 264
    iput-object p2, p0, Lcom/chimeranft/core/SyncClient;->pluginKey:Ljava/lang/String;

    .line 265
    :cond_15
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 266
    :try_start_18
    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 267
    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->cacheTs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 268
    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->cacheFingerprint:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 269
    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->cacheEtags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 270
    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->urgentPullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->clear()V

    .line 271
    iget-object p2, p0, Lcom/chimeranft/core/SyncClient;->pullQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->clear()V

    .line 272
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->rebuildCacheGate()V

    .line 273
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_6a

    .line 265
    monitor-exit p1

    .line 274
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->inFlightBatchIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 275
    iput p1, p0, Lcom/chimeranft/core/SyncClient;->batchCapability:I

    .line 276
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->watched:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-wide/16 p1, 0x0

    .line 277
    iput-wide p1, p0, Lcom/chimeranft/core/SyncClient;->activeProfileKey:J

    .line 278
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->pullFailureCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 279
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->pullRetryAfter:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 280
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->restoredNotified:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 281
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->sentTransferIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 282
    iget-object p1, p0, Lcom/chimeranft/core/SyncClient;->injectedListings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 283
    invoke-direct {p0}, Lcom/chimeranft/core/SyncClient;->loadPersistentCache()V

    return-void

    :catchall_6a
    move-exception p2

    .line 265
    monitor-exit p1

    throw p2
.end method

.method public final wakeAccessCheck()V
    .registers 8

    .line 1462
    iget-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->running:Z

    if-nez v0, :cond_5

    goto :goto_20

    .line 1463
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1464
    iget-wide v2, p0, Lcom/chimeranft/core/SyncClient;->lastAccessWakeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa0

    cmp-long v6, v2, v4

    if-gez v6, :cond_14

    goto :goto_20

    .line 1465
    :cond_14
    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->lastAccessWakeMs:J

    const/4 v0, 0x1

    .line 1466
    iput-boolean v0, p0, Lcom/chimeranft/core/SyncClient;->forceFullAccessCheck:Z

    .line 1467
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient;->accessThread:Ljava/lang/Thread;

    if-eqz v0, :cond_20

    .line 1471
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_20

    :catchall_20
    :cond_20
    :goto_20
    return-void
.end method

.method public final wakeTransfers()V
    .registers 3

    const-wide/16 v0, 0xfa0

    .line 235
    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->transferBackoffMs:J

    const-wide/16 v0, 0x0

    .line 236
    iput-wide v0, p0, Lcom/chimeranft/core/SyncClient;->lastTransferFetchMs:J

    return-void
.end method
