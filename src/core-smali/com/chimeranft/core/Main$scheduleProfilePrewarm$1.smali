.class public final Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $rec:Lorg/json/JSONObject;

.field final synthetic $uid:J

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;JLorg/json/JSONObject;)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;->this$0:Lcom/chimeranft/core/Main;

    iput-wide p2, p0, Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;->$uid:J

    iput-object p4, p0, Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;->$rec:Lorg/json/JSONObject;

    .line 2992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2996
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2997
    iget-wide v1, p0, Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;->$uid:J

    iget-object v3, p0, Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;->$rec:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chimeranft/core/RemoteIdentity;->prewarmRecord(JLorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method
