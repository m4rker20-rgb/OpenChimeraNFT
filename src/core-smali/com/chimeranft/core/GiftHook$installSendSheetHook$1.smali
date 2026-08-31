.class public final Lcom/chimeranft/core/GiftHook$installSendSheetHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installSendSheetHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 3393
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 3398
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 3399
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installSendSheetHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    new-instance v1, Lcom/chimeranft/core/GiftHook$installSendSheetHook$1$afterHookedMethod$1;

    invoke-direct {v1, v0, p1}, Lcom/chimeranft/core/GiftHook$installSendSheetHook$1$afterHookedMethod$1;-><init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    const-wide/16 v2, 0x30

    # invokes: Lcom/chimeranft/core/GiftHook;->postUi(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$postUi(Lcom/chimeranft/core/GiftHook;Ljava/lang/Runnable;J)V

    return-void
.end method
