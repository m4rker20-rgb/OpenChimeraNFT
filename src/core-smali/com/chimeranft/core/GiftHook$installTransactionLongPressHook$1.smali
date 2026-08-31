.class public final Lcom/chimeranft/core/GiftHook$installTransactionLongPressHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installTransactionLongPressHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 1062
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 1065
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installTransactionLongPressHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 1066
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_12

    aget-object p1, p1, v3

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 1065
    :goto_13
    invoke-virtual {v0, v1, p1}, Lcom/chimeranft/core/GiftHook;->directTransactionRow(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
