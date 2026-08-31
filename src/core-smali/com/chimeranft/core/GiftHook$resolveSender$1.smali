.class public final Lcom/chimeranft/core/GiftHook$resolveSender$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $fUname:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$resolveSender$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$resolveSender$1;->$fUname:Ljava/lang/String;

    .line 8660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 8664
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$resolveSender$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$resolveSender$1;->$fUname:Ljava/lang/String;

    # invokes: Lcom/chimeranft/core/GiftHook;->doResolveSender(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$doResolveSender(Lcom/chimeranft/core/GiftHook;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    .line 8667
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$resolveSender$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolve: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
