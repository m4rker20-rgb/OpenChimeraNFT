.class public final Lcom/chimeranft/core/GiftFastLane$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/GiftFastLane$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$containsIgnoreCase(Lcom/chimeranft/core/GiftFastLane$Companion;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/GiftFastLane$Companion;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$keyFor(Lcom/chimeranft/core/GiftFastLane$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 240
    invoke-direct {p0, p1}, Lcom/chimeranft/core/GiftFastLane$Companion;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 263
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_36

    const/4 v2, 0x0

    .line 265
    :goto_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    add-int v3, v1, v2

    .line 266
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 269
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return v0
.end method

.method private final keyFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    .line 246
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/chimeranft/core/GiftFastLane$Companion;->sliceHash(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v0, -0x18

    .line 247
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, p1, v2, v0}, Lcom/chimeranft/core/GiftFastLane$Companion;->sliceHash(Ljava/lang/String;II)I

    move-result v2

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final sliceHash(Ljava/lang/String;II)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_d
    return v0
.end method
