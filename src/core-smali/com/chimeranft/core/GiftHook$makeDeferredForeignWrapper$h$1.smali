.class public final Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $collectionId:I

.field final synthetic $firstPage:Z

.field final synthetic $original:Ljava/lang/Object;

.field final synthetic $rec:Lorg/json/JSONObject;

.field final synthetic $uid:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;JLorg/json/JSONObject;ZI)V
    .registers 8

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$original:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$uid:J

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$rec:Lorg/json/JSONObject;

    iput-boolean p6, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$firstPage:Z

    iput p7, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$collectionId:I

    .line 8405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 8408
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    if-eqz p3, :cond_12

    array-length p1, p3

    const/4 v0, 0x2

    if-ge p1, v0, :cond_14

    :cond_12
    move-object v9, p2

    goto :goto_6b

    .line 8412
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 8413
    aget-object p1, v5, p1

    const/4 p3, 0x1

    .line 8414
    aget-object p3, v5, p3

    if-nez p3, :cond_25

    if-nez p1, :cond_27

    :cond_25
    move-object v9, p2

    goto :goto_5b

    .line 8421
    :cond_27
    new-instance v0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$uid:J

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$rec:Lorg/json/JSONObject;

    iget-boolean v6, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$firstPage:Z

    iget v7, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$collectionId:I

    iget-object v8, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$original:Ljava/lang/Object;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;-><init>(Lcom/chimeranft/core/GiftHook;JLorg/json/JSONObject;[Ljava/lang/Object;ZILjava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 8420
    const-string p1, "chimeranft-foreign-response"

    const/4 p2, 0x5

    invoke-static {p1, p2, v0}, Lcom/chimeranft/core/Safe;->start(Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 8456
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide p2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$uid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->decrementDeferredForeign(J)V
    invoke-static {p1, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$decrementDeferredForeign(Lcom/chimeranft/core/GiftHook;J)V

    .line 8457
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-string p2, "fdeferStart: thread refused"

    invoke-virtual {p1, p2}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 8458
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$original:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2, v9, v5}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_59
    const/4 p1, 0x0

    return-object p1

    .line 8417
    :goto_5b
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide p2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$uid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->decrementDeferredForeign(J)V
    invoke-static {p1, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$decrementDeferredForeign(Lcom/chimeranft/core/GiftHook;J)V

    .line 8418
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$original:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2, v9, v5}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8410
    :goto_6b
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1;->$original:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2, v9, p3}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
