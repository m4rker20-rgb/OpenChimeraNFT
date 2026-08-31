.class public final Lcom/chimeranft/core/Refl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ABSENT:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final ABSENT_RETRY_MS:J

.field private static final CHAT_ENTITY:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final CLASSES:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final FIELDS:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final INSTANCE:Lcom/chimeranft/core/Refl;

.field private static final METHODS:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final MISS:Ljava/lang/reflect/Method;

.field private static final MISSING:Ljava/lang/reflect/Field;

.field public static final NO_ARGS:[Ljava/lang/Object;

.field public static final NO_SIG:[Ljava/lang/Class;

.field private static final USER_FULL_SHAPE:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/chimeranft/core/Refl;

    invoke-direct {v0}, Lcom/chimeranft/core/Refl;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Refl;->INSTANCE:Lcom/chimeranft/core/Refl;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Refl;->FIELDS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Refl;->CLASSES:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    const-string v0, "CLASSES"

    const-class v1, Lcom/chimeranft/core/Refl;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Refl;->MISSING:Ljava/lang/reflect/Field;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Refl;->ABSENT:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v2, 0x5dc

    .line 45
    sput-wide v2, Lcom/chimeranft/core/Refl;->ABSENT_RETRY_MS:J

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Refl;->CHAT_ENTITY:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Refl;->USER_FULL_SHAPE:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 61
    new-array v2, v0, [Ljava/lang/Class;

    sput-object v2, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Refl;->METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    const-string v0, "_missSentinel"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Refl;->MISS:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final _missSentinel()V
    .registers 1

    return-void
.end method

.method public static final call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 385
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    invoke-static {v1, p1, p2}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_16

    return-object v0

    .line 386
    :cond_16
    array-length p2, p3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    return-object v0
.end method

.method public static final callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    .line 370
    :try_start_1
    invoke-static {p0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v0

    .line 371
    :cond_13
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    return-object v0
.end method

.method public static final cls(Ljava/lang/String;)Ljava/lang/Class;
    .registers 12

    .line 76
    sget-object v0, Lcom/chimeranft/core/Refl;->CLASSES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    return-object v0

    .line 80
    :cond_b
    sget-object v0, Lcom/chimeranft/core/Refl;->ABSENT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_26

    .line 82
    aget-wide v5, v0, v4

    sub-long v5, v1, v5

    sget-wide v7, Lcom/chimeranft/core/Refl;->ABSENT_RETRY_MS:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_26

    return-object v3

    .line 88
    :cond_26
    const-class v5, Lcom/chimeranft/core/Refl;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz v5, :cond_3b

    .line 92
    invoke-virtual {v5}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v7

    goto :goto_3c

    :cond_3b
    move-object v7, v3

    :goto_3c
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/ClassLoader;

    aput-object v6, v9, v4

    const/4 v6, 0x1

    aput-object v5, v9, v6

    const/4 v5, 0x2

    aput-object v7, v9, v5

    const/4 v5, 0x0

    :goto_48
    if-ge v5, v8, :cond_60

    .line 94
    aget-object v7, v9, v5

    if-eqz v7, :cond_5d

    .line 99
    :try_start_4e
    invoke-static {p0, v4, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 100
    sget-object v10, Lcom/chimeranft/core/Refl;->CLASSES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, p0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v10, Lcom/chimeranft/core/Refl;->ABSENT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_5d

    return-object v7

    :catchall_5d
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_60
    if-eqz v0, :cond_65

    .line 108
    aput-wide v1, v0, v4

    goto :goto_6e

    .line 110
    :cond_65
    sget-object v0, Lcom/chimeranft/core/Refl;->ABSENT:Ljava/util/concurrent/ConcurrentHashMap;

    new-array v5, v6, [J

    aput-wide v1, v5, v4

    invoke-virtual {v0, p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6e
    return-object v3
.end method

.method public static final field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 118
    :cond_4
    sget-object v1, Lcom/chimeranft/core/Refl;->FIELDS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1c

    .line 121
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 122
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1c

    move-object v2, v1

    .line 125
    :cond_1c
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2a

    .line 126
    sget-object p0, Lcom/chimeranft/core/Refl;->MISSING:Ljava/lang/reflect/Field;

    if-ne v1, p0, :cond_29

    return-object v0

    :cond_29
    return-object v1

    :cond_2a
    :goto_2a
    if-eqz p0, :cond_3e

    .line 132
    :try_start_2c
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 134
    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2c .. :try_end_37} :catch_39
    .catchall {:try_start_2c .. :try_end_37} :catchall_38

    return-object v1

    :catchall_38
    return-object v0

    .line 138
    :catch_39
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_2a

    .line 145
    :cond_3e
    sget-object p0, Lcom/chimeranft/core/Refl;->MISSING:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_45

    invoke-virtual {v2, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    return-object v0
.end method

.method public static final get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 218
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-nez p1, :cond_f

    return-object v0

    .line 219
    :cond_f
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    return-object v0
.end method

.method public static final getLong(Ljava/lang/Object;Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 245
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-nez p1, :cond_10

    return-wide v0

    .line 247
    :cond_10
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 248
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1d

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    .line 249
    :cond_1d
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_27

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 250
    :cond_27
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 251
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_36

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-wide p0

    :catchall_36
    :cond_36
    return-wide v0
.end method

.method public static final isChatEntity(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 153
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 154
    sget-object v1, Lcom/chimeranft/core/Refl;->CHAT_ENTITY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_17

    .line 155
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 156
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    const-string v3, "chat"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "channel"

    invoke-static {v2, v3, v0, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_38
    const/4 v0, 0x1

    .line 158
    :cond_39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public static final varargs isUserFullShape(Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 177
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 178
    sget-object v1, Lcom/chimeranft/core/Refl;->USER_FULL_SHAPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    .line 179
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_17
    if-eqz p1, :cond_2c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    :goto_1b
    array-length v3, p1

    if-ge v1, v3, :cond_2d

    if-nez v2, :cond_2d

    .line 186
    aget-object v3, p1, v1

    invoke-static {p0, v3}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_29

    const/4 v2, 0x1

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v2, 0x0

    :cond_2d
    if-nez v2, :cond_46

    .line 192
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "userfull"

    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    .line 194
    :cond_46
    sget-object p1, Lcom/chimeranft/core/Refl;->USER_FULL_SHAPE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public static final varargs method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 312
    :cond_4
    sget-object v1, Lcom/chimeranft/core/Refl;->METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1c

    .line 315
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 316
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1c

    move-object v2, v1

    .line 319
    :cond_1c
    sget-object v1, Lcom/chimeranft/core/Refl;->INSTANCE:Lcom/chimeranft/core/Refl;

    invoke-direct {v1, p1, p2}, Lcom/chimeranft/core/Refl;->subKey(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_30

    .line 321
    sget-object p0, Lcom/chimeranft/core/Refl;->MISS:Ljava/lang/reflect/Method;

    if-ne v3, p0, :cond_2f

    return-object v0

    :cond_2f
    return-object v3

    :cond_30
    const/4 v3, 0x1

    .line 324
    :try_start_31
    array-length v4, p2

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 325
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 326
    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_43

    return-object v4

    :catchall_43
    nop

    :goto_44
    if-eqz p0, :cond_5f

    .line 338
    :try_start_46
    array-length v4, p2

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 339
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 340
    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_57} :catch_5a
    .catchall {:try_start_46 .. :try_end_57} :catchall_58

    return-object v4

    :catchall_58
    nop

    goto :goto_5f

    .line 344
    :catch_5a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_44

    .line 351
    :cond_5f
    :goto_5f
    sget-object p0, Lcom/chimeranft/core/Refl;->MISS:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_66

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    .line 203
    :try_start_1
    invoke-static {p0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 205
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    return-object p0

    :catchall_d
    return-object v0
.end method

.method public static final setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z
    .registers 5

    int-to-long v0, p2

    .line 302
    invoke-static {p0, p1, v0, v1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static final setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 281
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-nez p1, :cond_f

    return v0

    .line 283
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 284
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_45

    if-ne v1, v2, :cond_1a

    goto :goto_45

    .line 286
    :cond_1a
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3c

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_23

    goto :goto_3c

    .line 288
    :cond_23
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_32

    if-ne v1, v2, :cond_2a

    goto :goto_32

    .line 291
    :cond_2a
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4c

    :cond_32
    :goto_32
    long-to-int p3, p2

    int-to-short p2, p3

    .line 289
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4c

    :cond_3c
    :goto_3c
    long-to-int p3, p2

    .line 287
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4c

    .line 285
    :cond_45
    :goto_45
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_4e

    :goto_4c
    const/4 p0, 0x1

    return p0

    :catchall_4e
    return v0
.end method

.method public static final setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 264
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-nez p1, :cond_f

    return v0

    .line 266
    :cond_f
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    const/4 p0, 0x1

    return p0

    :catchall_14
    return v0
.end method

.method public static final setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 306
    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final staticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3

    const/4 v0, 0x0

    .line 427
    :try_start_1
    invoke-static {p0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 428
    :cond_8
    invoke-static {p0, p1}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    return-object p0

    :catchall_d
    return-object v0
.end method

.method public static final staticInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 3

    .line 402
    :try_start_0
    invoke-static {p0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_14

    .line 404
    :cond_7
    invoke-static {p0, p1}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_14

    :cond_e
    const/4 p1, 0x0

    .line 405
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return p0

    :catchall_14
    :goto_14
    return p2
.end method

.method private final subKey(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_36

    .line 359
    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_36

    .line 360
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2a

    const-string p2, "0"

    goto :goto_2e

    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_2e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 362
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_36
    :goto_36
    return-object p1
.end method
