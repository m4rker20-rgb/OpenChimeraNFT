.class public final Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $baseGiftId:J

.field final synthetic $byPrice:Z

.field final synthetic $original:Ljava/lang/Object;

.field final synthetic $starsOnly:Z

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;JZZLjava/lang/Object;)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->$baseGiftId:J

    iput-boolean p4, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->$byPrice:Z

    iput-boolean p5, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->$starsOnly:Z

    iput-object p6, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->$original:Ljava/lang/Object;

    .line 5846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 5854
    :try_start_0
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    if-eqz p3, :cond_46

    array-length p1, p3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_46

    const/4 p1, 0x0

    .line 5855
    aget-object v1, p3, p1

    if-eqz v1, :cond_46

    const/4 p1, 0x1

    aget-object p1, p3, p1

    if-nez p1, :cond_46

    .line 5856
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->$baseGiftId:J

    iget-boolean v4, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->$byPrice:Z

    iget-boolean v5, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->$starsOnly:Z

    # invokes: Lcom/chimeranft/core/GiftHook;->injectMarketListings(Ljava/lang/Object;JZZ)V
    invoke-static/range {v0 .. v5}, Lcom/chimeranft/core/GiftHook;->access$injectMarketListings(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;JZZ)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    goto :goto_46

    :catchall_28
    move-exception v0

    move-object p1, v0

    .line 5859
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marketInject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    .line 5862
    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$handleResaleMarket$h$1;->$original:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->invokeOriginal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, v0, p2, p3}, Lcom/chimeranft/core/GiftHook;->access$invokeOriginal(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
