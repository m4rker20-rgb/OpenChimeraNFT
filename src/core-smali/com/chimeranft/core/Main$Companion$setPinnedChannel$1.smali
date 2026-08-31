.class public final Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $active:Ljava/lang/Object;

.field final synthetic $m:Lcom/chimeranft/core/Main;

.field final synthetic $record:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/chimeranft/core/Main;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$active:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$m:Lcom/chimeranft/core/Main;

    iput-object p3, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$record:Lorg/json/JSONObject;

    .line 6354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 6356
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$active:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_6e

    .line 6357
    :cond_5
    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_19

    .line 6358
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$active:Ljava/lang/Object;

    const-string v1, "dialogId"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    :cond_19
    move-wide v3, v0

    .line 6359
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$active:Ljava/lang/Object;

    const-string v1, "userInfo"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 6360
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$m:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->realId:J
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRealId$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    cmp-long v2, v3, v0

    if-nez v2, :cond_6e

    if-nez v5, :cond_2f

    goto :goto_6e

    .line 6361
    :cond_2f
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$record:Lorg/json/JSONObject;

    invoke-static {v5, v0}, Lcom/chimeranft/core/PinnedChannel;->apply(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    .line 6362
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$active:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v6

    .line 6363
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v6

    .line 6362
    const-string v10, "updateRows"

    invoke-static {v0, v10, v2, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6364
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$active:Ljava/lang/Object;

    .line 6365
    new-array v2, v1, [Ljava/lang/Class;

    aput-object v7, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v6

    .line 6364
    const-string v6, "updateProfileData"

    invoke-static {v0, v6, v2, v1}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6366
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$m:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$setPinnedChannel$1;->$m:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/Notifier;->postProfileInfo(JLjava/lang/Object;J)V

    :cond_6e
    :goto_6e
    return-void
.end method
