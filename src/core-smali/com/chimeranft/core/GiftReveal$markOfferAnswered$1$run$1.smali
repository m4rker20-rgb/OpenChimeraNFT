.class public final Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;->$prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;->$prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    # invokes: Lcom/chimeranft/core/GiftReveal;->publishPreparedMessage(Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftReveal;->access$publishPreparedMessage(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;->$prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    # invokes: Lcom/chimeranft/core/GiftReveal;->replaceInOpenChat(Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftReveal;->access$replaceInOpenChat(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    .line 806
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$markOfferAnswered$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offerDoneEXC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftReveal;->setLastResult(Ljava/lang/String;)V

    return-void
.end method
