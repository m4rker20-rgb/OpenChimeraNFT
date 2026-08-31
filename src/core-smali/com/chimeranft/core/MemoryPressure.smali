.class public final Lcom/chimeranft/core/MemoryPressure;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/MemoryPressure;

.field private static final TRIM_MEMORY_BACKGROUND:I

.field private static final TRIM_MEMORY_RUNNING_CRITICAL:I

.field private static final TRIM_MEMORY_UI_HIDDEN:I

.field private static callbacks:Ljava/lang/Object;

.field public static lastLevel:I

.field private static registeredOn:Ljava/lang/Object;

.field public static trimEvents:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/MemoryPressure;

    invoke-direct {v0}, Lcom/chimeranft/core/MemoryPressure;-><init>()V

    sput-object v0, Lcom/chimeranft/core/MemoryPressure;->INSTANCE:Lcom/chimeranft/core/MemoryPressure;

    const/16 v0, 0xf

    .line 26
    sput v0, Lcom/chimeranft/core/MemoryPressure;->TRIM_MEMORY_RUNNING_CRITICAL:I

    const/16 v0, 0x14

    .line 27
    sput v0, Lcom/chimeranft/core/MemoryPressure;->TRIM_MEMORY_UI_HIDDEN:I

    const/16 v0, 0x28

    .line 28
    sput v0, Lcom/chimeranft/core/MemoryPressure;->TRIM_MEMORY_BACKGROUND:I

    const/4 v0, -0x1

    .line 33
    sput v0, Lcom/chimeranft/core/MemoryPressure;->lastLevel:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTRIM_MEMORY_RUNNING_CRITICAL$p()I
    .registers 1

    .line 23
    sget v0, Lcom/chimeranft/core/MemoryPressure;->TRIM_MEMORY_RUNNING_CRITICAL:I

    return v0
.end method

.method public static final synthetic access$onTrim(Lcom/chimeranft/core/MemoryPressure;I)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/chimeranft/core/MemoryPressure;->onTrim(I)V

    return-void
.end method

.method private final appContext()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 125
    :try_start_1
    const-string v1, "org.telegram.messenger.ApplicationLoader"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v0

    .line 126
    :cond_a
    const-string v2, "applicationContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_18

    :catchall_18
    return-object v0
.end method

.method public static final declared-synchronized install()V
    .registers 8

    const-class v0, Lcom/chimeranft/core/MemoryPressure;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/chimeranft/core/MemoryPressure;->callbacks:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_49

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 40
    :cond_9
    :try_start_9
    sget-object v1, Lcom/chimeranft/core/MemoryPressure;->INSTANCE:Lcom/chimeranft/core/MemoryPressure;

    invoke-direct {v1}, Lcom/chimeranft/core/MemoryPressure;->appContext()Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_47

    if-nez v1, :cond_13

    monitor-exit v0

    return-void

    .line 41
    :cond_13
    :try_start_13
    const-string v2, "android.content.ComponentCallbacks2"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_47

    if-nez v2, :cond_1d

    monitor-exit v0

    return-void

    .line 42
    :cond_1d
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 43
    new-instance v2, Lcom/chimeranft/core/MemoryPressure$install$proxy$1;

    invoke-direct {v2}, Lcom/chimeranft/core/MemoryPressure$install$proxy$1;-><init>()V

    .line 42
    invoke-static {v3, v5, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    const-string v3, "registerComponentCallbacks"

    .line 76
    const-string v5, "android.content.ComponentCallbacks"

    invoke-static {v5}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v5, v7, v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    .line 75
    invoke-static {v1, v3, v7, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sput-object v2, Lcom/chimeranft/core/MemoryPressure;->callbacks:Ljava/lang/Object;

    .line 78
    sput-object v1, Lcom/chimeranft/core/MemoryPressure;->registeredOn:Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_47

    .line 82
    :catchall_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private final onTrim(I)V
    .registers 6

    .line 108
    sget-wide v0, Lcom/chimeranft/core/MemoryPressure;->trimEvents:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/chimeranft/core/MemoryPressure;->trimEvents:J

    .line 109
    sput p1, Lcom/chimeranft/core/MemoryPressure;->lastLevel:I

    .line 110
    sget v0, Lcom/chimeranft/core/MemoryPressure;->TRIM_MEMORY_BACKGROUND:I

    if-ge p1, v0, :cond_18

    .line 111
    sget v0, Lcom/chimeranft/core/MemoryPressure;->TRIM_MEMORY_RUNNING_CRITICAL:I

    if-eq p1, v0, :cond_18

    .line 112
    sget v0, Lcom/chimeranft/core/MemoryPressure;->TRIM_MEMORY_UI_HIDDEN:I

    if-ne p1, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    .line 113
    :goto_19
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->trimCaches(Z)V

    return-void
.end method

.method public static final poll()Ljava/lang/String;
    .registers 6

    .line 118
    sget-object v0, Lcom/chimeranft/core/MemoryPressure;->callbacks:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 119
    :goto_7
    sget-wide v1, Lcom/chimeranft/core/MemoryPressure;->trimEvents:J

    sget v3, Lcom/chimeranft/core/MemoryPressure;->lastLevel:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mem[registered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " trims="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " lastLevel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized uninstall()V
    .registers 7

    const-class v0, Lcom/chimeranft/core/MemoryPressure;

    monitor-enter v0

    .line 88
    :try_start_3
    sget-object v1, Lcom/chimeranft/core/MemoryPressure;->callbacks:Ljava/lang/Object;

    if-eqz v1, :cond_26

    sget-object v1, Lcom/chimeranft/core/MemoryPressure;->registeredOn:Ljava/lang/Object;

    if-eqz v1, :cond_26

    .line 90
    const-string v2, "unregisterComponentCallbacks"

    .line 91
    const-string v3, "android.content.ComponentCallbacks"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 92
    sget-object v3, Lcom/chimeranft/core/MemoryPressure;->callbacks:Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_26

    if-nez v3, :cond_1f

    monitor-exit v0

    return-void

    :cond_1f
    :try_start_1f
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 90
    invoke-static {v1, v2, v5, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_26

    :catchall_26
    :cond_26
    const/4 v1, 0x0

    .line 97
    :try_start_27
    sput-object v1, Lcom/chimeranft/core/MemoryPressure;->callbacks:Ljava/lang/Object;

    .line 98
    sput-object v1, Lcom/chimeranft/core/MemoryPressure;->registeredOn:Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2d

    .line 99
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method
