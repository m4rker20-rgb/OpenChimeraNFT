.class public final Lcom/chimeranft/core/HookSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/HookSlot$Companion;

.field private static volatile lastOffUi:Ljava/lang/String;

.field private static volatile offUiInstalls:J

.field private static volatile totalFailures:J

.field private static volatile totalInstalls:J

.field private static volatile totalRemovals:J

.field private static volatile uiThread:Ljava/lang/Thread;

.field private static volatile uiThreadResolved:Z


# instance fields
.field public volatile failures:J

.field private final handler:Lde/robv/android/xposed/XC_MethodHook;

.field public volatile installs:J

.field private volatile live:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field public final name:Ljava/lang/String;

.field public volatile removals:J

.field private final target:Ljava/lang/reflect/Member;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/HookSlot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/HookSlot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    .line 159
    const-string v0, ""

    sput-object v0, Lcom/chimeranft/core/HookSlot;->lastOffUi:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/HookSlot;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/chimeranft/core/HookSlot;->target:Ljava/lang/reflect/Member;

    iput-object p3, p0, Lcom/chimeranft/core/HookSlot;->handler:Lde/robv/android/xposed/XC_MethodHook;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/HookSlot;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    return-void
.end method

.method public static final synthetic access$getLastOffUi$cp()Ljava/lang/String;
    .registers 1

    .line 70
    sget-object v0, Lcom/chimeranft/core/HookSlot;->lastOffUi:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOffUiInstalls$cp()J
    .registers 2

    .line 70
    sget-wide v0, Lcom/chimeranft/core/HookSlot;->offUiInstalls:J

    return-wide v0
.end method

.method public static final synthetic access$getTotalFailures$cp()J
    .registers 2

    .line 70
    sget-wide v0, Lcom/chimeranft/core/HookSlot;->totalFailures:J

    return-wide v0
.end method

.method public static final synthetic access$getTotalInstalls$cp()J
    .registers 2

    .line 70
    sget-wide v0, Lcom/chimeranft/core/HookSlot;->totalInstalls:J

    return-wide v0
.end method

.method public static final synthetic access$getTotalRemovals$cp()J
    .registers 2

    .line 70
    sget-wide v0, Lcom/chimeranft/core/HookSlot;->totalRemovals:J

    return-wide v0
.end method

.method public static final synthetic access$getUiThread$cp()Ljava/lang/Thread;
    .registers 1

    .line 70
    sget-object v0, Lcom/chimeranft/core/HookSlot;->uiThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static final synthetic access$getUiThreadResolved$cp()Z
    .registers 1

    .line 70
    sget-boolean v0, Lcom/chimeranft/core/HookSlot;->uiThreadResolved:Z

    return v0
.end method

.method public static final synthetic access$setLastOffUi$cp(Ljava/lang/String;)V
    .registers 1

    .line 70
    sput-object p0, Lcom/chimeranft/core/HookSlot;->lastOffUi:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setOffUiInstalls$cp(J)V
    .registers 2

    .line 70
    sput-wide p0, Lcom/chimeranft/core/HookSlot;->offUiInstalls:J

    return-void
.end method

.method public static final synthetic access$setTotalFailures$cp(J)V
    .registers 2

    .line 70
    sput-wide p0, Lcom/chimeranft/core/HookSlot;->totalFailures:J

    return-void
.end method

.method public static final synthetic access$setTotalInstalls$cp(J)V
    .registers 2

    .line 70
    sput-wide p0, Lcom/chimeranft/core/HookSlot;->totalInstalls:J

    return-void
.end method

.method public static final synthetic access$setTotalRemovals$cp(J)V
    .registers 2

    .line 70
    sput-wide p0, Lcom/chimeranft/core/HookSlot;->totalRemovals:J

    return-void
.end method

.method public static final synthetic access$setUiThread$cp(Ljava/lang/Thread;)V
    .registers 1

    .line 70
    sput-object p0, Lcom/chimeranft/core/HookSlot;->uiThread:Ljava/lang/Thread;

    return-void
