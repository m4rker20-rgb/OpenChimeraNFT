.class public final Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $uid:J

.field final synthetic this$0:Lcom/chimeranft/core/RemoteIdentity;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/RemoteIdentity;J)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iput-wide p2, p0, Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;->$uid:J

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iget-wide v1, p0, Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;->$uid:J

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->announceNow(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/RemoteIdentity;->access$announceNow(Lcom/chimeranft/core/RemoteIdentity;J)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    .line 401
    iget-object v1, p0, Lcom/chimeranft/core/RemoteIdentity$scheduleAnnounce$r$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "announceNow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/RemoteIdentity;->setLastError(Ljava/lang/String;)V

    return-void
.end method
