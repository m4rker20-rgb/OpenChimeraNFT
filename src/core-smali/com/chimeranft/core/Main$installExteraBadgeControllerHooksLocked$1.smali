.class public final Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$1;->this$0:Lcom/chimeranft/core/Main;

    .line 2106
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 9

    const/4 v0, 0x6

    .line 2111
    :try_start_1
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3d

    .line 2112
    :cond_8
    iget-object v1, p0, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 2115
    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->hasAny()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2116
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v2, :cond_3a

    array-length v2, v2

    if-nez v2, :cond_1e

    goto :goto_3a

    .line 2121
    :cond_1e
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v2

    .line 2122
    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v6}, Lcom/chimeranft/core/Badges;->exteraSupporterBadge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2123
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Tuning;->tock(IJ)V

    if-eqz v1, :cond_3d

    .line 2124
    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void

    .line 2118
    :cond_3a
    :goto_3a
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3d

    :catchall_3d
    :cond_3d
    :goto_3d
    return-void
.end method
