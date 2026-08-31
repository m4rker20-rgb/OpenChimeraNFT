.class public final synthetic Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/chimeranft/core/ChimeraCatalogActivity;

.field public final synthetic f$1:Lcom/chimeranft/core/GiftForge$Base;


# direct methods
.method public synthetic constructor <init>(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda3;->f$0:Lcom/chimeranft/core/ChimeraCatalogActivity;

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda3;->f$1:Lcom/chimeranft/core/GiftForge$Base;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda3;->f$0:Lcom/chimeranft/core/ChimeraCatalogActivity;

    iget-object v1, p0, Lcom/chimeranft/core/ChimeraCatalogActivity$$ExternalSyntheticLambda3;->f$1:Lcom/chimeranft/core/GiftForge$Base;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/chimeranft/core/ChimeraCatalogActivity;->$r8$lambda$Qd1j8ShSLexiqpCOC5C9d4x7P8Q(Lcom/chimeranft/core/ChimeraCatalogActivity;Lcom/chimeranft/core/GiftForge$Base;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