.end method

.method public static final synthetic access$setUiThreadResolved$cp(Z)V
    .registers 1

    .line 70
    sput-boolean p0, Lcom/chimeranft/core/HookSlot;->uiThreadResolved:Z

    return-void
.end method

.method public static final deferred(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/HookSlot$Companion;->deferred(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object p0

    return-object p0
.end method

.method public static final hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object p0

    return-object p0
.end method

.method public static final hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0
.end method

.method public static final markUiThread()V
    .registers 1

    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/HookSlot$Companion;->markUiThread()V

    return-void
.end method

.method public static final report()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/HookSlot$Companion;->report()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final uiThreadKnown()Z
    .registers 1

    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/HookSlot$Companion;->uiThreadKnown()Z

    move-result v0

    return v0
.end method

.method public static final unhook(Lde/robv/android/xposed/XC_MethodHook$Unhook;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/HookSlot$Companion;->unhook(Lde/robv/android/xposed/XC_MethodHook$Unhook;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized install()Z
    .registers 7

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/HookSlot;->live:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    .line 84
    :cond_8
    :try_start_8
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    iget-object v2, p0, Lcom/chimeranft/core/HookSlot;->target:Ljava/lang/reflect/Member;

    iget-object v3, p0, Lcom/chimeranft/core/HookSlot;->handler:Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v0, v2, v3}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/HookSlot;->live:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 85
    iget-object v0, p0, Lcom/chimeranft/core/HookSlot;->live:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const-wide/16 v2, 0x1

    if-nez v0, :cond_24

    .line 86
    iget-wide v0, p0, Lcom/chimeranft/core/HookSlot;->failures:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/HookSlot;->failures:J
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_22

    .line 87
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_22
    move-exception v0

    goto :goto_2b

    .line 89
    :cond_24
    :try_start_24
    iget-wide v4, p0, Lcom/chimeranft/core/HookSlot;->installs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/chimeranft/core/HookSlot;->installs:J
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_22

    .line 90
    monitor-exit p0

    return v1

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_22

    throw v0
.end method

.method public final isLive()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/chimeranft/core/HookSlot;->live:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized remove()Z
    .registers 7

    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/HookSlot;->live:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 96
    monitor-exit p0

    return v1

    :cond_8
    const/4 v2, 0x0

    .line 97
    :try_start_9
    iput-object v2, p0, Lcom/chimeranft/core/HookSlot;->live:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 98
    sget-object v2, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    iget-object v3, p0, Lcom/chimeranft/core/HookSlot;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/chimeranft/core/HookSlot$Companion;->unhook(Lde/robv/android/xposed/XC_MethodHook$Unhook;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, 0x1

    if-nez v0, :cond_20

    .line 99
    iget-wide v4, p0, Lcom/chimeranft/core/HookSlot;->failures:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/chimeranft/core/HookSlot;->failures:J
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1e

    .line 100
    monitor-exit p0

    return v1

    :catchall_1e
    move-exception v0

    goto :goto_28

    .line 102
    :cond_20
    :try_start_20
    iget-wide v0, p0, Lcom/chimeranft/core/HookSlot;->removals:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/HookSlot;->removals:J
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1e

    .line 103
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1e

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 107
    iget-object v0, p0, Lcom/chimeranft/core/HookSlot;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/chimeranft/core/HookSlot;->isLive()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "=live"

    goto :goto_d

    :cond_b
    const-string v1, "=off"

    :goto_d
    iget-wide v2, p0, Lcom/chimeranft/core/HookSlot;->installs:J

    iget-wide v4, p0, Lcom/chimeranft/core/HookSlot;->removals:J

    .line 108
    iget-wide v6, p0, Lcom/chimeranft/core/HookSlot;->failures:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_2d

    iget-wide v6, p0, Lcom/chimeranft/core/HookSlot;->failures:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " fail="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2f

    :cond_2d
    const-string v6, ""

    :goto_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
