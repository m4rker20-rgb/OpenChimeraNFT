.class public final Lcom/chimeranft/core/MemoryPressure$install$proxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_6b

    .line 47
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_6b

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_14

    .line 48
    array-length v3, p3

    if-ne v3, v2, :cond_14

    aget-object p3, p3, v1

    goto :goto_15

    :cond_14
    move-object p3, v0

    .line 49
    :goto_15
    const-string v3, "onTrimMemory"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    instance-of v3, p3, Ljava/lang/Number;

    if-eqz v3, :cond_2d

    .line 51
    sget-object p1, Lcom/chimeranft/core/MemoryPressure;->INSTANCE:Lcom/chimeranft/core/MemoryPressure;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    # invokes: Lcom/chimeranft/core/MemoryPressure;->onTrim(I)V
    invoke-static {p1, p2}, Lcom/chimeranft/core/MemoryPressure;->access$onTrim(Lcom/chimeranft/core/MemoryPressure;I)V

    goto :goto_6b

    .line 53
    :cond_2d
    const-string v3, "onLowMemory"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 55
    sget-object p1, Lcom/chimeranft/core/MemoryPressure;->INSTANCE:Lcom/chimeranft/core/MemoryPressure;

    # getter for: Lcom/chimeranft/core/MemoryPressure;->TRIM_MEMORY_RUNNING_CRITICAL:I
    invoke-static {}, Lcom/chimeranft/core/MemoryPressure;->access$getTRIM_MEMORY_RUNNING_CRITICAL$p()I

    move-result p2

    # invokes: Lcom/chimeranft/core/MemoryPressure;->onTrim(I)V
    invoke-static {p1, p2}, Lcom/chimeranft/core/MemoryPressure;->access$onTrim(Lcom/chimeranft/core/MemoryPressure;I)V

    goto :goto_6b

    .line 57
    :cond_3f
    const-string v3, "hashCode"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 59
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 61
    :cond_50
    const-string v3, "equals"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    if-ne p3, p1, :cond_5b

    const/4 v1, 0x1

    .line 63
    :cond_5b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 65
    :cond_60
    const-string p1, "toString"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 67
    const-string p1, "chimeranft-memory-callbacks"
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_6b

    return-object p1

    :catchall_6b
    :cond_6b
    :goto_6b
    return-object v0
.end method
