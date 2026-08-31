.class public final Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $self:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;->$self:Lcom/chimeranft/core/Main;

    .line 3021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 3023
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;->$self:Lcom/chimeranft/core/Main;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chimeranft/core/Main;->access$setBadgeHookRetryPending$p(Lcom/chimeranft/core/Main;Z)V

    .line 3024
    const-string v0, "badgeHooks"

    invoke-static {v0}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    .line 3027
    :try_start_b
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;->$self:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->installExteraBadgeControllerHooks()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$installExteraBadgeControllerHooks(Lcom/chimeranft/core/Main;)V

    .line 3028
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;->$self:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->installExteraBadgeSourceHook()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$installExteraBadgeSourceHook(Lcom/chimeranft/core/Main;)V

    .line 3029
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;->$self:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->installSupporterPopupHooks()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$installSupporterPopupHooks(Lcom/chimeranft/core/Main;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    goto :goto_21

    :catchall_1b
    move-exception v0

    .line 3032
    const-string v1, "profile.badgeHookRetry"

    invoke-static {v1, v0}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3038
    :goto_21
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    goto :goto_4c

    .line 3040
    :cond_2a
    const-string v0, "userId"

    invoke-static {v2, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_3c

    .line 3041
    const-string v0, "dialogId"

    invoke-static {v2, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    :cond_3c
    cmp-long v5, v0, v3

    if-lez v5, :cond_4c

    move-wide v3, v0

    .line 3042
    iget-object v1, p0, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->activeProfileGeneration:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getActiveProfileGeneration$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    # invokes: Lcom/chimeranft/core/Main;->scheduleProfileRestamp(Ljava/lang/Object;JJJ)V
    invoke-static/range {v1 .. v8}, Lcom/chimeranft/core/Main;->access$scheduleProfileRestamp(Lcom/chimeranft/core/Main;Ljava/lang/Object;JJJ)V

    :cond_4c
    :goto_4c
    return-void
.end method
