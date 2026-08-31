.class public final Lcom/chimeranft/core/Main$installSupporterPopupHooks$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2419
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8

    .line 2424
    :try_start_0
    # getter for: Lcom/chimeranft/core/Main;->supporterPopupCallback:Ljava/lang/Runnable;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getSupporterPopupCallback$cp()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_87

    array-length v1, v0

    if-nez v1, :cond_f

    goto/16 :goto_87

    :cond_f
    const/4 v1, 0x0

    .line 2425
    aget-object v0, v0, v1

    .line 2426
    const-string v1, "getAction"

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2427
    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_87

    .line 2428
    :cond_29
    const-string v1, "getData"

    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_87

    .line 2430
    :cond_32
    const-string v1, "getScheme"

    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2431
    const-string v4, "getHost"

    invoke-static {v0, v4, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2432
    const-string v5, "getPath"

    invoke-static {v0, v5, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_49

    .line 2433
    const-string v0, ""

    goto :goto_4d

    :cond_49
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2434
    :goto_4d
    const-string v2, "tg"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 2435
    const-string v1, "eblannft"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 2436
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_7d

    :cond_6d
    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    const-string v1, "/support"

    invoke-static {v1, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2438
    :cond_7d
    :goto_7d
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->requestSupporterPopup()V
    invoke-static {v0}, Lcom/chimeranft/core/Main$Companion;->access$requestSupporterPopup(Lcom/chimeranft/core/Main$Companion;)V

    .line 2439
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_0 .. :try_end_87} :catchall_87

    :catchall_87
    :cond_87
    :goto_87
    return-void
.end method
