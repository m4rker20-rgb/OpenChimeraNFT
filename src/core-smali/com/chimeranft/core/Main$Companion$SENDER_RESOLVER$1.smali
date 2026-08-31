.class public final Lcom/chimeranft/core/Main$Companion$SENDER_RESOLVER$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/CellStamps$UidResolver;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/Object;)J
    .registers 4

    .line 5386
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->messageSenderUserId(Ljava/lang/Object;)J
    invoke-static {v0, p1}, Lcom/chimeranft/core/Main$Companion;->access$messageSenderUserId(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
