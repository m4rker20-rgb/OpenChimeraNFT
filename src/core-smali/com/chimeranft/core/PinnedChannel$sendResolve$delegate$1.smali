.class public final Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $account:I

.field final synthetic $attempt:I

.field final synthetic $mc:Ljava/lang/Object;

.field final synthetic $username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$mc:Ljava/lang/Object;

    iput p2, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$account:I

    iput-object p3, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$username:Ljava/lang/String;

    iput p4, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$attempt:I

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 579
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    if-eqz p3, :cond_1b

    .line 582
    :try_start_10
    array-length p1, p3

    if-lez p1, :cond_1b

    const/4 p1, 0x0

    aget-object p1, p3, p1

    move-object v5, p1

    goto :goto_1c

    :catchall_18
    move-exception v0

    move-object p1, v0

    goto :goto_35

    :cond_1b
    move-object v5, p2

    :goto_1c
    if-eqz p3, :cond_26

    .line 583
    array-length p1, p3

    const/4 v0, 0x1

    if-le p1, v0, :cond_26

    aget-object p1, p3, v0

    move-object v6, p1

    goto :goto_27

    :cond_26
    move-object v6, p2

    .line 584
    :goto_27
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    iget-object v1, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$mc:Ljava/lang/Object;

    iget v2, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$account:I

    iget-object v3, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$username:Ljava/lang/String;

    iget v4, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$attempt:I

    # invokes: Lcom/chimeranft/core/PinnedChannel;->onPinResolved(Ljava/lang/Object;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    invoke-static/range {v0 .. v6}, Lcom/chimeranft/core/PinnedChannel;->access$onPinResolved(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_18

    goto :goto_53

    .line 587
    :goto_35
    sget-object p3, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    iget v0, p0, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;->$attempt:I

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V
    invoke-static {p3, v0, p1}, Lcom/chimeranft/core/PinnedChannel;->access$setPinStatus(Lcom/chimeranft/core/PinnedChannel;ILjava/lang/String;)V

    :goto_53
    return-object p2
.end method
