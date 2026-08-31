.class public final Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $acc:I

.field final synthetic $messages:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/chimeranft/core/GiftReveal;


# direct methods
.method constructor <init>(ILcom/chimeranft/core/GiftReveal;Ljava/util/ArrayList;)V
    .registers 4

    iput p1, p0, Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;->$acc:I

    iput-object p2, p0, Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    iput-object p3, p0, Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;->$messages:Ljava/util/ArrayList;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x0

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 366
    :try_start_5
    # getter for: Lcom/chimeranft/core/GiftReveal;->MS:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/GiftReveal;->access$getMS$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    iget v6, p0, Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;->$acc:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-static {v2, v3, v5, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 368
    iget-object v3, p0, Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;->this$0:Lcom/chimeranft/core/GiftReveal;

    const-string v5, "putMessages"

    .line 369
    iget-object v6, p0, Lcom/chimeranft/core/GiftReveal$persistMessagesAsync$1;->$messages:Ljava/util/ArrayList;

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, v7, v4

    const/4 v4, 0x2

    aput-object v0, v7, v4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x3

    aput-object v0, v7, v4

    const/4 v0, 0x4

    aput-object v1, v7, v0

    const/4 v0, 0x5

    aput-object v1, v7, v0

    const/4 v0, 0x6

    aput-object v1, v7, v0

    .line 368
    # invokes: Lcom/chimeranft/core/GiftReveal;->invokeFlexible(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v3, v2, v5, v7}, Lcom/chimeranft/core/GiftReveal;->access$invokeFlexible(Lcom/chimeranft/core/GiftReveal;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_45

    :catchall_45
    :cond_45
    return-void
.end method
