.class public final Lcom/chimeranft/core/GiftHook$install$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic $di:I

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;I)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$install$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput p2, p0, Lcom/chimeranft/core/GiftHook$install$1;->$di:I

    .line 478
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$install$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget v1, p0, Lcom/chimeranft/core/GiftHook$install$1;->$di:I

    # invokes: Lcom/chimeranft/core/GiftHook;->onSend(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;I)V
    invoke-static {v0, p1, v1}, Lcom/chimeranft/core/GiftHook;->access$onSend(Lcom/chimeranft/core/GiftHook;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;I)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p1

    .line 487
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$install$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
