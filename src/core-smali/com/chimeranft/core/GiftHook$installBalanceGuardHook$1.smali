.class public final Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 2178
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 2183
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->resaleBuyGuardActive()Z
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$resaleBuyGuardActive(Lcom/chimeranft/core/GiftHook;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2185
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2186
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftHook;->getBalGuardHits()J

    move-result-wide v0

    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/GiftHook;->setBalGuardHits(J)V

    return-void

    :catchall_1c
    move-exception p1

    goto :goto_4a

    .line 2188
    :cond_1e
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2190
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->applyVisualBalanceToController(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$applyVisualBalanceToController(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v2, 0x0

    # invokes: Lcom/chimeranft/core/GiftHook;->injectVisualTransactions(Ljava/lang/Object;Z)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$injectVisualTransactions(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V

    .line 2199
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_1c

    :cond_49
    return-void

    .line 2203
    :goto_4a
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installBalanceGuardHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "balguard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
