.class public final Lcom/chimeranft/core/Main$installHooks$7;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $bg:Lcom/chimeranft/core/Badges;

.field final synthetic $sc:Lcom/chimeranft/core/SyncClient;

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/Main$installHooks$7;->$bg:Lcom/chimeranft/core/Badges;

    iput-object p2, p0, Lcom/chimeranft/core/Main$installHooks$7;->this$0:Lcom/chimeranft/core/Main;

    iput-object p3, p0, Lcom/chimeranft/core/Main$installHooks$7;->$sc:Lcom/chimeranft/core/SyncClient;

    .line 844
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8

    const/4 v0, 0x3

    .line 849
    :try_start_1
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_51

    .line 850
    :cond_8
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_12

    move-wide v3, v1

    goto :goto_18

    .line 851
    :cond_12
    const-string v3, "id"

    invoke-static {v0, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    :goto_18
    cmp-long v5, v3, v1

    if-nez v5, :cond_35

    .line 852
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz p1, :cond_35

    array-length v1, p1

    if-lez v1, :cond_35

    const/4 v1, 0x0

    .line 853
    aget-object p1, p1, v1

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_35

    .line 854
    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 855
    :cond_35
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$7;->$bg:Lcom/chimeranft/core/Badges;

    if-eqz p1, :cond_4a

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chimeranft/core/Badges;->hasAnyChat()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$7;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v3, v4}, Lcom/chimeranft/core/Badges;->applyChatForId(Ljava/lang/Object;J)Z

    .line 856
    :cond_4a
    iget-object p1, p0, Lcom/chimeranft/core/Main$installHooks$7;->this$0:Lcom/chimeranft/core/Main;

    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$7;->$sc:Lcom/chimeranft/core/SyncClient;

    # invokes: Lcom/chimeranft/core/Main;->maybeBumpChannelGifts(Lcom/chimeranft/core/SyncClient;Ljava/lang/Object;)V
    invoke-static {p1, v1, v0}, Lcom/chimeranft/core/Main;->access$maybeBumpChannelGifts(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_51

    :catchall_51
    :goto_51
    return-void
.end method
