.class public final Lcom/chimeranft/core/Main$installHooks$unhook$1;
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

    iput-object p1, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->this$0:Lcom/chimeranft/core/Main;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$bg:Lcom/chimeranft/core/Badges;

    iput-object p3, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$sc:Lcom/chimeranft/core/SyncClient;

    iput-object p4, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$id:Lcom/chimeranft/core/Identity;

    iput-object p5, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$rem:Lcom/chimeranft/core/RemoteIdentity;

    .line 720
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->this$0:Lcom/chimeranft/core/Main;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V

    .line 764
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    array-length v1, p1

    if-nez v1, :cond_f

    goto :goto_13

    :cond_f
    const/4 v1, 0x0

    .line 767
    aget-object p1, p1, v1

    goto :goto_14

    :cond_13
    :goto_13
    move-object p1, v0

    :goto_14
    const-wide/16 v1, 0x0

    if-nez p1, :cond_1a

    move-wide v3, v1

    goto :goto_20

    .line 768
    :cond_1a
    const-string v3, "id"

    invoke-static {p1, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    :goto_20
    cmp-long p1, v3, v1

    if-lez p1, :cond_2d

    .line 769
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getHotSeen$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/chimeranft/core/LongStamps;->forget(J)V

    .line 773
    :cond_2d
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v1

    cmp-long p1, v3, v1

    if-nez p1, :cond_43

    .line 775
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->this$0:Lcom/chimeranft/core/Main;

    invoke-static {p1, v0}, Lcom/chimeranft/core/Main;->access$setSelfUserCached$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V

    .line 776
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->this$0:Lcom/chimeranft/core/Main;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/chimeranft/core/Main;->access$setSelfUserAppliedRevision$p(Lcom/chimeranft/core/Main;J)V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_43

    :catchall_43
    :cond_43
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 11

    const/16 v0, 0x8

    .line 725
    :try_start_2
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_8d

    .line 726
    :cond_a
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    array-length v2, p1

    if-nez v2, :cond_13

    goto :goto_16

    .line 729
    :cond_13
    aget-object p1, p1, v1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :goto_17
    const-wide/16 v2, 0x0

    if-nez p1, :cond_1d

    move-wide v4, v2

    goto :goto_23

    .line 730
    :cond_1d
    const-string v4, "id"

    invoke-static {p1, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    :goto_23
    cmp-long v6, v4, v2

    if-gtz v6, :cond_2b

    .line 732
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    .line 735
    :cond_2b
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v2}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    const/4 v6, 0x1

    cmp-long v7, v4, v2

    if-nez v7, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    .line 736
    :goto_39
    iget-object v3, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$bg:Lcom/chimeranft/core/Badges;

    if-eqz v3, :cond_48

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    if-nez v2, :cond_59

    .line 741
    iget-object v7, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$sc:Lcom/chimeranft/core/SyncClient;

    if-eqz v7, :cond_59

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v4, v5}, Lcom/chimeranft/core/SyncClient;->hasIdentityRecord(J)Z

    move-result v7

    if-eqz v7, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v6, 0x0

    :goto_5a
    if-nez v2, :cond_64

    if-nez v3, :cond_64

    if-nez v6, :cond_64

    .line 744
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    .line 747
    :cond_64
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v7

    if-eqz v2, :cond_74

    .line 748
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$id:Lcom/chimeranft/core/Identity;

    if-eqz v2, :cond_74

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    :cond_74
    if-eqz v3, :cond_7e

    .line 749
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v4, v5}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    :cond_7e
    if-eqz v6, :cond_8a

    .line 750
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$unhook$1;->$rem:Lcom/chimeranft/core/RemoteIdentity;

    if-eqz v2, :cond_8a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v1}, Lcom/chimeranft/core/RemoteIdentity;->maybeApply(Ljava/lang/Object;Z)V

    .line 751
    :cond_8a
    invoke-static {v0, v7, v8}, Lcom/chimeranft/core/Tuning;->tock(IJ)V
    :try_end_8d
    .catchall {:try_start_2 .. :try_end_8d} :catchall_8d

    :catchall_8d
    :goto_8d
    return-void
.end method
