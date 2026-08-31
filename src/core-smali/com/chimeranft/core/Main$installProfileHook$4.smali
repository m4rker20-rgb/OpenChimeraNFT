.class public final Lcom/chimeranft/core/Main$installProfileHook$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $paCls:Ljava/lang/Class;

.field final synthetic $self:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/chimeranft/core/Main;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$paCls:Ljava/lang/Class;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$self:Lcom/chimeranft/core/Main;

    .line 2708
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2733
    :try_start_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2734
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$paCls:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_2d

    .line 2735
    :cond_14
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace;->afterBegin(I)V

    .line 2736
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    iget-object v2, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$self:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->isSelfProfile(Ljava/lang/Object;)Z
    invoke-static {v2, p1}, Lcom/chimeranft/core/Main;->access$isSelfProfile(Lcom/chimeranft/core/Main;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/chimeranft/core/OpenTrace;->end(IZ)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2d

    :catchall_2d
    :goto_2d
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2713
    :try_start_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2714
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$paCls:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_39

    .line 2715
    :cond_14
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace;->begin(I)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_39

    .line 2718
    :try_start_1e
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$self:Lcom/chimeranft/core/Main;

    const/4 v2, 0x0

    # invokes: Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z
    invoke-static {v0, p1, v2}, Lcom/chimeranft/core/Main;->access$ensureProfileGiftSection(Lcom/chimeranft/core/Main;Ljava/lang/Object;Z)Z
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2e

    .line 2723
    :try_start_24
    iget-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/chimeranft/core/OpenTrace;->beforeDone(I)V

    return-void

    :catchall_2e
    move-exception p1

    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$4;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace;->beforeDone(I)V

    throw p1
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_39

    :catchall_39
    :goto_39
    return-void
.end method
