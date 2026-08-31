.class public final Lcom/chimeranft/core/GiftHook$installGiftAvailabilityHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installGiftAvailabilityHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 1429
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 13

    .line 1434
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGiftAvailabilityHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->findUniqueGiftForSheet([Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$findUniqueGiftForSheet(Lcom/chimeranft/core/GiftHook;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_23

    const/16 v9, 0xe

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 1437
    invoke-static/range {v2 .. v10}, Lcom/chimeranft/core/GiftCodec;->ensureAvailability$default(Ljava/lang/Object;JJJILjava/lang/Object;)V

    .line 1438
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGiftAvailabilityHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->markLocalGiftMessageRepolled(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, p1, v2}, Lcom/chimeranft/core/GiftHook;->access$markLocalGiftMessageRepolled(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    move-object p1, v0

    goto :goto_24

    :cond_23
    return-void

    .line 1442
    :goto_24
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installGiftAvailabilityHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "availability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
