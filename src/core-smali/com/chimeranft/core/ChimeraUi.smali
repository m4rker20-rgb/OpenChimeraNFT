.class public final Lcom/chimeranft/core/ChimeraUi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/ChimeraUi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/ChimeraUi;

    invoke-direct {v0}, Lcom/chimeranft/core/ChimeraUi;-><init>()V

    sput-object v0, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dp(Landroid/content/Context;I)I
    .registers 3

    if-eqz p1, :cond_11

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_11

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    goto :goto_13

    :cond_11
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_13
    int-to-float p2, p2

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public final identifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 36
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    return v0
.end method

.method public final plural(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 52
    const-string v0, ""

    if-eqz p1, :cond_1b

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    goto :goto_1c

    :catchall_19
    nop

    goto :goto_20

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-nez v1, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v0, v1

    .line 56
    :goto_20
    const-string v1, "ru"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_40

    const-string v1, "uk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "be"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_40

    :cond_3c
    if-ne p3, v4, :cond_5a

    :goto_3e
    const/4 v3, 0x0

    goto :goto_5a

    .line 57
    :cond_40
    :goto_40
    rem-int/lit8 v0, p3, 0x64

    .line 58
    rem-int/lit8 v1, p3, 0xa

    if-ne v1, v4, :cond_4b

    const/16 v5, 0xb

    if-eq v0, v5, :cond_4b

    goto :goto_3e

    :cond_4b
    if-gt v3, v1, :cond_5a

    const/4 v5, 0x5

    if-ge v1, v5, :cond_5a

    const/16 v1, 0xc

    if-gt v1, v0, :cond_59

    const/16 v1, 0xf

    if-ge v0, v1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v3, 0x1

    .line 65
    :cond_5a
    :goto_5a
    const-string v0, "Few"

    const-string v1, "Many"

    const-string v5, "One"

    filled-new-array {v5, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    .line 66
    filled-new-array {p4, p5, p6}, [Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, v3

    .line 68
    :try_start_6c
    sget-object p5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/chimeranft/core/ChimeraUi;->string(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p4, v4, [Ljava/lang/Object;

    aput-object p2, p4, v2

    invoke-static {p4, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_6c .. :try_end_96} :catchall_97

    goto :goto_9b

    .line 69
    :catchall_97
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_9b
    return-object p1
.end method

.method public final string(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_3

    goto :goto_19

    .line 29
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_14

    goto :goto_19

    .line 30
    :cond_14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    :goto_19
    return-object p3
.end method
