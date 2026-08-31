.class public final synthetic Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ZLjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda4;->f$1:Z

    iput-object p3, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda4;->f$1:Z

    iget-object v2, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/StickerTweaks;->$r8$lambda$iQvDpcAV_Z_-Y4cuP-sRW4TFC8Y(Landroid/app/Activity;ZLjava/lang/Object;)V

    return-void
.end method
