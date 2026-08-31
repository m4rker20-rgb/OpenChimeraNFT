.class public final Lcom/chimeranft/core/Main$notifyVisualBalanceChanged$update$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $self:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$notifyVisualBalanceChanged$update$1;->$self:Lcom/chimeranft/core/Main;

    .line 3111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 3113
    iget-object v0, p0, Lcom/chimeranft/core/Main$notifyVisualBalanceChanged$update$1;->$self:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->notifyVisualBalanceChangedOnUi()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$notifyVisualBalanceChangedOnUi(Lcom/chimeranft/core/Main;)V

    return-void
.end method
