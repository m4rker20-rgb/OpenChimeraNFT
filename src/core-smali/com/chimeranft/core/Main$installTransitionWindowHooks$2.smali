.class public final Lcom/chimeranft/core/Main$installTransitionWindowHooks$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1369
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 1371
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/Main$Companion;->noteTransitionEnd()V

    return-void
.end method
