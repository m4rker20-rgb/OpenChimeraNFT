.class public abstract Lkotlin/internal/ProgressionUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final differenceModulo(III)I
    .registers 3

    .line 21
    invoke-static {p0, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result p0

    invoke-static {p1, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result p0

    return p0
.end method

.method public static final getProgressionLastElement(III)I
    .registers 3

    if-lez p2, :cond_b

    if-lt p0, p1, :cond_5

    goto :goto_f

    .line 46
    :cond_5
    invoke-static {p1, p0, p2}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_b
    if-gez p2, :cond_17

    if-gt p0, p1, :cond_10

    :goto_f
    return p1

    :cond_10
    neg-int p2, p2

    .line 47
    invoke-static {p0, p1, p2}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 48
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final mod(II)I
    .registers 2

    .line 10
    rem-int/2addr p0, p1

    if-ltz p0, :cond_4

    return p0

    :cond_4
    add-int/2addr p0, p1

    return p0
.end method
