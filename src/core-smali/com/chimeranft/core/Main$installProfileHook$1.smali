.class public final Lcom/chimeranft/core/Main$installProfileHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $paCls:Ljava/lang/Class;

.field final synthetic $self:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/chimeranft/core/Main;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$paCls:Ljava/lang/Class;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    .line 2566
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2592
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace;->afterBegin(I)V

    .line 2595
    :try_start_a
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$paCls:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/Main;->onProfileResume(Ljava/lang/Object;)V
    invoke-static {v0, v2}, Lcom/chimeranft/core/Main;->access$onProfileResume(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V

    .line 2598
    :cond_1e
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2599
    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->wakeAccessCheck()V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_29

    .line 2604
    :catchall_29
    :cond_29
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    iget-object v2, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/Main;->isSelfProfile(Ljava/lang/Object;)Z
    invoke-static {v2, p1}, Lcom/chimeranft/core/Main;->access$isSelfProfile(Lcom/chimeranft/core/Main;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/chimeranft/core/OpenTrace;->end(IZ)V

    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    const/4 v0, 0x2

    .line 2571
    :try_start_1
    iget-object v1, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$paCls:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    if-nez v1, :cond_18

    .line 2587
    :catchall_e
    :goto_e
    iget-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/OpenTrace;->beforeDone(I)V

    return-void

    .line 2576
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/OpenTrace;->begin(I)V

    .line 2581
    iget-object v1, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->ensureAccount()V
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$ensureAccount(Lcom/chimeranft/core/Main;)V

    .line 2582
    iget-object v1, p0, Lcom/chimeranft/core/Main$installProfileHook$1;->$self:Lcom/chimeranft/core/Main;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v2, 0x1

    # invokes: Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z
    invoke-static {v1, p1, v2}, Lcom/chimeranft/core/Main;->access$ensureProfileGiftSection(Lcom/chimeranft/core/Main;Ljava/lang/Object;Z)Z
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_e

    goto :goto_e
.end method
