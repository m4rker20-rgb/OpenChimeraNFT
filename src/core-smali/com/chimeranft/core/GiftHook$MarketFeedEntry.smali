.class final Lcom/chimeranft/core/GiftHook$MarketFeedEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile fetchedMs:J

.field private final fetching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile ready:Ljava/util/concurrent/CountDownLatch;

.field private volatile rows:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->fetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final getFetchedMs()J
    .registers 3

    .line 313
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->fetchedMs:J

    return-wide v0
.end method

.method public final getFetching()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->fetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final getReady()Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->ready:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public final getRows()Lorg/json/JSONArray;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->rows:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final setFetchedMs(J)V
    .registers 3

    .line 313
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->fetchedMs:J

    return-void
.end method

.method public final setReady(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->ready:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public final setRows(Lorg/json/JSONArray;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$MarketFeedEntry;->rows:Lorg/json/JSONArray;

    return-void
.end method
