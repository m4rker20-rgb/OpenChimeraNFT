.class public final Lcom/chimeranft/core/OpenTrace$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/OpenTrace$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$avg(Lcom/chimeranft/core/OpenTrace$Companion;JJ)Ljava/lang/String;
    .registers 5

    .line 321
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/OpenTrace$Companion;->avg(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$gcCount(Lcom/chimeranft/core/OpenTrace$Companion;)J
    .registers 3

    .line 321
    invoke-direct {p0}, Lcom/chimeranft/core/OpenTrace$Companion;->gcCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$ms(Lcom/chimeranft/core/OpenTrace$Companion;J)Ljava/lang/String;
    .registers 3

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/OpenTrace$Companion;->ms(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$threadCpuNanos(Lcom/chimeranft/core/OpenTrace$Companion;)J
    .registers 3

    .line 321
    invoke-direct {p0}, Lcom/chimeranft/core/OpenTrace$Companion;->threadCpuNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method private final avg(JJ)Ljava/lang/String;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_9

    .line 509
    const-string p1, "0"

    return-object p1

    :cond_9
    div-long/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/OpenTrace$Companion;->ms(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final gcCount()J
    .registers 9

    const-wide/16 v0, -0x1

    .line 410
    :try_start_2
    # getter for: Lcom/chimeranft/core/OpenTrace;->runtimeStat:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getRuntimeStat$cp()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2c

    .line 413
    # getter for: Lcom/chimeranft/core/OpenTrace;->runtimeStatResolved:Z
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getRuntimeStatResolved$cp()Z

    move-result v2

    if-eqz v2, :cond_11

    return-wide v0

    .line 414
    :cond_11
    invoke-static {v4}, Lcom/chimeranft/core/OpenTrace;->access$setRuntimeStatResolved$cp(Z)V

    .line 415
    const-string v2, "android.os.Debug"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getRuntimeStat"

    .line 416
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 415
    invoke-static {v2, v5, v6}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 417
    invoke-static {v2}, Lcom/chimeranft/core/OpenTrace;->access$setRuntimeStat$cp(Ljava/lang/reflect/Method;)V

    if-nez v2, :cond_2c

    return-wide v0

    .line 420
    :cond_2c
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "art.gc.gc-count"

    aput-object v5, v4, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 421
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_45

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/chimeranft/core/OpenTrace$Companion;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_45

    :catchall_45
    :cond_45
    return-wide v0
.end method

.method private final ms(J)Ljava/lang/String;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_9

    .line 503
    const-string p1, "0"

    return-object p1

    :cond_9
    const-wide/32 v0, 0x186a0

    .line 504
    div-long/2addr p1, v0

    const-wide/16 v0, 0xa

    .line 505
    div-long v2, p1, v0

    rem-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final resolveTrace()Z
    .registers 6

    .line 479
    # getter for: Lcom/chimeranft/core/OpenTrace;->traceBegin:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceBegin$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    # getter for: Lcom/chimeranft/core/OpenTrace;->traceEnd:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceEnd$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_e

    return v1

    .line 480
    :cond_e
    # getter for: Lcom/chimeranft/core/OpenTrace;->traceResolved:Z
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceResolved$cp()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    return v2

    .line 481
    :cond_16
    invoke-static {v1}, Lcom/chimeranft/core/OpenTrace;->access$setTraceResolved$cp(Z)V

    .line 482
    const-string v0, "android.os.Trace"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_22

    return v2

    .line 484
    :cond_22
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "beginSection"

    invoke-static {v0, v4, v3}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lcom/chimeranft/core/OpenTrace;->access$setTraceBegin$cp(Ljava/lang/reflect/Method;)V

    .line 485
    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    const-string v4, "endSection"

    invoke-static {v0, v4, v3}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/chimeranft/core/OpenTrace;->access$setTraceEnd$cp(Ljava/lang/reflect/Method;)V

    .line 486
    # getter for: Lcom/chimeranft/core/OpenTrace;->traceBegin:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceBegin$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_50

    # getter for: Lcom/chimeranft/core/OpenTrace;->traceEnd:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceEnd$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_50

    return v1

    :cond_50
    return v2
.end method

.method private final threadCpuNanos()J
    .registers 8

    const-wide/16 v0, 0x0

    .line 379
    :try_start_2
    # getter for: Lcom/chimeranft/core/OpenTrace;->threadCpu:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getThreadCpu$cp()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2e

    .line 382
    # getter for: Lcom/chimeranft/core/OpenTrace;->threadCpuResolved:Z
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getThreadCpuResolved$cp()Z

    move-result v2

    if-eqz v2, :cond_10

    return-wide v0

    .line 383
    :cond_10
    invoke-static {v3}, Lcom/chimeranft/core/OpenTrace;->access$setThreadCpuResolved$cp(Z)V

    .line 384
    const-string v2, "android.os.Debug"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "threadCpuTimeNanos"

    sget-object v5, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Class;

    invoke-static {v2, v4, v5}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 385
    invoke-static {v2}, Lcom/chimeranft/core/OpenTrace;->access$setThreadCpu$cp(Ljava/lang/reflect/Method;)V

    if-nez v2, :cond_2e

    return-wide v0

    .line 388
    :cond_2e
    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 389
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_44

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_44
    .catchall {:try_start_2 .. :try_end_44} :catchall_44

    :catchall_44
    :cond_44
    return-wide v0
.end method

.method private final trimAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    .line 492
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-le v0, v1, :cond_1f

    add-int/lit8 v3, v0, -0x1

    .line 493
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1f
    if-nez v1, :cond_28

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_28

    return-object p1

    .line 495
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final forChat()Lcom/chimeranft/core/OpenTrace;
    .registers 7

    .line 355
    new-instance v0, Lcom/chimeranft/core/OpenTrace;

    # getter for: Lcom/chimeranft/core/OpenTrace;->CHAT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getCHAT_NAMES$cp()[Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/chimeranft/core/OpenTrace;->CHAT_VARIANTS:[Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getCHAT_VARIANTS$cp()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "chatOpen"

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/OpenTrace;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final forProfile()Lcom/chimeranft/core/OpenTrace;
    .registers 7

    .line 349
    new-instance v0, Lcom/chimeranft/core/OpenTrace;

    # getter for: Lcom/chimeranft/core/OpenTrace;->PROFILE_NAMES:[Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getPROFILE_NAMES$cp()[Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/chimeranft/core/OpenTrace;->PROFILE_VARIANTS:[Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getPROFILE_VARIANTS$cp()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, "profileOpen"

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/OpenTrace;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final section(Ljava/lang/String;)V
    .registers 5

    .line 455
    # getter for: Lcom/chimeranft/core/OpenTrace;->traceSections:Z
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceSections$cp()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1f

    .line 458
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/chimeranft/core/OpenTrace$Companion;->resolveTrace()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1f

    .line 459
    :cond_e
    # getter for: Lcom/chimeranft/core/OpenTrace;->traceBegin:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceBegin$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_1f

    :cond_15
    const/4 v1, 0x1

    .line 460
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1f

    :catchall_1f
    :goto_1f
    return-void
.end method

.method public final sectionEnd()V
    .registers 5

    .line 467
    # getter for: Lcom/chimeranft/core/OpenTrace;->traceSections:Z
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceSections$cp()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_21

    .line 470
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/chimeranft/core/OpenTrace$Companion;->resolveTrace()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_21

    .line 471
    :cond_e
    # getter for: Lcom/chimeranft/core/OpenTrace;->traceEnd:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceEnd$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_21

    :cond_15
    const/4 v1, 0x1

    .line 472
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_21

    :catchall_21
    :goto_21
    return-void
.end method

.method public final setTraceSections(Z)Ljava/lang/String;
    .registers 4

    .line 446
    invoke-static {p1}, Lcom/chimeranft/core/OpenTrace;->access$setTraceSections$cp(Z)V

    if-eqz p1, :cond_8

    .line 447
    const-string p1, "ON"

    goto :goto_a

    :cond_8
    const-string p1, "OFF"

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trace sections "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final traceEnabled()Z
    .registers 2

    .line 451
    # getter for: Lcom/chimeranft/core/OpenTrace;->traceSections:Z
    invoke-static {}, Lcom/chimeranft/core/OpenTrace;->access$getTraceSections$cp()Z

    move-result v0

    return v0
.end method
