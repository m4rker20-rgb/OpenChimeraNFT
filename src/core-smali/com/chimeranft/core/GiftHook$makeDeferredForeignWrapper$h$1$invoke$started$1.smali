.class public final Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $callArgs:[Ljava/lang/Object;

.field final synthetic $collectionId:I

.field final synthetic $firstPage:Z

.field final synthetic $method:Ljava/lang/reflect/Method;

.field final synthetic $original:Ljava/lang/Object;

.field final synthetic $rec:Lorg/json/JSONObject;

.field final synthetic $uid:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;JLorg/json/JSONObject;[Ljava/lang/Object;ZILjava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 10

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$uid:J

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$rec:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$callArgs:[Ljava/lang/Object;

    iput-boolean p6, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$firstPage:Z

    iput p7, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$collectionId:I

    iput-object p8, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$original:Ljava/lang/Object;

    iput-object p9, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$method:Ljava/lang/reflect/Method;

    .line 8421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 8427
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$uid:J

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$rec:Lorg/json/JSONObject;

    # invokes: Lcom/chimeranft/core/GiftHook;->foreignWrappersFor(JLorg/json/JSONObject;)Ljava/util/List;
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$foreignWrappersFor(Lcom/chimeranft/core/GiftHook;JLorg/json/JSONObject;)Ljava/util/List;

    .line 8428
    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$callArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v5, v0, v1

    iget-wide v6, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$uid:J

    iget-boolean v8, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$firstPage:Z

    iget v9, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$collectionId:I

    # invokes: Lcom/chimeranft/core/GiftHook;->injectForeign(Ljava/lang/Object;JZI)V
    invoke-static/range {v4 .. v9}, Lcom/chimeranft/core/GiftHook;->access$injectForeign(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;JZI)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_2f

    .line 8441
    :try_start_19
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$original:Ljava/lang/Object;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$callArgs:[Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_25

    goto :goto_27

    .line 8443
    :catchall_25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8447
    :goto_27
    :try_start_27
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    :goto_29
    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$uid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->decrementDeferredForeign(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$decrementDeferredForeign(Lcom/chimeranft/core/GiftHook;J)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_5d

    goto :goto_5d

    :catchall_2f
    move-exception v0

    .line 8431
    :try_start_30
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fdefer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_5e

    .line 8441
    :try_start_4c
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$original:Ljava/lang/Object;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$callArgs:[Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_58

    goto :goto_5a

    .line 8443
    :catchall_58
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8447
    :goto_5a
    :try_start_5a
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_5d

    goto :goto_29

    :catchall_5d
    :goto_5d
    return-void

    :catchall_5e
    move-exception v0

    .line 8441
    :try_start_5f
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$original:Ljava/lang/Object;

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$callArgs:[Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v2, v3, v4}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6b

    goto :goto_6d

    .line 8443
    :catchall_6b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8447
    :goto_6d
    :try_start_6d
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$makeDeferredForeignWrapper$h$1$invoke$started$1;->$uid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->decrementDeferredForeign(J)V
    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$decrementDeferredForeign(Lcom/chimeranft/core/GiftHook;J)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_74

    .line 8449
    :catchall_74
    throw v0
.end method
