.class public final Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $uid:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;J)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->$uid:J

    .line 3333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 3335
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->$uid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->cachedRecipientName(J)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$cachedRecipientName(Lcom/chimeranft/core/GiftHook;J)Ljava/lang/String;

    .line 3336
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getSync$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getSync$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->$uid:J

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/SyncClient;->prefetchRemoteState(J)V

    .line 3337
    :cond_1d
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->getSendRecipientPrewarms()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$prewarmSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chimeranft/core/GiftHook;->setSendRecipientPrewarms(J)V

    return-void
.end method
