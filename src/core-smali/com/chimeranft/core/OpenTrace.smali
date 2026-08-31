.class public final Lcom/chimeranft/core/OpenTrace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHAT_NAMES:[Ljava/lang/String;

.field private static final CHAT_VARIANTS:[Ljava/lang/String;

.field public static final C_CREATE:I = 0x0

.field public static final C_RESUME:I = 0x2

.field public static final C_VIEW:I = 0x1

.field public static final Companion:Lcom/chimeranft/core/OpenTrace$Companion;

.field private static final DROP_NS:J

.field private static final FRAME_WATCH_MS:J

.field private static final PROFILE_NAMES:[Ljava/lang/String;

.field private static final PROFILE_VARIANTS:[Ljava/lang/String;

.field public static final P_CREATE:I = 0x0

.field public static final P_DATA:I = 0x3

.field public static final P_RESUME:I = 0x2

.field public static final P_TABS:I = 0x4

.field public static final P_VIEW:I = 0x1

.field private static volatile choreographer:Landroid/view/Choreographer;

.field private static volatile frameWatchBusyUntil:J

.field private static volatile runtimeStat:Ljava/lang/reflect/Method;

.field private static volatile runtimeStatResolved:Z

.field private static volatile threadCpu:Ljava/lang/reflect/Method;

.field private static volatile threadCpuResolved:Z

.field private static volatile traceBegin:Ljava/lang/reflect/Method;

.field private static volatile traceEnd:Ljava/lang/reflect/Method;

.field private static volatile traceResolved:Z

.field private static volatile traceSections:Z


# instance fields
.field private final afterStart:[J

.field private final beforeEnd:[J

.field private cpuAvailable:Z

.field private final cpuNs:[[J

.field private final cpuT0:[J

.field private final entryPhase:I

.field private final frameCallback:Landroid/view/Choreographer$FrameCallback;

.field private frameUntilMs:J

.field private frameWindows:J

.field private framesDropped:J

.field private gcAtOpen:J

.field private gcDelta:J

.field private final label:Ljava/lang/String;

.field private lastFrameNs:J

.field private final names:[Ljava/lang/String;

.field private final opens:[[J

.field private final otherNs:[[J

.field private final ownNs:[[J

.field private final phaseCount:I

.field private final running:[Z

.field private final variants:[Ljava/lang/String;

.field private final wallMaxNs:[[J

.field private final wallNs:[[J

.field private final wallT0:[J

.field private worstFrameNs:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/chimeranft/core/OpenTrace$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/OpenTrace$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    .line 330
    const-string v0, "data"

    const-string v1, "tabs"

    const-string v2, "create"

    const-string v3, "view"

    const-string v4, "resume"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/OpenTrace;->PROFILE_NAMES:[Ljava/lang/String;

    .line 331
    const-string v0, "self"

    const-string v1, "foreign"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/OpenTrace;->PROFILE_VARIANTS:[Ljava/lang/String;

    .line 345
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/OpenTrace;->CHAT_NAMES:[Ljava/lang/String;

    .line 346
    const-string v0, "dialog"

    const-string v1, "chat"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/OpenTrace;->CHAT_VARIANTS:[Ljava/lang/String;

    const-wide/32 v0, 0x16e3600

    .line 359
    sput-wide v0, Lcom/chimeranft/core/OpenTrace;->DROP_NS:J

    const-wide/16 v0, 0x2bc

    .line 361
    sput-wide v0, Lcom/chimeranft/core/OpenTrace;->FRAME_WATCH_MS:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/chimeranft/core/OpenTrace;->label:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->names:[Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/chimeranft/core/OpenTrace;->variants:[Ljava/lang/String;

    .line 62
    iput p4, p0, Lcom/chimeranft/core/OpenTrace;->entryPhase:I

    .line 64
    array-length p1, p2

    iput p1, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    .line 67
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->wallT0:[J

    .line 68
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->cpuT0:[J

    .line 69
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->beforeEnd:[J

    .line 70
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->afterStart:[J

    .line 71
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/chimeranft/core/OpenTrace;->running:[Z

    const/4 p1, 0x2

    .line 74
    new-array p2, p1, [[J

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_27
    if-ge p4, p1, :cond_32

    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    new-array v0, v0, [J

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_27

    :cond_32
    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->opens:[[J

    .line 75
    new-array p2, p1, [[J

    const/4 p4, 0x0

    :goto_37
    if-ge p4, p1, :cond_42

    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    new-array v0, v0, [J

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_37

    :cond_42
    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->wallNs:[[J

    .line 76
    new-array p2, p1, [[J

    const/4 p4, 0x0

    :goto_47
    if-ge p4, p1, :cond_52

    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    new-array v0, v0, [J

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_47

    :cond_52
    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->wallMaxNs:[[J

    .line 77
    new-array p2, p1, [[J

    const/4 p4, 0x0

    :goto_57
    if-ge p4, p1, :cond_62

    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    new-array v0, v0, [J

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_57

    :cond_62
    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->ownNs:[[J

    .line 78
    new-array p2, p1, [[J

    const/4 p4, 0x0

    :goto_67
    if-ge p4, p1, :cond_72

    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    new-array v0, v0, [J

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_67

    :cond_72
    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->otherNs:[[J

    .line 79
    new-array p2, p1, [[J

    :goto_76
    if-ge p3, p1, :cond_81

    iget p4, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    new-array p4, p4, [J

    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_76

    :cond_81
    iput-object p2, p0, Lcom/chimeranft/core/OpenTrace;->cpuNs:[[J

    const-wide/16 p1, -0x1

    .line 81
    iput-wide p1, p0, Lcom/chimeranft/core/OpenTrace;->gcAtOpen:J

    .line 100
    new-instance p1, Lcom/chimeranft/core/OpenTrace$FrameTick;

    invoke-direct {p1, p0}, Lcom/chimeranft/core/OpenTrace$FrameTick;-><init>(Lcom/chimeranft/core/OpenTrace;)V

    iput-object p1, p0, Lcom/chimeranft/core/OpenTrace;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/OpenTrace;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getCHAT_NAMES$cp()[Ljava/lang/String;
    .registers 1

    .line 54
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->CHAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCHAT_VARIANTS$cp()[Ljava/lang/String;
    .registers 1

    .line 54
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->CHAT_VARIANTS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROFILE_NAMES$cp()[Ljava/lang/String;
    .registers 1

    .line 54
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->PROFILE_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROFILE_VARIANTS$cp()[Ljava/lang/String;
    .registers 1

    .line 54
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->PROFILE_VARIANTS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRuntimeStat$cp()Ljava/lang/reflect/Method;
    .registers 1

    .line 54
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->runtimeStat:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static final synthetic access$getRuntimeStatResolved$cp()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/chimeranft/core/OpenTrace;->runtimeStatResolved:Z

    return v0
.end method

.method public static final synthetic access$getThreadCpu$cp()Ljava/lang/reflect/Method;
    .registers 1

    .line 54
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->threadCpu:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static final synthetic access$getThreadCpuResolved$cp()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/chimeranft/core/OpenTrace;->threadCpuResolved:Z

    return v0
.end method

.method public static final synthetic access$getTraceBegin$cp()Ljava/lang/reflect/Method;
    .registers 1

    .line 54
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->traceBegin:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static final synthetic access$getTraceEnd$cp()Ljava/lang/reflect/Method;
    .registers 1

    .line 54
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->traceEnd:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static final synthetic access$getTraceResolved$cp()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/chimeranft/core/OpenTrace;->traceResolved:Z

    return v0
.end method

.method public static final synthetic access$getTraceSections$cp()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/chimeranft/core/OpenTrace;->traceSections:Z

    return v0
.end method

.method public static final synthetic access$onFrame(Lcom/chimeranft/core/OpenTrace;J)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/OpenTrace;->onFrame(J)V

    return-void
.end method

.method public static final synthetic access$setRuntimeStat$cp(Ljava/lang/reflect/Method;)V
    .registers 1

    .line 54
    sput-object p0, Lcom/chimeranft/core/OpenTrace;->runtimeStat:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final synthetic access$setRuntimeStatResolved$cp(Z)V
    .registers 1

    .line 54
    sput-boolean p0, Lcom/chimeranft/core/OpenTrace;->runtimeStatResolved:Z

    return-void
.end method

.method public static final synthetic access$setThreadCpu$cp(Ljava/lang/reflect/Method;)V
    .registers 1

    .line 54
    sput-object p0, Lcom/chimeranft/core/OpenTrace;->threadCpu:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final synthetic access$setThreadCpuResolved$cp(Z)V
    .registers 1

    .line 54
    sput-boolean p0, Lcom/chimeranft/core/OpenTrace;->threadCpuResolved:Z

    return-void
.end method

.method public static final synthetic access$setTraceBegin$cp(Ljava/lang/reflect/Method;)V
    .registers 1

    .line 54
    sput-object p0, Lcom/chimeranft/core/OpenTrace;->traceBegin:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final synthetic access$setTraceEnd$cp(Ljava/lang/reflect/Method;)V
    .registers 1

    .line 54
    sput-object p0, Lcom/chimeranft/core/OpenTrace;->traceEnd:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final synthetic access$setTraceResolved$cp(Z)V
    .registers 1

    .line 54
    sput-boolean p0, Lcom/chimeranft/core/OpenTrace;->traceResolved:Z

    return-void
.end method

.method public static final synthetic access$setTraceSections$cp(Z)V
    .registers 1

    .line 54
    sput-boolean p0, Lcom/chimeranft/core/OpenTrace;->traceSections:Z

    return-void
.end method

.method private final armFrameWatch()V
    .registers 7

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    iget-wide v2, p0, Lcom/chimeranft/core/OpenTrace;->frameUntilMs:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_16

    .line 210
    sget-wide v3, Lcom/chimeranft/core/OpenTrace;->frameWatchBusyUntil:J

    cmp-long v5, v3, v0

    if-lez v5, :cond_16

    goto :goto_1f

    .line 211
    :cond_16
    sget-wide v3, Lcom/chimeranft/core/OpenTrace;->FRAME_WATCH_MS:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->frameUntilMs:J

    .line 212
    sput-wide v0, Lcom/chimeranft/core/OpenTrace;->frameWatchBusyUntil:J

    if-eqz v2, :cond_20

    :goto_1f
    return-void

    .line 214
    :cond_20
    iget-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->frameWindows:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->frameWindows:J

    const-wide/16 v0, 0x0

    .line 215
    iput-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->lastFrameNs:J

    .line 216
    invoke-direct {p0}, Lcom/chimeranft/core/OpenTrace;->postFrameCallback()V

    return-void
.end method

.method public static final forChat()Lcom/chimeranft/core/OpenTrace;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/OpenTrace$Companion;->forChat()Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    return-object v0
.end method

.method public static final forProfile()Lcom/chimeranft/core/OpenTrace;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/OpenTrace$Companion;->forProfile()Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    return-object v0
.end method

.method private final onFrame(J)V
    .registers 11

    .line 220
    iget-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->lastFrameNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1f

    sub-long v0, p1, v0

    .line 223
    sget-wide v4, Lcom/chimeranft/core/OpenTrace;->DROP_NS:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_17

    iget-wide v4, p0, Lcom/chimeranft/core/OpenTrace;->framesDropped:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/chimeranft/core/OpenTrace;->framesDropped:J

    .line 224
    :cond_17
    iget-wide v4, p0, Lcom/chimeranft/core/OpenTrace;->worstFrameNs:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1f

    iput-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->worstFrameNs:J

    .line 226
    :cond_1f
    iput-wide p1, p0, Lcom/chimeranft/core/OpenTrace;->lastFrameNs:J

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->frameUntilMs:J

    cmp-long v4, p1, v0

    if-gez v4, :cond_2f

    .line 228
    invoke-direct {p0}, Lcom/chimeranft/core/OpenTrace;->postFrameCallback()V

    return-void

    .line 231
    :cond_2f
    iput-wide v2, p0, Lcom/chimeranft/core/OpenTrace;->lastFrameNs:J

    .line 232
    sput-wide v2, Lcom/chimeranft/core/OpenTrace;->frameWatchBusyUntil:J

    return-void
.end method

.method private final postFrameCallback()V
    .registers 3

    .line 260
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->choreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_d

    .line 264
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 266
    :cond_b
    sput-object v0, Lcom/chimeranft/core/OpenTrace;->choreographer:Landroid/view/Choreographer;

    .line 268
    :cond_d
    iget-object v1, p0, Lcom/chimeranft/core/OpenTrace;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    const-wide/16 v0, 0x0

    .line 271
    iput-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->frameUntilMs:J

    return-void
.end method

.method public static final section(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/OpenTrace$Companion;->section(Ljava/lang/String;)V

    return-void
.end method

.method public static final sectionEnd()V
    .registers 1

    sget-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/OpenTrace$Companion;->sectionEnd()V

    return-void
.end method

.method public static final setTraceSections(Z)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/OpenTrace$Companion;->setTraceSections(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final traceEnabled()Z
    .registers 1

    sget-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/OpenTrace$Companion;->traceEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final afterBegin(I)V
    .registers 5

    if-ltz p1, :cond_15

    .line 159
    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->running:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_d

    goto :goto_15

    .line 160
    :cond_d
    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->afterStart:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    aput-wide v1, v0, p1

    :cond_15
    :goto_15
    return-void
.end method

.method public final beforeDone(I)V
    .registers 5

    if-ltz p1, :cond_15

    .line 153
    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->running:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_d

    goto :goto_15

    .line 154
    :cond_d
    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->beforeEnd:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    aput-wide v1, v0, p1

    :cond_15
    :goto_15
    return-void
.end method

.method public final begin(I)V
    .registers 6

    if-ltz p1, :cond_39

    .line 138
    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    if-ge p1, v0, :cond_39

    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->running:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_d

    goto :goto_39

    :cond_d
    const/4 v1, 0x1

    .line 139
    aput-boolean v1, v0, p1

    .line 140
    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->wallT0:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 141
    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->cpuT0:[J

    sget-object v1, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->threadCpuNanos()J
    invoke-static {v1}, Lcom/chimeranft/core/OpenTrace$Companion;->access$threadCpuNanos(Lcom/chimeranft/core/OpenTrace$Companion;)J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 142
    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->beforeEnd:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    .line 143
    iget-object v0, p0, Lcom/chimeranft/core/OpenTrace;->afterStart:[J

    aput-wide v2, v0, p1

    .line 144
    iget v0, p0, Lcom/chimeranft/core/OpenTrace;->entryPhase:I

    if-ne p1, v0, :cond_39

    .line 146
    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->gcCount()J
    invoke-static {v1}, Lcom/chimeranft/core/OpenTrace$Companion;->access$gcCount(Lcom/chimeranft/core/OpenTrace$Companion;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chimeranft/core/OpenTrace;->gcAtOpen:J

    .line 147
    invoke-direct {p0}, Lcom/chimeranft/core/OpenTrace;->armFrameWatch()V

    :cond_39
    :goto_39
    return-void
.end method

.method public final end(IZ)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_b9

    .line 165
    iget v2, v0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    if-ge v1, v2, :cond_b9

    iget-object v2, v0, Lcom/chimeranft/core/OpenTrace;->running:[Z

    aget-boolean v3, v2, v1

    if-nez v3, :cond_12

    goto/16 :goto_b9

    :cond_12
    const/4 v3, 0x0

    .line 166
    aput-boolean v3, v2, v1

    .line 167
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 168
    iget-object v4, v0, Lcom/chimeranft/core/OpenTrace;->wallT0:[J

    aget-wide v5, v4, v1

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-gtz v4, :cond_25

    goto/16 :goto_b9

    :cond_25
    sub-long v9, v2, v5

    .line 171
    iget-object v4, v0, Lcom/chimeranft/core/OpenTrace;->beforeEnd:[J

    aget-wide v11, v4, v1

    cmp-long v4, v11, v7

    if-gtz v4, :cond_30

    move-wide v11, v5

    .line 172
    :cond_30
    iget-object v4, v0, Lcom/chimeranft/core/OpenTrace;->afterStart:[J

    aget-wide v13, v4, v1

    cmp-long v4, v13, v7

    if-gtz v4, :cond_39

    move-wide v13, v2

    :cond_39
    sub-long v5, v11, v5

    sub-long/2addr v2, v13

    add-long/2addr v5, v2

    sub-long/2addr v13, v11

    cmp-long v2, v13, v7

    if-gez v2, :cond_43

    move-wide v13, v7

    .line 177
    :cond_43
    iget-object v2, v0, Lcom/chimeranft/core/OpenTrace;->cpuT0:[J

    aget-wide v3, v2, v1

    const/4 v2, 0x1

    cmp-long v11, v3, v7

    if-lez v11, :cond_5a

    .line 180
    iput-boolean v2, v0, Lcom/chimeranft/core/OpenTrace;->cpuAvailable:Z

    .line 181
    sget-object v11, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->threadCpuNanos()J
    invoke-static {v11}, Lcom/chimeranft/core/OpenTrace$Companion;->access$threadCpuNanos(Lcom/chimeranft/core/OpenTrace$Companion;)J

    move-result-wide v11

    cmp-long v15, v11, v3

    if-lez v15, :cond_5a

    sub-long/2addr v11, v3

    goto :goto_5b

    :cond_5a
    move-wide v11, v7

    :goto_5b
    xor-int/lit8 v2, p2, 0x1

    .line 185
    iget-object v3, v0, Lcom/chimeranft/core/OpenTrace;->opens:[[J

    aget-object v3, v3, v2

    aget-wide v15, v3, v1

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    aput-wide v15, v3, v1

    .line 186
    iget-object v3, v0, Lcom/chimeranft/core/OpenTrace;->wallNs:[[J

    aget-object v3, v3, v2

    aget-wide v15, v3, v1

    add-long/2addr v15, v9

    aput-wide v15, v3, v1

    .line 187
    iget-object v3, v0, Lcom/chimeranft/core/OpenTrace;->wallMaxNs:[[J

    aget-object v3, v3, v2

    aget-wide v15, v3, v1

    cmp-long v4, v9, v15

    if-lez v4, :cond_7e

    aput-wide v9, v3, v1

    .line 188
    :cond_7e
    iget-object v3, v0, Lcom/chimeranft/core/OpenTrace;->ownNs:[[J

    aget-object v3, v3, v2

    aget-wide v9, v3, v1

    add-long/2addr v9, v5

    aput-wide v9, v3, v1

    .line 189
    iget-object v3, v0, Lcom/chimeranft/core/OpenTrace;->otherNs:[[J

    aget-object v3, v3, v2

    aget-wide v4, v3, v1

    add-long/2addr v4, v13

    aput-wide v4, v3, v1

    .line 190
    iget-object v3, v0, Lcom/chimeranft/core/OpenTrace;->cpuNs:[[J

    aget-object v2, v3, v2

    aget-wide v3, v2, v1

    add-long/2addr v3, v11

    aput-wide v3, v2, v1

    .line 191
    iget v2, v0, Lcom/chimeranft/core/OpenTrace;->entryPhase:I

    if-ne v1, v2, :cond_b9

    iget-wide v1, v0, Lcom/chimeranft/core/OpenTrace;->gcAtOpen:J

    cmp-long v3, v1, v7

    if-ltz v3, :cond_b9

    .line 193
    sget-object v1, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->gcCount()J
    invoke-static {v1}, Lcom/chimeranft/core/OpenTrace$Companion;->access$gcCount(Lcom/chimeranft/core/OpenTrace$Companion;)J

    move-result-wide v1

    .line 194
    iget-wide v3, v0, Lcom/chimeranft/core/OpenTrace;->gcAtOpen:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_b5

    iget-wide v5, v0, Lcom/chimeranft/core/OpenTrace;->gcDelta:J

    sub-long/2addr v1, v3

    add-long/2addr v5, v1

    iput-wide v5, v0, Lcom/chimeranft/core/OpenTrace;->gcDelta:J

    :cond_b5
    const-wide/16 v1, -0x1

    .line 195
    iput-wide v1, v0, Lcom/chimeranft/core/OpenTrace;->gcAtOpen:J

    :cond_b9
    :goto_b9
    return-void
.end method

.method public final report()Ljava/lang/String;
    .registers 16

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 283
    iget-object v1, p0, Lcom/chimeranft/core/OpenTrace;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (ms; other=host+other hooks, blocked=wall-cpu)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ge v2, v4, :cond_c0

    .line 287
    iget v4, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v4, :cond_bc

    .line 289
    iget-object v8, p0, Lcom/chimeranft/core/OpenTrace;->opens:[[J

    aget-object v8, v8, v2

    aget-wide v9, v8, v7

    cmp-long v8, v9, v5

    if-eqz v8, :cond_b8

    .line 292
    iget-object v3, p0, Lcom/chimeranft/core/OpenTrace;->wallNs:[[J

    aget-object v3, v3, v2

    aget-wide v11, v3, v7

    iget-object v3, p0, Lcom/chimeranft/core/OpenTrace;->cpuNs:[[J

    aget-object v3, v3, v2

    aget-wide v13, v3, v7

    sub-long/2addr v11, v13

    cmp-long v3, v11, v5

    if-gez v3, :cond_3a

    move-wide v11, v5

    .line 294
    :cond_3a
    const-string v3, "\n  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chimeranft/core/OpenTrace;->variants:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chimeranft/core/OpenTrace;->names:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v3, " n="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 296
    const-string v3, " wall="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    iget-object v8, p0, Lcom/chimeranft/core/OpenTrace;->wallNs:[[J

    aget-object v8, v8, v2

    aget-wide v13, v8, v7

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->avg(JJ)Ljava/lang/String;
    invoke-static {v3, v13, v14, v9, v10}, Lcom/chimeranft/core/OpenTrace$Companion;->access$avg(Lcom/chimeranft/core/OpenTrace$Companion;JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v8, " max="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/chimeranft/core/OpenTrace;->wallMaxNs:[[J

    aget-object v8, v8, v2

    aget-wide v13, v8, v7

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->ms(J)Ljava/lang/String;
    invoke-static {v3, v13, v14}, Lcom/chimeranft/core/OpenTrace$Companion;->access$ms(Lcom/chimeranft/core/OpenTrace$Companion;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v8, " own="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/chimeranft/core/OpenTrace;->ownNs:[[J

    aget-object v8, v8, v2

    aget-wide v13, v8, v7

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->avg(JJ)Ljava/lang/String;
    invoke-static {v3, v13, v14, v9, v10}, Lcom/chimeranft/core/OpenTrace$Companion;->access$avg(Lcom/chimeranft/core/OpenTrace$Companion;JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v8, " other="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/chimeranft/core/OpenTrace;->otherNs:[[J

    aget-object v8, v8, v2

    aget-wide v13, v8, v7

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->avg(JJ)Ljava/lang/String;
    invoke-static {v3, v13, v14, v9, v10}, Lcom/chimeranft/core/OpenTrace$Companion;->access$avg(Lcom/chimeranft/core/OpenTrace$Companion;JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v8, " blocked="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/chimeranft/core/OpenTrace;->cpuAvailable:Z

    if-eqz v8, :cond_b2

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->avg(JJ)Ljava/lang/String;
    invoke-static {v3, v11, v12, v9, v10}, Lcom/chimeranft/core/OpenTrace$Companion;->access$avg(Lcom/chimeranft/core/OpenTrace$Companion;JJ)Ljava/lang/String;

    move-result-object v3

    goto :goto_b4

    :cond_b2
    const-string v3, "n/a"

    :goto_b4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :cond_b8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1c

    :cond_bc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    :cond_c0
    if-nez v3, :cond_c7

    .line 305
    const-string v1, "\n  (nothing opened yet)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_c7
    iget-wide v1, p0, Lcom/chimeranft/core/OpenTrace;->frameWindows:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_f7

    .line 308
    const-string v1, "\n  frames: dropped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/chimeranft/core/OpenTrace;->framesDropped:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, " over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/chimeranft/core/OpenTrace;->frameWindows:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " open(s), worst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    sget-object v1, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    iget-wide v2, p0, Lcom/chimeranft/core/OpenTrace;->worstFrameNs:J

    # invokes: Lcom/chimeranft/core/OpenTrace$Companion;->ms(J)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/OpenTrace$Companion;->access$ms(Lcom/chimeranft/core/OpenTrace$Companion;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_100

    .line 312
    :cond_f7
    iget-object v1, p0, Lcom/chimeranft/core/OpenTrace;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v1, :cond_100

    .line 314
    const-string v1, "\n  frames: (no Choreographer)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_100
    :goto_100
    iget-wide v1, p0, Lcom/chimeranft/core/OpenTrace;->gcDelta:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_110

    const-string v1, "\n  gc during opens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/chimeranft/core/OpenTrace;->gcDelta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 317
    :cond_110
    sget-boolean v1, Lcom/chimeranft/core/OpenTrace;->traceSections:Z

    if-eqz v1, :cond_119

    const-string v1, "\n  atrace sections: ON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final reset()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_36

    .line 110
    iget v2, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_33

    .line 112
    iget-object v6, p0, Lcom/chimeranft/core/OpenTrace;->wallMaxNs:[[J

    aget-object v6, v6, v1

    aput-wide v3, v6, v5

    .line 113
    iget-object v6, p0, Lcom/chimeranft/core/OpenTrace;->wallNs:[[J

    aget-object v6, v6, v1

    aput-wide v3, v6, v5

    .line 114
    iget-object v6, p0, Lcom/chimeranft/core/OpenTrace;->opens:[[J

    aget-object v6, v6, v1

    aput-wide v3, v6, v5

    .line 115
    iget-object v6, p0, Lcom/chimeranft/core/OpenTrace;->cpuNs:[[J

    aget-object v6, v6, v1

    aput-wide v3, v6, v5

    .line 116
    iget-object v6, p0, Lcom/chimeranft/core/OpenTrace;->otherNs:[[J

    aget-object v6, v6, v1

    aput-wide v3, v6, v5

    .line 117
    iget-object v6, p0, Lcom/chimeranft/core/OpenTrace;->ownNs:[[J

    aget-object v6, v6, v1

    aput-wide v3, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    :cond_36
    iget v1, p0, Lcom/chimeranft/core/OpenTrace;->phaseCount:I

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_42

    iget-object v5, p0, Lcom/chimeranft/core/OpenTrace;->running:[Z

    aput-boolean v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_42
    const-wide/16 v1, -0x1

    .line 121
    iput-wide v1, p0, Lcom/chimeranft/core/OpenTrace;->gcAtOpen:J

    .line 122
    iput-wide v3, p0, Lcom/chimeranft/core/OpenTrace;->gcDelta:J

    .line 123
    iput-boolean v0, p0, Lcom/chimeranft/core/OpenTrace;->cpuAvailable:Z

    .line 124
    iput-wide v3, p0, Lcom/chimeranft/core/OpenTrace;->worstFrameNs:J

    .line 125
    iput-wide v3, p0, Lcom/chimeranft/core/OpenTrace;->framesDropped:J

    .line 126
    iput-wide v3, p0, Lcom/chimeranft/core/OpenTrace;->frameWindows:J

    .line 127
    iput-wide v3, p0, Lcom/chimeranft/core/OpenTrace;->frameUntilMs:J

    .line 128
    iput-wide v3, p0, Lcom/chimeranft/core/OpenTrace;->lastFrameNs:J

    return-void
.end method
