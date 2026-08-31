.class public final synthetic Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/chimeranft/core/ChimeraConstructorActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/chimeranft/core/ChimeraConstructorActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda6;->f$1:Lcom/chimeranft/core/ChimeraConstructorActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$$ExternalSyntheticLambda6;->f$1:Lcom/chimeranft/core/ChimeraConstructorActivity;

    check-cast p1, Lkotlin/Pair;

    invoke-static {v0, v1, p1}, Lcom/chimeranft/core/ChimeraConstructorActivity;->$r8$lambda$v9tlB-qsvOReoeQkdEjCsoMMFX8(Lkotlin/jvm/functions/Function1;Lcom/chimeranft/core/ChimeraConstructorActivity;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
