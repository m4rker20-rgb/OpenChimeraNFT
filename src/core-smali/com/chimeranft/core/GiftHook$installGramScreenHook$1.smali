.class public final Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $m:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method public static synthetic $r8$lambda$AHeucCwENEkR6-Qwwwh6VBdATgA(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->afterHookedMethod$lambda$1(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AQCKCQwY3voNp1JKOr3Zk-L1xmE(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->afterHookedMethod$lambda$0(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0ePhpDekoWxT64HsUvz3IdE_2o(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->afterHookedMethod$lambda$2(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/reflect/Method;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->$m:Ljava/lang/reflect/Method;

    .line 2313
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method

.method private static final afterHookedMethod$lambda$0(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 2

    .line 2348
    # invokes: Lcom/chimeranft/core/GiftHook;->patchGramScreen(Ljava/lang/Object;)V
    invoke-static {p0, p1}, Lcom/chimeranft/core/GiftHook;->access$patchGramScreen(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void
.end method

.method private static final afterHookedMethod$lambda$1(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 2

    .line 2349
    # invokes: Lcom/chimeranft/core/GiftHook;->patchGramScreen(Ljava/lang/Object;)V
    invoke-static {p0, p1}, Lcom/chimeranft/core/GiftHook;->access$patchGramScreen(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void
.end method

.method private static final afterHookedMethod$lambda$2(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 2

    .line 2350
    # invokes: Lcom/chimeranft/core/GiftHook;->patchGramScreen(Ljava/lang/Object;)V
    invoke-static {p0, p1}, Lcom/chimeranft/core/GiftHook;->access$patchGramScreen(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 2338
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2339
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2341
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 2342
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->patchGramScreen(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/chimeranft/core/GiftHook;->access$patchGramScreen(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    .line 2346
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->$m:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2348
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    new-instance v1, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda0;-><init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    const-wide/16 v2, 0x78

    # invokes: Lcom/chimeranft/core/GiftHook;->postUi(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$postUi(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;J)V

    .line 2349
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    new-instance v1, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda1;-><init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    const-wide/16 v2, 0x258

    # invokes: Lcom/chimeranft/core/GiftHook;->postUi(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$postUi(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;J)V

    .line 2350
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    new-instance v1, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda2;-><init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    const-wide/16 v2, 0x5dc

    # invokes: Lcom/chimeranft/core/GiftHook;->postUi(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$postUi(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;J)V
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_48

    return-void

    :catchall_48
    move-exception p1

    goto :goto_4b

    :cond_4a
    return-void

    .line 2355
    :goto_4b
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gramScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2318
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2319
    invoke-virtual {v0}, Lcom/chimeranft/core/Store;->isVisualBalanceConfigured()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2320
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->$m:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateButtonsLayouts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2321
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz p1, :cond_2e

    array-length v0, p1

    if-lez v0, :cond_2e

    .line 2326
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    aput-object v0, p1, v1
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception p1

    goto :goto_2f

    :cond_2e
    return-void

    .line 2330
    :goto_2f
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gramButtons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
