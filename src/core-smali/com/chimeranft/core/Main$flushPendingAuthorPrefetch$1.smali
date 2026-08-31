.class public final Lcom/chimeranft/core/Main$flushPendingAuthorPrefetch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $batch:[J

.field final synthetic $sc:Lcom/chimeranft/core/SyncClient;


# direct methods
.method constructor <init>([JLcom/chimeranft/core/SyncClient;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$flushPendingAuthorPrefetch$1;->$batch:[J

    iput-object p2, p0, Lcom/chimeranft/core/Main$flushPendingAuthorPrefetch$1;->$sc:Lcom/chimeranft/core/SyncClient;

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1665
    iget-object v0, p0, Lcom/chimeranft/core/Main$flushPendingAuthorPrefetch$1;->$batch:[J

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1b

    .line 1667
    iget-object v2, p0, Lcom/chimeranft/core/Main$flushPendingAuthorPrefetch$1;->$batch:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_18

    .line 1672
    :try_start_10
    iget-object v2, p0, Lcom/chimeranft/core/Main$flushPendingAuthorPrefetch$1;->$sc:Lcom/chimeranft/core/SyncClient;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lcom/chimeranft/core/SyncClient;->prefetchRemoteState(J)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_18

    :catchall_18
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1b
    return-void
.end method
