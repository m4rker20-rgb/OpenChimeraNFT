.class public final Lcom/chimeranft/core/GiftHook$showDeleteTransactionDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field private done:Z

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$showDeleteTransactionDialog$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$showDeleteTransactionDialog$1;->$id:Ljava/lang/String;

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1282
    iget-boolean p1, p0, Lcom/chimeranft/core/GiftHook$showDeleteTransactionDialog$1;->done:Z

    if-nez p1, :cond_44

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onClick"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "run"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    :cond_1c
    const/4 p1, 0x1

    .line 1286
    iput-boolean p1, p0, Lcom/chimeranft/core/GiftHook$showDeleteTransactionDialog$1;->done:Z

    .line 1289
    :try_start_1f
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$showDeleteTransactionDialog$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$showDeleteTransactionDialog$1;->$id:Ljava/lang/String;

    # invokes: Lcom/chimeranft/core/GiftHook;->deleteVisualTransaction(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/chimeranft/core/GiftHook;->access$deleteVisualTransaction(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_44

    :catchall_27
    move-exception p1

    .line 1292
    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$showDeleteTransactionDialog$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "txDelete: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    :cond_44
    :goto_44
    const/4 p1, 0x0

    return-object p1
.end method
