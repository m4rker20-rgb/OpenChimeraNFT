.class public final Lcom/chimeranft/core/Main$installTransitionWindowHooks$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1388
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 1390
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # getter for: Lcom/chimeranft/core/Main;->TRANSITION_MAX_MS:J
    invoke-static {}, Lcom/chimeranft/core/Main;->access$getTRANSITION_MAX_MS$cp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/Main$Companion;->noteUiPulse(J)V

    return-void
.end method
