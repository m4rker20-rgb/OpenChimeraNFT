.class public final Lcom/chimeranft/core/Main$scheduleHookInstall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $self:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$scheduleHookInstall$1;->$self:Lcom/chimeranft/core/Main;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleHookInstall$1;->$self:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->installAllHooks()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$installAllHooks(Lcom/chimeranft/core/Main;)V

    return-void
.end method
