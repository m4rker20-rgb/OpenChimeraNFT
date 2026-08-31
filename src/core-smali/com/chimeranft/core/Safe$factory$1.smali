.class public final Lcom/chimeranft/core/Safe$factory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic $prefix:Ljava/lang/String;

.field final synthetic $priority:I

.field private final ids:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Safe$factory$1;->$prefix:Ljava/lang/String;

    iput p2, p0, Lcom/chimeranft/core/Safe$factory$1;->$priority:I

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/Safe$factory$1;->ids:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6

    .line 270
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/chimeranft/core/Safe$factory$1;->$prefix:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v1, p0, Lcom/chimeranft/core/Safe$factory$1;->$prefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/chimeranft/core/Safe$factory$1;->ids:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 271
    sget-object p1, Lcom/chimeranft/core/Safe;->INSTANCE:Lcom/chimeranft/core/Safe;

    iget-object v1, p0, Lcom/chimeranft/core/Safe$factory$1;->$prefix:Ljava/lang/String;

    iget v2, p0, Lcom/chimeranft/core/Safe$factory$1;->$priority:I

    # invokes: Lcom/chimeranft/core/Safe;->harden(Ljava/lang/Thread;Ljava/lang/String;I)V
    invoke-static {p1, v0, v1, v2}, Lcom/chimeranft/core/Safe;->access$harden(Lcom/chimeranft/core/Safe;Ljava/lang/Thread;Ljava/lang/String;I)V

    return-object v0
.end method
