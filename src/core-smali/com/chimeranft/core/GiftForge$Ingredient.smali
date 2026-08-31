.class public final Lcom/chimeranft/core/GiftForge$Ingredient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final chancePermille:I

.field private final id:J

.field private final number:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;JI)V
    .registers 7

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/GiftForge$Ingredient;->id:J

    iput-object p3, p0, Lcom/chimeranft/core/GiftForge$Ingredient;->title:Ljava/lang/String;

    iput-wide p4, p0, Lcom/chimeranft/core/GiftForge$Ingredient;->number:J

    iput p6, p0, Lcom/chimeranft/core/GiftForge$Ingredient;->chancePermille:I

    return-void
.end method


# virtual methods
.method public final getChancePermille()I
    .registers 2

    .line 333
    iget v0, p0, Lcom/chimeranft/core/GiftForge$Ingredient;->chancePermille:I

    return v0
.end method

.method public final getId()J
    .registers 3

    .line 333
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Ingredient;->id:J

    return-wide v0
.end method

.method public final getNumber()J
    .registers 3

    .line 333
    iget-wide v0, p0, Lcom/chimeranft/core/GiftForge$Ingredient;->number:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Ingredient;->title:Ljava/lang/String;

    return-object v0
.end method
