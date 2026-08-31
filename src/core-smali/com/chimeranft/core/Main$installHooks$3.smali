.class public final Lcom/chimeranft/core/Main$installHooks$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $bg:Lcom/chimeranft/core/Badges;

.field final synthetic $id:Lcom/chimeranft/core/Identity;

.field final synthetic $nf:Lcom/chimeranft/core/Notifier;

.field final synthetic $rem:Lcom/chimeranft/core/RemoteIdentity;

.field final synthetic $sc:Lcom/chimeranft/core/SyncClient;

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;Lcom/chimeranft/core/RemoteIdentity;Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/Identity;Lcom/chimeranft/core/Notifier;)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/Main$installHooks$3;->this$0:Lcom/chimeranft/core/Main;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installHooks$3;->$sc:Lcom/chimeranft/core/SyncClient;

    iput-object p3, p0, Lcom/chimeranft/core/Main$installHooks$3;->$rem:Lcom/chimeranft/core/RemoteIdentity;

    iput-object p4, p0, Lcom/chimeranft/core/Main$installHooks$3;->$bg:Lcom/chimeranft/core/Badges;

    iput-object p5, p0, Lcom/chimeranft/core/Main$installHooks$3;->$id:Lcom/chimeranft/core/Identity;

    iput-object p6, p0, Lcom/chimeranft/core/Main$installHooks$3;->$nf:Lcom/chimeranft/core/Notifier;

    .line 628
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 15

    const/4 v0, 0x1

    .line 634
    :try_start_1
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_11e

    .line 635
    :cond_9
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$3;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 636
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v10, 0x0

    if-nez v3, :cond_18

    move-wide v1, v10

    goto :goto_1e

    .line 640
    :cond_18
    const-string v1, "id"

    invoke-static {v3, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    :goto_1e
    const/4 v12, 0x0

    cmp-long v4, v1, v10

    if-nez v4, :cond_3b

    .line 641
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz p1, :cond_3b

    array-length v4, p1

    if-lez v4, :cond_3b

    .line 642
    aget-object p1, p1, v12

    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_3b

    .line 644
    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :cond_3b
    move-wide v4, v1

    .line 646
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$3;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v1

    cmp-long p1, v4, v1

    if-nez p1, :cond_48

    const/4 p1, 0x1

    goto :goto_49

    :cond_48
    const/4 p1, 0x0

    :goto_49
    if-nez p1, :cond_5e

    cmp-long v1, v4, v10

    if-lez v1, :cond_5e

    .line 647
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$3;->$sc:Lcom/chimeranft/core/SyncClient;

    if-eqz v1, :cond_5e

    .line 648
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v5}, Lcom/chimeranft/core/SyncClient;->isProfileActive(J)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    if-nez p1, :cond_71

    if-nez v1, :cond_71

    cmp-long v2, v4, v10

    if-lez v2, :cond_71

    .line 655
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$3;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->fullThrottled(J)Z
    invoke-static {v2, v4, v5}, Lcom/chimeranft/core/Main;->access$fullThrottled(Lcom/chimeranft/core/Main;J)Z

    move-result v2

    if-eqz v2, :cond_71

    const/4 v2, 0x1

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    .line 656
    :goto_72
    sget-object v6, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v6, p1, v1, v2}, Lcom/chimeranft/core/Main$Companion;->shouldThrottleForeignFull(ZZZ)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 659
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    .line 663
    :cond_7e
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$3;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v2}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v2

    if-eqz p1, :cond_8d

    if-eqz v2, :cond_8d

    .line 666
    invoke-virtual {v2, v3}, Lcom/chimeranft/core/GiftHook;->ensureGiftCount(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_ab

    :cond_8d
    cmp-long v2, v4, v10

    if-lez v2, :cond_aa

    .line 668
    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$3;->$rem:Lcom/chimeranft/core/RemoteIdentity;

    if-eqz v2, :cond_aa

    if-eqz v1, :cond_a4

    .line 672
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/chimeranft/core/RemoteIdentity;->ensureProfileState$default(Lcom/chimeranft/core/RemoteIdentity;Ljava/lang/Object;JZZILjava/lang/Object;)Z

    move-result v1

    goto :goto_ab

    .line 678
    :cond_a4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v12}, Lcom/chimeranft/core/RemoteIdentity;->maybeApply(Ljava/lang/Object;Z)V

    :cond_aa
    const/4 v1, 0x0

    :goto_ab
    cmp-long v2, v4, v10

    if-eqz v2, :cond_c9

    .line 681
    iget-object v6, p0, Lcom/chimeranft/core/Main$installHooks$3;->$bg:Lcom/chimeranft/core/Badges;

    if-eqz v6, :cond_c9

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v5}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 682
    iget-object v6, p0, Lcom/chimeranft/core/Main$installHooks$3;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v4, v5}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    move-result v6

    if-eqz v6, :cond_c9

    const/4 v6, 0x1

    goto :goto_ca

    :cond_c9
    const/4 v6, 0x0

    .line 683
    :goto_ca
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v7

    if-nez v1, :cond_e3

    if-nez v6, :cond_e3

    if-nez p1, :cond_d6

    if-nez v2, :cond_e4

    .line 685
    :cond_d6
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$3;->$id:Lcom/chimeranft/core/Identity;

    if-eqz v1, :cond_e4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    :cond_e3
    const/4 v12, 0x1

    :cond_e4
    if-eqz v2, :cond_ff

    .line 689
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$3;->$bg:Lcom/chimeranft/core/Badges;

    if-eqz v1, :cond_ff

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v5}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 690
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$3;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_ff

    const/4 v12, 0x1

    :cond_ff
    if-nez p1, :cond_10d

    if-nez v2, :cond_10d

    .line 695
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$3;->$rem:Lcom/chimeranft/core/RemoteIdentity;

    if-eqz v1, :cond_10d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v0}, Lcom/chimeranft/core/RemoteIdentity;->maybeApply(Ljava/lang/Object;Z)V

    .line 696
    :cond_10d
    invoke-static {v0, v7, v8}, Lcom/chimeranft/core/Tuning;->tock(IJ)V

    if-eqz p1, :cond_11e

    if-eqz v12, :cond_11e

    .line 699
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$3;->$nf:Lcom/chimeranft/core/Notifier;

    if-eqz p1, :cond_11e

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/chimeranft/core/Notifier;->postUserInfo(Ljava/lang/Object;)V
    :try_end_11e
    .catchall {:try_start_1 .. :try_end_11e} :catchall_11e

    :catchall_11e
    :cond_11e
    :goto_11e
    return-void
.end method
