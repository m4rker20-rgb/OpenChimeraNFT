.class public final Lcom/chimeranft/core/UiGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final FIRST_FRAME:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final INSTANCE:Lcom/chimeranft/core/UiGuard;

.field private static final MAX_SITES:I

.field private static final TOTAL:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/UiGuard;

    invoke-direct {v0}, Lcom/chimeranft/core/UiGuard;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UiGuard;->INSTANCE:Lcom/chimeranft/core/UiGuard;

    const/16 v0, 0x20

    .line 41
    sput v0, Lcom/chimeranft/core/UiGuard;->MAX_SITES:I

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UiGuard;->BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UiGuard;->FIRST_FRAME:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UiGuard;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final callerFrame()Ljava/lang/String;
    .registers 11

    .line 122
    const-string v0, "?"

    .line 124
    :try_start_2
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x60

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 128
    :goto_15
    array-length v6, v1

    if-ge v4, v6, :cond_4f

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4f

    .line 130
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 132
    const-string v7, "UiGuard"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v7, v3, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_30
    if-lez v5, :cond_37

    .line 137
    const-string v7, " <- "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_37
    invoke-direct {p0, v6}, Lcom/chimeranft/core/UiGuard;->shortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 142
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_56

    return-object v0

    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_2 .. :try_end_5a} :catchall_5a

    :catchall_5a
    return-object v0
.end method

.method public static final mustNotBlock(Ljava/lang/String;)V
    .registers 3

    .line 74
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/HookSlot$Companion;->uiThreadKnown()Z

    move-result v1

    invoke-virtual {v0}, Lcom/chimeranft/core/HookSlot$Companion;->isUiThread()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/chimeranft/core/UiGuard;->shouldRecord(ZZ)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_14

    .line 75
    :cond_11
    invoke-static {p0}, Lcom/chimeranft/core/UiGuard;->record(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_14

    :catchall_14
    :goto_14
    return-void
.end method

.method public static final record(Ljava/lang/String;)V
    .registers 11

    .line 90
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/UiGuard;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 91
    sget-object v0, Lcom/chimeranft/core/UiGuard;->BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_2a

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    sget v6, Lcom/chimeranft/core/UiGuard;->MAX_SITES:I

    if-lt v1, v6, :cond_1c

    goto :goto_4c

    .line 95
    :cond_1c
    new-array v1, v2, [J

    aput-wide v3, v1, v5

    .line 96
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    move-object v1, v0

    .line 103
    :cond_2a
    :goto_2a
    monitor-enter v1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_4c

    .line 104
    :try_start_2b
    aget-wide v6, v1, v5

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    aput-wide v8, v1, v5

    cmp-long v0, v6, v3

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    .line 105
    :goto_38
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_49

    .line 103
    :try_start_3a
    monitor-exit v1

    if-eqz v2, :cond_4c

    .line 109
    sget-object v0, Lcom/chimeranft/core/UiGuard;->FIRST_FRAME:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/chimeranft/core/UiGuard;->INSTANCE:Lcom/chimeranft/core/UiGuard;

    invoke-direct {v1}, Lcom/chimeranft/core/UiGuard;->callerFrame()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_49
    move-exception p0

    .line 103
    monitor-exit v1

    throw p0
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_4c

    :catchall_4c
    :cond_4c
    :goto_4c
    return-void
.end method

.method public static final report()Ljava/lang/String;
    .registers 7

    .line 166
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/UiGuard;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 167
    const-string v0, ""

    return-object v0

    .line 168
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xa0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    const-string v3, "uiBlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " blocking call(s) ON the UI thread"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sget-object v0, Lcom/chimeranft/core/UiGuard;->BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 174
    monitor-enter v3
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_7b

    const/4 v4, 0x0

    .line 175
    :try_start_41
    aget-wide v4, v3, v4

    .line 176
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_73

    .line 174
    :try_start_45
    monitor-exit v3

    .line 177
    const-string v3, "\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    sget-object v3, Lcom/chimeranft/core/UiGuard;->FIRST_FRAME:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 179
    const-string v3, "  first="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :catchall_73
    move-exception v0

    .line 174
    monitor-exit v3

    throw v0

    .line 181
    :cond_76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7a
    .catchall {:try_start_45 .. :try_end_7a} :catchall_7b

    return-object v0

    .line 184
    :catchall_7b
    const-string v0, "uiBlock: (report failed)"

    return-object v0
.end method

.method public static final reset()V
    .registers 3

    .line 194
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/UiGuard;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 195
    sget-object v0, Lcom/chimeranft/core/UiGuard;->BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 196
    sget-object v0, Lcom/chimeranft/core/UiGuard;->FIRST_FRAME:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    return-void
.end method

.method private final shortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_5

    .line 151
    const-string p1, "?"

    return-object p1

    :cond_5
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    .line 152
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_24

    add-int/lit8 p1, p1, 0x1

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_24

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_24
    return-object v0
.end method

.method public static final shouldRecord(ZZ)Z
    .registers 2

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
