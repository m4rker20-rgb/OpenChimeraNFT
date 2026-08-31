.class public final Lcom/chimeranft/core/GiftForge$Pools;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backdrops:Ljava/util/List;

.field private final models:Ljava/util/List;

.field private final patterns:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/chimeranft/core/GiftForge$Pools;->models:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/chimeranft/core/GiftForge$Pools;->patterns:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/chimeranft/core/GiftForge$Pools;->backdrops:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBackdrops()Ljava/util/List;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Pools;->backdrops:Ljava/util/List;

    return-object v0
.end method

.method public final getEmpty()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Pools;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Pools;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Pools;->backdrops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final getModels()Ljava/util/List;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Pools;->models:Ljava/util/List;

    return-object v0
.end method

.method public final getPatterns()Ljava/util/List;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Pools;->patterns:Ljava/util/List;

    return-object v0
.end method
