.class public final Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $row:Ljava/lang/Object;

.field final synthetic $transaction:Ljava/lang/Object;

.field private lastClickMs:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->$row:Ljava/lang/Object;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->$transaction:Ljava/lang/Object;

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1134
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onClick"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1137
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->lastClickMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x15e

    cmp-long p3, v0, v2

    if-lez p3, :cond_43

    .line 1139
    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->lastClickMs:J

    .line 1143
    :try_start_1c
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->$row:Ljava/lang/Object;

    iget-object p3, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->$transaction:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->openNativeTransactionDetails(Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-static {p1, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$openNativeTransactionDetails(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    goto :goto_43

    :catchall_26
    move-exception p1

    .line 1146
    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$setTransactionClick$listener$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "txClick: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    :cond_43
    :goto_43
    const/4 p1, 0x0

    return-object p1

    .line 1152
    :cond_45
    sget-object p1, Lcom/chimeranft/core/GiftHook;->Companion:Lcom/chimeranft/core/GiftHook$Companion;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    # invokes: Lcom/chimeranft/core/GiftHook$Companion;->proxyDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/chimeranft/core/GiftHook$Companion;->access$proxyDefaultValue(Lcom/chimeranft/core/GiftHook$Companion;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
