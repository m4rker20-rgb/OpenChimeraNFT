.class public final Lcom/chimeranft/core/GiftHook$directResellingGiftForm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $callback:Ljava/lang/Object;

.field final synthetic $form:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$directResellingGiftForm$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$directResellingGiftForm$1;->$callback:Ljava/lang/Object;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$directResellingGiftForm$1;->$form:Ljava/lang/Object;

    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2021
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directResellingGiftForm$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$directResellingGiftForm$1;->$callback:Ljava/lang/Object;

    iget-object v2, p0, Lcom/chimeranft/core/GiftHook$directResellingGiftForm$1;->$form:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->runCallback1(Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$runCallback1(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
