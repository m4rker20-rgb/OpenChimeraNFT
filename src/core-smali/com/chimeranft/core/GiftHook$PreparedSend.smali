.class final Lcom/chimeranft/core/GiftHook$PreparedSend;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private availabilityIssued:J

.field private availabilityTotal:J

.field private b64:Ljava/lang/String;

.field private baseId:J

.field private canUpgrade:Z

.field private stars:J

.field private title:Ljava/lang/String;

.field private unique:Z

.field private upgradeStars:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const-string v0, ""

    iput-object v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->b64:Ljava/lang/String;

    .line 320
    iput-object v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAvailabilityIssued()J
    .registers 3

    .line 326
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->availabilityIssued:J

    return-wide v0
.end method

.method public final getAvailabilityTotal()J
    .registers 3

    .line 325
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->availabilityTotal:J

    return-wide v0
.end method

.method public final getB64()Ljava/lang/String;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->b64:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseId()J
    .registers 3

    .line 323
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->baseId:J

    return-wide v0
.end method

.method public final getCanUpgrade()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->canUpgrade:Z

    return v0
.end method

.method public final getStars()J
    .registers 3

    .line 322
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->stars:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnique()Z
    .registers 2

    .line 321
    iget-boolean v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->unique:Z

    return v0
.end method

.method public final getUpgradeStars()J
    .registers 3

    .line 324
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->upgradeStars:J

    return-wide v0
.end method

.method public final setAvailabilityIssued(J)V
    .registers 3

    .line 326
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->availabilityIssued:J

    return-void
.end method

.method public final setAvailabilityTotal(J)V
    .registers 3

    .line 325
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->availabilityTotal:J

    return-void
.end method

.method public final setB64(Ljava/lang/String;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->b64:Ljava/lang/String;

    return-void
.end method

.method public final setBaseId(J)V
    .registers 3

    .line 323
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->baseId:J

    return-void
.end method

.method public final setCanUpgrade(Z)V
    .registers 2

    .line 327
    iput-boolean p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->canUpgrade:Z

    return-void
.end method

.method public final setStars(J)V
    .registers 3

    .line 322
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->stars:J

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUnique(Z)V
    .registers 2

    .line 321
    iput-boolean p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->unique:Z

    return-void
.end method

.method public final setUpgradeStars(J)V
    .registers 3

    .line 324
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$PreparedSend;->upgradeStars:J

    return-void
.end method
