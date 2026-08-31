.class public final Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $accessHash:J

.field final synthetic $attempt:I

.field final synthetic $channelId:J

.field final synthetic $mc:Ljava/lang/Object;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $username:Ljava/lang/String;


# direct methods
.method constructor <init>(IJLjava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .registers 9

    iput p1, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$attempt:I

    iput-wide p2, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$channelId:J

    iput-object p4, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$username:Ljava/lang/String;

    iput-object p5, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$title:Ljava/lang/String;

    iput-wide p6, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$accessHash:J

    iput-object p8, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$mc:Ljava/lang/Object;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 696
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    if-eqz p3, :cond_17

    .line 699
    :try_start_10
    array-length p1, p3

    if-lez p1, :cond_17

    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_18

    :cond_17
    move-object p1, p2

    .line 700
    :goto_18
    const-string p3, "full_chat"

    invoke-static {p1, p3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 701
    const-string p3, "participants_count"

    .line 700
    invoke-static {p1, p3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_79

    .line 702
    sget-object p1, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    iget p3, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$attempt:I

    iget-wide v2, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$channelId:J

    # invokes: Lcom/chimeranft/core/PinnedChannel;->stillOurs(IJ)Z
    invoke-static {p1, p3, v2, v3}, Lcom/chimeranft/core/PinnedChannel;->access$stillOurs(Lcom/chimeranft/core/PinnedChannel;IJ)Z

    move-result p3

    if-eqz p3, :cond_79

    .line 704
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    iget-wide v4, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$channelId:J

    iget-object v6, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$username:Ljava/lang/String;

    iget-object v7, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$title:Ljava/lang/String;

    long-to-int v8, v0

    .line 705
    # invokes: Lcom/chimeranft/core/PinnedChannel;->latestPostId(J)I
    invoke-static {p1, v4, v5}, Lcom/chimeranft/core/PinnedChannel;->access$latestPostId(Lcom/chimeranft/core/PinnedChannel;J)I

    move-result v9

    iget-wide v10, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$accessHash:J

    const/4 v3, 0x1

    .line 704
    invoke-virtual/range {v2 .. v11}, Lcom/chimeranft/core/Main$Companion;->setPinnedChannel(IJLjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    .line 706
    iget-object p3, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$mc:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$channelId:J

    # invokes: Lcom/chimeranft/core/PinnedChannel;->getChat(Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {p1, p3, v2, v3}, Lcom/chimeranft/core/PinnedChannel;->access$getChat(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    # invokes: Lcom/chimeranft/core/PinnedChannel;->stampParticipants(Ljava/lang/Object;I)V
    invoke-static {p1, p3, v8}, Lcom/chimeranft/core/PinnedChannel;->access$stampParticipants(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;I)V

    .line 707
    iget p3, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$attempt:I

    iget-object v2, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$title:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ok|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V
    invoke-static {p1, p3, v0}, Lcom/chimeranft/core/PinnedChannel;->access$setPinStatus(Lcom/chimeranft/core/PinnedChannel;ILjava/lang/String;)V

    .line 708
    iget-wide v0, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;->$channelId:J

    # invokes: Lcom/chimeranft/core/PinnedChannel;->postRepaint(J)V
    invoke-static {p1, v0, v1}, Lcom/chimeranft/core/PinnedChannel;->access$postRepaint(Lcom/chimeranft/core/PinnedChannel;J)V
    :try_end_79
    .catchall {:try_start_10 .. :try_end_79} :catchall_79

    :catchall_79
    :cond_79
    return-object p2
.end method
