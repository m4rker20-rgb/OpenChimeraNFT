.class public final Lcom/chimeranft/core/Main$Companion$init$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chimeranft/core/SyncClient$RecoverySink;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecovered()V
    .registers 4

    .line 4182
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    .line 4183
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lcom/chimeranft/core/Main;->configureIdentityFromStore()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$configureIdentityFromStore(Lcom/chimeranft/core/Main;)V

    .line 4184
    # getter for: Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 4187
    # getter for: Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chimeranft/core/Store;->getInjectableEntries()[Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chimeranft/core/GiftHook;->configure([Lorg/json/JSONObject;)V

    .line 4188
    invoke-virtual {v1}, Lcom/chimeranft/core/GiftHook;->warmInjection()V

    .line 4190
    :cond_23
    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v1

    if-eqz v1, :cond_33

    # getter for: Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/Notifier;->refresh()V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_33

    :catchall_33
    :cond_33
    return-void
.end method
