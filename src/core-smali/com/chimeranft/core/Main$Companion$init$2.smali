.class public final Lcom/chimeranft/core/Main$Companion$init$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/SyncClient$TransferSink;


# instance fields
.field final synthetic $self:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$Companion$init$2;->$self:Lcom/chimeranft/core/Main;

    .line 4141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(JLorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .line 4143
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$init$2;->$self:Lcom/chimeranft/core/Main;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chimeranft/core/Main;->applyTransfer(JLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    .line 4144
    const-string p1, ""

    :cond_a
    return-object p1
.end method
