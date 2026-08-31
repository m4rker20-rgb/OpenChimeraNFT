.class public final Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $dialogId:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;J)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->$dialogId:J

    .line 7588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 7590
    const-string v0, "]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " inval["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7593
    :try_start_9
    # getter for: Lcom/chimeranft/core/GiftHook;->UC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getUC$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selectedAccount"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 7594
    # getter for: Lcom/chimeranft/core/GiftHook;->STARS_CTRL:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getSTARS_CTRL$cp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 7596
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftHook;->getLastActionStatus()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "no-cls]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chimeranft/core/GiftHook;->setLastActionStatus(Ljava/lang/String;)V

    return-void

    :catchall_3c
    move-exception v2

    goto :goto_ad

    .line 7599
    :cond_3e
    # getter for: Lcom/chimeranft/core/GiftHook;->STARS_CTRL:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getSTARS_CTRL$cp()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getInstance"

    const/4 v6, 0x1

    .line 7600
    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v4

    .line 7599
    invoke-static {v3, v5, v7, v8}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7601
    const-string v3, "ctrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5f

    const/4 v4, 0x1

    :cond_5f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v2, :cond_80

    .line 7603
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftHook;->getLastActionStatus()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chimeranft/core/GiftHook;->setLastActionStatus(Ljava/lang/String;)V

    return-void

    .line 7611
    :cond_80
    sget-object v3, Lcom/chimeranft/core/GiftHook;->Companion:Lcom/chimeranft/core/GiftHook$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "invalidateProfileGifts"

    # invokes: Lcom/chimeranft/core/GiftHook$Companion;->findSingleNumericMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v3, v4, v5}, Lcom/chimeranft/core/GiftHook$Companion;->access$findSingleNumericMethod(Lcom/chimeranft/core/GiftHook$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_99

    .line 7614
    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->$dialogId:J

    # invokes: Lcom/chimeranft/core/GiftHook$Companion;->invokeNumeric(Ljava/lang/reflect/Method;Ljava/lang/Object;J)V
    invoke-static {v3, v4, v2, v5, v6}, Lcom/chimeranft/core/GiftHook$Companion;->access$invokeNumeric(Lcom/chimeranft/core/GiftHook$Companion;Ljava/lang/reflect/Method;Ljava/lang/Object;J)V

    .line 7615
    const-string v2, " inv=ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 7618
    :cond_99
    const-string v2, " inv=miss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7619
    :goto_9e
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftHook;->getGiftsInvalidated()J

    move-result-wide v2

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Lcom/chimeranft/core/GiftHook;->setGiftsInvalidated(J)V
    :try_end_ac
    .catchall {:try_start_9 .. :try_end_ac} :catchall_3c

    goto :goto_ce

    .line 7622
    :goto_ad
    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v4, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v4, v2}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalidate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 7623
    const-string v2, " ERR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7626
    :goto_ce
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$reloadProfileGifts$r$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftHook;->getLastActionStatus()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/GiftHook;->setLastActionStatus(Ljava/lang/String;)V

    return-void
.end method
