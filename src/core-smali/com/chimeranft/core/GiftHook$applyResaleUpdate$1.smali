.class public final Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $nanoton:J

.field final synthetic $stars:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->$stars:J

    iput-wide p4, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->$nanoton:J

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1904
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getStore$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/Store;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "resale"

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Store;->saveRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1905
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->this$0:Lcom/chimeranft/core/GiftHook;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftHook;->reloadSelfGifts()V

    .line 1906
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->$stars:J

    iget-wide v4, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->$nanoton:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resale[stars="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nton="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastResellDiag(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_44

    return-void

    :catchall_44
    move-exception v0

    .line 1909
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$applyResaleUpdate$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resellBg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
