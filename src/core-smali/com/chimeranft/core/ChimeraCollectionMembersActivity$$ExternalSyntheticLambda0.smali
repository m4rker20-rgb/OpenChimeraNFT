.class public final synthetic Lcom/chimeranft/core/ChimeraCollectionMembersActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/chimeranft/core/ChimeraCollectionMembersActivity;


# direct methods
.method public synthetic constructor <init>(JLcom/chimeranft/core/ChimeraCollectionMembersActivity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity$$ExternalSyntheticLambda0;->f$1:Lcom/chimeranft/core/ChimeraCollectionMembersActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-wide v0, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity$$ExternalSyntheticLambda0;->f$0:J

    iget-object v2, p0, Lcom/chimeranft/core/ChimeraCollectionMembersActivity$$ExternalSyntheticLambda0;->f$1:Lcom/chimeranft/core/ChimeraCollectionMembersActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/chimeranft/core/ChimeraCollectionMembersActivity;->$r8$lambda$5kVWqtu3nEIjw4Ntw4R4TeOdx1Y(JLcom/chimeranft/core/ChimeraCollectionMembersActivity;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
