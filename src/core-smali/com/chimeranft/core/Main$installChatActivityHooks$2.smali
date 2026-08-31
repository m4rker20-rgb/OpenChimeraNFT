.class public final Lcom/chimeranft/core/Main$installChatActivityHooks$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$2;->this$0:Lcom/chimeranft/core/Main;

    .line 1259
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 1264
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$2;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->activeChatFragment:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveChatFragment$p(Lcom/chimeranft/core/Main;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_f

    .line 1265
    :cond_b
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_16

    .line 1266
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    if-eq v0, p1, :cond_16

    goto :goto_35

    .line 1267
    :cond_16
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$2;->this$0:Lcom/chimeranft/core/Main;

    invoke-static {p1, v1}, Lcom/chimeranft/core/Main;->access$setActiveChatFragment$p(Lcom/chimeranft/core/Main;Ljava/lang/ref/WeakReference;)V

    .line 1268
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$2;->this$0:Lcom/chimeranft/core/Main;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chimeranft/core/Main;->access$setChatBroadcastDormant$p(Lcom/chimeranft/core/Main;Z)V

    .line 1269
    invoke-static {}, Lcom/chimeranft/core/Repaint;->onChatClosed()V

    .line 1270
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$2;->this$0:Lcom/chimeranft/core/Main;

    const-wide/16 v1, 0x0

    # invokes: Lcom/chimeranft/core/Main;->setScrollWindow(J)V
    invoke-static {p1, v1, v2}, Lcom/chimeranft/core/Main;->access$setScrollWindow(Lcom/chimeranft/core/Main;J)V

    .line 1271
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$2;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->armEmojiFreezeSlot(Z)V
    invoke-static {p1, v0}, Lcom/chimeranft/core/Main;->access$armEmojiFreezeSlot(Lcom/chimeranft/core/Main;Z)V

    .line 1272
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatActivityHooks$2;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->ensureFlingSlotsLive()V
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$ensureFlingSlotsLive(Lcom/chimeranft/core/Main;)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_35

    :catchall_35
    :goto_35
    return-void
.end method
