.class public final Lcom/chimeranft/core/SyncClient$pushResetSnapshotAsync$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/SyncClient;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/SyncClient;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/SyncClient$pushResetSnapshotAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/SyncClient$pushResetSnapshotAsync$1;->this$0:Lcom/chimeranft/core/SyncClient;

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->pushResetSnapshot()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method
