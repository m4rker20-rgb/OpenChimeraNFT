.class public final Lcom/chimeranft/core/RemoteIdentity$announceNow$1;
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

    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$announceNow$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iput-wide p2, p0, Lcom/chimeranft/core/RemoteIdentity$announceNow$1;->$uid:J

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$announceNow$1;->this$0:Lcom/chimeranft/core/RemoteIdentity;

    iget-wide v1, p0, Lcom/chimeranft/core/RemoteIdentity$announceNow$1;->$uid:J

    # invokes: Lcom/chimeranft/core/RemoteIdentity;->announceNowInner(J)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/RemoteIdentity;->access$announceNowInner(Lcom/chimeranft/core/RemoteIdentity;J)V

    return-void
.end method
