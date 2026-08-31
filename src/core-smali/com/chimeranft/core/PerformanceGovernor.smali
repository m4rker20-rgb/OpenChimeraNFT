.class public final Lcom/chimeranft/core/PerformanceGovernor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BALANCED:I = 0x1

.field public static final Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

.field public static final ECO:I = 0x2

.field public static final QUALITY:I

.field private static final WINDOW_NS:J

.field private static volatile choreographer:Landroid/view/Choreographer;

.field private static volatile criticalUntilMs:J

.field private static volatile currentMode:I

.field private static volatile live:Lcom/chimeranft/core/PerformanceGovernor;


# instance fields
.field private badWindows:I

.field private consecutiveSevere:I

.field private final frameCallback:Landroid/view/Choreographer$FrameCallback;

.field private frames:I

.field private goodWindows:I

.field private janky:I

.field private volatile lastAverageMs:D

.field private lastFrameNs:J

.field private volatile lastJankRatio:D

.field private volatile lastMemoryFree:D

.field private volatile lastThermal:I

.field private volatile running:Z

.field private volatile sampling:Z

.field private severe:I

.field private volatile transitions:J

.field private windowStartNs:J

.field private volatile windows:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/PerformanceGovernor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/PerformanceGovernor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    const/4 v0, 0x1

    .line 238
    sput v0, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    const-wide/32 v0, 0x47868c00

    .line 304
    sput-wide v0, Lcom/chimeranft/core/PerformanceGovernor;->WINDOW_NS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->lastThermal:I

    .line 27
    new-instance v0, Lcom/chimeranft/core/PerformanceGovernor$FrameTick;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/PerformanceGovernor$FrameTick;-><init>(Lcom/chimeranft/core/PerformanceGovernor;)V

    iput-object v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method public static final synthetic access$beginWindow(Lcom/chimeranft/core/PerformanceGovernor;)V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->beginWindow()V

    return-void
.end method

.method public static final synthetic access$getCriticalUntilMs$cp()J
    .registers 2

    .line 8
    sget-wide v0, Lcom/chimeranft/core/PerformanceGovernor;->criticalUntilMs:J

    return-wide v0
.end method

.method public static final synthetic access$getCurrentMode$cp()I
    .registers 1

    .line 8
    sget v0, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    return v0
.end method

.method public static final synthetic access$getLive$cp()Lcom/chimeranft/core/PerformanceGovernor;
    .registers 1

    .line 8
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->live:Lcom/chimeranft/core/PerformanceGovernor;

    return-object v0
.end method

.method public static final synthetic access$onFrame(Lcom/chimeranft/core/PerformanceGovernor;J)V
    .registers 3

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/PerformanceGovernor;->onFrame(J)V

    return-void
.end method

.method public static final synthetic access$setCriticalUntilMs$cp(J)V
    .registers 2

    .line 8
    sput-wide p0, Lcom/chimeranft/core/PerformanceGovernor;->criticalUntilMs:J

    return-void
.end method

.method public static final synthetic access$setCurrentMode$cp(I)V
    .registers 1

    .line 8
    sput p0, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    return-void
.end method

.method public static final synthetic access$setLive$cp(Lcom/chimeranft/core/PerformanceGovernor;)V
    .registers 1

    .line 8
    sput-object p0, Lcom/chimeranft/core/PerformanceGovernor;->live:Lcom/chimeranft/core/PerformanceGovernor;

    return-void
.end method

.method public static final synthetic access$start(Lcom/chimeranft/core/PerformanceGovernor;)V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->start()V

    return-void
.end method

