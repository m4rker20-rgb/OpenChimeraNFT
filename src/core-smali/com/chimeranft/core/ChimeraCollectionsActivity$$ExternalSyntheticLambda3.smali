.class public final synthetic Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/chimeranft/core/ChimeraCollectionsActivity;

.field public final synthetic f$1:Lcom/chimeranft/core/GiftForge$Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/chimeranft/core/ChimeraCollectionsActivity;

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda3;->f$1:Lcom/chimeranft/core/GiftForge$Collection;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/chimeranft/core/ChimeraCollectionsActivity;

    iget-object v1, p0, Lcom/chimeranft/core/ChimeraCollectionsActivity$$ExternalSyntheticLambda3;->f$1:Lcom/chimeranft/core/GiftForge$Collection;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/chimeranft/core/ChimeraCollectionsActivity;->$r8$lambda$oDZe3dZ-Nan7XFQUau4p-EZ0Emg(Lcom/chimeranft/core/ChimeraCollectionsActivity;Lcom/chimeranft/core/GiftForge$Collection;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
