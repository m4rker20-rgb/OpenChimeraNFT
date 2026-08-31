.class public final Lcom/chimeranft/core/GiftHook$installResaleConfirmHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installResaleConfirmHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 2070
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8

    .line 2073
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2074
    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_c

    aget-object v2, v0, v3

    goto :goto_d

    :cond_c
    move-object v2, v1

    :goto_d
    if-eqz v0, :cond_16

    .line 2075
    array-length v3, v0

    const/4 v4, 0x4

    if-le v3, v4, :cond_16

    aget-object v3, v0, v4

    goto :goto_17

    :cond_16
    move-object v3, v1

    :goto_17
    if-eqz v0, :cond_2f

    .line 2076
    array-length v4, v0

    const/4 v5, 0x5

    if-le v4, v5, :cond_2f

    aget-object v0, v0, v5

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_2f

    .line 2077
    const-string v4, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_30

    :cond_2f
    const/4 v0, -0x1

    .line 2078
    :goto_30
    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$installResaleConfirmHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2, v3, v0}, Lcom/chimeranft/core/GiftHook;->directResaleConfirm(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2079
    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_3d
    return-void
.end method
