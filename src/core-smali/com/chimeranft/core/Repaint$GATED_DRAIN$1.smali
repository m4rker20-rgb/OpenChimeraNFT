.class public final Lcom/chimeranft/core/Repaint$GATED_DRAIN$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 60
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # getter for: Lcom/chimeranft/core/Repaint;->DRAIN:Lcom/chimeranft/core/Repaint$DRAIN$1;
    invoke-static {}, Lcom/chimeranft/core/Repaint;->access$getDRAIN$p()Lcom/chimeranft/core/Repaint$DRAIN$1;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/chimeranft/core/Main$Companion;->runAfterUiScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    return-void
.end method
