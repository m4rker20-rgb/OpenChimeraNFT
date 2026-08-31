.class final Lcom/chimeranft/core/IosCustomization$OriginalStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private final bottomMargin:Ljava/lang/Integer;

.field private final elevation:F

.field private final leftMargin:Ljava/lang/Integer;

.field private final minimumHeight:I

.field private final minimumWidth:I

.field private final paddingBottom:I

.field private final paddingLeft:I

.field private final paddingRight:I

.field private final paddingTop:I

.field private final rightMargin:Ljava/lang/Integer;

.field private final topMargin:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIIIIIFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 13

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->background:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumWidth:I

    iput p3, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumHeight:I

    .line 43
    iput p4, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingLeft:I

    iput p5, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingTop:I

    iput p6, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingRight:I

    iput p7, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingBottom:I

    .line 44
    iput p8, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->elevation:F

    iput-object p9, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->leftMargin:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->topMargin:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->rightMargin:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->bottomMargin:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/chimeranft/core/IosCustomization$OriginalStyle;Landroid/graphics/drawable/Drawable;IIIIIIFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/chimeranft/core/IosCustomization$OriginalStyle;
    .registers 15

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_6

    iget-object p1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->background:Landroid/graphics/drawable/Drawable;

    :cond_6
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_c

    iget p2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumWidth:I

    :cond_c
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_12

    iget p3, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumHeight:I

    :cond_12
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_18

    iget p4, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingLeft:I

    :cond_18
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_1e

    iget p5, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingTop:I

    :cond_1e
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_24

    iget p6, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingRight:I

    :cond_24
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_2a

    iget p7, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingBottom:I

    :cond_2a
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_30

    iget p8, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->elevation:F

    :cond_30
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_36

    iget-object p9, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->leftMargin:Ljava/lang/Integer;

    :cond_36
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_3c

    iget-object p10, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->topMargin:Ljava/lang/Integer;

    :cond_3c
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_42

    iget-object p11, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->rightMargin:Ljava/lang/Integer;

    :cond_42
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_48

    iget-object p12, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->bottomMargin:Ljava/lang/Integer;

    :cond_48
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->copy(Landroid/graphics/drawable/Drawable;IIIIIIFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/chimeranft/core/IosCustomization$OriginalStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->topMargin:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->rightMargin:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->bottomMargin:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumWidth:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumHeight:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingLeft:I

    return v0
.end method

.method public final component5()I
    .registers 2

    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingTop:I

    return v0
.end method

.method public final component6()I
    .registers 2

    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingRight:I

    return v0
.end method

.method public final component7()I
    .registers 2

    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingBottom:I

    return v0
.end method

.method public final component8()F
    .registers 2

    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->elevation:F

    return v0
.end method

.method public final component9()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->leftMargin:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Landroid/graphics/drawable/Drawable;IIIIIIFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/chimeranft/core/IosCustomization$OriginalStyle;
    .registers 26

    new-instance v0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/chimeranft/core/IosCustomization$OriginalStyle;-><init>(Landroid/graphics/drawable/Drawable;IIIIIIFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;

    iget-object v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->background:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->background:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumWidth:I

    iget v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumWidth:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumHeight:I

    iget v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumHeight:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingLeft:I

    iget v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingLeft:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingTop:I

    iget v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingTop:I

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingRight:I

    iget v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingRight:I

    if-eq v1, v3, :cond_3a

    return v2

    :cond_3a
    iget v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingBottom:I

    iget v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingBottom:I

    if-eq v1, v3, :cond_41

    return v2

    :cond_41
    iget v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->elevation:F

    iget v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->elevation:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4c

    return v2

    :cond_4c
    iget-object v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->leftMargin:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->leftMargin:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    :cond_57
    iget-object v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->topMargin:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->topMargin:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    return v2

    :cond_62
    iget-object v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->rightMargin:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->rightMargin:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    return v2

    :cond_6d
    iget-object v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->bottomMargin:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->bottomMargin:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    return v2

    :cond_78
    return v0
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getBottomMargin()Ljava/lang/Integer;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->bottomMargin:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getElevation()F
    .registers 2

    .line 44
    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->elevation:F

    return v0
.end method

.method public final getLeftMargin()Ljava/lang/Integer;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->leftMargin:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinimumHeight()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumHeight:I

    return v0
.end method

.method public final getMinimumWidth()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumWidth:I

    return v0
.end method

.method public final getPaddingBottom()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingBottom:I

    return v0
.end method

.method public final getPaddingLeft()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingLeft:I

    return v0
.end method

.method public final getPaddingRight()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingRight:I

    return v0
.end method

.method public final getPaddingTop()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingTop:I

    return v0
.end method

.method public final getRightMargin()Ljava/lang/Integer;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->rightMargin:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTopMargin()Ljava/lang/Integer;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->topMargin:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->background:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumWidth:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumHeight:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingLeft:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingTop:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingRight:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingBottom:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->elevation:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->leftMargin:Ljava/lang/Integer;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->topMargin:Ljava/lang/Integer;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->rightMargin:Ljava/lang/Integer;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->bottomMargin:Ljava/lang/Integer;

    if-nez v2, :cond_60

    goto :goto_64

    :cond_60
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_64
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    iget-object v0, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->background:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumWidth:I

    iget v2, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->minimumHeight:I

    iget v3, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingLeft:I

    iget v4, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingTop:I

    iget v5, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingRight:I

    iget v6, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->paddingBottom:I

    iget v7, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->elevation:F

    iget-object v8, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->leftMargin:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->topMargin:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->rightMargin:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/chimeranft/core/IosCustomization$OriginalStyle;->bottomMargin:Ljava/lang/Integer;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OriginalStyle(background="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", minimumWidth="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minimumHeight="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paddingLeft="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paddingTop="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paddingRight="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", paddingBottom="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", elevation="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", leftMargin="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", topMargin="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightMargin="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bottomMargin="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
