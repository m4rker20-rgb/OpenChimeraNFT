.class public final Lcom/chimeranft/core/UpgradeAttrs$send$delegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic $giftId:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    iput-wide p1, p0, Lcom/chimeranft/core/UpgradeAttrs$send$delegate$1;->$giftId:J

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 146
    const-string p1, "run"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    if-eqz p3, :cond_19

    .line 149
    :try_start_10
    array-length p1, p3

    if-lez p1, :cond_19

    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_1a

    :catchall_17
    move-exception p1

    goto :goto_2c

    :cond_19
    move-object p1, p2

    :goto_1a
    if-eqz p3, :cond_23

    .line 150
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_23

    aget-object p3, p3, v1

    goto :goto_24

    :cond_23
    move-object p3, p2

    .line 151
    :goto_24
    sget-object v0, Lcom/chimeranft/core/UpgradeAttrs;->INSTANCE:Lcom/chimeranft/core/UpgradeAttrs;

    iget-wide v1, p0, Lcom/chimeranft/core/UpgradeAttrs$send$delegate$1;->$giftId:J

    # invokes: Lcom/chimeranft/core/UpgradeAttrs;->onAnswer(JLjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2, p1, p3}, Lcom/chimeranft/core/UpgradeAttrs;->access$onAnswer(Lcom/chimeranft/core/UpgradeAttrs;JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_17

    goto :goto_39

    .line 154
    :goto_2c
    sget-object p3, Lcom/chimeranft/core/UpgradeAttrs;->INSTANCE:Lcom/chimeranft/core/UpgradeAttrs;

    iget-wide v0, p0, Lcom/chimeranft/core/UpgradeAttrs$send$delegate$1;->$giftId:J

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/chimeranft/core/UpgradeAttrs;->fail(JLjava/lang/String;)V
    invoke-static {p3, v0, v1, p1}, Lcom/chimeranft/core/UpgradeAttrs;->access$fail(Lcom/chimeranft/core/UpgradeAttrs;JLjava/lang/String;)V

    :goto_39
    return-object p2
.end method
