.class public final Lcom/chimeranft/core/GiftHook$attemptOutboxJob$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $attempt:I

.field final synthetic $job:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Lorg/json/JSONObject;I)V
    .registers 4

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$attemptOutboxJob$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$attemptOutboxJob$1;->$job:Lorg/json/JSONObject;

    iput p3, p0, Lcom/chimeranft/core/GiftHook$attemptOutboxJob$1;->$attempt:I

    .line 4397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 4399
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$attemptOutboxJob$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$attemptOutboxJob$1;->$job:Lorg/json/JSONObject;

    iget v2, p0, Lcom/chimeranft/core/GiftHook$attemptOutboxJob$1;->$attempt:I

    add-int/lit8 v2, v2, 0x1

    # invokes: Lcom/chimeranft/core/GiftHook;->attemptOutboxJob(Lorg/json/JSONObject;I)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$attemptOutboxJob(Lcom/chimeranft/core/GiftHook;Lorg/json/JSONObject;I)V

    return-void
.end method
