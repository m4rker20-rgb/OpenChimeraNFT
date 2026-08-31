.class public final Lcom/chimeranft/core/GiftReveal$sheetFireworks$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $sheet:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/chimeranft/core/GiftReveal;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/GiftReveal$sheetFireworks$r$1;->$sheet:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$sheetFireworks$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    .line 1600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1604
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftReveal$sheetFireworks$r$1;->$sheet:Ljava/lang/Object;

    const-string v1, "fireworksOverlay"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1605
    iget-object v1, p0, Lcom/chimeranft/core/GiftReveal$sheetFireworks$r$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-string v2, "start"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    # invokes: Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v0, v2, v3}, Lcom/chimeranft/core/GiftReveal;->access$invokeFlexible(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_19

    :catchall_19
    :cond_19
    return-void
.end method
