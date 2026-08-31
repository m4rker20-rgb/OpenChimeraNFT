.class public final Lcom/chimeranft/core/GiftHook$installItemMovedHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installItemMovedHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 710
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installItemMovedHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->applyMoveFromAdapter(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    invoke-static {v0, p1}, Lcom/chimeranft/core/GiftHook;->access$applyMoveFromAdapter(Lcom/chimeranft/core/GiftHook;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    .line 718
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installItemMovedHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemMoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
