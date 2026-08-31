.class public final synthetic Lcom/chimeranft/core/ChimeraProfileActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraProfileActivity$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/chimeranft/core/ChimeraProfileActivity$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/chimeranft/core/ChimeraProfileActivity;->$r8$lambda$4HPwulw1MJLmYqNpzDI864GR5FQ(Lorg/json/JSONObject;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
