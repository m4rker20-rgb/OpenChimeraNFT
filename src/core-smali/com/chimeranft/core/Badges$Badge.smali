.class public final Lcom/chimeranft/core/Badges$Badge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final botId:J

.field private volatile cachedBv:Ljava/lang/Object;

.field private volatile cachedCombinedBv:Ljava/lang/Object;

.field private volatile cachedCombinedExteraBadge:Ljava/lang/Object;

.field private volatile cachedExteraBadge:Ljava/lang/Object;

.field private final combinedIcon:J

.field private volatile combinedVerdict:I

.field private final entityId:J

.field private final icon:J

.field private final supporter:Z

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJJZLjava/lang/String;)V
    .registers 11

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/Badges$Badge;->entityId:J

    iput-wide p3, p0, Lcom/chimeranft/core/Badges$Badge;->botId:J

    iput-wide p5, p0, Lcom/chimeranft/core/Badges$Badge;->icon:J

    .line 72
    iput-wide p7, p0, Lcom/chimeranft/core/Badges$Badge;->combinedIcon:J

    .line 73
    iput-boolean p9, p0, Lcom/chimeranft/core/Badges$Badge;->supporter:Z

    if-nez p10, :cond_11

    .line 91
    const-string p10, ""

    :cond_11
    iput-object p10, p0, Lcom/chimeranft/core/Badges$Badge;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bv(J)Ljava/lang/Object;
    .registers 8

    .line 94
    iget-wide v0, p0, Lcom/chimeranft/core/Badges$Badge;->combinedIcon:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    cmp-long v2, p1, v0

    if-nez v2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_14

    .line 95
    iget-object v1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedCombinedBv:Ljava/lang/Object;

    goto :goto_16

    :cond_14
    iget-object v1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedBv:Ljava/lang/Object;

    :goto_16
    if-nez v1, :cond_28

    .line 98
    iget-object v1, p0, Lcom/chimeranft/core/Badges$Badge;->text:Ljava/lang/String;

    iget-wide v2, p0, Lcom/chimeranft/core/Badges$Badge;->botId:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/chimeranft/core/Verification;->build(JLjava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_25

    .line 99
    iput-object p1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedCombinedBv:Ljava/lang/Object;

    return-object p1

    :cond_25
    iput-object p1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedBv:Ljava/lang/Object;

    return-object p1

    :cond_28
    return-object v1
.end method

.method public final exteraBadge(J)Ljava/lang/Object;
    .registers 11

    .line 104
    iget-wide v0, p0, Lcom/chimeranft/core/Badges$Badge;->combinedIcon:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-lez v6, :cond_10

    cmp-long v2, p1, v0

    if-nez v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_16

    .line 105
    iget-object v1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedCombinedExteraBadge:Ljava/lang/Object;

    goto :goto_18

    :cond_16
    iget-object v1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedExteraBadge:Ljava/lang/Object;

    :goto_18
    if-eqz v1, :cond_1b

    return-object v1

    :cond_1b
    const/4 v1, 0x0

    .line 109
    :try_start_1c
    const-string v2, "com.exteragram.messenger.api.dto.BadgeDTO"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_25

    return-object v1

    :cond_25
    const/4 v3, 0x2

    .line 111
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/chimeranft/core/Badges$Badge;->text:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_4c

    .line 114
    iput-object p1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedCombinedExteraBadge:Ljava/lang/Object;

    return-object p1

    :cond_4c
    iput-object p1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedExteraBadge:Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_1c .. :try_end_4e} :catchall_4f

    return-object p1

    :catchall_4f
    return-object v1
.end method

.method public final getBotId()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/chimeranft/core/Badges$Badge;->botId:J

    return-wide v0
.end method

.method public final getCachedBv()Ljava/lang/Object;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/chimeranft/core/Badges$Badge;->cachedBv:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCachedCombinedBv()Ljava/lang/Object;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/chimeranft/core/Badges$Badge;->cachedCombinedBv:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCachedCombinedExteraBadge()Ljava/lang/Object;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/chimeranft/core/Badges$Badge;->cachedCombinedExteraBadge:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCachedExteraBadge()Ljava/lang/Object;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/chimeranft/core/Badges$Badge;->cachedExteraBadge:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCombinedIcon()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/chimeranft/core/Badges$Badge;->combinedIcon:J

    return-wide v0
.end method

.method public final getCombinedVerdict()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/chimeranft/core/Badges$Badge;->combinedVerdict:I

    return v0
.end method

.method public final getEntityId()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/chimeranft/core/Badges$Badge;->entityId:J

    return-wide v0
.end method

.method public final getIcon()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/chimeranft/core/Badges$Badge;->icon:J

    return-wide v0
.end method

.method public final getSupporter()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/chimeranft/core/Badges$Badge;->supporter:Z

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/chimeranft/core/Badges$Badge;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final setCachedBv(Ljava/lang/Object;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedBv:Ljava/lang/Object;

    return-void
.end method

.method public final setCachedCombinedBv(Ljava/lang/Object;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedCombinedBv:Ljava/lang/Object;

    return-void
.end method

.method public final setCachedCombinedExteraBadge(Ljava/lang/Object;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedCombinedExteraBadge:Ljava/lang/Object;

    return-void
.end method

.method public final setCachedExteraBadge(Ljava/lang/Object;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/chimeranft/core/Badges$Badge;->cachedExteraBadge:Ljava/lang/Object;

    return-void
.end method

.method public final setCombinedVerdict(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/chimeranft/core/Badges$Badge;->combinedVerdict:I

    return-void
.end method
