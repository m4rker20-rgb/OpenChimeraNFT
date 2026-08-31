.class public final Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/CellStamps$HeavyTextResolver;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/Object;)Z
    .registers 3

    .line 5345
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->messageTextIsHeavy(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/chimeranft/core/Main$Companion;->access$messageTextIsHeavy(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
