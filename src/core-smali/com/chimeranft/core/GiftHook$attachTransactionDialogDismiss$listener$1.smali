.class public final Lcom/chimeranft/core/GiftHook$attachTransactionDialogDismiss$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$attachTransactionDialogDismiss$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1364
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onDismiss"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1368
    :try_start_c
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$attachTransactionDialogDismiss$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->endTransactionDialog()V
    invoke-static {p1}, Lcom/chimeranft/core/GiftHook;->access$endTransactionDialog(Lcom/chimeranft/core/GiftHook;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_2f

    :catchall_12
    move-exception p1

    .line 1371
    iget-object p3, p0, Lcom/chimeranft/core/GiftHook$attachTransactionDialogDismiss$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "txDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 1375
    :cond_2f
    :goto_2f
    sget-object p1, Lcom/chimeranft/core/GiftHook;->Companion:Lcom/chimeranft/core/GiftHook$Companion;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    # invokes: Lcom/chimeranft/core/GiftHook$Companion;->proxyDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/chimeranft/core/GiftHook$Companion;->access$proxyDefaultValue(Lcom/chimeranft/core/GiftHook$Companion;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
