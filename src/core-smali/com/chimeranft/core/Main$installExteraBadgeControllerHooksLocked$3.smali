.class public final Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$3;->this$0:Lcom/chimeranft/core/Main;

    .line 2169
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 2174
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_32

    .line 2175
    :cond_d
    iget-object v0, p0, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$3;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 2176
    invoke-virtual {v0}, Lcom/chimeranft/core/Badges;->hasAnySupporter()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2177
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v1, :cond_32

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_24

    goto :goto_32

    :cond_24
    const/4 v2, 0x1

    .line 2179
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Badges;->isOurSupporterDto(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_32

    :catchall_32
    :cond_32
    :goto_32
    return-void
.end method
