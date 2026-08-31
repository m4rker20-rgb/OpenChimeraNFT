.class public final Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $count:I

.field final synthetic $rec:Lorg/json/JSONObject;

.field final synthetic $uid:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(ILcom/chimeranft/core/GiftHook;JLorg/json/JSONObject;)V
    .registers 6

    iput p1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$count:I

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-wide p3, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$rec:Lorg/json/JSONObject;

    .line 7960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 7964
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->profileGiftBatchSize()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7965
    iget v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$count:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v0, :cond_9a

    .line 7968
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v4, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    iget-object v6, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$rec:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/GiftHook;->foreignWrappersForSlice(JLorg/json/JSONObject;I)Ljava/util/List;
    invoke-static {v1, v4, v5, v6, v0}, Lcom/chimeranft/core/GiftHook;->access$foreignWrappersForSlice(Lcom/chimeranft/core/GiftHook;JLorg/json/JSONObject;I)Ljava/util/List;

    .line 7969
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 7970
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignCache:Lcom/chimeranft/core/GiftHook$foreignCache$1;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getForeignCache$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftHook$foreignCache$1;

    move-result-object v1

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    monitor-enter v1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_51

    .line 7971
    :try_start_2a
    # invokes: Lcom/chimeranft/core/GiftHook;->hasDeferredForeign(J)Z
    invoke-static {v4, v5, v6}, Lcom/chimeranft/core/GiftHook;->access$hasDeferredForeign(Lcom/chimeranft/core/GiftHook;J)Z

    move-result v7

    if-nez v7, :cond_42

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignNeedsReload:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/chimeranft/core/GiftHook;->access$getForeignNeedsReload$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v2, 0x1

    goto :goto_42

    :catchall_40
    move-exception v0

    goto :goto_98

    :cond_42
    :goto_42
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 7972
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_40

    .line 7970
    :try_start_46
    monitor-exit v1

    if-eqz v2, :cond_54

    .line 7973
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->reloadProfileGifts(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$reloadProfileGifts(Lcom/chimeranft/core/GiftHook;J)V

    goto :goto_54

    :catchall_51
    move-exception v0

    goto/16 :goto_ef

    .line 7974
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$rec:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/GiftHook;->foreignWrappersFor(JLorg/json/JSONObject;)Ljava/util/List;
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$foreignWrappersFor(Lcom/chimeranft/core/GiftHook;JLorg/json/JSONObject;)Ljava/util/List;

    .line 7975
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getSync$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getSync$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/SyncClient;->isProfileActive(J)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->reloadProfileGifts(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$reloadProfileGifts(Lcom/chimeranft/core/GiftHook;J)V
    :try_end_7d
    .catchall {:try_start_46 .. :try_end_7d} :catchall_51

    .line 7992
    :cond_7d
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignCache:Lcom/chimeranft/core/GiftHook$foreignCache$1;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getForeignCache$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftHook$foreignCache$1;

    move-result-object v0

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    monitor-enter v0

    .line 7993
    :try_start_88
    # getter for: Lcom/chimeranft/core/GiftHook;->foreignPrepareInFlight:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getForeignPrepareInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_95

    .line 7992
    monitor-exit v0

    return-void

    :catchall_95
    move-exception v1

    monitor-exit v0

    throw v1

    .line 7970
    :goto_98
    :try_start_98
    monitor-exit v1

    throw v0

    .line 7978
    :cond_9a
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v4, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$rec:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/GiftHook;->foreignWrappersFor(JLorg/json/JSONObject;)Ljava/util/List;
    invoke-static {v0, v4, v5, v1}, Lcom/chimeranft/core/GiftHook;->access$foreignWrappersFor(Lcom/chimeranft/core/GiftHook;JLorg/json/JSONObject;)Ljava/util/List;

    .line 7982
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignCache:Lcom/chimeranft/core/GiftHook$foreignCache$1;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getForeignCache$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftHook$foreignCache$1;

    move-result-object v0

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v4, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    monitor-enter v0
    :try_end_ae
    .catchall {:try_start_98 .. :try_end_ae} :catchall_51

    .line 7983
    :try_start_ae
    # invokes: Lcom/chimeranft/core/GiftHook;->hasDeferredForeign(J)Z
    invoke-static {v1, v4, v5}, Lcom/chimeranft/core/GiftHook;->access$hasDeferredForeign(Lcom/chimeranft/core/GiftHook;J)Z

    move-result v6

    if-nez v6, :cond_c6

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignNeedsReload:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getForeignNeedsReload$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    const/4 v2, 0x1

    goto :goto_c6

    :catchall_c4
    move-exception v1

    goto :goto_ed

    .line 7984
    :cond_c6
    :goto_c6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c8
    .catchall {:try_start_ae .. :try_end_c8} :catchall_c4

    .line 7982
    :try_start_c8
    monitor-exit v0

    if-eqz v2, :cond_d2

    .line 7985
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->reloadProfileGifts(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$reloadProfileGifts(Lcom/chimeranft/core/GiftHook;J)V
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_51

    .line 7992
    :cond_d2
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignCache:Lcom/chimeranft/core/GiftHook$foreignCache$1;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getForeignCache$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftHook$foreignCache$1;

    move-result-object v0

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    monitor-enter v0

    .line 7993
    :try_start_dd
    # getter for: Lcom/chimeranft/core/GiftHook;->foreignPrepareInFlight:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getForeignPrepareInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_e8
    .catchall {:try_start_dd .. :try_end_e8} :catchall_ea

    .line 7992
    monitor-exit v0

    return-void

    :catchall_ea
    move-exception v1

    monitor-exit v0

    throw v1

    .line 7982
    :goto_ed
    :try_start_ed
    monitor-exit v0

    throw v1
    :try_end_ef
    .catchall {:try_start_ed .. :try_end_ef} :catchall_51

    .line 7988
    :goto_ef
    :try_start_ef
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "foreignWarm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_ef .. :try_end_10b} :catchall_126

    .line 7992
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignCache:Lcom/chimeranft/core/GiftHook$foreignCache$1;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getForeignCache$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftHook$foreignCache$1;

    move-result-object v0

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    monitor-enter v0

    .line 7993
    :try_start_116
    # getter for: Lcom/chimeranft/core/GiftHook;->foreignPrepareInFlight:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getForeignPrepareInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_121
    .catchall {:try_start_116 .. :try_end_121} :catchall_123

    .line 7992
    monitor-exit v0

    return-void

    :catchall_123
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_126
    move-exception v0

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->foreignCache:Lcom/chimeranft/core/GiftHook$foreignCache$1;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getForeignCache$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftHook$foreignCache$1;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v3, p0, Lcom/chimeranft/core/GiftHook$scheduleForeignPrepare$task$1;->$uid:J

    monitor-enter v1

    .line 7993
    :try_start_132
    # getter for: Lcom/chimeranft/core/GiftHook;->foreignPrepareInFlight:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getForeignPrepareInFlight$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_13d
    .catchall {:try_start_132 .. :try_end_13d} :catchall_13f

    .line 7992
    monitor-exit v1

    throw v0

    :catchall_13f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