.method public static final adaptiveInterval(J)J
    .registers 3

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->adaptiveInterval(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final allowHeavyEffects()Z
    .registers 1

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->allowHeavyEffects()Z

    move-result v0

    return v0
.end method

.method public static final animationScale()F
    .registers 1

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->animationScale()F

    move-result v0

    return v0
.end method

.method public static final beginCriticalInteraction(J)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->beginCriticalInteraction(J)V

    return-void
.end method

.method private final beginWindow()V
    .registers 3

    .line 101
    iget-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->running:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->sampling:Z

    if-eqz v0, :cond_9

    goto :goto_24

    :cond_9
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->sampling:Z

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->lastFrameNs:J

    .line 104
    iput-wide v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->windowStartNs:J

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->consecutiveSevere:I

    .line 106
    iput v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->severe:I

    .line 107
    iput v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->janky:I

    .line 108
    iput v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->frames:I

    .line 111
    :try_start_1b
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->postFrameCallback()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    return-void

    .line 114
    :catchall_1f
    iput-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->sampling:Z

    .line 115
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->scheduleNext()V

    :cond_24
    :goto_24
    return-void
.end method

.method public static final criticalRemainingMs()J
    .registers 2

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->criticalRemainingMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final currentStatusJson()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->currentStatusJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final finishWindow()V
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 120
    iput-boolean v1, v0, Lcom/chimeranft/core/PerformanceGovernor;->sampling:Z

    .line 121
    iget-wide v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->windows:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->windows:J

    .line 122
    iget v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->frames:I

    const-wide/16 v6, 0x0

    if-gtz v2, :cond_14

    move-wide v8, v6

    goto :goto_19

    :cond_14
    iget v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->janky:I

    int-to-double v8, v3

    int-to-double v2, v2

    div-double/2addr v8, v2

    :goto_19
    iput-wide v8, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastJankRatio:D

    .line 123
    iget-wide v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastFrameNs:J

    iget-wide v8, v0, Lcom/chimeranft/core/PerformanceGovernor;->windowStartNs:J

    cmp-long v10, v2, v8

    if-lez v10, :cond_2c

    sub-long/2addr v2, v8

    long-to-double v2, v2

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v8

    goto :goto_2d

    :cond_2c
    move-wide v2, v6

    .line 124
    :goto_2d
    iget v8, v0, Lcom/chimeranft/core/PerformanceGovernor;->frames:I

    if-gtz v8, :cond_32

    goto :goto_35

    :cond_32
    int-to-double v6, v8

    div-double v6, v2, v6

    :goto_35
    iput-wide v6, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastAverageMs:D

    .line 125
    sget-object v2, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    # invokes: Lcom/chimeranft/core/PerformanceGovernor$Companion;->memoryFreeRatio()D
    invoke-static {v2}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->access$memoryFreeRatio(Lcom/chimeranft/core/PerformanceGovernor$Companion;)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastMemoryFree:D

    .line 126
    # invokes: Lcom/chimeranft/core/PerformanceGovernor$Companion;->thermalStatus()I
    invoke-static {v2}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->access$thermalStatus(Lcom/chimeranft/core/PerformanceGovernor$Companion;)I

    move-result v2

    iput v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastThermal:I

    .line 127
    iget-wide v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastMemoryFree:D

    const-wide v6, 0x3fc999999999999aL    # 0.2

    const/16 v8, 0xf

    const/4 v9, 0x5

    const-wide v10, 0x3fb1eb851eb851ecL    # 0.07

    const/4 v12, 0x1

    cmpg-double v13, v2, v10

    if-ltz v13, :cond_6d

    iget v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastThermal:I

    if-ge v2, v9, :cond_6d

    .line 128
    iget v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->frames:I

    if-le v2, v8, :cond_6b

    iget v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->severe:I

    int-to-double v13, v3

    int-to-double v2, v2

    div-double/2addr v13, v2

    cmpl-double v2, v13, v6

    if-lez v2, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v2, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v2, 0x1

    :goto_6e
    if-nez v2, :cond_9d

    .line 129
    iget-wide v13, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastMemoryFree:D

    const-wide v15, 0x3fc0a3d70a3d70a4L    # 0.13

    cmpg-double v3, v13, v15

    if-ltz v3, :cond_9d

    iget v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastThermal:I

    const/4 v13, 0x4

    if-ge v3, v13, :cond_9d

    .line 130
    iget v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->frames:I

    if-le v3, v8, :cond_9b

    iget-wide v13, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastJankRatio:D

    const-wide v15, 0x3fc70a3d70a3d70aL    # 0.18

    cmpl-double v3, v13, v15

    if-gtz v3, :cond_9d

    iget-wide v13, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastAverageMs:D

    const-wide v15, 0x4036800000000000L    # 22.5

    cmpl-double v3, v13, v15

    if-lez v3, :cond_9b

    goto :goto_9d

    :cond_9b
    const/4 v3, 0x0

    goto :goto_9e

    :cond_9d
    :goto_9d
    const/4 v3, 0x1

    .line 131
    :goto_9e
    iget v8, v0, Lcom/chimeranft/core/PerformanceGovernor;->frames:I

    const/16 v13, 0x14

    const/4 v14, 0x2

    move-wide v15, v4

    if-le v8, v13, :cond_c7

    iget-wide v4, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastJankRatio:D

    cmpg-double v8, v4, v10

    if-gez v8, :cond_c7

    iget-wide v4, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastAverageMs:D

    const-wide v10, 0x4032800000000000L    # 18.5

    cmpg-double v8, v4, v10

    if-gez v8, :cond_c7

    .line 132
    iget-wide v4, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastMemoryFree:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_c7

    iget v4, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastThermal:I

    if-ltz v4, :cond_c5

    iget v4, v0, Lcom/chimeranft/core/PerformanceGovernor;->lastThermal:I

    if-gt v4, v14, :cond_c7

    :cond_c5
    const/4 v4, 0x1

    goto :goto_c8

    :cond_c7
    const/4 v4, 0x0

    :goto_c8
    if-eqz v3, :cond_d2

    .line 135
    iget v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->badWindows:I

    add-int/2addr v3, v12

    iput v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->badWindows:I

    .line 136
    iput v1, v0, Lcom/chimeranft/core/PerformanceGovernor;->goodWindows:I

    goto :goto_e7

    :cond_d2
    if-eqz v4, :cond_dc

    .line 140
    iget v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->goodWindows:I

    add-int/2addr v3, v12

    iput v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->goodWindows:I

    .line 141
    iput v1, v0, Lcom/chimeranft/core/PerformanceGovernor;->badWindows:I

    goto :goto_e7

    .line 145
    :cond_dc
    iget v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->badWindows:I

    sub-int/2addr v3, v12

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/chimeranft/core/PerformanceGovernor;->badWindows:I

    .line 146
    iput v1, v0, Lcom/chimeranft/core/PerformanceGovernor;->goodWindows:I

    .line 148
    :goto_e7
    sget v3, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    if-eqz v2, :cond_ec

    goto :goto_10a

    .line 151
    :cond_ec
    iget v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->badWindows:I

    if-lt v2, v14, :cond_f8

    .line 152
    sget v2, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    add-int/2addr v2, v12

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_10a

    .line 153
    :cond_f8
    iget v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->goodWindows:I

    sget v4, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    if-ne v4, v14, :cond_ff

    const/4 v9, 0x3

    :cond_ff
    if-lt v2, v9, :cond_109

    sget v2, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    sub-int/2addr v2, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_10a

    :cond_109
    move v14, v3

    .line 154
    :goto_10a
    sget v2, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    if-eq v14, v2, :cond_119

    .line 155
    sput v14, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    .line 156
    iget-wide v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->transitions:J

    add-long/2addr v2, v15

    iput-wide v2, v0, Lcom/chimeranft/core/PerformanceGovernor;->transitions:J

    .line 157
    iput v1, v0, Lcom/chimeranft/core/PerformanceGovernor;->goodWindows:I

    .line 158
    iput v1, v0, Lcom/chimeranft/core/PerformanceGovernor;->badWindows:I

    .line 160
    :cond_119
    invoke-direct {v0}, Lcom/chimeranft/core/PerformanceGovernor;->scheduleNext()V

    return-void
.end method

.method public static final marketWarmBatchSize()I
    .registers 1

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->marketWarmBatchSize()I

    move-result v0

    return v0
.end method

.method public static final mode()I
    .registers 1

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->mode()I

    move-result v0

    return v0
.end method

.method private final onFrame(J)V
    .registers 11

    .line 55
    iget-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->running:Z

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->sampling:Z

    if-nez v0, :cond_9

    goto :goto_73

    .line 56
    :cond_9
    iget-wide v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->lastFrameNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_59

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    .line 59
    iget v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->frames:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->frames:I

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_2c

    .line 60
    iget v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->janky:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->janky:I

    :cond_2c
    const-wide/high16 v4, 0x404a000000000000L    # 52.0

    const/4 v6, 0x0

    cmpl-double v7, v0, v4

    if-lez v7, :cond_51

    .line 63
    iget v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->severe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->severe:I

    .line 64
    iget v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->consecutiveSevere:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->consecutiveSevere:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_59

    const/4 v0, 0x2

    .line 68
    sput v0, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x898

    add-long/2addr v0, v4

    sput-wide v0, Lcom/chimeranft/core/PerformanceGovernor;->criticalUntilMs:J

    .line 70
    iput v6, p0, Lcom/chimeranft/core/PerformanceGovernor;->consecutiveSevere:I

    goto :goto_59

    :cond_51
    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    cmpg-double v7, v0, v4

    if-gez v7, :cond_59

    .line 75
    iput v6, p0, Lcom/chimeranft/core/PerformanceGovernor;->consecutiveSevere:I

    .line 78
    :cond_59
    :goto_59
    iput-wide p1, p0, Lcom/chimeranft/core/PerformanceGovernor;->lastFrameNs:J

    .line 79
    iget-wide v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->windowStartNs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_63

    iput-wide p1, p0, Lcom/chimeranft/core/PerformanceGovernor;->windowStartNs:J

    .line 80
    :cond_63
    iget-wide v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->windowStartNs:J

    sub-long/2addr p1, v0

    sget-wide v0, Lcom/chimeranft/core/PerformanceGovernor;->WINDOW_NS:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_70

    .line 81
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->finishWindow()V

    return-void

    .line 83
    :cond_70
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->postFrameCallback()V

    :cond_73
    :goto_73
    return-void
.end method

.method private final postFrameCallback()V
    .registers 4

    .line 188
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->resolveChoreographer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 189
    iput-boolean v1, p0, Lcom/chimeranft/core/PerformanceGovernor;->sampling:Z

    .line 190
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->scheduleNext()V

    return-void

    .line 195
    :cond_d
    :try_start_d
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/chimeranft/core/PerformanceGovernor;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    :cond_16
    return-void

    .line 198
    :catchall_17
    iput-boolean v1, p0, Lcom/chimeranft/core/PerformanceGovernor;->sampling:Z

    .line 199
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->scheduleNext()V

    return-void
.end method

.method public static final profileGiftBatchSize()I
    .registers 1

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->profileGiftBatchSize()I

    move-result v0

    return v0
.end method

.method private final removeFrameCallback()V
    .registers 3

    .line 207
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/chimeranft/core/PerformanceGovernor;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    :catchall_9
    :cond_9
    return-void
.end method

.method private final resolveChoreographer()Z
    .registers 4

    .line 174
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->choreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 178
    :try_start_7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    sput-object v2, Lcom/chimeranft/core/PerformanceGovernor;->choreographer:Landroid/view/Choreographer;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_12

    .line 184
    sget-object v2, Lcom/chimeranft/core/PerformanceGovernor;->choreographer:Landroid/view/Choreographer;

    if-eqz v2, :cond_12

    return v1

    :catchall_12
    :cond_12
    return v0
.end method

.method private final scheduleNext()V
    .registers 5

    .line 164
    iget-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->running:Z

    if-nez v0, :cond_5

    return-void

    .line 165
    :cond_5
    sget v0, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const-wide/16 v0, 0x2ee0

    goto :goto_17

    :cond_d
    sget v0, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    const-wide/16 v0, 0x2710

    goto :goto_17

    :cond_15
    const-wide/16 v0, 0x1f40

    .line 166
    :goto_17
    sget-object v2, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    new-instance v3, Lcom/chimeranft/core/PerformanceGovernor$scheduleNext$1;

    invoke-direct {v3, p0}, Lcom/chimeranft/core/PerformanceGovernor$scheduleNext$1;-><init>(Lcom/chimeranft/core/PerformanceGovernor;)V

    # invokes: Lcom/chimeranft/core/PerformanceGovernor$Companion;->scheduleUi(Ljava/lang/Runnable;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->access$scheduleUi(Lcom/chimeranft/core/PerformanceGovernor$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final start()V
    .registers 5

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->running:Z

    .line 88
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    new-instance v1, Lcom/chimeranft/core/PerformanceGovernor$start$1;

    invoke-direct {v1, p0}, Lcom/chimeranft/core/PerformanceGovernor$start$1;-><init>(Lcom/chimeranft/core/PerformanceGovernor;)V

    const-wide/16 v2, 0x0

    # invokes: Lcom/chimeranft/core/PerformanceGovernor$Companion;->scheduleUi(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->access$scheduleUi(Lcom/chimeranft/core/PerformanceGovernor$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final startNew()Lcom/chimeranft/core/PerformanceGovernor;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->startNew()Lcom/chimeranft/core/PerformanceGovernor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final statusJson()Ljava/lang/String;
    .registers 11

    .line 213
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 216
    :try_start_5
    const-string v1, "mode"

    sget v2, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    const-string v1, "mode_name"

    sget v2, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    const/4 v3, 0x1

    if-nez v2, :cond_16

    const-string v2, "quality"

    goto :goto_1f

    :cond_16
    sget v2, Lcom/chimeranft/core/PerformanceGovernor;->currentMode:I

    if-ne v2, v3, :cond_1d

    const-string v2, "balanced"

    goto :goto_1f

    :cond_1d
    const-string v2, "eco"

    :goto_1f
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v1, "average_frame_ms"

    iget-wide v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->lastAverageMs:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 219
    const-string v1, "jank_percent"

    iget-wide v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->lastJankRatio:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 220
    const-string v1, "memory_free_percent"

    iget-wide v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->lastMemoryFree:D

    mul-double v4, v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 221
    const-string v1, "thermal"

    iget v2, p0, Lcom/chimeranft/core/PerformanceGovernor;->lastThermal:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v1, "windows"

    iget-wide v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->windows:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    const-string v1, "transitions"

    iget-wide v4, p0, Lcom/chimeranft/core/PerformanceGovernor;->transitions:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    const-string v1, "autonomous"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 225
    const-string v1, "critical_interaction"

    sget-object v2, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->isCriticalInteraction()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 226
    const-string v1, "profile_gift_batch"

    invoke-virtual {v2}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->profileGiftBatchSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_84
    .catchall {:try_start_5 .. :try_end_84} :catchall_84

    .line 230
    :catchall_84
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final stop()V
    .registers 2

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->running:Z

    .line 96
    iput-boolean v0, p0, Lcom/chimeranft/core/PerformanceGovernor;->sampling:Z

    .line 97
    invoke-direct {p0}, Lcom/chimeranft/core/PerformanceGovernor;->removeFrameCallback()V

    .line 98
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->live:Lcom/chimeranft/core/PerformanceGovernor;

    if-ne v0, p0, :cond_f

    const/4 v0, 0x0

    sput-object v0, Lcom/chimeranft/core/PerformanceGovernor;->live:Lcom/chimeranft/core/PerformanceGovernor;

    :cond_f
    return-void
.end method
