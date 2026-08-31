.class public final Lcom/chimeranft/core/GiftHook$directTransactionRow$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $row:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$directTransactionRow$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$directTransactionRow$listener$1;->$row:Ljava/lang/Object;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$directTransactionRow$listener$1;->$id:Ljava/lang/String;

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1094
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onLongClick"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1095
    :try_start_c
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$directTransactionRow$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$directTransactionRow$listener$1;->$row:Ljava/lang/Object;

    iget-object p3, p0, Lcom/chimeranft/core/GiftHook$directTransactionRow$listener$1;->$id:Ljava/lang/String;

    # invokes: Lcom/chimeranft/core/GiftHook;->showDeleteTransactionDialog(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {p1, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$showDeleteTransactionDialog(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_33

    :catchall_16
    move-exception p1

    .line 1096
    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$directTransactionRow$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "txLongClick: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 1097
    :goto_33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 1099
    :cond_36
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onLongClickUseDefaultHapticFeedback"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 1100
    :cond_45
    sget-object p1, Lcom/chimeranft/core/GiftHook;->Companion:Lcom/chimeranft/core/GiftHook$Companion;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    # invokes: Lcom/chimeranft/core/GiftHook$Companion;->proxyDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/chimeranft/core/GiftHook$Companion;->access$proxyDefaultValue(Lcom/chimeranft/core/GiftHook$Companion;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
