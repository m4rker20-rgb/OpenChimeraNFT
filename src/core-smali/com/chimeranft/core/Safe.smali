.class public final Lcom/chimeranft/core/Safe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final INSTANCE:Lcom/chimeranft/core/Safe;

.field private static final MAX_PERSISTED:I

.field private static final MAX_SITES:I

.field private static final RING:I

.field private static final RING_WHAT:[Ljava/lang/String;

.field private static final RING_WHEN:[J

.field private static final RING_WHERE:[Ljava/lang/String;

.field private static final TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile logFile:Ljava/io/File;

.field private static persisted:I

.field private static ringNext:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/Safe;

    invoke-direct {v0}, Lcom/chimeranft/core/Safe;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Safe;->INSTANCE:Lcom/chimeranft/core/Safe;

    const/16 v0, 0x18

    .line 42
    sput v0, Lcom/chimeranft/core/Safe;->RING:I

    .line 43
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/chimeranft/core/Safe;->RING_WHERE:[Ljava/lang/String;

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/chimeranft/core/Safe;->RING_WHAT:[Ljava/lang/String;

    .line 45
    new-array v0, v0, [J

    sput-object v0, Lcom/chimeranft/core/Safe;->RING_WHEN:[J

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Safe;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Safe;->BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x60

    .line 60
    sput v0, Lcom/chimeranft/core/Safe;->MAX_SITES:I

    const/16 v0, 0x78

    .line 64
    sput v0, Lcom/chimeranft/core/Safe;->MAX_PERSISTED:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$harden(Lcom/chimeranft/core/Safe;Ljava/lang/Thread;Ljava/lang/String;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Safe;->harden(Ljava/lang/Thread;Ljava/lang/String;I)V

    return-void
.end method

.method public static final bindLog(Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    goto :goto_1f

    .line 73
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1f

    .line 74
    :cond_a
    new-instance v0, Ljava/io/File;

    const-string v1, "chimeranft_safety.log"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1f

    .line 79
    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1a

    .line 83
    :catchall_1a
    :cond_1a
    :try_start_1a
    sput-object v0, Lcom/chimeranft/core/Safe;->logFile:Ljava/io/File;

    const/4 p0, 0x0

    .line 84
    sput p0, Lcom/chimeranft/core/Safe;->persisted:I
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    :goto_1f
    return-void
.end method

.method private final describe(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_5

    .line 183
    :try_start_2
    const-string p1, "(null)"

    return-object p1

    .line 184
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_86

    .line 187
    const-string v3, ": "

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    :try_start_20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_36

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_33

    invoke-virtual {v0, v2, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_36
    :goto_36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 193
    array-length v2, v1

    if-lez v2, :cond_4b

    const-string v2, " @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_4b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_81

    if-eq v1, p1, :cond_81

    .line 197
    const-string p1, " <- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_81

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_81

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x78

    if-le v1, v2, :cond_7e

    invoke-virtual {v0, p1, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_81

    :cond_7e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_81
    :goto_81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_85
    .catchall {:try_start_20 .. :try_end_85} :catchall_86

    return-object p1

    .line 208
    :catchall_86
    const-string p1, "(undescribable)"

    return-object p1
.end method

.method public static final factory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    .line 267
    new-instance v0, Lcom/chimeranft/core/Safe$factory$1;

    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/Safe$factory$1;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private final harden(Ljava/lang/Thread;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    .line 306
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4

    .line 312
    :catchall_4
    :try_start_4
    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7

    .line 318
    :catchall_7
    :try_start_7
    new-instance p3, Lcom/chimeranft/core/Safe$harden$1;

    invoke-direct {p3, p2}, Lcom/chimeranft/core/Safe$harden$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    :catchall_f
    return-void
.end method

.method public static final note(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 12

    .line 99
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/Safe;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    if-nez p0, :cond_9

    .line 100
    const-string p0, "?"

    :cond_9
    move-object v1, p0

    .line 101
    sget-object p0, Lcom/chimeranft/core/Safe;->BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_2e

    .line 104
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    sget v7, Lcom/chimeranft/core/Safe;->MAX_SITES:I

    if-ge v6, v7, :cond_2e

    .line 106
    new-array v0, v2, [J

    aput-wide v3, v0, v5

    .line 107
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v0, p0

    :cond_2e
    :goto_2e
    move-object p0, v0

    if-eqz p0, :cond_46

    .line 115
    monitor-enter p0
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_75

    .line 116
    :try_start_32
    aget-wide v6, p0, v5

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    aput-wide v8, p0, v5

    cmp-long v0, v6, v3

    if-nez v0, :cond_3e

    const/4 v5, 0x1

    .line 117
    :cond_3e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_42

    .line 115
    :try_start_40
    monitor-exit p0

    goto :goto_46

    :catchall_42
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1

    :cond_46
    :goto_46
    if-nez v5, :cond_49

    goto :goto_75

    .line 121
    :cond_49
    sget-object v0, Lcom/chimeranft/core/Safe;->INSTANCE:Lcom/chimeranft/core/Safe;

    const/4 p0, 0x1

    invoke-direct {v0, p1}, Lcom/chimeranft/core/Safe;->describe(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 123
    sget-object v5, Lcom/chimeranft/core/Safe;->RING_WHERE:[Ljava/lang/String;

    monitor-enter v5
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_75

    .line 124
    :try_start_57
    sget v6, Lcom/chimeranft/core/Safe;->ringNext:I

    aput-object v1, v5, v6

    .line 125
    sget-object v7, Lcom/chimeranft/core/Safe;->RING_WHAT:[Ljava/lang/String;

    aput-object v2, v7, v6

    .line 126
    sget-object v7, Lcom/chimeranft/core/Safe;->RING_WHEN:[J

    aput-wide v3, v7, v6

    add-int/2addr v6, p0

    .line 127
    sget p0, Lcom/chimeranft/core/Safe;->RING:I

    rem-int/2addr v6, p0

    sput v6, Lcom/chimeranft/core/Safe;->ringNext:I

    .line 128
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_71

    .line 123
    :try_start_6b
    monitor-exit v5

    move-object v5, p1

    .line 129
    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/Safe;->persist(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Throwable;)V

    return-void

    :catchall_71
    move-exception v0

    move-object p0, v0

    .line 123
    monitor-exit v5

    throw p0
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_75

    :catchall_75
    :goto_75
    return-void
.end method

.method private final persist(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Throwable;)V
    .registers 11

    .line 137
    sget-object v0, Lcom/chimeranft/core/Safe;->logFile:Ljava/io/File;

    if-nez v0, :cond_6

    goto/16 :goto_89

    :cond_6
    const/4 v1, 0x0

    .line 142
    :try_start_7
    const-class v2, Lcom/chimeranft/core/Safe;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_12

    .line 143
    :try_start_a
    sget v3, Lcom/chimeranft/core/Safe;->persisted:I

    sget v4, Lcom/chimeranft/core/Safe;->MAX_PERSISTED:I
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_81

    if-lt v3, v4, :cond_14

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    nop

    goto :goto_84

    :cond_14
    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 144
    :try_start_16
    sput v3, Lcom/chimeranft/core/Safe;->persisted:I
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_81

    .line 142
    :try_start_18
    monitor-exit v2

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    const-string v3, "[+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string p1, " thread="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_61

    .line 152
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 153
    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p5, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 154
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_69
    .catchall {:try_start_18 .. :try_end_69} :catchall_12

    .line 158
    :try_start_69
    new-instance p2, Ljava/io/OutputStreamWriter;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_7e

    .line 167
    :try_start_7a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_89

    goto :goto_89

    :catchall_7e
    nop

    move-object v1, p1

    goto :goto_84

    :catchall_81
    move-exception p1

    .line 142
    :try_start_82
    monitor-exit v2

    throw p1
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_12

    :goto_84
    if-eqz v1, :cond_89

    .line 167
    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_89

    :catchall_89
    :cond_89
    :goto_89
    return-void
.end method

.method public static final poll()Ljava/lang/String;
    .registers 7

    .line 340
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/Safe;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 341
    const-string v0, "safety: clean"

    return-object v0

    .line 342
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    const-string v3, "safety: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " swallowed across "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    sget-object v0, Lcom/chimeranft/core/Safe;->BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " site(s)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 348
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 349
    monitor-enter v4
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_a5

    .line 350
    :try_start_4d
    aget-wide v5, v4, v3

    .line 351
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_69

    .line 349
    :try_start_51
    monitor-exit v4

    .line 352
    const-string v3, "\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_39

    :catchall_69
    move-exception v0

    .line 349
    monitor-exit v4

    throw v0

    .line 354
    :cond_6c
    sget-object v0, Lcom/chimeranft/core/Safe;->RING_WHERE:[Ljava/lang/String;

    monitor-enter v0
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_a5

    .line 355
    :try_start_6f
    sget v1, Lcom/chimeranft/core/Safe;->RING:I

    :goto_71
    if-ge v3, v1, :cond_9b

    .line 357
    sget v4, Lcom/chimeranft/core/Safe;->ringNext:I

    add-int/2addr v4, v3

    sget v5, Lcom/chimeranft/core/Safe;->RING:I

    rem-int/2addr v4, v5

    .line 358
    sget-object v5, Lcom/chimeranft/core/Safe;->RING_WHERE:[Ljava/lang/String;

    aget-object v6, v5, v4

    if-eqz v6, :cond_98

    .line 359
    const-string v6, "\n  \u00b7 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/chimeranft/core/Safe;->RING_WHAT:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    :catchall_96
    move-exception v1

    goto :goto_a3

    :cond_98
    :goto_98
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 361
    :cond_9b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9d
    .catchall {:try_start_6f .. :try_end_9d} :catchall_96

    .line 354
    :try_start_9d
    monitor-exit v0

    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :goto_a3
    monitor-exit v0

    throw v1
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_a5

    .line 365
    :catchall_a5
    const-string v0, "safety: (poll failed)"

    return-object v0
.end method

.method public static final reset()V
    .registers 8

    .line 375
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/Safe;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 376
    sget-object v0, Lcom/chimeranft/core/Safe;->BY_SITE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 377
    sget-object v0, Lcom/chimeranft/core/Safe;->RING_WHERE:[Ljava/lang/String;

    monitor-enter v0
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_2f

    .line 378
    :try_start_f
    sget v3, Lcom/chimeranft/core/Safe;->RING:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v3, :cond_27

    .line 379
    sget-object v6, Lcom/chimeranft/core/Safe;->RING_WHERE:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v5

    .line 380
    sget-object v6, Lcom/chimeranft/core/Safe;->RING_WHAT:[Ljava/lang/String;

    aput-object v7, v6, v5

    .line 381
    sget-object v6, Lcom/chimeranft/core/Safe;->RING_WHEN:[J

    aput-wide v1, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :catchall_25
    move-exception v1

    goto :goto_2d

    .line 383
    :cond_27
    sput v4, Lcom/chimeranft/core/Safe;->ringNext:I

    .line 384
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_25

    .line 377
    :try_start_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0

    throw v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    :catchall_2f
    return-void
.end method

.method public static final start(Ljava/lang/String;ILjava/lang/Runnable;)Z
    .registers 3

    .line 290
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/Safe;->thread(Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_9

    const/4 p0, 0x1

    return p0

    :catchall_9
    move-exception p1

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".start"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final swallowed()J
    .registers 2

    .line 332
    sget-object v0, Lcom/chimeranft/core/Safe;->TOTAL:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final thread(Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 280
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p2}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 281
    sget-object p2, Lcom/chimeranft/core/Safe;->INSTANCE:Lcom/chimeranft/core/Safe;

    invoke-direct {p2, v0, p0, p1}, Lcom/chimeranft/core/Safe;->harden(Ljava/lang/Thread;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_4
    instance-of v0, p1, Lcom/chimeranft/core/Safe$Guarded;

    if-eqz v0, :cond_9

    return-object p1

    .line 225
    :cond_9
    new-instance v0, Lcom/chimeranft/core/Safe$Guarded;

    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/Safe$Guarded;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
