.class public final Lcom/chimeranft/core/CellStamps;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cellHash:[I

.field private final cellRef:[Ljava/lang/Object;

.field public evictions:J

.field private final msgHash:[I

.field private final msgQuote:[B

.field private final msgQuoteHash:[I

.field private final msgUid:[J

.field public quoteHits:J

.field public quoteMisses:J

.field public senderHits:J

.field public senderMisses:J

.field public stampHits:J

.field public stampMisses:J

.field private final stampedMessage:[I

.field private final stampedToken:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 13
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/chimeranft/core/CellStamps;->cellHash:[I

    .line 14
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/chimeranft/core/CellStamps;->cellRef:[Ljava/lang/Object;

    .line 15
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/chimeranft/core/CellStamps;->stampedMessage:[I

    .line 16
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/chimeranft/core/CellStamps;->stampedToken:[J

    const/16 v0, 0x400

    .line 17
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/chimeranft/core/CellStamps;->msgHash:[I

    .line 18
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/chimeranft/core/CellStamps;->msgUid:[J

    .line 31
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/chimeranft/core/CellStamps;->msgQuoteHash:[I

    .line 32
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/chimeranft/core/CellStamps;->msgQuote:[B

    return-void
.end method

.method private final findCell(Ljava/lang/Object;Z)I
    .registers 11

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 71
    :cond_4
    invoke-direct {p0, p1}, Lcom/chimeranft/core/CellStamps;->hash(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_d
    const/4 v6, 0x4

    if-ge v4, v6, :cond_49

    add-int v6, v2, v4

    and-int/lit16 v6, v6, 0xff

    .line 77
    iget-object v7, p0, Lcom/chimeranft/core/CellStamps;->cellHash:[I

    aget v7, v7, v6

    if-ne v7, v1, :cond_30

    .line 78
    iget-object v7, p0, Lcom/chimeranft/core/CellStamps;->cellRef:[Ljava/lang/Object;

    aget-object v7, v7, v6

    if-nez v7, :cond_22

    const/4 v7, 0x0

    goto :goto_28

    .line 79
    :cond_22
    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    :goto_28
    if-ne v7, p1, :cond_2b

    return v6

    :cond_2b
    if-nez v7, :cond_46

    if-gez v5, :cond_46

    goto :goto_45

    :cond_30
    if-nez v7, :cond_35

    if-gez v5, :cond_46

    goto :goto_45

    :cond_35
    if-gez v5, :cond_46

    .line 85
    iget-object v7, p0, Lcom/chimeranft/core/CellStamps;->cellRef:[Ljava/lang/Object;

    aget-object v7, v7, v6

    if-eqz v7, :cond_45

    .line 86
    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_46

    :cond_45
    :goto_45
    move v5, v6

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_49
    if-nez p2, :cond_4c

    return v0

    :cond_4c
    if-gez v5, :cond_56

    .line 93
    iget-wide v4, p0, Lcom/chimeranft/core/CellStamps;->evictions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/chimeranft/core/CellStamps;->evictions:J

    goto :goto_57

    :cond_56
    move v2, v5

    .line 95
    :goto_57
    iget-object p2, p0, Lcom/chimeranft/core/CellStamps;->cellRef:[Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v0, p2, v2

    .line 96
    iget-object p1, p0, Lcom/chimeranft/core/CellStamps;->cellHash:[I

    aput v1, p1, v2

    .line 97
    iget-object p1, p0, Lcom/chimeranft/core/CellStamps;->stampedMessage:[I

    aput v3, p1, v2

    .line 98
    iget-object p1, p0, Lcom/chimeranft/core/CellStamps;->stampedToken:[J

    const-wide/16 v0, 0x0

    aput-wide v0, p1, v2

    return v2
.end method

.method private final hash(Ljava/lang/Object;)I
    .registers 3

    .line 43
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    if-nez p1, :cond_a

    const/4 p1, 0x1

    :cond_a
    return p1
.end method


# virtual methods
.method public final hasHeavyText(Ljava/lang/Object;Lcom/chimeranft/core/CellStamps$HeavyTextResolver;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 129
    :cond_4
    invoke-direct {p0, p1}, Lcom/chimeranft/core/CellStamps;->hash(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v2, v1, 0x3ff

    .line 131
    iget-object v3, p0, Lcom/chimeranft/core/CellStamps;->msgQuoteHash:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-ne v3, v1, :cond_22

    iget-object v3, p0, Lcom/chimeranft/core/CellStamps;->msgQuote:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_22

    .line 132
    iget-wide p1, p0, Lcom/chimeranft/core/CellStamps;->quoteHits:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/chimeranft/core/CellStamps;->quoteHits:J

    if-ne v3, v6, :cond_21

    return v6

    :cond_21
    return v0

    .line 135
    :cond_22
    invoke-interface {p2, p1}, Lcom/chimeranft/core/CellStamps$HeavyTextResolver;->resolve(Ljava/lang/Object;)Z

    move-result p1

    .line 136
    iget-object p2, p0, Lcom/chimeranft/core/CellStamps;->msgQuoteHash:[I

    aput v1, p2, v2

    .line 137
    iget-object p2, p0, Lcom/chimeranft/core/CellStamps;->msgQuote:[B

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v6, 0x2

    :goto_30
    aput-byte v6, p2, v2

    .line 138
    iget-wide v0, p0, Lcom/chimeranft/core/CellStamps;->quoteMisses:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/chimeranft/core/CellStamps;->quoteMisses:J

    return p1
.end method

.method public final isStamped(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .registers 11

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/CellStamps;->findCell(Ljava/lang/Object;Z)I

    move-result p1

    const-wide/16 v1, 0x1

    if-gez p1, :cond_f

    .line 51
    iget-wide p1, p0, Lcom/chimeranft/core/CellStamps;->stampMisses:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/chimeranft/core/CellStamps;->stampMisses:J

    return v0

    .line 54
    :cond_f
    iget-object v3, p0, Lcom/chimeranft/core/CellStamps;->stampedToken:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-nez v3, :cond_28

    iget-object p3, p0, Lcom/chimeranft/core/CellStamps;->stampedMessage:[I

    aget p1, p3, p1

    invoke-direct {p0, p2}, Lcom/chimeranft/core/CellStamps;->hash(Ljava/lang/Object;)I

    move-result p2

    if-ne p1, p2, :cond_28

    .line 55
    iget-wide p1, p0, Lcom/chimeranft/core/CellStamps;->stampHits:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/chimeranft/core/CellStamps;->stampHits:J

    const/4 p1, 0x1

    return p1

    .line 58
    :cond_28
    iget-wide p1, p0, Lcom/chimeranft/core/CellStamps;->stampMisses:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/chimeranft/core/CellStamps;->stampMisses:J

    return v0
.end method

.method public final poll()Ljava/lang/String;
    .registers 17

    move-object/from16 v0, p0

    .line 147
    iget-wide v1, v0, Lcom/chimeranft/core/CellStamps;->stampHits:J

    iget-wide v3, v0, Lcom/chimeranft/core/CellStamps;->stampMisses:J

    .line 148
    iget-wide v5, v0, Lcom/chimeranft/core/CellStamps;->senderHits:J

    iget-wide v7, v0, Lcom/chimeranft/core/CellStamps;->senderMisses:J

    .line 149
    iget-wide v9, v0, Lcom/chimeranft/core/CellStamps;->quoteHits:J

    iget-wide v11, v0, Lcom/chimeranft/core/CellStamps;->quoteMisses:J

    .line 150
    iget-wide v13, v0, Lcom/chimeranft/core/CellStamps;->evictions:J

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cellStamps[hit="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " miss="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " senderHit="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " senderMiss="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " quoteHit="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " quoteMiss="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " evict="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final senderUid(Ljava/lang/Object;Lcom/chimeranft/core/CellStamps$UidResolver;)J
    .registers 8

    if-nez p1, :cond_5

    const-wide/16 p1, 0x0

    return-wide p1

    .line 104
    :cond_5
    invoke-direct {p0, p1}, Lcom/chimeranft/core/CellStamps;->hash(Ljava/lang/Object;)I

    move-result v0

    and-int/lit16 v1, v0, 0x3ff

    .line 106
    iget-object v2, p0, Lcom/chimeranft/core/CellStamps;->msgHash:[I

    aget v2, v2, v1

    const-wide/16 v3, 0x1

    if-ne v2, v0, :cond_1d

    .line 107
    iget-wide p1, p0, Lcom/chimeranft/core/CellStamps;->senderHits:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/chimeranft/core/CellStamps;->senderHits:J

    .line 108
    iget-object p1, p0, Lcom/chimeranft/core/CellStamps;->msgUid:[J

    aget-wide v0, p1, v1

    return-wide v0

    .line 110
    :cond_1d
    invoke-interface {p2, p1}, Lcom/chimeranft/core/CellStamps$UidResolver;->resolve(Ljava/lang/Object;)J

    move-result-wide p1

    .line 111
    iget-object v2, p0, Lcom/chimeranft/core/CellStamps;->msgHash:[I

    aput v0, v2, v1

    .line 112
    iget-object v0, p0, Lcom/chimeranft/core/CellStamps;->msgUid:[J

    aput-wide p1, v0, v1

    .line 113
    iget-wide v0, p0, Lcom/chimeranft/core/CellStamps;->senderMisses:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/chimeranft/core/CellStamps;->senderMisses:J

    return-wide p1
.end method

.method public final stamp(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/chimeranft/core/CellStamps;->findCell(Ljava/lang/Object;Z)I

    move-result p1

    if-gez p1, :cond_8

    return-void

    .line 65
    :cond_8
    iget-object v0, p0, Lcom/chimeranft/core/CellStamps;->stampedMessage:[I

    invoke-direct {p0, p2}, Lcom/chimeranft/core/CellStamps;->hash(Ljava/lang/Object;)I

    move-result p2

    aput p2, v0, p1

    .line 66
    iget-object p2, p0, Lcom/chimeranft/core/CellStamps;->stampedToken:[J

    aput-wide p3, p2, p1

    return-void
.end method
