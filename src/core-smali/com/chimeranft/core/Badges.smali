.class public final Lcom/chimeranft/core/Badges;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BADGES_CONTROLLER:Ljava/lang/String;

.field public static final Companion:Lcom/chimeranft/core/Badges$Companion;

.field private static final EXTERA_SUPPORTER_DOC:J

.field private static final NO_EXTERA_INFO:Ljava/lang/Object;

.field private static volatile exteraDefaultStatus:Ljava/lang/Object;

.field private static volatile exteraHandlesResolved:Z

.field private static volatile exteraHostPresent:Z

.field private static volatile exteraInfoCtor:Ljava/lang/reflect/Constructor;

.field private static volatile exteraInstanceField:Ljava/lang/reflect/Field;

.field private static volatile forkBadgeController:I

.field private static volatile hostSecondarySlot:I

.field private static volatile hostSupporterSlot:I


# instance fields
.field private volatile applyHits:J

.field private volatile cacheFile:Ljava/io/File;

.field private volatile chatMap:Ljava/util/HashMap;

.field private volatile chatProbeIds:Lcom/chimeranft/core/LongSet;

.field private consecutiveEmptyResponses:I

.field private volatile count:I

.field public volatile exteraCacheStatus:Ljava/lang/String;

.field private volatile exteraCacheWrites:J

.field private final injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile lastError:Ljava/lang/String;

.field private volatile mapSig:Ljava/lang/String;

.field private notifier:Lcom/chimeranft/core/Notifier;

.field private final originalExteraInfo:Ljava/util/concurrent/ConcurrentHashMap;

.field private persistExec:Ljava/util/concurrent/ExecutorService;

.field private volatile selfId:J

.field private volatile supporterIconIds:Lcom/chimeranft/core/LongSet;

.field private volatile supporterIds:Lcom/chimeranft/core/LongSet;

.field private volatile supporterUserMap:Ljava/util/HashMap;

.field private volatile userIds:Lcom/chimeranft/core/LongSet;

.field private volatile userMap:Ljava/util/HashMap;

.field public volatile version:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/Badges$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/Badges$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    .line 960
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Badges;->NO_EXTERA_INFO:Ljava/lang/Object;

    .line 1005
    const-string v0, "com.exteragram.messenger.badges.BadgesController"

    sput-object v0, Lcom/chimeranft/core/Badges;->BADGES_CONTROLLER:Ljava/lang/String;

    const-wide v0, 0x4ad0e4160000770fL    # 2.5278634710625184E52

    .line 1230
    sput-wide v0, Lcom/chimeranft/core/Badges;->EXTERA_SUPPORTER_DOC:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->userMap:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->chatMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Lcom/chimeranft/core/LongSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->userIds:Lcom/chimeranft/core/LongSet;

    .line 41
    new-instance v0, Lcom/chimeranft/core/LongSet;

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    .line 44
    new-instance v0, Lcom/chimeranft/core/LongSet;

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIconIds:Lcom/chimeranft/core/LongSet;

    .line 46
    new-instance v0, Lcom/chimeranft/core/LongSet;

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->chatProbeIds:Lcom/chimeranft/core/LongSet;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/chimeranft/core/Badges;->originalExteraInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    const-string v1, "not attempted"

    iput-object v1, p0, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/chimeranft/core/Badges;->mapSig:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getBADGES_CONTROLLER$cp()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lcom/chimeranft/core/Badges;->BADGES_CONTROLLER:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTERA_SUPPORTER_DOC$cp()J
    .registers 2

    .line 25
    sget-wide v0, Lcom/chimeranft/core/Badges;->EXTERA_SUPPORTER_DOC:J

    return-wide v0
.end method

.method public static final synthetic access$getExteraHandlesResolved$cp()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/chimeranft/core/Badges;->exteraHandlesResolved:Z

    return v0
.end method

.method public static final synthetic access$getForkBadgeController$cp()I
    .registers 1

    .line 25
    sget v0, Lcom/chimeranft/core/Badges;->forkBadgeController:I

    return v0
.end method

.method public static final synthetic access$getHostSecondarySlot$cp()I
    .registers 1

    .line 25
    sget v0, Lcom/chimeranft/core/Badges;->hostSecondarySlot:I

    return v0
.end method

.method public static final synthetic access$getHostSupporterSlot$cp()I
    .registers 1

    .line 25
    sget v0, Lcom/chimeranft/core/Badges;->hostSupporterSlot:I

    return v0
.end method

