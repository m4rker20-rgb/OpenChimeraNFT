.class public final Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $collectionId:I

.field final synthetic $firstPage:Z

.field final synthetic $original:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;ZILjava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-boolean p2, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->$firstPage:Z

    iput p3, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->$collectionId:I

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->$original:Ljava/lang/Object;

    .line 8334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 8338
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    if-eqz p3, :cond_43

    array-length p1, p3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_43

    const/4 p1, 0x0

    .line 8342
    :try_start_13
    aget-object p1, p3, p1

    const/4 v0, 0x1

    .line 8343
    aget-object v0, p3, v0

    if-nez v0, :cond_43

    if-eqz p1, :cond_43

    .line 8344
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-boolean v1, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->$firstPage:Z

    iget v2, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->$collectionId:I

    # invokes: Lcom/chimeranft/core/GiftHook;->inject(Ljava/lang/Object;ZI)V
    invoke-static {v0, p1, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$inject(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;ZI)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_43

    :catchall_26
    move-exception p1

    .line 8347
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 8351
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeWrapper$h$1;->$original:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, v0, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
