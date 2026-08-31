.class public final Lcom/chimeranft/core/GiftReveal$onChatBecameVisible$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftReveal;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$onChatBecameVisible$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1471
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$onChatBecameVisible$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/chimeranft/core/GiftReveal;->triggerFireworks$default(Lcom/chimeranft/core/GiftReveal;IILjava/lang/Object;)V

    return-void
.end method
