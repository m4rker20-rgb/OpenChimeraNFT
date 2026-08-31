.class public final Lcom/chimeranft/core/Notifier$postProfileInfo$deferred$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $r:Lcom/chimeranft/core/Notifier$postProfileInfo$r$1;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Notifier$postProfileInfo$r$1;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Notifier$postProfileInfo$deferred$1;->$r:Lcom/chimeranft/core/Notifier$postProfileInfo$r$1;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 86
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Notifier$postProfileInfo$deferred$1;->$r:Lcom/chimeranft/core/Notifier$postProfileInfo$r$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/Main$Companion;->runAfterUiScroll(Ljava/lang/Runnable;Z)V

    return-void
.end method
