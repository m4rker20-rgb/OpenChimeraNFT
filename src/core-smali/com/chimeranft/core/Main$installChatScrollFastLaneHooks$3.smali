.class public final Lcom/chimeranft/core/Main$installChatScrollFastLaneHooks$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1155
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 1162
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isChatScrollingFast()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_23

    :cond_9
    const/16 v1, 0xa

    .line 1163
    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->enter(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_23

    :cond_12
    const/4 v1, 0x2

    .line 1164
    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->optionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isChatScrollingNow()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 1165
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_23
    :goto_23
    return-void
.end method
