.class public final Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 7527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :cond_0
    const/4 v0, 0x0

    .line 7533
    :try_start_1
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->pinPersistLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getPinPersistLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_5e

    .line 7534
    :try_start_a
    invoke-static {v2, v0}, Lcom/chimeranft/core/GiftHook;->access$setPinPersistDirty$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 7535
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_63

    .line 7533
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_5e

    .line 7538
    :try_start_10
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 7539
    const-string v2, "pin"

    invoke-virtual {v1, v2}, Lcom/chimeranft/core/Store;->saveRoot(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_3b

    :catchall_1e
    move-exception v1

    .line 7542
    :try_start_1f
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pinSave: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 7545
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->pinPersistLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getPinPersistLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    monitor-enter v1
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_5e

    :try_start_44
    # getter for: Lcom/chimeranft/core/GiftHook;->pinPersistDirty:Z
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getPinPersistDirty$p(Lcom/chimeranft/core/GiftHook;)Z

    move-result v2
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_60

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_5e

    if-nez v2, :cond_0

    .line 7552
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->pinPersistLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/chimeranft/core/GiftHook;->access$getPinPersistLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    monitor-enter v1

    .line 7553
    :try_start_54
    invoke-static {v2, v0}, Lcom/chimeranft/core/GiftHook;->access$setPinPersistQueued$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 7554
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5b

    .line 7552
    monitor-exit v1

    return-void

    :catchall_5b
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_5e
    move-exception v1

    goto :goto_66

    :catchall_60
    move-exception v2

    .line 7545
    :try_start_61
    monitor-exit v1

    throw v2

    :catchall_63
    move-exception v2

    .line 7533
    monitor-exit v1

    throw v2
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5e

    .line 7552
    :goto_66
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->pinPersistLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getPinPersistLock$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$schedulePinPersist$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    monitor-enter v2

    .line 7553
    :try_start_6f
    invoke-static {v3, v0}, Lcom/chimeranft/core/GiftHook;->access$setPinPersistQueued$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 7554
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_76

    .line 7552
    monitor-exit v2

    throw v1

    :catchall_76
    move-exception v0

    monitor-exit v2

    throw v0
.end method
