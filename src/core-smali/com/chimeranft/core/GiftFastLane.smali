.class public final Lcom/chimeranft/core/GiftFastLane;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/GiftFastLane$Companion;

.field private static final MAX_PREPARED:I


# instance fields
.field private final cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

.field public volatile coalesced:J

.field public volatile failures:J

.field public volatile hits:J

.field private final lock:Ljava/lang/Object;

.field public volatile misses:J

.field public volatile preparedCount:J

.field public volatile trims:J

.field private final waiting:Ljava/util/HashMap;

.field private final workers:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/GiftFastLane$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/GiftFastLane$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/GiftFastLane;->Companion:Lcom/chimeranft/core/GiftFastLane$Companion;

    const/16 v0, 0x80

    .line 242
    sput v0, Lcom/chimeranft/core/GiftFastLane;->MAX_PREPARED:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->lock:Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/chimeranft/core/GiftFastLane$cache$1;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftFastLane$cache$1;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->waiting:Ljava/util/HashMap;

    .line 24
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x2

    goto :goto_23

    :cond_22
    const/4 v0, 0x1

    .line 25
    :goto_23
    const-string v1, "chimeranft-gift-fastlane"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/chimeranft/core/Safe;->factory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->workers:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic access$getMAX_PREPARED$cp()I
    .registers 1

    .line 15
    sget v0, Lcom/chimeranft/core/GiftFastLane;->MAX_PREPARED:I

    return v0
.end method

