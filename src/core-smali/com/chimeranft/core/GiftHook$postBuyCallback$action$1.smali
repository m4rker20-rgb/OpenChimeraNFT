.class public final Lcom/chimeranft/core/GiftHook$postBuyCallback$action$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $callback:Ljava/lang/Object;

.field final synthetic $ok:Z

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$postBuyCallback$action$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$postBuyCallback$action$1;->$callback:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/chimeranft/core/GiftHook$postBuyCallback$action$1;->$ok:Z

    .line 5007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 5013
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$postBuyCallback$action$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$postBuyCallback$action$1;->$callback:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/chimeranft/core/GiftHook$postBuyCallback$action$1;->$ok:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/chimeranft/core/GiftHook;->runCallback2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/GiftHook;->access$runCallback2(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    .line 5016
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$postBuyCallback$action$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buyCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
