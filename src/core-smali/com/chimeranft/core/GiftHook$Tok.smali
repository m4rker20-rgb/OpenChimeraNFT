.class final Lcom/chimeranft/core/GiftHook$Tok;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final savedId:J

.field private final slug:Ljava/lang/String;

.field private final uniqueId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .registers 6

    .line 7299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$Tok;->savedId:J

    iput-wide p3, p0, Lcom/chimeranft/core/GiftHook$Tok;->uniqueId:J

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$Tok;->slug:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSavedId()J
    .registers 3

    .line 7299
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$Tok;->savedId:J

    return-wide v0
.end method

.method public final getSlug()Ljava/lang/String;
    .registers 2

    .line 7299
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$Tok;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()J
    .registers 3

    .line 7299
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$Tok;->uniqueId:J

    return-wide v0
.end method
