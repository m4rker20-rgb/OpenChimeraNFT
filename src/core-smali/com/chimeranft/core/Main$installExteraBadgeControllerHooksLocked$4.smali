.class public final Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$4;->this$0:Lcom/chimeranft/core/Main;

    .line 2192
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 2197
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$4;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2198
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v1, :cond_21

    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_11

    goto :goto_21

    :cond_11
    const/4 v2, 0x1

    .line 2199
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Badges;->isOurSupporterDto(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x3

    aput-object v0, p1, v1
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_21

    :catchall_21
    :cond_21
    :goto_21
    return-void
.end method
