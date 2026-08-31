.class public final Lcom/chimeranft/core/Main$installHooks$8;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $bg:Lcom/chimeranft/core/Badges;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Badges;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installHooks$8;->$bg:Lcom/chimeranft/core/Badges;

    .line 883
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 10

    const/4 v0, 0x4

    .line 888
    :try_start_1
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_58

    .line 889
    :cond_8
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$8;->$bg:Lcom/chimeranft/core/Badges;

    if-eqz v1, :cond_55

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->hasAny()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_55

    .line 894
    :cond_16
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 895
    instance-of v2, v1, Ljava/lang/Number;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_27

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_28

    :cond_27
    move-wide v1, v3

    :goto_28
    cmp-long v5, v1, v3

    if-eqz v5, :cond_2d

    goto :goto_58

    .line 897
    :cond_2d
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 898
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v5

    if-eqz v1, :cond_45

    .line 899
    array-length v2, v1

    if-lez v2, :cond_45

    iget-object v2, p0, Lcom/chimeranft/core/Main$installHooks$8;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x0

    aget-object v1, v1, v7

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/Badges;->iconForEntity(Ljava/lang/Object;)J

    move-result-wide v1

    goto :goto_46

    :cond_45
    move-wide v1, v3

    .line 900
    :goto_46
    invoke-static {v0, v5, v6}, Lcom/chimeranft/core/Tuning;->tock(IJ)V

    cmp-long v0, v1, v3

    if-lez v0, :cond_58

    .line 901
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void

    .line 891
    :cond_55
    :goto_55
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_58

    :catchall_58
    :cond_58
    :goto_58
    return-void
.end method
