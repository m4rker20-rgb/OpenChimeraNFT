.class public final Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$2;->this$0:Lcom/chimeranft/core/Main;

    .line 2140
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    const/16 v0, 0xd

    .line 2145
    :try_start_2
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_37

    .line 2146
    :cond_9
    iget-object v1, p0, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$2;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 2148
    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->hasAnySupporter()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    goto :goto_34

    .line 2153
    :cond_1e
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v2

    .line 2154
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/chimeranft/core/Badges;->isOurSupporterDto(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2155
    :cond_30
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Tuning;->tock(IJ)V

    return-void

    .line 2150
    :cond_34
    :goto_34
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_37

    :catchall_37
    :goto_37
    return-void
.end method
