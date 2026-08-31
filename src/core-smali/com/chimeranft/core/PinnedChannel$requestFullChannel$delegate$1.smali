.class public final Lcom/chimeranft/core/PinnedChannel$requestFullChannel$delegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $channelId:J

.field final synthetic $mc:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;J)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/PinnedChannel$requestFullChannel$delegate$1;->$mc:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/chimeranft/core/PinnedChannel$requestFullChannel$delegate$1;->$channelId:J

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 311
    :try_start_0
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    if-eqz p3, :cond_3b

    array-length p1, p3

    if-lez p1, :cond_3b

    const/4 p1, 0x0

    .line 312
    aget-object p1, p3, p1

    if-eqz p1, :cond_3b

    .line 314
    const-string p2, "full_chat"

    invoke-static {p1, p2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 315
    const-string p2, "participants_count"

    invoke-static {p1, p2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_3b

    .line 318
    sget-object p3, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    iget-object v0, p0, Lcom/chimeranft/core/PinnedChannel$requestFullChannel$delegate$1;->$mc:Ljava/lang/Object;

    iget-wide v1, p0, Lcom/chimeranft/core/PinnedChannel$requestFullChannel$delegate$1;->$channelId:J

    # invokes: Lcom/chimeranft/core/PinnedChannel;->getChat(Ljava/lang/Object;J)Ljava/lang/Object;
    invoke-static {p3, v0, v1, v2}, Lcom/chimeranft/core/PinnedChannel;->access$getChat(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    long-to-int p2, p1

    # invokes: Lcom/chimeranft/core/PinnedChannel;->stampParticipants(Ljava/lang/Object;I)V
    invoke-static {p3, v0, p2}, Lcom/chimeranft/core/PinnedChannel;->access$stampParticipants(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;I)V

    .line 319
    iget-wide p1, p0, Lcom/chimeranft/core/PinnedChannel$requestFullChannel$delegate$1;->$channelId:J

    # invokes: Lcom/chimeranft/core/PinnedChannel;->postRepaint(J)V
    invoke-static {p3, p1, p2}, Lcom/chimeranft/core/PinnedChannel;->access$postRepaint(Lcom/chimeranft/core/PinnedChannel;J)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3b

    :catchall_3b
    :cond_3b
    const/4 p1, 0x0

    return-object p1
.end method