.method public static final synthetic access$publish(Lcom/chimeranft/core/GiftFastLane;Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Ljava/util/ArrayList;
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/GiftFastLane;->publish(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final publish(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Ljava/util/ArrayList;
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_d

    .line 201
    :try_start_5
    iget-object v1, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    invoke-virtual {v1, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_17

    .line 202
    :cond_d
    :goto_d
    iget-object p2, p0, Lcom/chimeranft/core/GiftFastLane;->waiting:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_b

    monitor-exit v0

    return-object p1

    :goto_17
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final peek(Ljava/lang/String;)Lcom/chimeranft/core/GiftFastLane$Prepared;
    .registers 7

    if-eqz p1, :cond_2c

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_b

    goto :goto_2c

    .line 208
    :cond_b
    iget-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_e
    iget-object v1, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    sget-object v2, Lcom/chimeranft/core/GiftFastLane;->Companion:Lcom/chimeranft/core/GiftFastLane$Companion;

    # invokes: Lcom/chimeranft/core/GiftFastLane$Companion;->keyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/chimeranft/core/GiftFastLane$Companion;->access$keyFor(Lcom/chimeranft/core/GiftFastLane$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/GiftFastLane$Prepared;

    if-eqz p1, :cond_28

    .line 210
    iget-wide v1, p0, Lcom/chimeranft/core/GiftFastLane;->hits:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/GiftFastLane;->hits:J
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_26

    goto :goto_28

    :catchall_26
    move-exception p1

    goto :goto_2a

    .line 211
    :cond_28
    :goto_28
    monitor-exit v0

    return-object p1

    :goto_2a
    monitor-exit v0

    throw p1

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final poll()Ljava/lang/String;
    .registers 15

    .line 231
    iget-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->size()I

    move-result v1

    .line 233
    iget-object v2, p0, Lcom/chimeranft/core/GiftFastLane;->waiting:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 234
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_63

    .line 231
    monitor-exit v0

    .line 235
    iget-wide v3, p0, Lcom/chimeranft/core/GiftFastLane;->hits:J

    .line 236
    iget-wide v5, p0, Lcom/chimeranft/core/GiftFastLane;->misses:J

    iget-wide v7, p0, Lcom/chimeranft/core/GiftFastLane;->coalesced:J

    .line 237
    iget-wide v9, p0, Lcom/chimeranft/core/GiftFastLane;->preparedCount:J

    iget-wide v11, p0, Lcom/chimeranft/core/GiftFastLane;->failures:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "giftFast[cache="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " coalesced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " prepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_63
    move-exception v1

    .line 231
    monitor-exit v0

    throw v1
.end method

.method public final prepare(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Callback;)V
    .registers 11

    if-nez p2, :cond_4

    goto/16 :goto_8b

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_11

    goto/16 :goto_8e

    .line 100
    :cond_11
    sget-object v1, Lcom/chimeranft/core/GiftFastLane;->Companion:Lcom/chimeranft/core/GiftFastLane$Companion;

    # invokes: Lcom/chimeranft/core/GiftFastLane$Companion;->keyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/chimeranft/core/GiftFastLane$Companion;->access$keyFor(Lcom/chimeranft/core/GiftFastLane$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/chimeranft/core/GiftFastLane;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_1a
    iget-object v3, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chimeranft/core/GiftFastLane$Prepared;

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_32

    .line 105
    iget-wide v0, p0, Lcom/chimeranft/core/GiftFastLane;->hits:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/chimeranft/core/GiftFastLane;->hits:J

    .line 106
    invoke-interface {p2, v3}, Lcom/chimeranft/core/GiftFastLane$Callback;->onReady(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_30

    .line 107
    monitor-exit v2

    return-void

    :catchall_30
    move-exception p1

    goto :goto_8c

    .line 109
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/chimeranft/core/GiftFastLane;->waiting:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_46

    .line 112
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-wide p1, p0, Lcom/chimeranft/core/GiftFastLane;->coalesced:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/chimeranft/core/GiftFastLane;->coalesced:J
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_30

    .line 114
    monitor-exit v2

    return-void

    .line 116
    :cond_46
    :try_start_46
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p2, p0, Lcom/chimeranft/core/GiftFastLane;->waiting:Ljava/util/HashMap;

    invoke-virtual {p2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-wide v6, p0, Lcom/chimeranft/core/GiftFastLane;->misses:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/chimeranft/core/GiftFastLane;->misses:J
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_30

    .line 101
    monitor-exit v2

    .line 130
    :try_start_5a
    iget-object p2, p0, Lcom/chimeranft/core/GiftFastLane;->workers:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/chimeranft/core/GiftFastLane$prepare$2;

    invoke-direct {v2, p1, p0, v1}, Lcom/chimeranft/core/GiftFastLane$prepare$2;-><init>(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_65

    return-void

    :catchall_65
    move-exception p1

    .line 171
    iget-wide v2, p0, Lcom/chimeranft/core/GiftFastLane;->failures:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/chimeranft/core/GiftFastLane;->failures:J

    .line 172
    const-string p2, "giftFastLane.submit"

    invoke-static {p2, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    invoke-direct {p0, v1, v0}, Lcom/chimeranft/core/GiftFastLane;->publish(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8b

    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_7b
    if-ge v1, p2, :cond_8b

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/chimeranft/core/GiftFastLane$Callback;

    .line 182
    :try_start_85
    invoke-interface {v2, v0}, Lcom/chimeranft/core/GiftFastLane$Callback;->onReady(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_7b

    :catchall_89
    nop

    goto :goto_7b

    :cond_8b
    :goto_8b
    return-void

    .line 101
    :goto_8c
    monitor-exit v2

    throw p1

    .line 97
    :cond_8e
    :goto_8e
    invoke-interface {p2, v0}, Lcom/chimeranft/core/GiftFastLane$Callback;->onReady(Lcom/chimeranft/core/GiftFastLane$Prepared;)V

    return-void
.end method

.method public final stop()V
    .registers 3

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->workers:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    .line 222
    :catchall_5
    iget-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_8
    iget-object v1, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    .line 224
    iget-object v1, p0, Lcom/chimeranft/core/GiftFastLane;->waiting:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 225
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_16

    .line 222
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final trim(Z)V
    .registers 7

    .line 73
    iget-object v0, p0, Lcom/chimeranft/core/GiftFastLane;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_d

    .line 76
    :try_start_5
    iget-object p1, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->clear()V

    goto :goto_31

    :catchall_b
    move-exception p1

    goto :goto_3a

    .line 81
    :cond_d
    iget-object p1, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 82
    iget-object v1, p0, Lcom/chimeranft/core/GiftFastLane;->cache:Lcom/chimeranft/core/GiftFastLane$cache$1;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_31

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move p1, v2

    goto :goto_1f

    .line 88
    :cond_31
    :goto_31
    iget-wide v1, p0, Lcom/chimeranft/core/GiftFastLane;->trims:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chimeranft/core/GiftFastLane;->trims:J
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_b

    .line 73
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0

    throw p1
.end method
