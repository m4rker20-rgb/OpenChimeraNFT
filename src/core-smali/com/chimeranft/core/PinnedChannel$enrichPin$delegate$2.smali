.class public final Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $accessHash:J

.field final synthetic $attempt:I

.field final synthetic $channelId:J

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $username:Ljava/lang/String;


# direct methods
.method constructor <init>(IJLjava/lang/String;Ljava/lang/String;J)V
    .registers 8

    iput p1, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$attempt:I

    iput-wide p2, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$channelId:J

    iput-object p4, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$username:Ljava/lang/String;

    iput-object p5, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$title:Ljava/lang/String;

    iput-wide p6, p0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$accessHash:J

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 733
    const-string v2, "run"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return-object v3

    :cond_12
    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 736
    :try_start_15
    array-length v4, v1

    if-lez v4, :cond_1b

    aget-object v1, v1, v2

    goto :goto_1c

    :cond_1b
    move-object v1, v3

    .line 737
    :goto_1c
    const-string v4, "messages"

    invoke-static {v1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 738
    instance-of v4, v1, Ljava/util/List;

    if-eqz v4, :cond_6b

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6b

    .line 740
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_6b

    .line 741
    sget-object v4, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    iget v5, v0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$attempt:I

    iget-wide v6, v0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$channelId:J

    # invokes: Lcom/chimeranft/core/PinnedChannel;->stillOurs(IJ)Z
    invoke-static {v4, v5, v6, v7}, Lcom/chimeranft/core/PinnedChannel;->access$stillOurs(Lcom/chimeranft/core/PinnedChannel;IJ)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 743
    iget-wide v5, v0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$channelId:J

    # invokes: Lcom/chimeranft/core/PinnedChannel;->rememberPostId(JJ)V
    invoke-static {v4, v5, v6, v1, v2}, Lcom/chimeranft/core/PinnedChannel;->access$rememberPostId(Lcom/chimeranft/core/PinnedChannel;JJ)V

    .line 744
    sget-object v7, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    iget-wide v9, v0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$channelId:J

    iget-object v11, v0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$username:Ljava/lang/String;

    iget-object v12, v0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$title:Ljava/lang/String;

    .line 745
    # invokes: Lcom/chimeranft/core/PinnedChannel;->currentParticipants(J)I
    invoke-static {v4, v9, v10}, Lcom/chimeranft/core/PinnedChannel;->access$currentParticipants(Lcom/chimeranft/core/PinnedChannel;J)I

    move-result v13

    long-to-int v14, v1

    iget-wide v1, v0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$accessHash:J

    const/4 v8, 0x1

    move-wide v15, v1

    .line 744
    invoke-virtual/range {v7 .. v16}, Lcom/chimeranft/core/Main$Companion;->setPinnedChannel(IJLjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    .line 746
    iget-wide v1, v0, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;->$channelId:J

    # invokes: Lcom/chimeranft/core/PinnedChannel;->postRepaint(J)V
    invoke-static {v4, v1, v2}, Lcom/chimeranft/core/PinnedChannel;->access$postRepaint(Lcom/chimeranft/core/PinnedChannel;J)V
    :try_end_6b
    .catchall {:try_start_15 .. :try_end_6b} :catchall_6b

    :catchall_6b
    :cond_6b
    return-object v3
.end method
