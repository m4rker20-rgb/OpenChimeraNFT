.class public final Lcom/chimeranft/core/Repaint$DRAIN$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 53
    sget-object v0, Lcom/chimeranft/core/Repaint;->INSTANCE:Lcom/chimeranft/core/Repaint;

    # invokes: Lcom/chimeranft/core/Repaint;->flush()V
    invoke-static {v0}, Lcom/chimeranft/core/Repaint;->access$flush(Lcom/chimeranft/core/Repaint;)V

    return-void
.end method
