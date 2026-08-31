.class public final Lcom/chimeranft/core/Main$installHooks$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $bg:Lcom/chimeranft/core/Badges;

.field final synthetic $id:Lcom/chimeranft/core/Identity;

.field final synthetic $rem:Lcom/chimeranft/core/RemoteIdentity;

.field final synthetic $sc:Lcom/chimeranft/core/SyncClient;

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/SyncClient;Lcom/chimeranft/core/Identity;Lcom/chimeranft/core/RemoteIdentity;)V
    .registers 6

    iput-object p1, p0, Lcom/chimeranft/core/Main$installHooks$1;->this$0:Lcom/chimeranft/core/Main;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installHooks$1;->$bg:Lcom/chimeranft/core/Badges;

    iput-object p3, p0, Lcom/chimeranft/core/Main$installHooks$1;->$sc:Lcom/chimeranft/core/SyncClient;

    iput-object p4, p0, Lcom/chimeranft/core/Main$installHooks$1;->$id:Lcom/chimeranft/core/Identity;

    iput-object p5, p0, Lcom/chimeranft/core/Main$installHooks$1;->$rem:Lcom/chimeranft/core/RemoteIdentity;

    .line 544
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 9

    const/4 v0, 0x0

    .line 552
    :try_start_1
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_a3

    .line 556
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->selfCallThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/chimeranft/core/Main;->access$getSelfCallThread$p(Lcom/chimeranft/core/Main;)Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_17

    goto/16 :goto_a3

    .line 557
    :cond_17
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_21

    move-wide v3, v1

    goto :goto_27

    .line 562
    :cond_21
    const-string v3, "id"

    invoke-static {p1, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    :goto_27
    cmp-long v5, v3, v1

    if-nez v5, :cond_2f

    .line 564
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    .line 570
    :cond_2f
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->ensureAccountFast()V
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$ensureAccountFast(Lcom/chimeranft/core/Main;)V

    .line 571
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v1

    const/4 v5, 0x1

    cmp-long v6, v3, v1

    if-nez v6, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    .line 572
    :goto_42
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$1;->$bg:Lcom/chimeranft/core/Badges;

    if-eqz v2, :cond_51

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    if-nez v1, :cond_62

    .line 578
    iget-object v6, p0, Lcom/chimeranft/core/Main$installHooks$1;->$sc:Lcom/chimeranft/core/SyncClient;

    if-eqz v6, :cond_62

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v4}, Lcom/chimeranft/core/SyncClient;->hasIdentityRecord(J)Z

    move-result v6

    if-eqz v6, :cond_62

    goto :goto_63

    :cond_62
    const/4 v5, 0x0

    :goto_63
    if-nez v1, :cond_6d

    if-nez v2, :cond_6d

    if-nez v5, :cond_6d

    .line 581
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    :cond_6d
    if-eqz v2, :cond_77

    .line 587
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$1;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/Badges;->apply(Ljava/lang/Object;)Z

    .line 598
    :cond_77
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->hotThrottled(JLjava/lang/Object;)Z
    invoke-static {v2, v3, v4, p1}, Lcom/chimeranft/core/Main;->access$hotThrottled(Lcom/chimeranft/core/Main;JLjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 599
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    .line 609
    :cond_83
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v2

    if-eqz v1, :cond_94

    .line 612
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$1;->$id:Lcom/chimeranft/core/Identity;

    if-eqz v1, :cond_a0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_94
    if-eqz v5, :cond_a0

    .line 614
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$1;->$rem:Lcom/chimeranft/core/RemoteIdentity;

    if-eqz v1, :cond_a0

    .line 616
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v0}, Lcom/chimeranft/core/RemoteIdentity;->maybeApply(Ljava/lang/Object;Z)V

    .line 618
    :cond_a0
    :goto_a0
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Tuning;->tock(IJ)V
    :try_end_a3
    .catchall {:try_start_1 .. :try_end_a3} :catchall_a3

    :catchall_a3
    :goto_a3
    return-void
.end method
