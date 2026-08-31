.class public final Lcom/chimeranft/core/Main$installProfileHook$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $paCls:Ljava/lang/Class;

.field final synthetic $self:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/chimeranft/core/Main;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$paCls:Ljava/lang/Class;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$self:Lcom/chimeranft/core/Main;

    .line 2666
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2685
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$paCls:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_29

    .line 2686
    :cond_e
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace;->afterBegin(I)V

    .line 2687
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    iget-object v2, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$self:Lcom/chimeranft/core/Main;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/Main;->isSelfProfile(Ljava/lang/Object;)Z
    invoke-static {v2, p1}, Lcom/chimeranft/core/Main;->access$isSelfProfile(Lcom/chimeranft/core/Main;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/chimeranft/core/OpenTrace;->end(IZ)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_29

    :catchall_29
    :goto_29
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2669
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$paCls:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 2670
    :cond_e
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace;->begin(I)V

    .line 2673
    :try_start_18
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$self:Lcom/chimeranft/core/Main;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v2, 0x0

    # invokes: Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z
    invoke-static {v0, p1, v2}, Lcom/chimeranft/core/Main;->access$ensureProfileGiftSection(Lcom/chimeranft/core/Main;Ljava/lang/Object;Z)Z
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 2678
    :catchall_20
    iget-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$3;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/chimeranft/core/OpenTrace;->beforeDone(I)V

    return-void
.end method
