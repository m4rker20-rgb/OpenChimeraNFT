.class public final Lcom/chimeranft/core/GiftFastLane$cache$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x80

    .line 17
    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public final bridge containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge containsKey(Ljava/lang/String;)Z
    .registers 2

    .line 17
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge containsValue(Lcom/chimeranft/core/GiftFastLane$Prepared;)Z
    .registers 2

    .line 17
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 17
    instance-of v0, p1, Lcom/chimeranft/core/GiftFastLane$Prepared;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lcom/chimeranft/core/GiftFastLane$Prepared;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->containsValue(Lcom/chimeranft/core/GiftFastLane$Prepared;)Z

    move-result p1

    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftFastLane$cache$1;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge get(Ljava/lang/Object;)Lcom/chimeranft/core/GiftFastLane$Prepared;
    .registers 3

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->get(Ljava/lang/String;)Lcom/chimeranft/core/GiftFastLane$Prepared;

    move-result-object p1

    return-object p1
.end method

.method public bridge get(Ljava/lang/String;)Lcom/chimeranft/core/GiftFastLane$Prepared;
    .registers 2

    .line 17
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/GiftFastLane$Prepared;

    return-object p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->get(Ljava/lang/String;)Lcom/chimeranft/core/GiftFastLane$Prepared;

    move-result-object p1

    return-object p1
.end method

.method public bridge getEntries()Ljava/util/Set;
    .registers 2

    .line 17
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .registers 2

    .line 17
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Lcom/chimeranft/core/GiftFastLane$Prepared;)Lcom/chimeranft/core/GiftFastLane$Prepared;
    .registers 4

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_5

    return-object p2

    :cond_5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/GiftFastLane$cache$1;->getOrDefault(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Lcom/chimeranft/core/GiftFastLane$Prepared;

    move-result-object p1

    return-object p1
.end method

.method public bridge getOrDefault(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Lcom/chimeranft/core/GiftFastLane$Prepared;
    .registers 3

    .line 17
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/GiftFastLane$Prepared;

    return-object p1
.end method

.method public final bridge synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_5

    return-object p2

    :cond_5
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/chimeranft/core/GiftFastLane$Prepared;

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/GiftFastLane$cache$1;->getOrDefault(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Lcom/chimeranft/core/GiftFastLane$Prepared;

    move-result-object p1

    return-object p1
.end method

.method public bridge getSize()I
    .registers 2

    .line 17
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .registers 2

    .line 17
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftFastLane$cache$1;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge remove(Ljava/lang/Object;)Lcom/chimeranft/core/GiftFastLane$Prepared;
    .registers 3

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->remove(Ljava/lang/String;)Lcom/chimeranft/core/GiftFastLane$Prepared;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Ljava/lang/String;)Lcom/chimeranft/core/GiftFastLane$Prepared;
    .registers 2

    .line 17
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chimeranft/core/GiftFastLane$Prepared;

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/GiftFastLane$cache$1;->remove(Ljava/lang/String;)Lcom/chimeranft/core/GiftFastLane$Prepared;

    move-result-object p1

    return-object p1
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 17
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p2, Lcom/chimeranft/core/GiftFastLane$Prepared;

    if-nez v0, :cond_b

    return v1

    :cond_b
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/chimeranft/core/GiftFastLane$Prepared;

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/GiftFastLane$cache$1;->remove(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Z

    move-result p1

    return p1
.end method

.method public bridge remove(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Z
    .registers 3

    .line 17
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3

    .line 19
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftFastLane$cache$1;->size()I

    move-result p1

    # getter for: Lcom/chimeranft/core/GiftFastLane;->MAX_PREPARED:I
    invoke-static {}, Lcom/chimeranft/core/GiftFastLane;->access$getMAX_PREPARED$cp()I

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

    .line 17
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftFastLane$cache$1;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/chimeranft/core/GiftFastLane$cache$1;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
