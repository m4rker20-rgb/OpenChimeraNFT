.class public final Lcom/chimeranft/core/Main$Companion$init$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $gh0:Lcom/chimeranft/core/GiftHook;

.field final synthetic $remote0:Lcom/chimeranft/core/RemoteIdentity;

.field final synthetic $sync0:Lcom/chimeranft/core/SyncClient;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Lcom/chimeranft/core/SyncClient;Lcom/chimeranft/core/RemoteIdentity;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/Main$Companion$init$5;->$gh0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/Main$Companion$init$5;->$sync0:Lcom/chimeranft/core/SyncClient;

    iput-object p3, p0, Lcom/chimeranft/core/Main$Companion$init$5;->$remote0:Lcom/chimeranft/core/RemoteIdentity;

    .line 4216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 4220
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$init$5;->$gh0:Lcom/chimeranft/core/GiftHook;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->warmInjection()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v0

    .line 4223
    const-string v1, "init.warmInjection"

    invoke-static {v1, v0}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4230
    :goto_f
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$init$5;->$sync0:Lcom/chimeranft/core/SyncClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->snapshotCachedRecords()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4234
    :try_start_2c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 4235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 4236
    iget-object v4, p0, Lcom/chimeranft/core/Main$Companion$init$5;->$remote0:Lcom/chimeranft/core/RemoteIdentity;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v3, v1}, Lcom/chimeranft/core/RemoteIdentity;->prewarmRecord(JLorg/json/JSONObject;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_45

    goto :goto_20

    :catchall_45
    move-exception v1

    .line 4239
    const-string v2, "init.prewarmRecord"

    invoke-static {v2, v1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_4c
    return-void
.end method
