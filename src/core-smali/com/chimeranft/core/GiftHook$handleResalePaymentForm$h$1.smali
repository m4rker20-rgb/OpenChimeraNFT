.class public final Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $form:Ljava/lang/Object;

.field final synthetic $original:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->$form:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->$original:Ljava/lang/Object;

    .line 5901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 5908
    :try_start_0
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    if-eqz p3, :cond_51

    array-length p1, p3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_51

    const/4 p1, 0x0

    .line 5909
    aget-object v0, p3, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    aget-object v0, p3, v1

    if-eqz v0, :cond_51

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_35

    .line 5911
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->$form:Ljava/lang/Object;

    aput-object v0, p3, p1

    const/4 p1, 0x0

    .line 5912
    aput-object p1, p3, v1

    .line 5913
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {p1}, Lcom/chimeranft/core/GiftHook;->getFormFaked()J

    move-result-wide v0

    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/GiftHook;->setFormFaked(J)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_1d

    goto :goto_51

    .line 5917
    :goto_35
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formSwap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 5920
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleResalePaymentForm$h$1;->$original:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, v0, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
