.class final Lcom/chimeranft/core/GiftHook$MarketPrepared;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nanoTon:J

.field private rawB64:Ljava/lang/String;

.field private stars:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lcom/chimeranft/core/GiftHook$MarketPrepared;->rawB64:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNanoTon()J
    .registers 3

    .line 308
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$MarketPrepared;->nanoTon:J

    return-wide v0
.end method

.method public final getRawB64()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$MarketPrepared;->rawB64:Ljava/lang/String;

    return-object v0
.end method

.method public final getStars()J
    .registers 3

    .line 307
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$MarketPrepared;->stars:J

    return-wide v0
.end method

.method public final setNanoTon(J)V
    .registers 3

    .line 308
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$MarketPrepared;->nanoTon:J

    return-void
.end method

.method public final setRawB64(Ljava/lang/String;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$MarketPrepared;->rawB64:Ljava/lang/String;

    return-void
.end method

.method public final setStars(J)V
    .registers 3

    .line 307
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$MarketPrepared;->stars:J

    return-void
.end method
