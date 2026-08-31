.class public final Lcom/chimeranft/core/GiftForge$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final count:I

.field private final message:Ljava/lang/String;

.field private final ok:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/chimeranft/core/GiftForge$Result;->ok:Z

    iput-object p2, p0, Lcom/chimeranft/core/GiftForge$Result;->message:Ljava/lang/String;

    iput p3, p0, Lcom/chimeranft/core/GiftForge$Result;->count:I

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 53
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/GiftForge$Result;-><init>(ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/chimeranft/core/GiftForge$Result;->count:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/chimeranft/core/GiftForge$Result;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getOk()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/chimeranft/core/GiftForge$Result;->ok:Z

    return v0
.end method
