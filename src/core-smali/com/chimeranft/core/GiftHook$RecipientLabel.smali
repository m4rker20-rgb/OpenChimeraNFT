.class final Lcom/chimeranft/core/GiftHook$RecipientLabel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final at:J

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$RecipientLabel;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$RecipientLabel;->at:J

    return-void
.end method


# virtual methods
.method public final getAt()J
    .registers 3

    .line 317
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$RecipientLabel;->at:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$RecipientLabel;->name:Ljava/lang/String;

    return-object v0
.end method
