.class public final synthetic Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/chimeranft/core/StickerTweaks$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/StickerTweaks;->$r8$lambda$Zrr-kwyFuwqKKt3N2ZPf1GOuCmM(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
