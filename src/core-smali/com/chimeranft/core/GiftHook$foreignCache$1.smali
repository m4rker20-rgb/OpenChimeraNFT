.class public final Lcom/chimeranft/core/GiftHook$foreignCache$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    .line 56
    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public bridge containsKey(Ljava/lang/Long;)Z
    .registers 2

    .line 56
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 56
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->containsKey(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public bridge containsValue(Lcom/chimeranft/core/GiftHook$ForeignCache;)Z
    .registers 2

    .line 56
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 56
    instance-of v0, p1, Lcom/chimeranft/core/GiftHook$ForeignCache;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lcom/chimeranft/core/GiftHook$ForeignCache;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->containsValue(Lcom/chimeranft/core/GiftHook$ForeignCache;)Z

    move-result p1

    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge get(Ljava/lang/Long;)Lcom/chimeranft/core/GiftHook$ForeignCache;
    .registers 2

    .line 56
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/GiftHook$ForeignCache;

    return-object p1
.end method

.method public final bridge get(Ljava/lang/Object;)Lcom/chimeranft/core/GiftHook$ForeignCache;
    .registers 3

    .line 56
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->get(Ljava/lang/Long;)Lcom/chimeranft/core/GiftHook$ForeignCache;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 56
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->get(Ljava/lang/Long;)Lcom/chimeranft/core/GiftHook$ForeignCache;

    move-result-object p1

    return-object p1
.end method

.method public bridge getEntries()Ljava/util/Set;
    .registers 2

    .line 56
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .registers 2

    .line 56
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getOrDefault(Ljava/lang/Long;Lcom/chimeranft/core/GiftHook$ForeignCache;)Lcom/chimeranft/core/GiftHook$ForeignCache;
    .registers 3

    .line 56
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/GiftHook$ForeignCache;

    return-object p1
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Lcom/chimeranft/core/GiftHook$ForeignCache;)Lcom/chimeranft/core/GiftHook$ForeignCache;
    .registers 4

    .line 56
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_5

    return-object p2

    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->getOrDefault(Ljava/lang/Long;Lcom/chimeranft/core/GiftHook$ForeignCache;)Lcom/chimeranft/core/GiftHook$ForeignCache;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 56
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_5

    return-object p2

    :cond_5
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/chimeranft/core/GiftHook$ForeignCache;

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->getOrDefault(Ljava/lang/Long;Lcom/chimeranft/core/GiftHook$ForeignCache;)Lcom/chimeranft/core/GiftHook$ForeignCache;

    move-result-object p1

    return-object p1
.end method

.method public bridge getSize()I
    .registers 2

    .line 56
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .registers 2

    .line 56
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Ljava/lang/Long;)Lcom/chimeranft/core/GiftHook$ForeignCache;
    .registers 2

    .line 56
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/GiftHook$ForeignCache;

    return-object p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Lcom/chimeranft/core/GiftHook$ForeignCache;
    .registers 3

    .line 56
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->remove(Ljava/lang/Long;)Lcom/chimeranft/core/GiftHook$ForeignCache;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 56
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->remove(Ljava/lang/Long;)Lcom/chimeranft/core/GiftHook$ForeignCache;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Ljava/lang/Long;Lcom/chimeranft/core/GiftHook$ForeignCache;)Z
    .registers 3

    .line 56
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 56
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p2, Lcom/chimeranft/core/GiftHook$ForeignCache;

    if-nez v0, :cond_b

    return v1

    :cond_b
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/chimeranft/core/GiftHook$ForeignCache;

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->remove(Ljava/lang/Long;Lcom/chimeranft/core/GiftHook$ForeignCache;)Z

    move-result p1

    return p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3

    .line 58
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->size()I

    move-result p1

    # getter for: Lcom/chimeranft/core/GiftHook;->FOREIGN_CACHE_MAX:I
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getFOREIGN_CACHE_MAX$cp()I

    move-result v0

    if-le p1, v0, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge size()I
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
