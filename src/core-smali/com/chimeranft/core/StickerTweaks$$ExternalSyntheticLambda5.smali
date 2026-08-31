.class public final synthetic Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;Ljava/util/List;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iput p4, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iget v3, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/StickerTweaks;->$r8$lambda$mDBVdVkdvhovq0iGGMjS2NBWwdI(Ljava/lang/Object;Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method
