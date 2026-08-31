.class public final Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

.field private waited:J


# direct methods
.method constructor <init>(Lcom/chimeranft/core/ChimeraConstructorActivity;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    iput-object p2, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->$handler:Landroid/os/Handler;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 177
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    invoke-virtual {v0}, Lcom/chimeranft/core/ForkPreferences;->getDestroyed()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    sget-object v1, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    # getter for: Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J
    invoke-static {v0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->access$getBaseGiftId$p(Lcom/chimeranft/core/ChimeraConstructorActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/chimeranft/core/GiftForge;->pollAttributes(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->access$setStatus$p(Lcom/chimeranft/core/ChimeraConstructorActivity;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    # getter for: Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;
    invoke-static {v0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->access$getStatus$p(Lcom/chimeranft/core/ChimeraConstructorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ok"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 180
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    # getter for: Lcom/chimeranft/core/ChimeraConstructorActivity;->baseGiftId:J
    invoke-static {v0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->access$getBaseGiftId$p(Lcom/chimeranft/core/ChimeraConstructorActivity;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/chimeranft/core/GiftForge;->serverPools(J)Lcom/chimeranft/core/GiftForge$Pools;

    move-result-object v1

    invoke-static {v0, v1, v3, v4, v5}, Lcom/chimeranft/core/ChimeraConstructorActivity;->adopt$default(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/GiftForge$Pools;ZILjava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    invoke-virtual {v0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    return-void

    .line 184
    :cond_3c
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    # getter for: Lcom/chimeranft/core/ChimeraConstructorActivity;->status:Ljava/lang/String;
    invoke-static {v0}, Lcom/chimeranft/core/ChimeraConstructorActivity;->access$getStatus$p(Lcom/chimeranft/core/ChimeraConstructorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fail"

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5a

    .line 185
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftForge;->libraryPools()Lcom/chimeranft/core/GiftForge$Pools;

    move-result-object v1

    # invokes: Lcom/chimeranft/core/ChimeraConstructorActivity;->adopt(Lcom/chimeranft/core/GiftForge$Pools;Z)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->access$adopt(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/GiftForge$Pools;Z)V

    .line 186
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    invoke-virtual {v0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    return-void

    .line 189
    :cond_5a
    iget-wide v3, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->waited:J

    const-wide/16 v5, 0x190

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->waited:J

    const-wide/16 v7, 0x3a98

    cmp-long v0, v3, v7

    if-ltz v0, :cond_76

    .line 191
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftForge;->libraryPools()Lcom/chimeranft/core/GiftForge$Pools;

    move-result-object v1

    # invokes: Lcom/chimeranft/core/ChimeraConstructorActivity;->adopt(Lcom/chimeranft/core/GiftForge$Pools;Z)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/ChimeraConstructorActivity;->access$adopt(Lcom/chimeranft/core/ChimeraConstructorActivity;Lcom/chimeranft/core/GiftForge$Pools;Z)V

    .line 192
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->this$0:Lcom/chimeranft/core/ChimeraConstructorActivity;

    invoke-virtual {v0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    return-void

    .line 195
    :cond_76
    iget-object v0, p0, Lcom/chimeranft/core/ChimeraConstructorActivity$schedulePoll$1;->$handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
