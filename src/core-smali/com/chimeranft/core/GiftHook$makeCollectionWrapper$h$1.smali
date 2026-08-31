.class public final Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $createGiftIds:Ljava/util/List;

.field final synthetic $mutationCollectionId:I

.field final synthetic $original:Ljava/lang/Object;

.field final synthetic $ownerId:J

.field final synthetic $requestedTitle:Ljava/lang/String;

.field final synthetic $self:Z

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(ILcom/chimeranft/core/GiftHook;Ljava/lang/String;Ljava/util/List;JZLjava/lang/Object;)V
    .registers 9

    iput p1, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$mutationCollectionId:I

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$requestedTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$createGiftIds:Ljava/util/List;

    iput-wide p5, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$ownerId:J

    iput-boolean p7, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$self:Z

    iput-object p8, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$original:Ljava/lang/Object;

    .line 6912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 6915
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dc

    if-eqz p3, :cond_dc

    array-length p1, p3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_dc

    const/4 p1, 0x0

    .line 6919
    :try_start_13
    aget-object v0, p3, p1

    .line 6920
    iget v1, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$mutationCollectionId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_98

    if-nez v0, :cond_20

    const/4 v1, 0x0

    goto :goto_27

    .line 6922
    :cond_20
    const-string v1, "collection_id"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v1, v0

    :goto_27
    if-gtz v1, :cond_58

    .line 6923
    aget-object v0, p3, v4

    if-eqz v0, :cond_58

    .line 6925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v5, 0x29b92700

    rem-long/2addr v0, v5

    long-to-int v1, v0

    const v0, 0x3b9aca00

    add-int/2addr v1, v0

    .line 6926
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$requestedTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$createGiftIds:Ljava/util/List;

    if-nez v5, :cond_44

    const/4 v5, 0x0

    goto :goto_4b

    :cond_44
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_4b
    # invokes: Lcom/chimeranft/core/GiftHook;->newLocalCollection(ILjava/lang/String;I)Ljava/lang/Object;
    invoke-static {v0, v1, v2, v5}, Lcom/chimeranft/core/GiftHook;->access$newLocalCollection(Lcom/chimeranft/core/GiftHook;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 6928
    aput-object v0, p3, p1

    .line 6929
    aput-object v3, p3, v4

    goto :goto_58

    :catchall_56
    move-exception p1

    goto :goto_c0

    :cond_58
    :goto_58
    if-lez v1, :cond_98

    .line 6932
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 6934
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$requestedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/Store;->upsertGiftCollection(ILjava/lang/String;)Ljava/lang/String;

    .line 6935
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$createGiftIds:Ljava/util/List;

    if-eqz v0, :cond_98

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v5, v6, v1, v4}, Lcom/chimeranft/core/Store;->setGiftCollectionMembership(JIZ)Ljava/lang/String;

    goto :goto_7b

    .line 6938
    :cond_98
    aget-object v0, p3, v4

    if-eqz v0, :cond_ae

    iget v0, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$mutationCollectionId:I

    if-lez v0, :cond_ae

    .line 6940
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$requestedTitle:Ljava/lang/String;

    # invokes: Lcom/chimeranft/core/GiftHook;->newLocalCollection(ILjava/lang/String;I)Ljava/lang/Object;
    invoke-static {v1, v0, v2, p1}, Lcom/chimeranft/core/GiftHook;->access$newLocalCollection(Lcom/chimeranft/core/GiftHook;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 6942
    aput-object v0, p3, p1

    .line 6943
    aput-object v3, p3, v4

    .line 6946
    :cond_ae
    aget-object v0, p3, v4

    if-nez v0, :cond_dc

    aget-object p1, p3, p1

    if-eqz p1, :cond_dc

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$ownerId:J

    iget-boolean v3, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$self:Z

    # invokes: Lcom/chimeranft/core/GiftHook;->mergeGiftCollections(Ljava/lang/Object;JZ)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$mergeGiftCollections(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;JZ)V
    :try_end_bf
    .catchall {:try_start_13 .. :try_end_bf} :catchall_56

    goto :goto_dc

    .line 6949
    :goto_c0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectionWrap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 6953
    :cond_dc
    :goto_dc
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$makeCollectionWrapper$h$1;->$original:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, v0, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
