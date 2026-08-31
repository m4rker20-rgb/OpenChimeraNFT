.class public final Lcom/chimeranft/core/GiftFastLane$CardTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final availabilityIssued:J

.field public final availabilityTotal:J

.field public final convertStars:J

.field public final giftId:J

.field public final renderRevision:I

.field public final stars:J

.field public final title:Ljava/lang/String;

.field public final unique:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 15

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->giftId:J

    .line 51
    const-string v2, "stars"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->stars:J

    .line 52
    const-string v4, "convert_stars"

    invoke-static {p1, v4}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->convertStars:J

    .line 53
    const-string v6, "availability_total"

    invoke-static {p1, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->availabilityTotal:J

    .line 54
    const-string v8, "availability_issued"

    invoke-static {p1, v8}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->availabilityIssued:J

    if-eqz p1, :cond_41

    .line 55
    sget-object v10, Lcom/chimeranft/core/GiftFastLane;->Companion:Lcom/chimeranft/core/GiftFastLane$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "unique"

    # invokes: Lcom/chimeranft/core/GiftFastLane$Companion;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11, v12}, Lcom/chimeranft/core/GiftFastLane$Companion;->access$containsIgnoreCase(Lcom/chimeranft/core/GiftFastLane$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_41

    const/4 v10, 0x1

    goto :goto_42

    :cond_41
    const/4 v10, 0x0

    :goto_42
    iput-boolean v10, p0, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->unique:Z

    .line 56
    const-string v10, "title"

    invoke-static {p1, v10}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4f

    .line 57
    const-string p1, ""

    goto :goto_53

    :cond_4f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_53
    iput-object p1, p0, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->title:Ljava/lang/String;

    const/4 v10, 0x7

    shl-long/2addr v2, v10

    xor-long/2addr v0, v2

    const/16 v2, 0xd

    shl-long v2, v4, v2

    xor-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, v6, v2

    xor-long/2addr v0, v2

    xor-long/2addr v0, v8

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v2, p1

    xor-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/chimeranft/core/GiftFastLane$CardTemplate;->renderRevision:I

    return-void
.end method
