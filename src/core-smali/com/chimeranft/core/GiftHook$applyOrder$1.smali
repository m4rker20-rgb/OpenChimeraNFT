.class public final Lcom/chimeranft/core/GiftHook$applyOrder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic $keys:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$applyOrder$1;->$keys:Ljava/util/ArrayList;

    .line 7466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(II)I
    .registers 11

    .line 7468
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$applyOrder$1;->$keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    .line 7469
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$applyOrder$1;->$keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    const/4 v0, 0x0

    .line 7470
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    const/4 v5, -0x1

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-eqz v7, :cond_21

    cmp-long p1, v1, v3

    if-gez p1, :cond_20

    return v5

    :cond_20
    return v6

    .line 7471
    :cond_21
    aget-wide v1, p1, v6

    aget-wide p1, p2, v6

    cmp-long v3, v1, p1

    if-gez v3, :cond_2a

    return v5

    :cond_2a
    cmp-long v3, v1, p1

    if-lez v3, :cond_2f

    return v6

    :cond_2f
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 7466
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/GiftHook$applyOrder$1;->compare(II)I

    move-result p1

    return p1
.end method
