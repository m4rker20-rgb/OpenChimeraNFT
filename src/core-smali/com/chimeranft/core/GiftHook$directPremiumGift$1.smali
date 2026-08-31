.class public final Lcom/chimeranft/core/GiftHook$directPremiumGift$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $fMonths:I

.field final synthetic $fPrice:J

.field final synthetic $fRec:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;JIJ)V
    .registers 7

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-wide p2, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->$fRec:J

    iput p4, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->$fMonths:I

    iput-wide p5, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->$fPrice:J

    .line 3829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 3833
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->reveal:Lcom/chimeranft/core/GiftReveal;
    invoke-static {v0}, Lcom/chimeranft/core/GiftHook;->access$getReveal$p(Lcom/chimeranft/core/GiftHook;)Lcom/chimeranft/core/GiftReveal;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->$fRec:J

    iget v4, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->$fMonths:I

    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->$fPrice:J

    invoke-virtual/range {v1 .. v6}, Lcom/chimeranft/core/GiftReveal;->showPremiumSent(JIJ)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    .line 3836
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$directPremiumGift$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "premCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
