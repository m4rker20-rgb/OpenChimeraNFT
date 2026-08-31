.class public Lkotlin/ranges/IntProgression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# static fields
.field public static final Companion:Lkotlin/ranges/IntProgression$Companion;


# instance fields
.field private final first:I

.field private final last:I

.field private final step:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/IntProgression$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1c

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_14

    .line 93
    iput p1, p0, Lkotlin/ranges/IntProgression;->first:I

    .line 98
    invoke-static {p1, p2, p3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result p1

    iput p1, p0, Lkotlin/ranges/IntProgression;->last:I

    .line 103
    iput p3, p0, Lkotlin/ranges/IntProgression;->step:I

    return-void

    .line 87
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 116
    instance-of v0, p1, Lkotlin/ranges/IntProgression;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/IntProgression;

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 117
    :cond_13
    iget v0, p0, Lkotlin/ranges/IntProgression;->first:I

    check-cast p1, Lkotlin/ranges/IntProgression;

    iget v1, p1, Lkotlin/ranges/IntProgression;->first:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Lkotlin/ranges/IntProgression;->last:I

    iget v1, p1, Lkotlin/ranges/IntProgression;->last:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Lkotlin/ranges/IntProgression;->step:I

    iget p1, p1, Lkotlin/ranges/IntProgression;->step:I

    if-ne v0, p1, :cond_29

    :cond_27
    const/4 p1, 0x1

    return p1

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method public final getFirst()I
    .registers 2

    .line 93
    iget v0, p0, Lkotlin/ranges/IntProgression;->first:I

    return v0
.end method

.method public final getLast()I
    .registers 2

    .line 98
    iget v0, p0, Lkotlin/ranges/IntProgression;->last:I

    return v0
.end method

.method public final getStep()I
    .registers 2

    .line 103
    iget v0, p0, Lkotlin/ranges/IntProgression;->step:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 120
    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget v0, p0, Lkotlin/ranges/IntProgression;->first:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/ranges/IntProgression;->last:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/ranges/IntProgression;->step:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 5

    .line 113
    iget v0, p0, Lkotlin/ranges/IntProgression;->step:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_e

    iget v0, p0, Lkotlin/ranges/IntProgression;->first:I

    iget v3, p0, Lkotlin/ranges/IntProgression;->last:I

    if-le v0, v3, :cond_d

    return v2

    :cond_d
    return v1

    :cond_e
    iget v0, p0, Lkotlin/ranges/IntProgression;->first:I

    iget v3, p0, Lkotlin/ranges/IntProgression;->last:I

    if-ge v0, v3, :cond_15

    return v2

    :cond_15
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 78
    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lkotlin/collections/IntIterator;
    .registers 5

    .line 105
    new-instance v0, Lkotlin/ranges/IntProgressionIterator;

    iget v1, p0, Lkotlin/ranges/IntProgression;->first:I

    iget v2, p0, Lkotlin/ranges/IntProgression;->last:I

    iget v3, p0, Lkotlin/ranges/IntProgression;->step:I

    invoke-direct {v0, v1, v2, v3}, Lkotlin/ranges/IntProgressionIterator;-><init>(III)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 122
    iget v0, p0, Lkotlin/ranges/IntProgression;->step:I

    const-string v1, " step "

    if-lez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lkotlin/ranges/IntProgression;->first:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/ranges/IntProgression;->last:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/ranges/IntProgression;->step:I

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lkotlin/ranges/IntProgression;->first:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/ranges/IntProgression;->last:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/ranges/IntProgression;->step:I

    neg-int v1, v1

    goto :goto_1f
.end method
