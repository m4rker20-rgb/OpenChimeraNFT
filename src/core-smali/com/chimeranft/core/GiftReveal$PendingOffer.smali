.class final Lcom/chimeranft/core/GiftReveal$PendingOffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b64:Ljava/lang/String;

.field private expiresAt:I

.field private nanoTon:J

.field private peerId:J

.field private stars:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    const-string v0, ""

    iput-object v0, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->b64:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getB64()Ljava/lang/String;
    .registers 2

    .line 894
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->b64:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresAt()I
    .registers 2

    .line 898
    iget v0, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->expiresAt:I

    return v0
.end method

.method public final getNanoTon()J
    .registers 3

    .line 897
    iget-wide v0, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->nanoTon:J

    return-wide v0
.end method

.method public final getPeerId()J
    .registers 3

    .line 895
    iget-wide v0, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->peerId:J

    return-wide v0
.end method

.method public final getStars()J
    .registers 3

    .line 896
    iget-wide v0, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->stars:J

    return-wide v0
.end method

.method public final setB64(Ljava/lang/String;)V
    .registers 2

    .line 894
    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->b64:Ljava/lang/String;

    return-void
.end method

.method public final setExpiresAt(I)V
    .registers 2

    .line 898
    iput p1, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->expiresAt:I

    return-void
.end method

.method public final setNanoTon(J)V
    .registers 3

    .line 897
    iput-wide p1, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->nanoTon:J

    return-void
.end method

.method public final setPeerId(J)V
    .registers 3

    .line 895
    iput-wide p1, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->peerId:J

    return-void
.end method

.method public final setStars(J)V
    .registers 3

    .line 896
    iput-wide p1, p0, Lcom/chimeranft/core/GiftReveal$PendingOffer;->stars:J

    return-void
.end method
