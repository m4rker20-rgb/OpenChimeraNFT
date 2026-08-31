.class public final Lcom/chimeranft/core/PinnedChannel$postRepaint$task$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $channelId:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    iput-wide p1, p0, Lcom/chimeranft/core/PinnedChannel$postRepaint$task$1;->$channelId:J

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 821
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    iget-wide v1, p0, Lcom/chimeranft/core/PinnedChannel$postRepaint$task$1;->$channelId:J

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/Main$Companion;->onPinnedChannelResolved(J)V

    return-void
.end method
