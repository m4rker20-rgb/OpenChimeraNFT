.class public final Lcom/chimeranft/core/GiftFastLane$Prepared;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final card:Lcom/chimeranft/core/GiftFastLane$CardTemplate;

.field public final gift:Ljava/lang/Object;

.field public final wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/chimeranft/core/GiftFastLane$CardTemplate;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/GiftFastLane$Prepared;->wrapper:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/GiftFastLane$Prepared;->gift:Ljava/lang/Object;

    iput-object p3, p0, Lcom/chimeranft/core/GiftFastLane$Prepared;->card:Lcom/chimeranft/core/GiftFastLane$CardTemplate;

    return-void
.end method
