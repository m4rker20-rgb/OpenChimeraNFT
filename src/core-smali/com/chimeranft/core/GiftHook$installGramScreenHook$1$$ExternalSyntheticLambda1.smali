.class public final synthetic Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/chimeranft/core/GiftHook;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda1;->f$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda1;->f$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook$installGramScreenHook$1;->$r8$lambda$AHeucCwENEkR6-Qwwwh6VBdATgA(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void
.end method
