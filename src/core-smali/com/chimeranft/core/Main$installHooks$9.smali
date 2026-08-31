.class public final Lcom/chimeranft/core/Main$installHooks$9;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $bg:Lcom/chimeranft/core/Badges;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Badges;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installHooks$9;->$bg:Lcom/chimeranft/core/Badges;

    .line 935
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8

    const/4 v0, 0x5

    .line 940
    :try_start_1
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_50

    .line 941
    :cond_8
    iget-object v1, p0, Lcom/chimeranft/core/Main$installHooks$9;->$bg:Lcom/chimeranft/core/Badges;

    if-eqz v1, :cond_4d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Badges;->hasAnyUser()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4d

    .line 946
    :cond_16
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "user"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_21

    goto :goto_50

    .line 948
    :cond_21
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_49

    .line 949
    iget-object v3, p0, Lcom/chimeranft/core/Main$installHooks$9;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v2}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_49

    .line 954
    :cond_39
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->tick(I)J

    move-result-wide v3

    .line 955
    iget-object v5, p0, Lcom/chimeranft/core/Main$installHooks$9;->$bg:Lcom/chimeranft/core/Badges;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v1, v2}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    .line 956
    invoke-static {v0, v3, v4}, Lcom/chimeranft/core/Tuning;->tock(IJ)V

    return-void

    .line 951
    :cond_49
    :goto_49
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V

    return-void

    .line 943
    :cond_4d
    :goto_4d
    invoke-static {v0}, Lcom/chimeranft/core/Tuning;->fastOut(I)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_50

    :catchall_50
    :goto_50
    return-void
.end method
