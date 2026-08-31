.class public final Lcom/chimeranft/core/PerformanceGovernor$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$memoryFreeRatio(Lcom/chimeranft/core/PerformanceGovernor$Companion;)D
    .registers 3

    .line 233
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->memoryFreeRatio()D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$scheduleUi(Lcom/chimeranft/core/PerformanceGovernor$Companion;Ljava/lang/Runnable;J)V
    .registers 4

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->scheduleUi(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic access$thermalStatus(Lcom/chimeranft/core/PerformanceGovernor$Companion;)I
    .registers 1

    .line 233
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->thermalStatus()I

    move-result p0

    return p0
.end method

.method private final initialDeviceMode()I
    .registers 12

    const/4 v0, 0x1

    .line 372
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    .line 373
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 375
    const-string v4, "org.telegram.messenger.ApplicationLoader"

    invoke-static {v4}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_70

    const/4 v5, 0x0

    if-eqz v4, :cond_2d

    .line 381
    :try_start_1e
    const-string v6, "applicationContext"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 382
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2c

    goto :goto_2e

    :catchall_2c
    nop

    :cond_2d
    move-object v4, v5

    :goto_2e
    const/4 v6, 0x0

    if-eqz v4, :cond_57

    .line 390
    :try_start_31
    const-string v7, "getSystemService"

    .line 391
    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    new-array v9, v0, [Ljava/lang/Object;

    const-string v10, "activity"

    aput-object v10, v9, v6

    .line 390
    invoke-static {v4, v7, v8, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_46

    goto :goto_50

    .line 395
    :cond_46
    const-string v5, "isLowRamDevice"

    new-array v7, v6, [Ljava/lang/Class;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7, v8}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 397
    :goto_50
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_56
    .catchall {:try_start_31 .. :try_end_56} :catchall_70

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    if-nez v4, :cond_6f

    const-wide/16 v4, 0xc0

    cmp-long v7, v1, v4

    if-ltz v7, :cond_6f

    const/4 v4, 0x4

    if-gt v3, v4, :cond_64

    goto :goto_6f

    :cond_64
    const-wide/16 v4, 0x180

    cmp-long v7, v1, v4

    if-ltz v7, :cond_70

    const/16 v1, 0x8

    if-lt v3, v1, :cond_70

    return v6

    :cond_6f
    :goto_6f
    const/4 v0, 0x2

    :catchall_70
    :cond_70
    return v0
.end method

.method private final memoryFreeRatio()D
    .registers 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 332
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    .line 334
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-gtz v2, :cond_1a

    return-wide v0

    :cond_1a
    sub-long v5, v3, v5

    long-to-double v5, v5

    long-to-double v2, v3

    div-double/2addr v5, v2

    .line 335
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_29

    :catchall_29
    return-wide v0
.end method

.method private final scheduleUi(Ljava/lang/Runnable;J)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 314
    :cond_3
    const-string v0, "perfGovernor.scheduleUi"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 317
    const-class v4, Ljava/lang/Runnable;

    const-string v5, "runOnUIThread"

    const-string v6, "org.telegram.messenger.AndroidUtilities"

    cmp-long v7, p2, v0

    if-lez v7, :cond_32

    const/4 v0, 0x2

    .line 319
    :try_start_1c
    new-array v1, v0, [Ljava/lang/Class;

    aput-object v4, v1, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v3

    aput-object p2, p3, v2

    .line 318
    invoke-static {v6, v5, v1, p3}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 322
    :cond_32
    new-array p2, v2, [Ljava/lang/Class;

    aput-object v4, p2, v3

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v3

    .line 321
    invoke-static {v6, v5, p2, p3}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3e

    return-void

    .line 325
    :catchall_3e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private final thermalStatus()I
    .registers 9

    const/4 v0, -0x1

    .line 345
    :try_start_1
    const-string v1, "org.telegram.messenger.ApplicationLoader"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_48

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    .line 351
    :try_start_b
    const-string v4, "applicationContext"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 353
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1b

    :catchall_19
    nop

    :cond_1a
    move-object v1, v3

    :goto_1b
    if-nez v1, :cond_1e

    return v0

    .line 359
    :cond_1e
    :try_start_1e
    const-string v4, "getSystemService"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "power"

    aput-object v6, v2, v7

    invoke-static {v1, v4, v5, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_3e

    .line 360
    :cond_34
    const-string v2, "getCurrentThermalStatus"

    new-array v3, v7, [Ljava/lang/Class;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 361
    :goto_3e
    instance-of v1, v3, Ljava/lang/Number;

    if-eqz v1, :cond_48

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_48
    .catchall {:try_start_1e .. :try_end_48} :catchall_48

    :catchall_48
    :cond_48
    return v0
.end method


# virtual methods
.method public final adaptiveInterval(J)J
    .registers 7

    .line 285
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    if-nez v0, :cond_7

    return-wide p1

    :cond_7
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3

    mul-long p1, p1, v2

    if-ne v0, v1, :cond_15

    const-wide/16 v0, 0x2

    div-long/2addr p1, v0

    :cond_15
    return-wide p1
.end method

.method public final allowHeavyEffects()Z
    .registers 3

    .line 267
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->isCriticalInteraction()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final animationScale()F
    .registers 3

    .line 282
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_9
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const v0, 0x3f1eb852    # 0.62f

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final beginCriticalInteraction(J)V
    .registers 7

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 264
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->criticalUntilMs:J
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCriticalUntilMs$cp()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_16

    invoke-static {v0, v1}, Lcom/chimeranft/core/PerformanceGovernor;->access$setCriticalUntilMs$cp(J)V

    :cond_16
    return-void
.end method

.method public final criticalRemainingMs()J
    .registers 6

    .line 278
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->criticalUntilMs:J
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCriticalUntilMs$cp()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    return-wide v0

    :cond_10
    return-wide v2
.end method

.method public final currentStatusJson()Ljava/lang/String;
    .registers 2

    .line 407
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->live:Lcom/chimeranft/core/PerformanceGovernor;
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getLive$cp()Lcom/chimeranft/core/PerformanceGovernor;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 408
    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor;->statusJson()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "{\"mode\":1,\"mode_name\":\"balanced\",\"autonomous\":true}"

    return-object v0
.end method

.method public final isCriticalInteraction()Z
    .registers 6

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->criticalUntilMs:J
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCriticalUntilMs$cp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final marketWarmBatchSize()I
    .registers 3

    .line 292
    invoke-virtual {p0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->isCriticalInteraction()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    return v0

    .line 293
    :cond_8
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x24

    return v0

    :cond_11
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    const/16 v0, 0x14

    return v0

    :cond_1b
    const/16 v0, 0xa

    return v0
.end method

.method public final mode()I
    .registers 2

    .line 256
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    return v0
.end method

.method public final profileGiftBatchSize()I
    .registers 3

    .line 288
    invoke-virtual {p0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->isCriticalInteraction()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    return v0

    .line 289
    :cond_9
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x20

    return v0

    :cond_12
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getCurrentMode$cp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x14

    return v0

    :cond_1c
    const/16 v0, 0xa

    return v0
.end method

.method public final startNew()Lcom/chimeranft/core/PerformanceGovernor;
    .registers 2

    .line 242
    # getter for: Lcom/chimeranft/core/PerformanceGovernor;->live:Lcom/chimeranft/core/PerformanceGovernor;
    invoke-static {}, Lcom/chimeranft/core/PerformanceGovernor;->access$getLive$cp()Lcom/chimeranft/core/PerformanceGovernor;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 245
    :try_start_6
    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor;->stop()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_9

    .line 249
    :catchall_9
    :cond_9
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->initialDeviceMode()I

    move-result v0

    invoke-static {v0}, Lcom/chimeranft/core/PerformanceGovernor;->access$setCurrentMode$cp(I)V

    .line 250
    new-instance v0, Lcom/chimeranft/core/PerformanceGovernor;

    invoke-direct {v0}, Lcom/chimeranft/core/PerformanceGovernor;-><init>()V

    .line 251
    invoke-static {v0}, Lcom/chimeranft/core/PerformanceGovernor;->access$setLive$cp(Lcom/chimeranft/core/PerformanceGovernor;)V

    .line 252
    # invokes: Lcom/chimeranft/core/PerformanceGovernor;->start()V
    invoke-static {v0}, Lcom/chimeranft/core/PerformanceGovernor;->access$start(Lcom/chimeranft/core/PerformanceGovernor;)V

    return-object v0
.end method
