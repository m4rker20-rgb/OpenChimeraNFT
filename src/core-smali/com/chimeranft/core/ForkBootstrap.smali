.class public final Lcom/chimeranft/core/ForkBootstrap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/ForkBootstrap;

.field private static volatile activeAccount:I

.field private static volatile activeUserId:J

.field private static volatile applicationContext:Landroid/content/Context;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/ForkBootstrap;

    invoke-direct {v0}, Lcom/chimeranft/core/ForkBootstrap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/ForkBootstrap;->INSTANCE:Lcom/chimeranft/core/ForkBootstrap;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chimeranft/core/ForkBootstrap;->lock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 18
    sput v0, Lcom/chimeranft/core/ForkBootstrap;->activeAccount:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appContext()Landroid/content/Context;
    .registers 1

    .line 27
    sget-object v0, Lcom/chimeranft/core/ForkBootstrap;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final directHostCallsEnabled()Z
    .registers 1

    .line 31
    sget-object v0, Lcom/chimeranft/core/ForkBootstrap;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static final init(Landroid/content/Context;)V
    .registers 11

    if-nez p0, :cond_4

    goto/16 :goto_c0

    .line 37
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v0, p0

    :cond_b
    sput-object v0, Lcom/chimeranft/core/ForkBootstrap;->applicationContext:Landroid/content/Context;

    .line 38
    const-string v0, "org.telegram.messenger.UserConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    const-string v1, "selectedAccount"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 41
    const-string v3, "getInstance"

    const/4 v4, 0x1

    .line 42
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 40
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3c

    goto/16 :goto_c0

    .line 44
    :cond_3c
    const-string v5, "getClientUserId"

    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_4d

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    :cond_4d
    if-eqz v2, :cond_c0

    .line 45
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-gtz v0, :cond_5a

    goto :goto_c0

    .line 47
    :cond_5a
    sget v0, Lcom/chimeranft/core/ForkBootstrap;->activeAccount:I

    if-ne v0, v1, :cond_65

    sget-wide v5, Lcom/chimeranft/core/ForkBootstrap;->activeUserId:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_65

    goto :goto_c0

    .line 49
    :cond_65
    sget-object v0, Lcom/chimeranft/core/ForkBootstrap;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_68
    .catchall {:try_start_4 .. :try_end_68} :catchall_c0

    .line 50
    :try_start_68
    sget v5, Lcom/chimeranft/core/ForkBootstrap;->activeAccount:I

    if-ne v5, v1, :cond_76

    sget-wide v5, Lcom/chimeranft/core/ForkBootstrap;->activeUserId:J
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_74

    cmp-long v7, v5, v2

    if-nez v7, :cond_76

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_c0

    return-void

    :catchall_74
    move-exception p0

    goto :goto_be

    .line 51
    :cond_76
    :try_start_76
    sget-object v5, Lcom/chimeranft/core/ForkBootstrap;->applicationContext:Landroid/content/Context;

    if-nez v5, :cond_7b

    goto :goto_7c

    :cond_7b
    move-object p0, v5

    .line 52
    :goto_7c
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v6, "chimera"

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_95

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result p0
    :try_end_91
    .catchall {:try_start_76 .. :try_end_91} :catchall_74

    if-nez p0, :cond_95

    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_c0

    return-void

    :cond_95
    const-wide v6, 0x2540be400L

    int-to-long v8, v1

    add-long/2addr v8, v6

    .line 55
    :try_start_9c
    sget-object p0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/chimeranft/core/Main$Companion;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    const-string v5, "INIT FATAL"

    invoke-static {p0, v5, v4}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_ba

    .line 57
    sput v1, Lcom/chimeranft/core/ForkBootstrap;->activeAccount:I

    .line 58
    sput-wide v2, Lcom/chimeranft/core/ForkBootstrap;->activeUserId:J

    .line 60
    :cond_ba
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_bc
    .catchall {:try_start_9c .. :try_end_bc} :catchall_74

    .line 49
    :try_start_bc
    monitor-exit v0

    return-void

    :goto_be
    monitor-exit v0

    throw p0
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_c0

    :catchall_c0
    :cond_c0
    :goto_c0
    return-void
.end method
