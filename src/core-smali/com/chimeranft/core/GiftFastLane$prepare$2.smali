.class public final Lcom/chimeranft/core/GiftFastLane$prepare$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $payload:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/GiftFastLane;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->$payload:Ljava/lang/String;

    iput-object p2, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->this$0:Lcom/chimeranft/core/GiftFastLane;

    iput-object p3, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->$key:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    .line 135
    :try_start_3
    iget-object v3, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->$payload:Ljava/lang/String;

    invoke-static {v3}, Lcom/chimeranft/core/GiftCodec;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    move-object v5, v2

    goto :goto_14

    .line 136
    :cond_d
    const-string v4, "gift"

    invoke-static {v3, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    :goto_14
    if-eqz v5, :cond_3c

    const/16 v12, 0xe

    const/4 v13, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 139
    invoke-static/range {v5 .. v13}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability$default(Ljava/lang/Object;JJJILjava/lang/Object;)V

    .line 140
    new-instance v4, Lcom/chimeranft/core/GiftFastLane$Prepared;

    if-nez v3, :cond_27

    goto :goto_6e

    :cond_27
    new-instance v6, Lcom/chimeranft/core/GiftFastLane$CardTemplate;

    invoke-direct {v6, v5}, Lcom/chimeranft/core/GiftFastLane$CardTemplate;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v3, v5, v6}, Lcom/chimeranft/core/GiftFastLane$Prepared;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/chimeranft/core/GiftFastLane$CardTemplate;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_46

    .line 141
    :try_start_2f
    iget-object v2, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->this$0:Lcom/chimeranft/core/GiftFastLane;

    iget-wide v2, v2, Lcom/chimeranft/core/GiftFastLane;->preparedCount:J

    iget-object v5, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->this$0:Lcom/chimeranft/core/GiftFastLane;

    add-long/2addr v2, v0

    iput-wide v2, v5, Lcom/chimeranft/core/GiftFastLane;->preparedCount:J
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3a

    move-object v2, v4

    goto :goto_4f

    :catchall_3a
    move-object v2, v4

    goto :goto_46

    .line 144
    :cond_3c
    :try_start_3c
    iget-object v3, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->this$0:Lcom/chimeranft/core/GiftFastLane;

    iget-wide v3, v3, Lcom/chimeranft/core/GiftFastLane;->failures:J

    iget-object v5, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->this$0:Lcom/chimeranft/core/GiftFastLane;

    add-long/2addr v3, v0

    iput-wide v3, v5, Lcom/chimeranft/core/GiftFastLane;->failures:J
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_46

    goto :goto_4f

    .line 147
    :catchall_46
    :goto_46
    iget-object v3, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->this$0:Lcom/chimeranft/core/GiftFastLane;

    iget-wide v3, v3, Lcom/chimeranft/core/GiftFastLane;->failures:J

    iget-object v5, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->this$0:Lcom/chimeranft/core/GiftFastLane;

    add-long/2addr v3, v0

    iput-wide v3, v5, Lcom/chimeranft/core/GiftFastLane;->failures:J

    .line 154
    :goto_4f
    iget-object v0, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->this$0:Lcom/chimeranft/core/GiftFastLane;

    iget-object v1, p0, Lcom/chimeranft/core/GiftFastLane$prepare$2;->$key:Ljava/lang/String;

    # invokes: Lcom/chimeranft/core/GiftFastLane;->publish(Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Ljava/util/ArrayList;
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftFastLane;->access$publish(Lcom/chimeranft/core/GiftFastLane;Ljava/lang/String;Lcom/chimeranft/core/GiftFastLane$Prepared;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v1, :cond_6e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/chimeranft/core/GiftFastLane$Callback;

    .line 161
    :try_start_68
    invoke-interface {v4, v2}, Lcom/chimeranft/core/GiftFastLane$Callback;->onReady(Lcom/chimeranft/core/GiftFastLane$Prepared;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_5e

    :catchall_6c
    nop

    goto :goto_5e

    :cond_6e
    :goto_6e
    return-void
.end method
