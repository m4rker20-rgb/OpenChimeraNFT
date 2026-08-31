.class public final Lcom/chimeranft/core/Main$installChatActivityHooks$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $ca:Ljava/lang/Class;

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/chimeranft/core/Main;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->$ca:Ljava/lang/Class;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    .line 1202
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 1221
    iget-object v0, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace;->afterBegin(I)V

    const/16 v0, 0xc

    .line 1224
    :try_start_c
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    if-nez v0, :cond_24

    .line 1247
    :catchall_12
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    iget-object v2, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/Main;->isDialogChat(Ljava/lang/Object;)Z
    invoke-static {v2, p1}, Lcom/chimeranft/core/Main;->access$isDialogChat(Lcom/chimeranft/core/Main;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/chimeranft/core/OpenTrace;->end(IZ)V

    return-void

    .line 1225
    :cond_24
    :try_start_24
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 1226
    iget-object v2, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->$ca:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_12

    .line 1227
    :cond_34
    iget-object v2, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/chimeranft/core/Main;->access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V

    .line 1228
    iget-object v2, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/chimeranft/core/Main;->access$setActiveChatFragment$p(Lcom/chimeranft/core/Main;Ljava/lang/ref/WeakReference;)V

    .line 1229
    iget-object v2, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const-string v4, "currentChat"

    invoke-static {v0, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/chimeranft/core/Main$Companion;->isBroadcastChannel(Ljava/lang/Object;)Z
    invoke-static {v3, v0}, Lcom/chimeranft/core/Main$Companion;->access$isBroadcastChannel(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/chimeranft/core/Main;->access$setChatBroadcastDormant$p(Lcom/chimeranft/core/Main;Z)V

    .line 1235
    iget-object v0, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1236
    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->wakeAccessCheck()V
    :try_end_60
    .catchall {:try_start_24 .. :try_end_60} :catchall_12

    goto :goto_12
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    const/4 v0, 0x2

    .line 1210
    :try_start_1
    iget-object v1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->$ca:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    if-nez p1, :cond_18

    .line 1216
    :catchall_e
    :goto_e
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/OpenTrace;->beforeDone(I)V

    return-void

    .line 1211
    :cond_18
    :try_start_18
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chimeranft/core/OpenTrace;->begin(I)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_e

    goto :goto_e
.end method
