.class public final Lcom/chimeranft/core/LongStamps;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final keys:[J

.field private final mask:I

.field private final stamps:[J

.field private final tokens:[I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    :goto_5
    if-ge v0, p1, :cond_e

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_e

    shl-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 15
    :cond_e
    new-array p1, v0, [J

    iput-object p1, p0, Lcom/chimeranft/core/LongStamps;->keys:[J

    .line 16
    new-array p1, v0, [J

    iput-object p1, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    .line 17
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/chimeranft/core/LongStamps;->tokens:[I

    add-int/lit8 v0, v0, -0x1

    .line 18
    iput v0, p0, Lcom/chimeranft/core/LongStamps;->mask:I

    return-void
.end method

.method private final slot(J)I
    .registers 5

    const-wide v0, -0x61c8864680b583ebL

    mul-long p1, p1, v0

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    .line 23
    iget v0, p0, Lcom/chimeranft/core/LongStamps;->mask:I

    int-to-long v0, v0

    and-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method


# virtual methods
.method public final clear()V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/chimeranft/core/LongStamps;->keys:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 57
    iget-object v0, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 58
    iget-object v0, p0, Lcom/chimeranft/core/LongStamps;->tokens:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public final forget(J)V
    .registers 8

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/LongStamps;->slot(J)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/chimeranft/core/LongStamps;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v4, v2, p1

    if-nez v4, :cond_19

    const-wide/16 p1, 0x0

    .line 64
    aput-wide p1, v1, v0

    .line 65
    iget-object v1, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    aput-wide p1, v1, v0

    .line 66
    iget-object p1, p0, Lcom/chimeranft/core/LongStamps;->tokens:[I

    const/4 p2, 0x0

    aput p2, p1, v0

    :cond_19
    return-void
.end method

.method public final get(J)J
    .registers 7

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/LongStamps;->slot(J)I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/chimeranft/core/LongStamps;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_11

    iget-object p1, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    aget-wide v0, p1, v0

    return-wide v0

    :cond_11
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final put(JJ)V
    .registers 7

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/LongStamps;->slot(J)I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/chimeranft/core/LongStamps;->keys:[J

    aput-wide p1, v1, v0

    .line 34
    iget-object p1, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    aput-wide p3, p1, v0

    return-void
.end method

.method public final throttled(JIJJ)Z
    .registers 13

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/LongStamps;->slot(J)I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/chimeranft/core/LongStamps;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v4, v2, p1

    if-nez v4, :cond_1e

    iget-object v2, p0, Lcom/chimeranft/core/LongStamps;->tokens:[I

    aget v2, v2, v0

    if-ne v2, p3, :cond_1e

    iget-object v2, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    aget-wide v3, v2, v0

    sub-long v3, p4, v3

    cmp-long v2, v3, p6

    if-gez v2, :cond_1e

    const/4 p1, 0x1

    return p1

    .line 49
    :cond_1e
    aput-wide p1, v1, v0

    .line 50
    iget-object p1, p0, Lcom/chimeranft/core/LongStamps;->tokens:[I

    aput p3, p1, v0

    .line 51
    iget-object p1, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    aput-wide p4, p1, v0

    const/4 p1, 0x0

    return p1
.end method

.method public final throttled(JJJ)Z
    .registers 12

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/LongStamps;->slot(J)I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/chimeranft/core/LongStamps;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v4, v2, p1

    if-nez v4, :cond_18

    iget-object v2, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    aget-wide v3, v2, v0

    sub-long v3, p3, v3

    cmp-long v2, v3, p5

    if-gez v2, :cond_18

    const/4 p1, 0x1

    return p1

    .line 40
    :cond_18
    aput-wide p1, v1, v0

    .line 41
    iget-object p1, p0, Lcom/chimeranft/core/LongStamps;->stamps:[J

    aput-wide p3, p1, v0

    .line 42
    iget-object p1, p0, Lcom/chimeranft/core/LongStamps;->tokens:[I

    const/4 p2, 0x0

    aput p2, p1, v0

    return p2
.end method
