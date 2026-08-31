.class public final Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $messageIndex:I

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(ILcom/chimeranft/core/Main;)V
    .registers 3

    iput p1, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->$messageIndex:I

    iput-object p2, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->this$0:Lcom/chimeranft/core/Main;

    .line 1028
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 12

    const/16 v0, 0x9

    .line 1053
    :try_start_2
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->hookDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2c

    .line 1059
    :cond_9
    iget-object v1, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->lastPreparedMessage:Ljava/lang/Object;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getLastPreparedMessage$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_2c

    .line 1060
    :cond_12
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "currentMessageObject"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1d

    goto :goto_2c

    .line 1062
    :cond_1d
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    .line 1063
    iget-object v3, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->this$0:Lcom/chimeranft/core/Main;

    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/chimeranft/core/Main;->prepareChatMessageIdentity$default(Lcom/chimeranft/core/Main;Ljava/lang/Object;Ljava/lang/Object;ZZILjava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2c

    :catchall_2c
    :goto_2c
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 11

    const/16 v0, 0x9

    .line 1033
    :try_start_2
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3c

    .line 1034
    :cond_9
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    array-length v2, v0

    iget v3, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->$messageIndex:I

    if-le v2, v3, :cond_17

    .line 1035
    aget-object v0, v0, v3

    move-object v4, v0

    goto :goto_18

    :cond_17
    move-object v4, v1

    .line 1038
    :goto_18
    iget-object v0, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->this$0:Lcom/chimeranft/core/Main;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/chimeranft/core/Main;->access$setChatPrepareNeedsAfterPass$p(Lcom/chimeranft/core/Main;Z)V

    .line 1039
    iget-object v0, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->this$0:Lcom/chimeranft/core/Main;

    invoke-static {v0, v4}, Lcom/chimeranft/core/Main;->access$setLastPreparedMessage$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V

    .line 1040
    iget-object v2, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->this$0:Lcom/chimeranft/core/Main;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/chimeranft/core/Main;->prepareChatMessageIdentity$default(Lcom/chimeranft/core/Main;Ljava/lang/Object;Ljava/lang/Object;ZZILjava/lang/Object;)Z

    .line 1043
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->chatPrepareNeedsAfterPass:Z
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getChatPrepareNeedsAfterPass$p(Lcom/chimeranft/core/Main;)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;->this$0:Lcom/chimeranft/core/Main;

    invoke-static {p1, v1}, Lcom/chimeranft/core/Main;->access$setLastPreparedMessage$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_3c

    :catchall_3c
    :cond_3c
    :goto_3c
    return-void
.end method
