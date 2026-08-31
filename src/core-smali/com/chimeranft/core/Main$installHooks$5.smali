.class public final Lcom/chimeranft/core/Main$installHooks$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $bg:Lcom/chimeranft/core/Badges;

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/Main;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$installHooks$5;->$bg:Lcom/chimeranft/core/Badges;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installHooks$5;->this$0:Lcom/chimeranft/core/Main;

    .line 796
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 16

    const/4 v0, 0x2

    .line 806
    :try_start_1
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_89

    .line 807
    :cond_9
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$5;->$bg:Lcom/chimeranft/core/Badges;

    if-eqz v1, :cond_86

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->hasAnyChat()Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_86

    .line 812
    :cond_18
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_22

    move-wide v4, v2

    goto :goto_28

    .line 813
    :cond_22
    const-string v4, "id"

    invoke-static {v1, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    :goto_28
    cmp-long v6, v4, v2

    if-nez v6, :cond_45

    .line 814
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz p1, :cond_45

    array-length v6, p1

    if-lez v6, :cond_45

    const/4 v6, 0x0

    .line 815
    aget-object p1, p1, v6

    instance-of v6, p1, Ljava/lang/Number;

    if-eqz v6, :cond_45

    .line 816
    const-string v4, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    :cond_45
    move-wide v7, v4

    cmp-long p1, v7, v2

    if-eqz p1, :cond_82

    .line 817
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$5;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v8}, Lcom/chimeranft/core/Badges;->hasChat(J)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_82

    .line 826
    :cond_56
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$5;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->chatStampThrottle:Lcom/chimeranft/core/LongStamps;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getChatStampThrottle$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    # getter for: Lcom/chimeranft/core/Main;->CHAT_STAMP_THROTTLE_MS:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getCHAT_STAMP_THROTTLE_MS$cp()J

    move-result-wide v12

    .line 826
    invoke-virtual/range {v6 .. v13}, Lcom/chimeranft/core/LongStamps;->throttled(JIJJ)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 829
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    .line 832
    :cond_72
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v2

    .line 833
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$5;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v7, v8}, Lcom/chimeranft/core/Badges;->applyChatForId(Ljava/lang/Object;J)Z

    .line 834
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Tuning;->tock(IJ)V

    return-void

    .line 819
    :cond_82
    :goto_82
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    .line 809
    :cond_86
    :goto_86
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_89

    :catchall_89
    :goto_89
    return-void
.end method
