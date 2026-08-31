.class public final Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $activity:Ljava/lang/Object;

.field final synthetic $expectedUid:J

.field final synthetic $generation:J

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;Ljava/lang/Object;JJ)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->this$0:Lcom/chimeranft/core/Main;

    iput-object p2, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$generation:J

    iput-wide p5, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$expectedUid:J

    .line 3050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 3054
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    if-ne v0, v1, :cond_c4

    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->activeProfileGeneration:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileGeneration$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$generation:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    goto/16 :goto_c4

    .line 3055
    :cond_18
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    const-string v1, "fragmentView"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 3056
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    const-string v2, "fragmentViewAttached"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto/16 :goto_c4

    .line 3057
    :cond_34
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    const-string v2, "userId"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4a

    .line 3058
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    const-string v2, "dialogId"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    .line 3059
    :cond_4a
    iget-wide v3, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$expectedUid:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_51

    goto :goto_c4

    .line 3060
    :cond_51
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_c4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eqz v1, :cond_7d

    :try_start_5d
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v5, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$expectedUid:J

    invoke-virtual {v1, v5, v6}, Lcom/chimeranft/core/Badges;->ensureExteraCacheFor(J)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3066
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    const-string v5, "updateProfileData"

    .line 3067
    new-array v6, v2, [Ljava/lang/Class;

    aput-object v4, v6, v3

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    .line 3066
    invoke-static {v1, v5, v6, v7}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    :cond_7d
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->this$0:Lcom/chimeranft/core/Main;

    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z
    invoke-static {v0, v1, v3}, Lcom/chimeranft/core/Main;->access$ensureProfileGiftSection(Lcom/chimeranft/core/Main;Ljava/lang/Object;Z)Z

    move-result v0

    .line 3070
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    const-string v5, "userInfo"

    invoke-static {v1, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a9

    .line 3071
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v1

    if-eqz v1, :cond_a9

    if-eqz v0, :cond_a9

    .line 3072
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v7, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$expectedUid:J

    const-wide/16 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/chimeranft/core/Notifier;->postProfileInfo(JLjava/lang/Object;J)V

    .line 3073
    :cond_a9
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->$activity:Ljava/lang/Object;

    const-string v5, "sharedMediaLayout"

    invoke-static {v1, v5}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c4

    if-eqz v0, :cond_c4

    .line 3075
    const-string v0, "updateTabs"

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v3

    .line 3076
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    .line 3075
    invoke-static {v1, v0, v5, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c4
    .catchall {:try_start_5d .. :try_end_c4} :catchall_c4

    :catchall_c4
    :cond_c4
    :goto_c4
    return-void
.end method
