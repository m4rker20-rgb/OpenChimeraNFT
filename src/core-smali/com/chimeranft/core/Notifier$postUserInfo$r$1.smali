.class public final Lcom/chimeranft/core/Notifier$postUserInfo$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $userFull:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/Notifier;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Notifier;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Notifier$postUserInfo$r$1;->this$0:Lcom/chimeranft/core/Notifier;

    iput-object p2, p0, Lcom/chimeranft/core/Notifier$postUserInfo$r$1;->$userFull:Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 32
    :try_start_0
    # getter for: Lcom/chimeranft/core/Notifier;->UC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Notifier;->access$getUC$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedAccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 33
    # getter for: Lcom/chimeranft/core/Notifier;->NC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Notifier;->access$getNC$cp()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v1, v3, v5, v6}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    return-void

    .line 38
    :cond_27
    invoke-static {}, Lcom/chimeranft/core/Repaint;->nameAndStatusMask()I

    move-result v1

    invoke-static {v1}, Lcom/chimeranft/core/Repaint;->updateInterfaces(I)V

    .line 39
    # getter for: Lcom/chimeranft/core/Notifier;->NC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Notifier;->access$getNC$cp()Ljava/lang/String;

    move-result-object v1

    const-string v3, "userInfoDidLoad"

    invoke-static {v1, v3, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_53

    .line 40
    iget-object v3, p0, Lcom/chimeranft/core/Notifier$postUserInfo$r$1;->this$0:Lcom/chimeranft/core/Notifier;

    # getter for: Lcom/chimeranft/core/Notifier;->myId:J
    invoke-static {v3}, Lcom/chimeranft/core/Notifier;->access$getMyId$p(Lcom/chimeranft/core/Notifier;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/chimeranft/core/Notifier$postUserInfo$r$1;->$userFull:Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v6, v7, v4

    # invokes: Lcom/chimeranft/core/Notifier;->post(Ljava/lang/Object;I[Ljava/lang/Object;)V
    invoke-static {v3, v0, v1, v7}, Lcom/chimeranft/core/Notifier;->access$post(Lcom/chimeranft/core/Notifier;Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_53

    :catchall_51
    move-exception v0

    goto :goto_5d

    .line 41
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/chimeranft/core/Notifier$postUserInfo$r$1;->this$0:Lcom/chimeranft/core/Notifier;

    iget-wide v1, v0, Lcom/chimeranft/core/Notifier;->posts:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/chimeranft/core/Notifier;->posts:J
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_51

    return-void

    .line 44
    :goto_5d
    iget-object v1, p0, Lcom/chimeranft/core/Notifier$postUserInfo$r$1;->this$0:Lcom/chimeranft/core/Notifier;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postUserInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Notifier;->lastError:Ljava/lang/String;

    return-void
.end method
