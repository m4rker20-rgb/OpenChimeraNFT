.class public final Lcom/chimeranft/core/GiftHook$doResolveSender$delegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $username:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$doResolveSender$delegate$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$doResolveSender$delegate$1;->$username:Ljava/lang/String;

    .line 8689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 8693
    :try_start_0
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bb

    if-eqz p3, :cond_bb

    array-length p1, p3

    const/4 p2, 0x1

    if-lt p1, p2, :cond_bb

    const/4 p1, 0x0

    aget-object p3, p3, p1

    if-eqz p3, :cond_bb

    .line 8695
    const-string v0, "users"

    invoke-static {p3, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 8696
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_bb

    invoke-static {p3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_9e

    if-nez v0, :cond_bb

    .line 8702
    :try_start_2b
    move-object v0, p3

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 8703
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_58

    .line 8704
    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$doResolveSender$delegate$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->unameUid:Ljava/util/Map;
    invoke-static {v2}, Lcom/chimeranft/core/GiftHook;->access$getUnameUid$p(Lcom/chimeranft/core/GiftHook;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$doResolveSender$delegate$1;->$username:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_58

    .line 8708
    :catchall_58
    :cond_58
    :try_start_58
    # getter for: Lcom/chimeranft/core/GiftHook;->UC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getUC$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedAccount"

    invoke-static {v0, v1, p1}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 8709
    # getter for: Lcom/chimeranft/core/GiftHook;->MC:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getMC$cp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInstance"

    new-array v3, p2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, p2, [Ljava/lang/Object;

    aput-object v0, v4, p1

    invoke-static {v1, v2, v3, v4}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 8711
    const-string v1, "putUsers"

    const/4 v2, 0x2

    .line 8712
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/ArrayList;

    aput-object v4, v3, p1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p2

    .line 8713
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v4, p3, p1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, p3, p2

    .line 8711
    invoke-static {v0, v1, v3, p3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catchall {:try_start_58 .. :try_end_9d} :catchall_9e

    goto :goto_bb

    :catchall_9e
    move-exception p1

    .line 8718
    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$doResolveSender$delegate$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resolveCb: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    :cond_bb
    :goto_bb
    const/4 p1, 0x0

    return-object p1
.end method
