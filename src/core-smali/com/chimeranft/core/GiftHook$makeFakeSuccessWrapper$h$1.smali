.class public final Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $countFaked:Z

.field final synthetic $original:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;ZLjava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-boolean p2, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->$countFaked:Z

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->$original:Ljava/lang/Object;

    .line 8239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 8243
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    if-eqz p3, :cond_55

    array-length p1, p3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_55

    const/4 p1, 0x1

    aget-object v0, p3, p1

    if-eqz v0, :cond_55

    .line 8247
    :try_start_17
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # invokes: Lcom/chimeranft/core/GiftHook;->newBoolTrue()Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$newBoolTrue(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    const/4 v1, 0x0

    .line 8249
    aput-object v0, p3, v1

    const/4 v0, 0x0

    .line 8250
    aput-object v0, p3, p1

    .line 8251
    iget-boolean p1, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->$countFaked:Z

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftHook;->getActionFaked()J

    move-result-wide v0

    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/GiftHook;->setActionFaked(J)V
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_38

    goto :goto_55

    :catchall_38
    move-exception p1

    .line 8255
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fakewrap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 8259
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeFakeSuccessWrapper$h$1;->$original:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, v0, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
