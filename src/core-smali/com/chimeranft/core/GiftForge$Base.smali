.class public final Lcom/chimeranft/core/GiftForge$Base;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:J

.field private final issued:J

.field private final obj:Ljava/lang/Object;

.field private final remains:J

.field private final soldOut:Z

.field private final stars:J

.field private final sticker:Ljava/lang/Object;

.field private final title:Ljava/lang/String;

.field private final total:J

.field private final upgradeStars:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JJJJJZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 17

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/chimeranft/core/GiftForge$Base;->id:J

    .line 30
    iput-object p3, p0, Lcom/chimeranft/core/GiftForge$Base;->title:Ljava/lang/String;

    .line 31
    iput-wide p4, p0, Lcom/chimeranft/core/GiftForge$Base;->stars:J

    .line 32
    iput-wide p6, p0, Lcom/chimeranft/core/GiftForge$Base;->upgradeStars:J

    .line 33
    iput-wide p8, p0, Lcom/chimeranft/core/GiftForge$Base;->total:J

    .line 34
    iput-wide p10, p0, Lcom/chimeranft/core/GiftForge$Base;->issued:J

    .line 35
    iput-wide p12, p0, Lcom/chimeranft/core/GiftForge$Base;->remains:J

    .line 36
    iput-boolean p14, p0, Lcom/chimeranft/core/GiftForge$Base;->soldOut:Z

    .line 37
    iput-object p15, p0, Lcom/chimeranft/core/GiftForge$Base;->sticker:Ljava/lang/Object;

    move-object/from16 p1, p16

    .line 38
    iput-object p1, p0, Lcom/chimeranft/core/GiftForge$Base;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getId()J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Base;->id:J

    return-wide v0
.end method

.method public final getIssued()J
    .registers 3

    .line 34
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Base;->issued:J

    return-wide v0
.end method

.method public final getLimited()Z
    .registers 6

    .line 41
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Base;->total:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final getObj()Ljava/lang/Object;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Base;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRemains()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Base;->remains:J

    return-wide v0
.end method

.method public final getSoldOut()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/chimeranft/core/GiftForge$Base;->soldOut:Z

    return v0
.end method

.method public final getStars()J
    .registers 3

    .line 31
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Base;->stars:J

    return-wide v0
.end method

.method public final getSticker()Ljava/lang/Object;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Base;->sticker:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Base;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotal()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Base;->total:J

    return-wide v0
.end method

.method public final getUpgradable()Z
    .registers 6

    .line 40
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Base;->upgradeStars:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final getUpgradeStars()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Base;->upgradeStars:J

    return-wide v0
.end method
