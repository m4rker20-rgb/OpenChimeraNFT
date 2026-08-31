.class public final Lcom/chimeranft/core/GiftHook$directTransferArgs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $entry:Lorg/json/JSONObject;

.field final synthetic $gid:J

.field final synthetic $slug:Ljava/lang/String;

.field final synthetic $toUid:J

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Lorg/json/JSONObject;JLjava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->$entry:Lorg/json/JSONObject;

    iput-wide p3, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->$gid:J

    iput-object p5, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->$slug:Ljava/lang/String;

    iput-wide p6, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->$toUid:J

    .line 5404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 5408
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->$entry:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->$gid:J

    iget-object v4, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->$slug:Ljava/lang/String;

    iget-wide v5, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->$toUid:J

    # invokes: Lcom/chimeranft/core/GiftHook;->transferPushRemove(Lorg/json/JSONObject;JLjava/lang/String;J)V
    invoke-static/range {v0 .. v6}, Lcom/chimeranft/core/GiftHook;->access$transferPushRemove(Lcom/chimeranft/core/GiftHook;Lorg/json/JSONObject;JLjava/lang/String;J)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    .line 5411
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$directTransferArgs$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doXferBg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
