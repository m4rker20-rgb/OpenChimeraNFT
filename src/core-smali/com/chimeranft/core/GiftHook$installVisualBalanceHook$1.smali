.class public final Lcom/chimeranft/core/GiftHook$installVisualBalanceHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $m:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/reflect/Method;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installVisualBalanceHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$installVisualBalanceHook$1;->$m:Ljava/lang/reflect/Method;

    .line 2230
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2235
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installVisualBalanceHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2236
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2b

    .line 2237
    :cond_f
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installVisualBalanceHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->applyVisualBalanceToController(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$applyVisualBalanceToController(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2238
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$installVisualBalanceHook$1;->$m:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception p1

    goto :goto_2c

    :cond_2b
    :goto_2b
    return-void

    .line 2241
    :goto_2c
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installVisualBalanceHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visualBalance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
