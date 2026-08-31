.class public final Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $uid:J

.field final synthetic this$0:Lcom/chimeranft/core/RemoteIdentity;


# direct methods
.method constructor <init>(JLcom/chimeranft/core/RemoteIdentity;)V
    .registers 4

    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;->$uid:J

    iput-object p3, p0, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 563
    :try_start_0
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->UC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getUC$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedAccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 564
    # getter for: Lcom/chimeranft/core/RemoteIdentity;->STARS_CTRL:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/RemoteIdentity;->access$getSTARS_CTRL$cp()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getInstance"

    const/4 v4, 0x1

    .line 565
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v2

    .line 564
    invoke-static {v1, v3, v5, v6}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_87

    .line 567
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 569
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "invalidateProfileGifts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-static {v3}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v5

    if-eq v5, v4, :cond_52

    goto :goto_33

    .line 570
    :cond_52
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v2

    .line 571
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v5, :cond_69

    if-ne v1, v5, :cond_5f

    goto :goto_69

    .line 574
    :cond_5f
    iget-wide v5, p0, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;->$uid:J

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6f

    :catchall_67
    move-exception v0

    goto :goto_88

    .line 572
    :cond_69
    :goto_69
    iget-wide v5, p0, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;->$uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 575
    :goto_6f
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 576
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    invoke-virtual {v0}, Lcom/chimeranft/core/RemoteIdentity;->getForeignInvalidations()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chimeranft/core/RemoteIdentity;->setForeignInvalidations(J)V
    :try_end_87
    .catchall {:try_start_0 .. :try_end_87} :catchall_67

    :cond_87
    :goto_87
    return-void

    .line 582
    :goto_88
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity$maybeInvalidateForeignGifts$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/RemoteIdentity;->setLastError(Ljava/lang/String;)V

    return-void
.end method
