.class final Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;

    invoke-direct {v0}, Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;-><init>()V

    sput-object v0, Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;->INSTANCE:Lcom/chimeranft/core/IosCustomization$EmphasizedDecelerate;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 364
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    sub-float p1, v1, p1

    mul-float v0, p1, p1

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    sub-float/2addr v1, v0

    return v1
.end method
