.class final Lcom/chimeranft/core/GiftHook$Inj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final entry:Lorg/json/JSONObject;

.field private final giftId:J

.field private final inner:Ljava/lang/Object;

.field private final unique:Z

.field private final wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;JZ)V
    .registers 7

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$Inj;->entry:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$Inj;->wrapper:Ljava/lang/Object;

    iput-object p3, p0, Lcom/chimeranft/core/GiftHook$Inj;->inner:Ljava/lang/Object;

    .line 333
    iput-wide p4, p0, Lcom/chimeranft/core/GiftHook$Inj;->giftId:J

    .line 334
    iput-boolean p6, p0, Lcom/chimeranft/core/GiftHook$Inj;->unique:Z

    return-void
.end method


# virtual methods
.method public final getEntry()Lorg/json/JSONObject;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$Inj;->entry:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getGiftId()J
    .registers 3

    .line 333
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$Inj;->giftId:J

    return-wide v0
.end method

.method public final getInner()Ljava/lang/Object;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$Inj;->inner:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUnique()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Lcom/chimeranft/core/GiftHook$Inj;->unique:Z

    return v0
.end method

.method public final getWrapper()Ljava/lang/Object;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$Inj;->wrapper:Ljava/lang/Object;

    return-object v0
.end method
