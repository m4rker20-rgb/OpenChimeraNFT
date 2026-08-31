.class public final Lcom/chimeranft/core/GiftHook$applyChannelResale$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $fEntry:Lorg/json/JSONObject;

.field final synthetic $nanoton:J

.field final synthetic $signedId:J

.field final synthetic $stars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;JLorg/json/JSONObject;JJ)V
    .registers 9

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$signedId:J

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$fEntry:Lorg/json/JSONObject;

    iput-wide p5, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$stars:J

    iput-wide p7, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$nanoton:J

    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getSync$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$signedId:J

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$fEntry:Lorg/json/JSONObject;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chimeranft/core/SyncClient;->mergeRemoteGift(JLjava/lang/String;)Z

    move-result v0

    .line 1823
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignCache:Lcom/chimeranft/core/GiftHook$foreignCache$1;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getForeignCache$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftHook$foreignCache$1;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v3, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$signedId:J

    monitor-enter v1
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_73

    .line 1824
    :try_start_23
    # getter for: Lcom/chimeranft/core/GiftHook;->foreignCache:Lcom/chimeranft/core/GiftHook$foreignCache$1;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getForeignCache$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftHook$foreignCache$1;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chimeranft/core/GiftHook$foreignCache$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chimeranft/core/GiftHook$ForeignCache;
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_75

    .line 1823
    :try_start_31
    monitor-exit v1

    .line 1826
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$signedId:J

    # invokes: Lcom/chimeranft/core/GiftHook;->reloadProfileGifts(J)V
    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$reloadProfileGifts(Lcom/chimeranft/core/GiftHook;J)V

    .line 1827
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$signedId:J

    iget-wide v4, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$stars:J

    iget-wide v6, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->$nanoton:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chResale[signed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " stars="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nton="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " merge="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastResellDiag(Ljava/lang/String;)V

    return-void

    :catchall_73
    move-exception v0

    goto :goto_78

    :catchall_75
    move-exception v0

    .line 1823
    monitor-exit v1

    throw v0
    :try_end_78
    .catchall {:try_start_31 .. :try_end_78} :catchall_73

    .line 1830
    :goto_78
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$applyChannelResale$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chResellBg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
