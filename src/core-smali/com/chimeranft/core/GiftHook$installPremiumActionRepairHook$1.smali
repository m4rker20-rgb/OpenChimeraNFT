.class public final Lcom/chimeranft/core/GiftHook$installPremiumActionRepairHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installPremiumActionRepairHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 3696
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 3699
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installPremiumActionRepairHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->repairPremiumAction(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/chimeranft/core/GiftHook;->access$repairPremiumAction(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void
.end method
