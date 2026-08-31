.class public final Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $acc:I

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;I)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput p2, p0, Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;->$acc:I

    .line 1733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1735
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    # getter for: Lcom/chimeranft/core/GiftReveal;->pendingDialogReloads:Ljava/util/Set;
    invoke-static {v0}, Lcom/chimeranft/core/GiftReveal;->access$getPendingDialogReloads$p(Lcom/chimeranft/core/GiftReveal;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;->$acc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1736
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget v1, p0, Lcom/chimeranft/core/GiftReveal$bumpDialogsCoalesced$1;->$acc:I

    # invokes: Lcom/chimeranft/core/GiftReveal;->bumpDialogs(I)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftReveal;->access$bumpDialogs(Lcom/chimeranft/core/GiftReveal;I)V

    return-void
.end method
