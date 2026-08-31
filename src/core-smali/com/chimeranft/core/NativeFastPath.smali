.class public final Lcom/chimeranft/core/NativeFastPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/NativeFastPath;

.field private static volatile currentStatus:Ljava/lang/String;

.field private static volatile loaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/NativeFastPath;

    invoke-direct {v0}, Lcom/chimeranft/core/NativeFastPath;-><init>()V

    sput-object v0, Lcom/chimeranft/core/NativeFastPath;->INSTANCE:Lcom/chimeranft/core/NativeFastPath;

    .line 6
    const-string v0, "java"

    sput-object v0, Lcom/chimeranft/core/NativeFastPath;->currentStatus:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hashString(JLjava/lang/String;)J
    .registers 7

    if-eqz p2, :cond_2c

    .line 26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 27
    :cond_9
    sget-boolean v0, Lcom/chimeranft/core/NativeFastPath;->loaded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 29
    :try_start_e
    invoke-static {p2, p0, p1}, Lcom/chimeranft/core/NativeFastPath;->hashUtf8(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    return-wide p0

    .line 31
    :catchall_13
    sput-boolean v1, Lcom/chimeranft/core/NativeFastPath;->loaded:Z

    .line 36
    :cond_15
    :goto_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v2, v0

    xor-long/2addr p0, v2

    const-wide v2, 0x100000001b3L

    mul-long p0, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2b
    return-wide p0

    :cond_2c
    :goto_2c
    const-wide/16 v0, 0x0

    .line 26
    invoke-static {p0, p1, v0, v1}, Lcom/chimeranft/core/NativeFastPath;->mix(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final native hashUtf8(Ljava/lang/String;J)J
.end method

.method public static final declared-synchronized load(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/chimeranft/core/NativeFastPath;

    monitor-enter v0

    .line 11
    :try_start_3
    sget-boolean v1, Lcom/chimeranft/core/NativeFastPath;->loaded:Z

    if-eqz v1, :cond_d

    sget-object p0, Lcom/chimeranft/core/NativeFastPath;->currentStatus:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    goto :goto_59

    :cond_d
    if-eqz p0, :cond_55

    .line 12
    :try_start_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_b

    if-nez v1, :cond_16

    goto :goto_55

    .line 14
    :cond_16
    :try_start_16
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 15
    sput-boolean v1, Lcom/chimeranft/core/NativeFastPath;->loaded:Z

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cpp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/chimeranft/core/NativeFastPath;->currentStatus:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_30

    goto :goto_51

    :catchall_30
    move-exception p0

    .line 18
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/chimeranft/core/NativeFastPath;->currentStatus:Ljava/lang/String;

    .line 20
    :goto_51
    sget-object p0, Lcom/chimeranft/core/NativeFastPath;->currentStatus:Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_b

    monitor-exit v0

    return-object p0

    .line 12
    :cond_55
    :goto_55
    :try_start_55
    sget-object p0, Lcom/chimeranft/core/NativeFastPath;->currentStatus:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_b

    monitor-exit v0

    return-object p0

    :goto_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_b

    throw p0
.end method

.method public static final mix(JJ)J
    .registers 6

    xor-long/2addr p0, p2

    const/16 p2, 0x21

    ushr-long v0, p0, p2

    xor-long/2addr p0, v0

    const-wide v0, -0xae502812aa7333L

    mul-long p0, p0, v0

    ushr-long v0, p0, p2

    xor-long/2addr p0, v0

    const-wide v0, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v0

    ushr-long p2, p0, p2

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static final status()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/chimeranft/core/NativeFastPath;->currentStatus:Ljava/lang/String;

    return-object v0
.end method
