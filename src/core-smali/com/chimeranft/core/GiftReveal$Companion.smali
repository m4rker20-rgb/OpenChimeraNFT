.class public final Lcom/chimeranft/core/GiftReveal$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/GiftReveal$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$coerce(Lcom/chimeranft/core/GiftReveal$Companion;[Ljava/lang/Class;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    .line 1826
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/GiftReveal$Companion;->coerce([Ljava/lang/Class;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$flexibleMethods(Lcom/chimeranft/core/GiftReveal$Companion;Ljava/lang/Class;Ljava/lang/String;I)[Ljava/lang/reflect/Method;
    .registers 4

    .line 1826
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/GiftReveal$Companion;->flexibleMethods(Ljava/lang/Class;Ljava/lang/String;I)[Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isUniqueGift(Lcom/chimeranft/core/GiftReveal$Companion;Ljava/lang/Object;)Z
    .registers 2

    .line 1826
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftReveal$Companion;->isUniqueGift(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final coerce([Ljava/lang/Class;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 14

    .line 1925
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1926
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_8c

    .line 1928
    aget-object v4, p1, v3

    .line 1929
    aget-object v5, p2, v3

    const/4 v6, 0x0

    if-nez v5, :cond_13

    .line 1931
    aput-object v6, v0, v3

    goto/16 :goto_87

    .line 1934
    :cond_13
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1935
    aput-object v5, v0, v3

    goto/16 :goto_87

    .line 1938
    :cond_1d
    instance-of v7, v5, Ljava/lang/Number;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Integer;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eqz v7, :cond_69

    .line 1941
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v7, :cond_5c

    if-ne v4, v7, :cond_2e

    goto :goto_5c

    :cond_2e
    if-eq v4, v10, :cond_4f

    if-ne v4, v9, :cond_33

    goto :goto_4f

    :cond_33
    if-eq v4, v8, :cond_39

    if-ne v4, v8, :cond_38

    goto :goto_39

    :cond_38
    return-object v6

    .line 1946
    :cond_39
    :goto_39
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_47

    const/4 v4, 0x1

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    :goto_48
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_87

    .line 1944
    :cond_4f
    :goto_4f
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_87

    .line 1942
    :cond_5c
    :goto_5c
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_87

    .line 1950
    :cond_69
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_8b

    if-eq v4, v8, :cond_85

    if-ne v4, v8, :cond_72

    goto :goto_85

    :cond_72
    if-eq v4, v10, :cond_78

    if-ne v4, v9, :cond_77

    goto :goto_78

    :cond_77
    return-object v6

    .line 1955
    :cond_78
    :goto_78
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_87

    .line 1953
    :cond_85
    :goto_85
    aput-object v5, v0, v3

    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_8b
    return-object v6

    :cond_8c
    return-object v0
.end method

.method private final flexibleMethods(Ljava/lang/Class;Ljava/lang/String;I)[Ljava/lang/reflect/Method;
    .registers 9

    .line 1897
    # getter for: Lcom/chimeranft/core/GiftReveal;->FLEX_METHODS:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getFLEX_METHODS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1e

    .line 1900
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1901
    # getter for: Lcom/chimeranft/core/GiftReveal;->FLEX_METHODS:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getFLEX_METHODS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1e

    move-object v0, v1

    .line 1904
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1905
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3b

    return-object v2

    .line 1907
    :cond_3b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_48
    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 1910
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-static {v3}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4

    if-eq v4, p3, :cond_65

    goto :goto_48

    :cond_65
    const/4 v4, 0x1

    .line 1913
    :try_start_66
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_69

    .line 1917
    :catchall_69
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_6d
    const/4 p1, 0x0

    .line 1971
    new-array p1, p1, [Ljava/lang/reflect/Method;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 1919
    check-cast p1, [Ljava/lang/reflect/Method;

    .line 1920
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/reflect/Method;

    if-nez p2, :cond_7f

    goto :goto_80

    :cond_7f
    move-object p1, p2

    :goto_80
    return-object p1
.end method

.method private final isUniqueGift(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 1883
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unique"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :catchall_22
    :cond_22
    return v0
.end method


# virtual methods
.method public final offerIdForMessage(I)Ljava/lang/String;
    .registers 3

    .line 1864
    # getter for: Lcom/chimeranft/core/GiftReveal;->offerMessages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getOfferMessages$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_12

    const-string p1, ""

    :cond_12
    return-object p1
.end method

.method public final rememberOfferMessage(ILjava/lang/String;)V
    .registers 5

    .line 1857
    # getter for: Lcom/chimeranft/core/GiftReveal;->offerMessages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getOfferMessages$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_13

    # getter for: Lcom/chimeranft/core/GiftReveal;->offerMessages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getOfferMessages$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1858
    :cond_13
    # getter for: Lcom/chimeranft/core/GiftReveal;->offerMessages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getOfferMessages$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
