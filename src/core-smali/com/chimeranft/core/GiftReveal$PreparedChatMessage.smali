.class final Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acc:I

.field private messages:Ljava/util/ArrayList;

.field private mo:Ljava/lang/Object;

.field private msg:Ljava/lang/Object;

.field private objects:Ljava/util/ArrayList;

.field private outgoing:Z

.field private peerId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAcc()I
    .registers 2

    .line 983
    iget v0, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->acc:I

    return v0
.end method

.method public final getMessages()Ljava/util/ArrayList;
    .registers 2

    .line 988
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMo()Ljava/lang/Object;
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->mo:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMsg()Ljava/lang/Object;
    .registers 2

    .line 986
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->msg:Ljava/lang/Object;

    return-object v0
.end method

.method public final getObjects()Ljava/util/ArrayList;
    .registers 2

    .line 989
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOutgoing()Z
    .registers 2

    .line 985
    iget-boolean v0, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->outgoing:Z

    return v0
.end method

.method public final getPeerId()J
    .registers 3

    .line 984
    iget-wide v0, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->peerId:J

    return-wide v0
.end method

.method public final setAcc(I)V
    .registers 2

    .line 983
    iput p1, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->acc:I

    return-void
.end method

.method public final setMessages(Ljava/util/ArrayList;)V
    .registers 2

    .line 988
    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->messages:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMo(Ljava/lang/Object;)V
    .registers 2

    .line 987
    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->mo:Ljava/lang/Object;

    return-void
.end method

.method public final setMsg(Ljava/lang/Object;)V
    .registers 2

    .line 986
    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->msg:Ljava/lang/Object;

    return-void
.end method

.method public final setObjects(Ljava/util/ArrayList;)V
    .registers 2

    .line 989
    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->objects:Ljava/util/ArrayList;

    return-void
.end method

.method public final setOutgoing(Z)V
    .registers 2

    .line 985
    iput-boolean p1, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->outgoing:Z

    return-void
.end method

.method public final setPeerId(J)V
    .registers 3

    .line 984
    iput-wide p1, p0, Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;->peerId:J

    return-void
.end method
