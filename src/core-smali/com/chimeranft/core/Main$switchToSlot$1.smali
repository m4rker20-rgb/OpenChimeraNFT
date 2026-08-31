.class public final Lcom/chimeranft/core/Main$switchToSlot$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $gh:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$switchToSlot$1;->$gh:Lcom/chimeranft/core/GiftHook;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/chimeranft/core/Main$switchToSlot$1;->$gh:Lcom/chimeranft/core/GiftHook;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->warmInjection()V

    return-void
.end method
