.class final Lcom/chimeranft/core/Safe$Guarded;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final body:Ljava/lang/Runnable;

.field private final where:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/Safe$Guarded;->where:Ljava/lang/String;

    iput-object p2, p0, Lcom/chimeranft/core/Safe$Guarded;->body:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 246
    :cond_4
    instance-of v0, p1, Lcom/chimeranft/core/Safe$Guarded;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/chimeranft/core/Safe$Guarded;->body:Ljava/lang/Runnable;

    check-cast p1, Lcom/chimeranft/core/Safe$Guarded;

    iget-object p1, p1, Lcom/chimeranft/core/Safe$Guarded;->body:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 247
    :cond_13
    iget-object v0, p0, Lcom/chimeranft/core/Safe$Guarded;->body:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/chimeranft/core/Safe$Guarded;->body:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 3

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Safe$Guarded;->body:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    .line 235
    iget-object v1, p0, Lcom/chimeranft/core/Safe$Guarded;->where:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/chimeranft/core/Safe$Guarded;->where:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "safe("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
