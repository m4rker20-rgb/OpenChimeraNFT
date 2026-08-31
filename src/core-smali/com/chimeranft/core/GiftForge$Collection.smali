.class public final Lcom/chimeranft/core/GiftForge$Collection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final count:I

.field private final id:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/chimeranft/core/GiftForge$Collection;->id:I

    iput-object p2, p0, Lcom/chimeranft/core/GiftForge$Collection;->title:Ljava/lang/String;

    iput p3, p0, Lcom/chimeranft/core/GiftForge$Collection;->count:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .line 450
    iget v0, p0, Lcom/chimeranft/core/GiftForge$Collection;->count:I

    return v0
.end method

.method public final getId()I
    .registers 2

    .line 450
    iget v0, p0, Lcom/chimeranft/core/GiftForge$Collection;->id:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Collection;->title:Ljava/lang/String;

    return-object v0
.end method
