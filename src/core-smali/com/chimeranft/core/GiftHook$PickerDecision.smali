.class final Lcom/chimeranft/core/GiftHook$PickerDecision;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final keep:Z

.field private final signature:J


# direct methods
.method public constructor <init>(JZ)V
    .registers 4

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/GiftHook$PickerDecision;->signature:J

    iput-boolean p3, p0, Lcom/chimeranft/core/GiftHook$PickerDecision;->keep:Z

    return-void
.end method


# virtual methods
.method public final getKeep()Z
    .registers 2

    .line 329
    iget-boolean v0, p0, Lcom/chimeranft/core/GiftHook$PickerDecision;->keep:Z

    return v0
.end method

.method public final getSignature()J
    .registers 3

    .line 329
    iget-wide v0, p0, Lcom/chimeranft/core/GiftHook$PickerDecision;->signature:J

    return-wide v0
.end method
