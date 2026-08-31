.class public final Lcom/chimeranft/core/Main$installSupporterPopupHooks$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2344
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 2349
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    .line 2350
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/chimeranft/core/Main;->isChimeraSupporterProfileVisible()Z
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$isChimeraSupporterProfileVisible(Lcom/chimeranft/core/Main;)Z

    move-result v1

    if-eqz v1, :cond_1d

    # getter for: Lcom/chimeranft/core/Main;->supporterPopupCallback:Ljava/lang/Runnable;
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getSupporterPopupCallback$cp()Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_1d

    .line 2351
    :cond_16
    # invokes: Lcom/chimeranft/core/Main$Companion;->requestSupporterPopup()V
    invoke-static {v0}, Lcom/chimeranft/core/Main$Companion;->access$requestSupporterPopup(Lcom/chimeranft/core/Main$Companion;)V

    const/4 v0, 0x0

    .line 2352
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1d

    :catchall_1d
    :cond_1d
    :goto_1d
    return-void
.end method
