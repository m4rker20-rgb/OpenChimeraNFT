.class public final Lcom/chimeranft/core/Main$hookTracePhase$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $chat:Z

.field final synthetic $guard:Ljava/lang/Class;

.field final synthetic $phase:I

.field final synthetic $self:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Ljava/lang/Class;ZLcom/chimeranft/core/Main;I)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$guard:Ljava/lang/Class;

    iput-boolean p2, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$chat:Z

    iput-object p3, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$self:Lcom/chimeranft/core/Main;

    iput p4, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$phase:I

    .line 2490
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 2507
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$guard:Ljava/lang/Class;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 2508
    :cond_b
    iget-boolean v0, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$chat:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    .line 2509
    :goto_1c
    iget v1, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$phase:I

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace;->afterBegin(I)V

    .line 2510
    iget v1, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$phase:I

    iget-boolean v2, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$chat:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$self:Lcom/chimeranft/core/Main;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/Main;->isDialogChat(Ljava/lang/Object;)Z
    invoke-static {v2, p1}, Lcom/chimeranft/core/Main;->access$isDialogChat(Lcom/chimeranft/core/Main;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_38

    .line 2511
    :cond_30
    iget-object v2, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$self:Lcom/chimeranft/core/Main;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/Main;->isSelfProfile(Ljava/lang/Object;)Z
    invoke-static {v2, p1}, Lcom/chimeranft/core/Main;->access$isSelfProfile(Lcom/chimeranft/core/Main;Ljava/lang/Object;)Z

    move-result p1

    .line 2510
    :goto_38
    invoke-virtual {v0, v1, p1}, Lcom/chimeranft/core/OpenTrace;->end(IZ)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3b

    :catchall_3b
    :goto_3b
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 2495
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$guard:Ljava/lang/Class;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_26

    .line 2496
    :cond_b
    iget-boolean p1, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$chat:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object p1

    goto :goto_1c

    :cond_16
    iget-object p1, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$self:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object p1

    .line 2497
    :goto_1c
    iget v0, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$phase:I

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/OpenTrace;->begin(I)V

    .line 2498
    iget v0, p0, Lcom/chimeranft/core/Main$hookTracePhase$1;->$phase:I

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/OpenTrace;->beforeDone(I)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_26

    :catchall_26
    :goto_26
    return-void
.end method
