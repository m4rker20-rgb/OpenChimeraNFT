.class public final Lcom/chimeranft/core/Notifier$refresh$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Notifier;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Notifier;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Notifier$refresh$r$1;->this$0:Lcom/chimeranft/core/Notifier;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Notifier$refresh$r$1;->this$0:Lcom/chimeranft/core/Notifier;

    # invokes: Lcom/chimeranft/core/Notifier;->doRefresh()V
    invoke-static {v0}, Lcom/chimeranft/core/Notifier;->access$doRefresh(Lcom/chimeranft/core/Notifier;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    .line 123
    iget-object v1, p0, Lcom/chimeranft/core/Notifier$refresh$r$1;->this$0:Lcom/chimeranft/core/Notifier;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Notifier;->lastError:Ljava/lang/String;

    return-void
.end method
