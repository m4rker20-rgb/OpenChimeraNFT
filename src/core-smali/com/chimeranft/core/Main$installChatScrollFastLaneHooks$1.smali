.class public final Lcom/chimeranft/core/Main$installChatScrollFastLaneHooks$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installChatScrollFastLaneHooks$1;->this$0:Lcom/chimeranft/core/Main;

    .line 1093
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    const/16 v0, 0xb

    .line 1096
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 1108
    :cond_9
    :try_start_9
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    if-nez v1, :cond_13

    .line 1110
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    :catchall_11
    move-exception p1

    goto :goto_3c

    .line 1113
    :cond_13
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    array-length v2, p1

    if-lez v2, :cond_2c

    .line 1114
    aget-object p1, p1, v0

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_2c

    .line 1115
    const-string v0, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1123
    :cond_2c
    iget-object p1, p0, Lcom/chimeranft/core/Main$installChatScrollFastLaneHooks$1;->this$0:Lcom/chimeranft/core/Main;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    # invokes: Lcom/chimeranft/core/Main$Companion;->isChatListClass(Ljava/lang/Class;)Z
    invoke-static {v2, v3}, Lcom/chimeranft/core/Main$Companion;->access$isChatListClass(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;)Z

    move-result v2

    # invokes: Lcom/chimeranft/core/Main;->onScrollState(Ljava/lang/Object;IZ)V
    invoke-static {p1, v1, v0, v2}, Lcom/chimeranft/core/Main;->access$onScrollState(Lcom/chimeranft/core/Main;Ljava/lang/Object;IZ)V
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_11

    return-void

    .line 1126
    :goto_3c
    const-string v0, "main.setScrollState"

    invoke-static {v0, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