.method public static final synthetic access$persistJsonBlocking(Lcom/chimeranft/core/Badges;Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Badges;->persistJsonBlocking(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setExteraDefaultStatus$cp(Ljava/lang/Object;)V
    .registers 1

    .line 25
    sput-object p0, Lcom/chimeranft/core/Badges;->exteraDefaultStatus:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setExteraHandlesResolved$cp(Z)V
    .registers 1

    .line 25
    sput-boolean p0, Lcom/chimeranft/core/Badges;->exteraHandlesResolved:Z

    return-void
.end method

.method public static final synthetic access$setExteraHostPresent$cp(Z)V
    .registers 1

    .line 25
    sput-boolean p0, Lcom/chimeranft/core/Badges;->exteraHostPresent:Z

    return-void
.end method

.method public static final synthetic access$setExteraInfoCtor$cp(Ljava/lang/reflect/Constructor;)V
    .registers 1

    .line 25
    sput-object p0, Lcom/chimeranft/core/Badges;->exteraInfoCtor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public static final synthetic access$setExteraInstanceField$cp(Ljava/lang/reflect/Field;)V
    .registers 1

    .line 25
    sput-object p0, Lcom/chimeranft/core/Badges;->exteraInstanceField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static final synthetic access$setForkBadgeController$cp(I)V
    .registers 1

    .line 25
    sput p0, Lcom/chimeranft/core/Badges;->forkBadgeController:I

    return-void
.end method

.method public static final synthetic access$setHostSecondarySlot$cp(I)V
    .registers 1

    .line 25
    sput p0, Lcom/chimeranft/core/Badges;->hostSecondarySlot:I

    return-void
.end method

.method public static final synthetic access$setHostSupporterSlot$cp(I)V
    .registers 1

    .line 25
    sput p0, Lcom/chimeranft/core/Badges;->hostSupporterSlot:I

    return-void
.end method

.method public static final synthetic access$stamp(Lcom/chimeranft/core/Badges;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result p0

    return p0
.end method

.method private final chatBadge(J)Lcom/chimeranft/core/Badges$Badge;
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_8

    return-object v2

    .line 390
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 391
    iget-object v3, p0, Lcom/chimeranft/core/Badges;->chatProbeIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v3, v0, v1}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result v3

    if-nez v3, :cond_15

    return-object v2

    .line 392
    :cond_15
    iget-object v2, p0, Lcom/chimeranft/core/Badges;->chatMap:Ljava/util/HashMap;

    .line 393
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chimeranft/core/Badges$Badge;

    if-nez v3, :cond_2e

    neg-long v3, p1

    .line 394
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chimeranft/core/Badges$Badge;

    :cond_2e
    const-wide v4, -0xe8d4a51000L

    if-nez v3, :cond_42

    sub-long v0, v4, v0

    .line 398
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/chimeranft/core/Badges$Badge;

    :cond_42
    if-nez v3, :cond_50

    add-long/2addr p1, v4

    .line 399
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/Badges$Badge;

    return-object p1

    :cond_50
    return-object v3
.end method

.method public static final hostHasSecondarySlot()Z
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->hostHasSecondarySlot()Z

    move-result v0

    return v0
.end method

.method public static final hostOwnsSupporterSlot()Z
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->hostOwnsSupporterSlot()Z

    move-result v0

    return v0
.end method

.method private final declared-synchronized persistExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 3

    monitor-enter p0

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->persistExec:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_15

    .line 623
    const-string v0, "chimeranft-badge-cache"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Safe;->factory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 622
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->persistExec:Ljava/util/concurrent/ExecutorService;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_23

    .line 625
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->persistExec:Ljava/util/concurrent/ExecutorService;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_13

    if-eqz v0, :cond_1b

    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "persist executor unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_13

    throw v0
.end method

.method private final persistJson(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_31

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    goto :goto_31

    .line 606
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/chimeranft/core/Badges;->persistExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/chimeranft/core/Badges$persistJson$1;

    invoke-direct {v1, p0, p1}, Lcom/chimeranft/core/Badges$persistJson$1;-><init>(Lcom/chimeranft/core/Badges;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    .line 614
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheSaveQueue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    :cond_31
    :goto_31
    return-void
.end method

.method private final persistJsonBlocking(Ljava/lang/String;)V
    .registers 8

    .line 651
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->cacheFile:Ljava/io/File;

    if-eqz v0, :cond_dd

    if-eqz p1, :cond_dd

    .line 652
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    goto/16 :goto_dd

    .line 653
    :cond_f
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bak"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 658
    :try_start_44
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 659
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_56

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_56

    :catchall_54
    move-exception p1

    goto :goto_b7

    .line 660
    :cond_56
    :goto_56
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_54

    .line 661
    :try_start_5c
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v5, "getBytes(...)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 662
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_b5

    .line 665
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_74

    .line 669
    :catchall_74
    :try_start_74
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_b5

    .line 671
    :try_start_77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 673
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 674
    :cond_86
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_91

    .line 675
    const-string p1, "cacheSave: backup failed"

    iput-object p1, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    goto :goto_dd

    .line 679
    :cond_91
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_ab

    .line 681
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_a6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a6

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 682
    :cond_a6
    const-string p1, "cacheSave: promote failed"

    iput-object p1, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    goto :goto_dd

    .line 684
    :cond_ab
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_dd

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_b4
    .catchall {:try_start_77 .. :try_end_b4} :catchall_54

    goto :goto_dd

    :catchall_b5
    move-exception p1

    move-object v3, v4

    .line 687
    :goto_b7
    :try_start_b7
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheSave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_b7 .. :try_end_d0} :catchall_d6

    if-eqz v3, :cond_dd

    .line 693
    :try_start_d2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_dd

    goto :goto_dd

    :catchall_d6
    move-exception p1

    if-eqz v3, :cond_dc

    :try_start_d9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dc

    .line 695
    :catchall_dc
    :cond_dc
    throw p1

    :catchall_dd
    :cond_dd
    :goto_dd
    return-void
.end method

.method private final refreshCachedEntities(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 11

    .line 705
    new-instance v0, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;

    move-object v3, p0

    move-object v1, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/chimeranft/core/Badges;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 766
    const-string p1, "org.telegram.messenger.AndroidUtilities"

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_24

    const/4 p2, 0x1

    .line 768
    new-array p3, p2, [Ljava/lang/Class;

    const-class p4, Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object p4, p3, v1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 767
    const-string p4, "runOnUIThread"

    invoke-static {p1, p4, p3, p2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 770
    :cond_24
    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->run()V

    return-void
.end method

.method private final stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v0, :cond_8

    return v2

    :cond_8
    if-nez v1, :cond_b

    return v2

    .line 912
    :cond_b
    invoke-virtual {v1}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v3

    const-wide/16 v4, 0x0

    const-string v6, "bot_verification_icon"

    if-eqz v3, :cond_3b

    .line 914
    sget-object v3, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v3}, Lcom/chimeranft/core/Badges$Companion;->forkOwnsSupporterRendering()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 918
    # invokes: Lcom/chimeranft/core/Badges$Companion;->clearStamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v3, v0, v1}, Lcom/chimeranft/core/Badges$Companion;->access$clearStamp(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result v0

    return v0

    .line 922
    :cond_22
    invoke-static {v0, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v3, v7, v4

    if-eqz v3, :cond_3b

    .line 923
    invoke-virtual {v1}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-eqz v3, :cond_3b

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-eqz v3, :cond_3b

    return v2

    .line 925
    :cond_3b
    sget-object v3, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    # invokes: Lcom/chimeranft/core/Badges$Companion;->effectiveIcon(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)J
    invoke-static {v3, v0, v1}, Lcom/chimeranft/core/Badges$Companion;->access$effectiveIcon(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)J

    move-result-wide v7

    .line 926
    invoke-virtual {v1, v7, v8}, Lcom/chimeranft/core/Badges$Badge;->bv(J)Ljava/lang/Object;

    move-result-object v1

    .line 928
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_52

    const/4 v9, 0x1

    goto :goto_53

    :cond_52
    const/4 v9, 0x0

    .line 929
    :goto_53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "bot_verification"

    invoke-static {v11, v12}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    if-eqz v11, :cond_61

    const/4 v11, 0x1

    goto :goto_62

    :cond_61
    const/4 v11, 0x0

    :goto_62
    if-eqz v9, :cond_73

    .line 930
    invoke-static {v0, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v15, v13, v7

    if-eqz v15, :cond_73

    .line 931
    invoke-static {v0, v6, v7, v8}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v2, 0x1

    :cond_73
    if-eqz v11, :cond_84

    if-eqz v1, :cond_84

    .line 933
    invoke-static {v0, v12}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v1, :cond_84

    .line 934
    invoke-static {v0, v12, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    const/4 v2, 0x1

    .line 936
    :cond_84
    # invokes: Lcom/chimeranft/core/Badges$Companion;->requiredFlags2(Ljava/lang/Object;ZZ)J
    invoke-static {v3, v0, v9, v11}, Lcom/chimeranft/core/Badges$Companion;->access$requiredFlags2(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;ZZ)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_a1

    .line 939
    const-string v1, "flags2"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    and-long v11, v8, v6

    cmp-long v3, v11, v4

    if-nez v3, :cond_a1

    or-long v3, v8, v6

    .line 940
    invoke-static {v0, v1, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v2, 0x1

    .line 943
    :cond_a1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "verified"

    invoke-static {v0, v3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    return v10

    :cond_b8
    return v2
.end method

.method private final supporterBadge(J)Lcom/chimeranft/core/Badges$Badge;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1c

    .line 376
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1c

    .line 377
    :cond_f
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/Badges$Badge;

    return-object p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final supporterSlotOwner()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->supporterSlotOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized syncExteraCacheLocked()Z
    .registers 22

    move-object/from16 v1, p0

    monitor-enter p0

    .line 426
    :try_start_3
    iget-object v0, v1, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 428
    const-string v0, "idle (no supporter badges)"

    iput-object v0, v1, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 429
    monitor-exit p0

    return v2

    :catchall_1a
    move-exception v0

    goto/16 :goto_2aa

    .line 433
    :cond_1d
    :try_start_1d
    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->forkOwnsSupporterRendering()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 434
    iget-object v4, v1, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 436
    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->supporterSlotOwner()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idle ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_1a

    .line 437
    monitor-exit p0

    return v2

    .line 441
    :cond_4b
    :try_start_4b
    # invokes: Lcom/chimeranft/core/Badges$Companion;->resolveExteraHandles()V
    invoke-static {v0}, Lcom/chimeranft/core/Badges$Companion;->access$resolveExteraHandles(Lcom/chimeranft/core/Badges$Companion;)V

    .line 442
    sget-boolean v0, Lcom/chimeranft/core/Badges;->exteraHostPresent:Z

    if-nez v0, :cond_5d

    .line 444
    const-string v0, "host classes unavailable"

    iput-object v0, v1, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_58

    .line 445
    monitor-exit p0

    return v2

    :catchall_58
    move-exception v0

    const/16 v16, 0x0

    goto/16 :goto_278

    .line 447
    :cond_5d
    :try_start_5d
    sget-object v0, Lcom/chimeranft/core/Badges;->exteraInstanceField:Ljava/lang/reflect/Field;
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_58

    if-nez v0, :cond_63

    monitor-exit p0

    return v2

    :cond_63
    const/4 v4, 0x0

    .line 448
    :try_start_64
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 449
    const-string v5, "apiBadgeSource"

    invoke-static {v0, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 450
    const-string v5, "cache"

    invoke-static {v0, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    instance-of v5, v0, Ljava/util/Map;

    if-nez v5, :cond_7e

    .line 453
    const-string v0, "ApiBadgeSource.cache unavailable"

    iput-object v0, v1, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_64 .. :try_end_7c} :catchall_58

    .line 454
    monitor-exit p0

    return v2

    .line 457
    :cond_7e
    :try_start_7e
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 458
    sget-object v5, Lcom/chimeranft/core/Badges;->exteraDefaultStatus:Ljava/lang/Object;

    .line 459
    sget-object v6, Lcom/chimeranft/core/Badges;->exteraInfoCtor:Ljava/lang/reflect/Constructor;

    .line 461
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_94

    .line 463
    iget-object v3, v1, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_9a

    .line 465
    :cond_94
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 462
    :goto_9a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9e
    :goto_9e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 467
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/chimeranft/core/Badges$Badge;

    if-eqz v10, :cond_9e

    .line 468
    invoke-virtual {v10}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v11

    if-nez v11, :cond_ba

    goto :goto_9e

    .line 469
    :cond_ba
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 470
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_d7

    move-object v13, v4

    goto :goto_e1

    .line 476
    :cond_d7
    const-string v13, "getBadge"

    .line 477
    sget-object v14, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v15, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 476
    invoke-static {v8, v13, v14, v15}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 478
    :goto_e1
    iget-object v14, v1, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_ef

    if-eq v13, v14, :cond_9e

    :cond_ef
    if-eqz v8, :cond_f3

    if-eq v13, v14, :cond_100

    .line 484
    :cond_f3
    iget-object v13, v1, Lcom/chimeranft/core/Badges;->originalExteraInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    if-nez v8, :cond_fd

    sget-object v8, Lcom/chimeranft/core/Badges;->NO_EXTERA_INFO:Ljava/lang/Object;

    :cond_fd
    invoke-virtual {v13, v14, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_100
    iget-object v8, v1, Lcom/chimeranft/core/Badges;->originalExteraInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 487
    sget-object v13, Lcom/chimeranft/core/Badges;->NO_EXTERA_INFO:Ljava/lang/Object;

    if-ne v8, v13, :cond_10f

    move-object v8, v4

    :cond_10f
    if-nez v8, :cond_113

    move-object v13, v4

    goto :goto_11d

    .line 491
    :cond_113
    const-string v13, "getBadge"

    .line 492
    sget-object v14, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v15, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 491
    invoke-static {v8, v13, v14, v15}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_11d
    .catchall {:try_start_7e .. :try_end_11d} :catchall_58

    :goto_11d
    const-wide/16 v14, 0x0

    if-nez v13, :cond_126

    move-wide/from16 v17, v14

    const/16 v16, 0x0

    goto :goto_12e

    :cond_126
    const/16 v16, 0x0

    .line 493
    :try_start_128
    const-string v2, "documentId"

    invoke-static {v13, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v17

    :goto_12e
    if-nez v8, :cond_132

    move-object v2, v4

    goto :goto_13c

    .line 497
    :cond_132
    const-string v2, "getStatus"

    .line 498
    sget-object v13, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 497
    invoke-static {v8, v2, v13, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 499
    :goto_13c
    invoke-virtual {v10}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v19

    cmp-long v4, v19, v14

    if-lez v4, :cond_15e

    sget-wide v13, Lcom/chimeranft/core/Badges;->EXTERA_SUPPORTER_DOC:J

    cmp-long v4, v17, v13

    if-eqz v4, :cond_15c

    if-eqz v2, :cond_15e

    const-string v4, "SUPPORTER"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15e

    goto :goto_15c

    :catchall_159
    move-exception v0

    goto/16 :goto_278

    :cond_15c
    :goto_15c
    const/4 v4, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v4, 0x0

    :goto_15f
    if-eqz v4, :cond_164

    .line 500
    invoke-virtual {v10, v9}, Lcom/chimeranft/core/Badges$Badge;->setCombinedVerdict(I)V

    :cond_164
    if-eqz v4, :cond_16b

    .line 501
    invoke-virtual {v10}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v13

    goto :goto_16f

    :cond_16b
    invoke-virtual {v10}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v13

    :goto_16f
    invoke-virtual {v10, v13, v14}, Lcom/chimeranft/core/Badges$Badge;->exteraBadge(J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1c3

    if-eqz v8, :cond_18b

    .line 503
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 504
    const-string v13, "getCanChangeBadge"

    sget-object v14, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v15, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 503
    invoke-static {v8, v13, v14, v15}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18b

    const/4 v8, 0x1

    goto :goto_18c

    :cond_18b
    const/4 v8, 0x0

    .line 511
    :goto_18c
    iget-wide v13, v1, Lcom/chimeranft/core/Badges;->selfId:J
    :try_end_18e
    .catchall {:try_start_128 .. :try_end_18e} :catchall_159

    cmp-long v10, v11, v13

    if-eqz v10, :cond_193

    const/4 v8, 0x0

    :cond_193
    if-nez v6, :cond_197

    .line 512
    monitor-exit p0

    return v16

    :cond_197
    if-nez v2, :cond_19a

    move-object v2, v5

    .line 515
    :cond_19a
    :try_start_19a
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v16

    aput-object v2, v10, v9

    const/4 v2, 0x2

    aput-object v8, v10, v2

    .line 513
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 516
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v2, v1, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-wide v8, v1, Lcom/chimeranft/core/Badges;->exteraCacheWrites:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/chimeranft/core/Badges;->exteraCacheWrites:J

    :cond_1c3
    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_9e

    :cond_1c7
    const/16 v16, 0x0

    .line 521
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v1, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d8
    :goto_1d8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_247

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 523
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d8

    .line 524
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1fe

    const/4 v5, 0x0

    goto :goto_208

    .line 528
    :cond_1fe
    const-string v6, "getBadge"

    .line 529
    sget-object v8, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v10, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 528
    invoke-static {v5, v6, v8, v10}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 530
    :goto_208
    iget-object v6, v1, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_234

    .line 532
    iget-object v5, v1, Lcom/chimeranft/core/Badges;->originalExteraInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_22d

    .line 533
    sget-object v6, Lcom/chimeranft/core/Badges;->NO_EXTERA_INFO:Ljava/lang/Object;

    if-ne v5, v6, :cond_225

    goto :goto_22d

    .line 536
    :cond_225
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_234

    .line 534
    :cond_22d
    :goto_22d
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_234
    :goto_234
    iget-object v5, v1, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v5, v1, Lcom/chimeranft/core/Badges;->originalExteraInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d8

    .line 541
    :cond_247
    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->supporterSlotOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 542
    iget-wide v3, v1, Lcom/chimeranft/core/Badges;->exteraCacheWrites:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " active="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " writes="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    iput-object v0, v1, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;

    .line 543
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0
    :try_end_275
    .catchall {:try_start_19a .. :try_end_275} :catchall_159

    xor-int/2addr v0, v9

    monitor-exit p0

    return v0

    .line 546
    :goto_278
    :try_start_278
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAIL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;

    .line 547
    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exteraCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;
    :try_end_2a8
    .catchall {:try_start_278 .. :try_end_2a8} :catchall_1a

    .line 548
    monitor-exit p0

    return v16

    :goto_2aa
    :try_start_2aa
    monitor-exit p0
    :try_end_2ab
    .catchall {:try_start_2aa .. :try_end_2ab} :catchall_1a

    throw v0
.end method

.method private final declared-synchronized updateFromJson(Ljava/lang/String;Z)Z
    .registers 39

    move-object/from16 v1, p0

    monitor-enter p0

    .line 224
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v4, "badges"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 226
    iget-object v5, v1, Lcom/chimeranft/core/Badges;->userMap:Ljava/util/HashMap;

    .line 227
    iget-object v6, v1, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    .line 228
    iget-object v7, v1, Lcom/chimeranft/core/Badges;->chatMap:Ljava/util/HashMap;

    .line 229
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 230
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 231
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x1

    if-eqz v4, :cond_1d7

    .line 234
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x0

    :goto_2d
    if-ge v14, v13, :cond_1d7

    .line 236
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_1c2

    .line 238
    const-string v2, "enabled"

    invoke-virtual {v15, v2, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 239
    const-string v2, "entity_type"

    const/16 v17, 0x1

    const-string v12, "user"

    invoke-virtual {v15, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 240
    const-string v12, "chat"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5d

    const-string v12, "channel"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_5d

    :catchall_5a
    move-exception v0

    goto/16 :goto_2c2

    :cond_5d
    :goto_5d
    const/4 v2, 0x1

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    .line 241
    :goto_60
    const-string v12, "entity_id"

    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    invoke-virtual {v15, v12, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v20

    cmp-long v22, v20, v8

    if-nez v22, :cond_c4

    .line 244
    const-string v8, "key"

    const-string v9, ""

    invoke-virtual {v15, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_7c

    const/4 v8, -0x1

    move-object/from16 v9, v24

    goto :goto_8c

    :cond_7c
    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x3a

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 245
    invoke-static/range {v24 .. v29}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_5a

    move-object/from16 v9, v24

    :goto_8c
    if-lez v8, :cond_c4

    add-int/lit8 v8, v8, 0x1

    .line 250
    :try_start_90
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v12, "substring(...)"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a5} :catch_a5
    .catchall {:try_start_90 .. :try_end_a5} :catchall_5a

    .line 254
    :catch_a5
    :try_start_a5
    const-string v8, "chat"

    move/from16 v25, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v8, v3, v2, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c0

    const-string v8, "channel"

    invoke-static {v9, v8, v3, v2, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    goto :goto_c0

    :cond_bb
    :goto_bb
    move-wide/from16 v26, v20

    move/from16 v2, v25

    goto :goto_c7

    :cond_c0
    :goto_c0
    move-wide/from16 v26, v20

    const/4 v2, 0x1

    goto :goto_c7

    :cond_c4
    move/from16 v25, v2

    goto :goto_bb

    .line 257
    :goto_c7
    const-string v3, "icon_emoji_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v15, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v20

    cmp-long v3, v20, v8

    if-gtz v3, :cond_d9

    .line 258
    const-string v3, "icon"

    invoke-virtual {v15, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v20

    :cond_d9
    move-wide/from16 v30, v20

    .line 259
    const-string v3, "combined_icon_emoji_id"

    invoke-virtual {v15, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v32

    .line 260
    const-string v3, "supporter"

    const-string v8, "badge_kind"

    const-string v9, ""

    invoke-virtual {v15, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 261
    const-string v3, "text"

    const-string v8, ""

    invoke-virtual {v15, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    const-string v8, "bot_id"

    move v9, v2

    move-object v12, v3

    const-wide/16 v2, 0x0

    invoke-virtual {v15, v8, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v28

    if-eqz v12, :cond_10f

    .line 263
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_10a

    goto :goto_10f

    :cond_10a
    move-object/from16 v35, v12

    :goto_10c
    const-wide/16 v22, 0x0

    goto :goto_11a

    :cond_10f
    :goto_10f
    const-string v2, "description"

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    goto :goto_10c

    :goto_11a
    cmp-long v2, v26, v22

    if-eqz v2, :cond_12a

    cmp-long v3, v30, v22

    if-lez v3, :cond_12a

    if-eqz v35, :cond_12a

    .line 264
    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_130

    :cond_12a
    move-object/from16 v20, v4

    move-object/from16 v21, v6

    goto/16 :goto_1ca

    :cond_130
    if-nez v9, :cond_134

    if-lez v2, :cond_12a

    :cond_134
    if-eqz v9, :cond_138

    move-object v2, v7

    goto :goto_13d

    :cond_138
    if-eqz v34, :cond_13c

    move-object v2, v6

    goto :goto_13d

    :cond_13c
    move-object v2, v5

    :goto_13d
    if-eqz v9, :cond_141

    move-object v3, v11

    goto :goto_147

    :cond_141
    if-eqz v34, :cond_145

    move-object v3, v10

    goto :goto_147

    :cond_145
    move-object/from16 v3, v18

    :goto_147
    if-eqz v2, :cond_155

    .line 268
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/chimeranft/core/Badges$Badge;

    goto :goto_156

    :cond_155
    const/4 v12, 0x0

    .line 269
    :goto_156
    new-instance v25, Lcom/chimeranft/core/Badges$Badge;

    invoke-direct/range {v25 .. v35}, Lcom/chimeranft/core/Badges$Badge;-><init>(JJJJZLjava/lang/String;)V

    move-object/from16 v9, v25

    move/from16 v2, v34

    move-object/from16 v8, v35

    if-eqz v12, :cond_1b6

    .line 270
    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getBotId()J

    move-result-wide v20

    cmp-long v15, v20, v28

    if-nez v15, :cond_1b6

    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v20

    cmp-long v15, v20, v30

    if-nez v15, :cond_1b6

    .line 271
    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v20

    cmp-long v15, v20, v32

    if-nez v15, :cond_1b6

    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v15

    if-ne v15, v2, :cond_1b6

    .line 272
    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v8, v6, v4, v15}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 274
    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getCachedBv()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/chimeranft/core/Badges$Badge;->setCachedBv(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getCachedCombinedBv()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/chimeranft/core/Badges$Badge;->setCachedCombinedBv(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getCachedExteraBadge()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/chimeranft/core/Badges$Badge;->setCachedExteraBadge(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getCachedCombinedExteraBadge()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/chimeranft/core/Badges$Badge;->setCachedCombinedExteraBadge(Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getCombinedVerdict()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/chimeranft/core/Badges$Badge;->setCombinedVerdict(I)V

    goto :goto_1ba

    :cond_1b6
    move-object/from16 v20, v4

    move-object/from16 v21, v6

    .line 280
    :cond_1ba
    :goto_1ba
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ca

    :cond_1c2
    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v18, v9

    const/16 v17, 0x1

    :goto_1ca
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p1

    move-object/from16 v9, v18

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    const/4 v12, 0x1

    goto/16 :goto_2d

    :cond_1d7
    move-object/from16 v21, v6

    move-object/from16 v18, v9

    const/16 v17, 0x1

    if-eqz p2, :cond_204

    .line 285
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_204

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_204

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_204

    .line 286
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_206

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_206

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_204

    goto :goto_206

    :cond_204
    const/4 v3, 0x0

    goto :goto_240

    .line 288
    :cond_206
    :goto_206
    iget v2, v1, Lcom/chimeranft/core/Badges;->consecutiveEmptyResponses:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/chimeranft/core/Badges;->consecutiveEmptyResponses:I

    .line 289
    const-string v2, "authoritative"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_242

    const-string v2, "allow_empty"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21e

    goto :goto_242

    .line 290
    :cond_21e
    iget v0, v1, Lcom/chimeranft/core/Badges;->consecutiveEmptyResponses:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_242

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignored transient empty badge response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/3"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    iput-object v0, v1, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    .line 294
    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->syncExteraCache()Z
    :try_end_23e
    .catchall {:try_start_a5 .. :try_end_23e} :catchall_5a

    .line 295
    monitor-exit p0

    return v17

    .line 300
    :goto_240
    :try_start_240
    iput v3, v1, Lcom/chimeranft/core/Badges;->consecutiveEmptyResponses:I

    .line 302
    :cond_242
    :goto_242
    sget-object v8, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    move-object/from16 v9, v18

    # invokes: Lcom/chimeranft/core/Badges$Companion;->mapSignature(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v11}, Lcom/chimeranft/core/Badges$Companion;->access$mapSignature(Lcom/chimeranft/core/Badges$Companion;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v2, v1, Lcom/chimeranft/core/Badges;->mapSig:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 307
    new-instance v12, Lcom/chimeranft/core/LongSet;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v12, v3}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    .line 308
    new-instance v13, Lcom/chimeranft/core/LongSet;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v13, v3}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    .line 309
    new-instance v14, Lcom/chimeranft/core/LongSet;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v19, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v14, v3}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    .line 310
    new-instance v15, Lcom/chimeranft/core/LongSet;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v15, v3}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    .line 311
    # invokes: Lcom/chimeranft/core/Badges$Companion;->fillGates(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;)V
    invoke-static/range {v8 .. v15}, Lcom/chimeranft/core/Badges$Companion;->access$fillGates(Lcom/chimeranft/core/Badges$Companion;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;)V

    .line 312
    iput-object v12, v1, Lcom/chimeranft/core/Badges;->userIds:Lcom/chimeranft/core/LongSet;

    .line 313
    iput-object v13, v1, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    .line 314
    iput-object v14, v1, Lcom/chimeranft/core/Badges;->chatProbeIds:Lcom/chimeranft/core/LongSet;

    .line 315
    iput-object v15, v1, Lcom/chimeranft/core/Badges;->supporterIconIds:Lcom/chimeranft/core/LongSet;

    .line 316
    iput-object v9, v1, Lcom/chimeranft/core/Badges;->userMap:Ljava/util/HashMap;

    .line 317
    iput-object v10, v1, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    .line 318
    iput-object v11, v1, Lcom/chimeranft/core/Badges;->chatMap:Ljava/util/HashMap;

    .line 319
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Lcom/chimeranft/core/Badges;->count:I

    .line 320
    iput-object v0, v1, Lcom/chimeranft/core/Badges;->mapSig:Ljava/lang/String;

    if-nez v2, :cond_2bd

    .line 323
    iget-wide v2, v1, Lcom/chimeranft/core/Badges;->version:J

    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    iput-wide v2, v1, Lcom/chimeranft/core/Badges;->version:J

    if-eqz p2, :cond_2ab

    .line 324
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/Badges;->persistJson(Ljava/lang/String;)V

    .line 325
    :cond_2ab
    invoke-direct {v1, v5, v7, v9, v11}, Lcom/chimeranft/core/Badges;->refreshCachedEntities(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2ae
    .catchall {:try_start_240 .. :try_end_2ae} :catchall_5a

    .line 330
    :try_start_2ae
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->onBadgesChanged()V
    :try_end_2b3
    .catchall {:try_start_2ae .. :try_end_2b3} :catchall_2b3

    .line 334
    :catchall_2b3
    :try_start_2b3
    iget-object v0, v1, Lcom/chimeranft/core/Badges;->notifier:Lcom/chimeranft/core/Notifier;
    :try_end_2b5
    .catchall {:try_start_2b3 .. :try_end_2b5} :catchall_5a

    if-eqz v0, :cond_2bd

    .line 339
    :try_start_2b7
    invoke-virtual {v0}, Lcom/chimeranft/core/Notifier;->reloadDialogs()V
    :try_end_2ba
    .catchall {:try_start_2b7 .. :try_end_2ba} :catchall_2ba

    .line 345
    :catchall_2ba
    :try_start_2ba
    invoke-virtual {v0}, Lcom/chimeranft/core/Notifier;->refresh()V
    :try_end_2bd
    .catchall {:try_start_2ba .. :try_end_2bd} :catchall_2bd

    .line 354
    :catchall_2bd
    :cond_2bd
    :try_start_2bd
    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->syncExteraCache()Z
    :try_end_2c0
    .catchall {:try_start_2bd .. :try_end_2c0} :catchall_5a

    .line 355
    monitor-exit p0

    return v17

    .line 358
    :goto_2c2
    :try_start_2c2
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;
    :try_end_2db
    .catchall {:try_start_2c2 .. :try_end_2db} :catchall_2df

    .line 359
    monitor-exit p0

    const/16 v16, 0x0

    return v16

    :catchall_2df
    move-exception v0

    :try_start_2e0
    monitor-exit p0
    :try_end_2e1
    .catchall {:try_start_2e0 .. :try_end_2e1} :catchall_2df

    throw v0
.end method

.method private final userBadge(J)Lcom/chimeranft/core/Badges$Badge;
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_8

    return-object v2

    .line 796
    :cond_8
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->userIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->userMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/Badges$Badge;

    return-object p1

    .line 797
    :cond_1d
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/Badges$Badge;

    return-object p1

    :cond_32
    return-object v2
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 776
    :cond_4
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges;->hasAnyUser()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 778
    :cond_b
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/chimeranft/core/Badges;->userBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    .line 779
    invoke-direct {p0, p1, v2}, Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v0, 0x1

    .line 780
    :cond_1f
    const-string v2, "user"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3a

    if-eq v2, p1, :cond_3a

    .line 783
    invoke-static {v2, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/chimeranft/core/Badges;->userBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 784
    invoke-direct {p0, v2, p1}, Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v0

    :goto_3b
    if-eqz v3, :cond_44

    .line 786
    iget-wide v0, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    :cond_44
    return v3
.end method

.method public final applyChat(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 818
    :cond_4
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/chimeranft/core/Badges;->chatBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object v1

    if-nez v1, :cond_11

    return v0

    .line 820
    :cond_11
    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 821
    iget-wide v0, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    :cond_1e
    return p1
.end method

.method public final applyChatForId(Ljava/lang/Object;J)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_a

    goto :goto_1f

    .line 827
    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/chimeranft/core/Badges;->chatBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object p2

    if-nez p2, :cond_11

    return v0

    .line 829
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 830
    iget-wide p2, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    :cond_1e
    return p1

    :cond_1f
    :goto_1f
    return v0
.end method

.method public final applyForId(Ljava/lang/Object;J)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_a

    goto :goto_30

    .line 804
    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/chimeranft/core/Badges;->userBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object p2

    if-nez p2, :cond_11

    return v0

    .line 806
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result p3

    .line 807
    const-string v0, "user"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    if-eq v0, p1, :cond_26

    .line 808
    invoke-direct {p0, v0, p2}, Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p3, 0x1

    :cond_26
    if-eqz p3, :cond_2f

    .line 809
    iget-wide p1, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    :cond_2f
    return p3

    :cond_30
    :goto_30
    return v0
.end method

.method public final bindCache(Ljava/io/File;)V
    .registers 12

    .line 153
    iput-object p1, p0, Lcom/chimeranft/core/Badges;->cacheFile:Ljava/io/File;

    if-nez p1, :cond_6

    goto/16 :goto_b1

    .line 155
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bak"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/io/File;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/4 p1, 0x0

    :goto_2a
    if-ge p1, v1, :cond_b1

    .line 156
    aget-object v0, v2, p1

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v8, v4, v6

    if-lez v8, :cond_ad

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x1e8480

    cmp-long v8, v4, v6

    if-lez v8, :cond_4a

    goto :goto_ad

    .line 161
    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_8a

    .line 164
    :try_start_4f
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x10000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x2000

    .line 165
    new-array v0, v0, [B

    .line 166
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    :goto_68
    const/4 v7, -0x1

    if-eq v6, v7, :cond_75

    .line 168
    invoke-virtual {v5, v0, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 169
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    goto :goto_68

    :catchall_73
    move-exception v0

    goto :goto_90

    .line 171
    :cond_75
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0, v3}, Lcom/chimeranft/core/Badges;->updateFromJson(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_84
    .catchall {:try_start_4f .. :try_end_84} :catchall_73

    if-eqz v0, :cond_8c

    .line 176
    :try_start_86
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_b1

    :catchall_8a
    move-exception v0

    goto :goto_94

    :cond_8c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_ad

    :goto_90
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_8a

    .line 180
    :goto_94
    sget-object v4, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v4, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cacheLoad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    :cond_ad
    :goto_ad
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2a

    :cond_b1
    :goto_b1
    return-void
.end method

.method public final bindNotifier(Lcom/chimeranft/core/Notifier;)V
    .registers 3

    .line 129
    iput-object p1, p0, Lcom/chimeranft/core/Badges;->notifier:Lcom/chimeranft/core/Notifier;

    if-eqz p1, :cond_10

    .line 134
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 138
    :try_start_a
    invoke-virtual {p1}, Lcom/chimeranft/core/Notifier;->reloadDialogs()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_d

    .line 144
    :catchall_d
    :try_start_d
    invoke-virtual {p1}, Lcom/chimeranft/core/Notifier;->refresh()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_10

    :catchall_10
    :cond_10
    return-void
.end method

.method public final ensureExteraCacheFor(J)Z
    .registers 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-lez v3, :cond_7a

    .line 561
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_7a

    .line 564
    :cond_10
    :try_start_10
    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    # invokes: Lcom/chimeranft/core/Badges$Companion;->resolveExteraHandles()V
    invoke-static {v0}, Lcom/chimeranft/core/Badges$Companion;->access$resolveExteraHandles(Lcom/chimeranft/core/Badges$Companion;)V

    .line 565
    sget-boolean v0, Lcom/chimeranft/core/Badges;->exteraHostPresent:Z

    if-nez v0, :cond_1a

    return v2

    .line 566
    :cond_1a
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 569
    sget-object v1, Lcom/chimeranft/core/Badges;->exteraInstanceField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    const/4 v3, 0x0

    .line 570
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 571
    const-string v4, "apiBadgeSource"

    invoke-static {v1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 572
    const-string v4, "cache"

    invoke-static {v1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 573
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_5c

    .line 575
    check-cast v1, Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4d

    goto :goto_57

    .line 579
    :cond_4d
    const-string p2, "getBadge"

    .line 580
    sget-object v1, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 579
    invoke-static {p1, p2, v1, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_57
    if-ne v3, v0, :cond_5c

    return v2

    :catchall_5a
    move-exception p1

    goto :goto_61

    .line 584
    :cond_5c
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges;->syncExteraCache()Z

    move-result p1
    :try_end_60
    .catchall {:try_start_10 .. :try_end_60} :catchall_5a

    return p1

    .line 587
    :goto_61
    sget-object p2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exteraEnsure: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    :cond_7a
    :goto_7a
    return v2
.end method

.method public final exteraSupporterBadge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 858
    sget-object v1, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges$Companion;->forkOwnsSupporterRendering()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3d

    .line 859
    :cond_c
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_19

    return-object v0

    .line 861
    :cond_19
    invoke-static {p1}, Lcom/chimeranft/core/Refl;->isChatEntity(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 862
    invoke-direct {p0, v2, v3}, Lcom/chimeranft/core/Badges;->chatBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object v2

    goto :goto_28

    :cond_24
    invoke-direct {p0, v2, v3}, Lcom/chimeranft/core/Badges;->supporterBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object v2

    :goto_28
    if-eqz v2, :cond_3d

    .line 863
    invoke-virtual {v2}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_3d

    :cond_31
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 864
    # invokes: Lcom/chimeranft/core/Badges$Companion;->exteraIconFor(Lcom/chimeranft/core/Badges$Badge;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)J
    invoke-static/range {v1 .. v6}, Lcom/chimeranft/core/Badges$Companion;->access$exteraIconFor(Lcom/chimeranft/core/Badges$Companion;Lcom/chimeranft/core/Badges$Badge;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/chimeranft/core/Badges$Badge;->exteraBadge(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public final exteraSupporterBadgeForId(JZLjava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_58

    .line 888
    sget-object v3, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v3}, Lcom/chimeranft/core/Badges$Companion;->forkOwnsSupporterRendering()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_58

    :cond_10
    if-eqz p3, :cond_17

    .line 889
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges;->supporterBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object p1

    goto :goto_1b

    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges;->chatBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object p1

    :goto_1b
    if-eqz p1, :cond_58

    .line 890
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result p2

    if-nez p2, :cond_24

    goto :goto_58

    .line 891
    :cond_24
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v3

    .line 892
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v5

    cmp-long p2, v5, v1

    if-lez p2, :cond_53

    if-eqz p3, :cond_53

    const/4 p2, 0x1

    if-eqz p4, :cond_49

    .line 894
    const-string p3, "documentId"

    invoke-static {p4, p3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide p3

    sget-wide v0, Lcom/chimeranft/core/Badges;->EXTERA_SUPPORTER_DOC:J

    cmp-long v2, p3, v0

    if-nez v2, :cond_49

    .line 896
    invoke-virtual {p1, p2}, Lcom/chimeranft/core/Badges$Badge;->setCombinedVerdict(I)V

    .line 897
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v3

    goto :goto_53

    .line 899
    :cond_49
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getCombinedVerdict()I

    move-result p3

    if-ne p3, p2, :cond_53

    .line 901
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v3

    .line 904
    :cond_53
    :goto_53
    invoke-virtual {p1, v3, v4}, Lcom/chimeranft/core/Badges$Badge;->exteraBadge(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_58
    :goto_58
    return-object v0
.end method

.method public final getApplyHits()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    return-wide v0
.end method

.method public final getCount()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/chimeranft/core/Badges;->count:I

    return v0
.end method

.method public final getExteraCacheWrites()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/chimeranft/core/Badges;->exteraCacheWrites:J

    return-wide v0
.end method

.method public final getLastError()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public final hasAny()Z
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->userIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->chatProbeIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method public final hasAnyChat()Z
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->chatProbeIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final hasAnySupporter()Z
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final hasAnyUser()Z
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->userIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public final hasChat(J)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_14

    .line 211
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->chatProbeIds:Lcom/chimeranft/core/LongSet;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final hasSupporterUser(J)Z
    .registers 3

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges;->supporterBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final hasUser(J)Z
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_8

    return v2

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->userIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    return v2

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    return p1
.end method

.method public final iconForEntity(Ljava/lang/Object;)J
    .registers 7

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 838
    :cond_5
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_10

    return-wide v0

    .line 842
    :cond_10
    invoke-static {p1}, Lcom/chimeranft/core/Refl;->isChatEntity(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-direct {p0, v2, v3}, Lcom/chimeranft/core/Badges;->chatBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object v2

    goto :goto_1f

    :cond_1b
    invoke-direct {p0, v2, v3}, Lcom/chimeranft/core/Badges;->userBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object v2

    :goto_1f
    if-nez v2, :cond_22

    return-wide v0

    .line 847
    :cond_22
    invoke-virtual {v2}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v3

    if-eqz v3, :cond_31

    sget-object v3, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v3}, Lcom/chimeranft/core/Badges$Companion;->forkOwnsSupporterRendering()Z

    move-result v3

    if-eqz v3, :cond_31

    return-wide v0

    .line 848
    :cond_31
    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    # invokes: Lcom/chimeranft/core/Badges$Companion;->effectiveIcon(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)J
    invoke-static {v0, p1, v2}, Lcom/chimeranft/core/Badges$Companion;->access$effectiveIcon(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->userMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->chatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final isOurSupporterDto(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 881
    :cond_4
    const-string v1, "documentId"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1a

    .line 882
    iget-object p1, p0, Lcom/chimeranft/core/Badges;->supporterIconIds:Lcom/chimeranft/core/LongSet;

    invoke-virtual {p1, v1, v2}, Lcom/chimeranft/core/LongSet;->contains(J)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    return v0
.end method

.method public final poll()Ljava/lang/String;
    .registers 12

    .line 949
    iget v0, p0, Lcom/chimeranft/core/Badges;->count:I

    iget-object v1, p0, Lcom/chimeranft/core/Badges;->userMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 950
    iget-object v3, p0, Lcom/chimeranft/core/Badges;->chatMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 951
    iget-wide v4, p0, Lcom/chimeranft/core/Badges;->version:J

    iget-wide v6, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    .line 952
    iget-object v8, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_23

    const-string v8, ""

    goto :goto_36

    :cond_23
    iget-object v8, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " err="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_36
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "badges="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(u="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " s="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " c="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") v="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " hits="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setApplyHits(J)V
    .registers 3

    .line 50
    iput-wide p1, p0, Lcom/chimeranft/core/Badges;->applyHits:J

    return-void
.end method

.method public final setCount(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/chimeranft/core/Badges;->count:I

    return-void
.end method

.method public final setExteraCacheWrites(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/chimeranft/core/Badges;->exteraCacheWrites:J

    return-void
.end method

.method public final setLastError(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/chimeranft/core/Badges;->lastError:Ljava/lang/String;

    return-void
.end method

.method public final setSelfId(J)V
    .registers 3

    .line 125
    iput-wide p1, p0, Lcom/chimeranft/core/Badges;->selfId:J

    return-void
.end method

.method public final size()I
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->userMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/chimeranft/core/Badges;->chatMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 637
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->persistExec:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_e

    .line 642
    :try_start_5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_8

    :catchall_8
    const/4 v0, 0x0

    .line 646
    :try_start_9
    iput-object v0, p0, Lcom/chimeranft/core/Badges;->persistExec:Ljava/util/concurrent/ExecutorService;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_10

    .line 648
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_c

    throw v0
.end method

.method public final supporterIconFor(J)J
    .registers 3

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges;->supporterBadge(J)Lcom/chimeranft/core/Badges$Badge;

    move-result-object p1

    if-nez p1, :cond_9

    const-wide/16 p1, 0x0

    return-wide p1

    .line 371
    :cond_9
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide p1

    return-wide p1
.end method

.method public final syncExteraCache()Z
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/chimeranft/core/Badges;->supporterUserMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/chimeranft/core/Badges;->injectedExteraDtos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 417
    const-string v0, "idle (no supporter badges)"

    iput-object v0, p0, Lcom/chimeranft/core/Badges;->exteraCacheStatus:Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    .line 420
    :cond_16
    invoke-direct {p0}, Lcom/chimeranft/core/Badges;->syncExteraCacheLocked()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized updateFromJson(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 218
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/Badges;->updateFromJson(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method
