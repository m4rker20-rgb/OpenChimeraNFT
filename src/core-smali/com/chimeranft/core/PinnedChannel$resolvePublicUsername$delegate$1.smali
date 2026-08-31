.class public final Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $account:I

.field final synthetic $channelId:J

.field final synthetic $mc:Ljava/lang/Object;

.field final synthetic $participants:I


# direct methods
.method constructor <init>(Ljava/lang/Object;IJI)V
    .registers 6

    iput-object p1, p0, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;->$mc:Ljava/lang/Object;

    iput p2, p0, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;->$account:I

    iput-wide p3, p0, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;->$channelId:J

    iput p5, p0, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;->$participants:I

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 260
    :try_start_0
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    if-eqz p3, :cond_23

    array-length p1, p3

    if-lez p1, :cond_23

    const/4 p1, 0x0

    .line 261
    aget-object v6, p3, p1

    if-eqz v6, :cond_23

    .line 262
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    iget-object v1, p0, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;->$mc:Ljava/lang/Object;

    iget v2, p0, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;->$account:I

    iget-wide v3, p0, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;->$channelId:J

    iget v5, p0, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;->$participants:I

    # invokes: Lcom/chimeranft/core/PinnedChannel;->onUsernameResolved(Ljava/lang/Object;IJILjava/lang/Object;)V
    invoke-static/range {v0 .. v6}, Lcom/chimeranft/core/PinnedChannel;->access$onUsernameResolved(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;IJILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_23

    :catchall_23
    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method
