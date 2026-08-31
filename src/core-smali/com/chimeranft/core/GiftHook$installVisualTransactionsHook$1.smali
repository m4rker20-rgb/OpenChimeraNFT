.class public final Lcom/chimeranft/core/GiftHook$installVisualTransactionsHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installVisualTransactionsHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 2537
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2542
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installVisualTransactionsHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->applyVisualBalanceToController(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$applyVisualBalanceToController(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installVisualTransactionsHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v1, 0x1

    # invokes: Lcom/chimeranft/core/GiftHook;->injectVisualTransactions(Ljava/lang/Object;Z)V
    invoke-static {v0, p1, v1}, Lcom/chimeranft/core/GiftHook;->access$injectVisualTransactions(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p1

    .line 2546
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installVisualTransactionsHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visualTx callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
