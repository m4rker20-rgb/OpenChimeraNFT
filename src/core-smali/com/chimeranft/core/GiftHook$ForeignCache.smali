.class final Lcom/chimeranft/core/GiftHook$ForeignCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private byB64:Ljava/util/HashMap;

.field private complete:Z

.field private giftCount:I

.field private processedCount:I

.field private recordVersion:J

.field private sig:J

.field private wrappers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->wrappers:Ljava/util/List;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->byB64:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getByB64()Ljava/util/HashMap;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->byB64:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getComplete()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->complete:Z

    return v0
.end method

.method public final getGiftCount()I
    .registers 2

    .line 299
    iget v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->giftCount:I

    return v0
.end method

.method public final getProcessedCount()I
    .registers 2

    .line 300
    iget v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->processedCount:I

    return v0
.end method

.method public final getRecordVersion()J
    .registers 3

    .line 298
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->recordVersion:J

    return-wide v0
.end method

.method public final getSig()J
    .registers 3

    .line 297
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->sig:J

    return-wide v0
.end method

.method public final getWrappers()Ljava/util/List;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->wrappers:Ljava/util/List;

    return-object v0
.end method

.method public final setByB64(Ljava/util/HashMap;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->byB64:Ljava/util/HashMap;

    return-void
.end method

.method public final setComplete(Z)V
    .registers 2

    .line 301
    iput-boolean p1, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->complete:Z

    return-void
.end method

.method public final setGiftCount(I)V
    .registers 2

    .line 299
    iput p1, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->giftCount:I

    return-void
.end method

.method public final setProcessedCount(I)V
    .registers 2

    .line 300
    iput p1, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->processedCount:I

    return-void
.end method

.method public final setRecordVersion(J)V
    .registers 3

    .line 298
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->recordVersion:J

    return-void
.end method

.method public final setSig(J)V
    .registers 3

    .line 297
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->sig:J

    return-void
.end method

.method public final setWrappers(Ljava/util/List;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$ForeignCache;->wrappers:Ljava/util/List;

    return-void
.end method
