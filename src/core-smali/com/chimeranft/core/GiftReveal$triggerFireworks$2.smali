.class public final Lcom/chimeranft/core/GiftReveal$triggerFireworks$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $next:I

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;I)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$triggerFireworks$2;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput p2, p0, Lcom/chimeranft/core/GiftReveal$triggerFireworks$2;->$next:I

    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1774
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$triggerFireworks$2;->this$0:Lcom/chimeranft/core/GiftReveal;

    iget v1, p0, Lcom/chimeranft/core/GiftReveal$triggerFireworks$2;->$next:I

    # invokes: Lcom/chimeranft/core/GiftReveal;->triggerFireworks(I)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftReveal;->access$triggerFireworks(Lcom/chimeranft/core/GiftReveal;I)V

    return-void
.end method
