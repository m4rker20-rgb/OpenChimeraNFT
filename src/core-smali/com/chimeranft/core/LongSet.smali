.class public final Lcom/chimeranft/core/LongSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private keys:[J

.field private mask:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 13
    invoke-direct {p0, v0}, Lcom/chimeranft/core/LongSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/chimeranft/core/LongSet;->keys:[J

    .line 16
    invoke-direct {p0, p1}, Lcom/chimeranft/core/LongSet;->allocate(I)V

    return-void
.end method

.method private final allocate(I)V
    .registers 4

    const/4 v0, 0x4

    .line 20
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0x8

    :goto_9
    if-ge v0, p1, :cond_12

    const/high16 v1, 0x200000

    if-ge v0, v1, :cond_12

    shl-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 23
    :cond_12
    new-array p1, v0, [J

    iput-object p1, p0, Lcom/chimeranft/core/LongSet;->keys:[J

    add-int/lit8 v0, v0, -0x1

    .line 24
    iput v0, p0, Lcom/chimeranft/core/LongSet;->mask:I

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/chimeranft/core/LongSet;->size:I

    return-void
.end method

.method private final grow()V
    .registers 9

    .line 68
    iget-object v0, p0, Lcom/chimeranft/core/LongSet;->keys:[J

    .line 69
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/chimeranft/core/LongSet;->allocate(I)V

    .line 70
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_15

    .line 71
    invoke-virtual {p0, v3, v4}, Lcom/chimeranft/core/LongSet;->add(J)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private final spread(J)I
    .registers 5

    const-wide v0, -0x61c8864680b583ebL

    mul-long p1, p1, v0

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    long-to-int p2, p1

    const p1, 0x7fffffff

    and-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final add(J)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    goto :goto_26

    .line 53
    :cond_7
    iget v2, p0, Lcom/chimeranft/core/LongSet;->size:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/chimeranft/core/LongSet;->keys:[J

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_17

    invoke-direct {p0}, Lcom/chimeranft/core/LongSet;->grow()V

    .line 54
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/LongSet;->spread(J)I

    move-result v2

    iget v3, p0, Lcom/chimeranft/core/LongSet;->mask:I

    :goto_1d
    and-int/2addr v2, v3

    .line 56
    iget-object v3, p0, Lcom/chimeranft/core/LongSet;->keys:[J

    aget-wide v4, v3, v2

    cmp-long v6, v4, p1

    if-nez v6, :cond_27

    :goto_26
    return-void

    :cond_27
    cmp-long v6, v4, v0

    if-nez v6, :cond_34

    .line 59
    aput-wide p1, v3, v2

    .line 60
    iget p1, p0, Lcom/chimeranft/core/LongSet;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/chimeranft/core/LongSet;->size:I

    return-void

    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 63
    iget v3, p0, Lcom/chimeranft/core/LongSet;->mask:I

    goto :goto_1d
.end method

.method public final contains(J)Z
    .registers 13

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2b

    .line 36
    iget v3, p0, Lcom/chimeranft/core/LongSet;->size:I

    if-nez v3, :cond_c

    goto :goto_2b

    .line 37
    :cond_c
    iget-object v3, p0, Lcom/chimeranft/core/LongSet;->keys:[J

    .line 38
    iget v4, p0, Lcom/chimeranft/core/LongSet;->mask:I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/LongSet;->spread(J)I

    move-result v5

    and-int/2addr v5, v4

    const/4 v6, 0x0

    :goto_16
    if-gt v6, v4, :cond_2b

    .line 42
    aget-wide v7, v3, v5

    cmp-long v9, v7, p1

    if-nez v9, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    cmp-long v9, v7, v1

    if-nez v9, :cond_25

    return v0

    :cond_25
    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_2b
    :goto_2b
    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 77
    iget v0, p0, Lcom/chimeranft/core/LongSet;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/chimeranft/core/LongSet;->size:I

    return v0
.end method
