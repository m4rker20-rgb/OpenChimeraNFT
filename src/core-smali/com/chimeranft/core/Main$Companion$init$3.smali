.class public final Lcom/chimeranft/core/Main$Companion$init$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/SyncClient$RecordSink;


# instance fields
.field final synthetic $rem0:Lcom/chimeranft/core/RemoteIdentity;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/RemoteIdentity;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$Companion$init$3;->$rem0:Lcom/chimeranft/core/RemoteIdentity;

    .line 4151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecord(JLorg/json/JSONObject;)V
    .registers 10

    .line 4153
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    .line 4154
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->chatIdentityGeneration:J
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getChatIdentityGeneration$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/Main;->access$setChatIdentityGeneration$p(Lcom/chimeranft/core/Main;J)V

    .line 4155
    # invokes: Lcom/chimeranft/core/Main;->forgetChatEligibility(J)V
    invoke-static {v1, p1, p2}, Lcom/chimeranft/core/Main;->access$forgetChatEligibility(Lcom/chimeranft/core/Main;J)V

    .line 4156
    iget-object v2, p0, Lcom/chimeranft/core/Main$Companion$init$3;->$rem0:Lcom/chimeranft/core/RemoteIdentity;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity;->prewarmRecord(JLorg/json/JSONObject;)V

    .line 4157
    iget-object v2, p0, Lcom/chimeranft/core/Main$Companion$init$3;->$rem0:Lcom/chimeranft/core/RemoteIdentity;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity;->onRecordPulled(JLorg/json/JSONObject;)V

    .line 4161
    invoke-virtual {v1, p1, p2}, Lcom/chimeranft/core/Main;->refreshChatCellsForAuthor(J)V

    .line 4162
    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v1}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    .line 4163
    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object v0

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    .line 4164
    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/SyncClient;->isProfileActive(J)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 4165
    invoke-virtual {v1, p1, p2, p3}, Lcom/chimeranft/core/GiftHook;->onRemoteRecord(JLorg/json/JSONObject;)V

    :cond_4c
    return-void
.end method

.method public onRestored(JLorg/json/JSONObject;)V
    .registers 5

    .line 4171
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 4172
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/chimeranft/core/Main;->scheduleProfilePrewarm(JLorg/json/JSONObject;)V
    invoke-static {v0, p1, p2, p3}, Lcom/chimeranft/core/Main;->access$scheduleProfilePrewarm(Lcom/chimeranft/core/Main;JLorg/json/JSONObject;)V

    .line 4175
    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/Main;->refreshChatCellsForAuthor(J)V

    return-void
.end method
