.class public final Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $rec:Lorg/json/JSONObject;

.field final synthetic $uid:J

.field final synthetic this$0:Lcom/chimeranft/core/RemoteIdentity;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/chimeranft/core/RemoteIdentity;J)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$rec:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iput-wide p3, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$uid:J

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$rec:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/chimeranft/core/PinnedChannel;->ensureCached(Lorg/json/JSONObject;)V

    .line 304
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iget-wide v1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$uid:J

    iget-object v3, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$rec:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->preparedProfile(JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/RemoteIdentity;->access$preparedProfile(Lcom/chimeranft/core/RemoteIdentity;JLorg/json/JSONObject;)Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;

    move-result-object v0

    .line 305
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->UC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getUC$cp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectedAccount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 306
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->MC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getMC$cp()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v2, v4, v6, v5}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 311
    sget-object v2, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    iget-object v4, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$rec:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lcom/chimeranft/core/RemoteIdentity$Companion;->hasUserIdentity(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 313
    const-string v4, "getUser"

    iget-wide v5, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$uid:J

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->controllerEntity(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    invoke-static {v2, v1, v4, v5, v6}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$controllerEntity(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 314
    iget-object v5, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z
    invoke-static {v5, v4, v0}, Lcom/chimeranft/core/RemoteIdentity;->access$applyPreparedToObj(Lcom/chimeranft/core/RemoteIdentity;Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    goto :goto_51

    :catchall_4f
    move-exception v0

    goto :goto_bd

    .line 316
    :cond_51
    :goto_51
    const-string v4, "getUserFull"

    iget-wide v5, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$uid:J

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->controllerEntity(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    invoke-static {v2, v1, v4, v5, v6}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$controllerEntity(Lcom/chimeranft/core/RemoteIdentity$Companion;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 319
    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z
    invoke-static {v2, v1, v0}, Lcom/chimeranft/core/RemoteIdentity;->access$applyPreparedToObj(Lcom/chimeranft/core/RemoteIdentity;Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    .line 320
    const-string v2, "user"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6f

    if-eq v2, v1, :cond_6f

    .line 321
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->applyPreparedToObj(Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z
    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/RemoteIdentity;->access$applyPreparedToObj(Lcom/chimeranft/core/RemoteIdentity;Ljava/lang/Object;Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;)Z

    .line 324
    :cond_6f
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iget-wide v1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$uid:J

    iget-object v4, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$rec:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->maybeInvalidateForeignGifts(JLorg/json/JSONObject;)V
    invoke-static {v0, v1, v2, v4}, Lcom/chimeranft/core/RemoteIdentity;->access$maybeInvalidateForeignGifts(Lcom/chimeranft/core/RemoteIdentity;JLorg/json/JSONObject;)V

    .line 329
    sget-object v0, Lcom/chimeranft/core/RemoteIdentity;->Companion:Lcom/chimeranft/core/RemoteIdentity$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$rec:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->hasProfileState(Lorg/json/JSONObject;)Z
    invoke-static {v0, v1}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$hasProfileState(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 332
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    # getter for: Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/chimeranft/core/RemoteIdentity;->access$getAnnounceSig$p(Lcom/chimeranft/core/RemoteIdentity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$rec:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iget-wide v5, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$uid:J

    monitor-enter v1
    :try_end_8f
    .catchall {:try_start_0 .. :try_end_8f} :catchall_4f

    .line 333
    :try_start_8f
    # invokes: Lcom/chimeranft/core/RemoteIdentity$Companion;->profileSigCached(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/chimeranft/core/RemoteIdentity$Companion;->access$profileSigCached(Lcom/chimeranft/core/RemoteIdentity$Companion;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/chimeranft/core/RemoteIdentity;->announceSig:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/chimeranft/core/RemoteIdentity;->access$getAnnounceSig$p(Lcom/chimeranft/core/RemoteIdentity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 334
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a5
    .catchall {:try_start_8f .. :try_end_a5} :catchall_b0

    .line 332
    :try_start_a5
    monitor-exit v1

    if-nez v0, :cond_b3

    .line 335
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iget-wide v1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$uid:J

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->announceNow(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/RemoteIdentity;->access$announceNow(Lcom/chimeranft/core/RemoteIdentity;J)V

    goto :goto_b3

    :catchall_b0
    move-exception v0

    .line 332
    monitor-exit v1

    throw v0

    .line 337
    :cond_b3
    :goto_b3
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iget-wide v1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$uid:J

    iget-object v4, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->$rec:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->maybeAnnounce(JLorg/json/JSONObject;Z)V
    invoke-static {v0, v1, v2, v4, v3}, Lcom/chimeranft/core/RemoteIdentity;->access$maybeAnnounce(Lcom/chimeranft/core/RemoteIdentity;JLorg/json/JSONObject;Z)V
    :try_end_bc
    .catchall {:try_start_a5 .. :try_end_bc} :catchall_4f

    return-void

    .line 340
    :goto_bd
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity$onRecordPulled$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/RemoteIdentity;->setLastError(Ljava/lang/String;)V

    return-void
.end method
