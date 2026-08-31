.class public final Lcom/chimeranft/core/Main$Companion$postUiAfterScroll$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $action:Ljava/lang/Runnable;

.field final synthetic $gateTransition:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Z)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$Companion$postUiAfterScroll$1;->$action:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/chimeranft/core/Main$Companion$postUiAfterScroll$1;->$gateTransition:Z

    .line 5183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5185
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Main$Companion$postUiAfterScroll$1;->$action:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/chimeranft/core/Main$Companion$postUiAfterScroll$1;->$gateTransition:Z

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/Main$Companion;->runAfterUiScroll(Ljava/lang/Runnable;Z)V

    return-void
.end method
