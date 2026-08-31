.class public final Lcom/chimeranft/core/Main$installExteraBadgeSourceHookLocked$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installExteraBadgeSourceHookLocked$1;->this$0:Lcom/chimeranft/core/Main;

    .line 2258
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 10

    const/4 v0, 0x7

    .line 2263
    :try_start_1
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_50

    .line 2264
    :cond_8
    iget-object v1, p0, Lcom/chimeranft/core/Main$installExteraBadgeSourceHookLocked$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 2265
    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->hasAny()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2266
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v2, :cond_4d

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1f

    goto :goto_4d

    :cond_1f
    const/4 v3, 0x0

    .line 2271
    aget-object v2, v2, v3

    const-string v3, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 2272
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2273
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v5

    .line 2274
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/chimeranft/core/Badges;->exteraSupporterBadgeForId(JZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2275
    invoke-static {v0, v5, v6}, Lcom/chimeranft/core/Tuning;->tock(IJ)V

    if-eqz v1, :cond_50

    .line 2276
    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void

    .line 2268
    :cond_4d
    :goto_4d
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_50

    :catchall_50
    :cond_50
    :goto_50
    return-void
.end method
