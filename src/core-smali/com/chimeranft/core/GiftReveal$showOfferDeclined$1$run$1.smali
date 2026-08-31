.class public final Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1;
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

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1;->$prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 672
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    new-instance v1, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1$run$1;

    iget-object v2, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget-object v3, p0, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1;->$prepared:Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;

    invoke-direct {v1, v2, v3}, Lcom/chimeranft/core/GiftReveal$showOfferDeclined$1$run$1$run$1;-><init>(Lcom/chimeranft/core/GiftReveal;Lcom/chimeranft/core/GiftReveal$PreparedChatMessage;)V

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Main$Companion;->runAfterChatScroll(Ljava/lang/Runnable;)V

    return-void
.end method
