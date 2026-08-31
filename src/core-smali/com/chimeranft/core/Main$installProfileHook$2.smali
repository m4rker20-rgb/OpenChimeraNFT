.class public final Lcom/chimeranft/core/Main$installProfileHook$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$2;->this$0:Lcom/chimeranft/core/Main;

    .line 2638
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 2643
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$installProfileHook$2;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    if-ne v0, v1, :cond_46

    .line 2645
    const-string v0, "userId"

    invoke-static {v1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1e

    .line 2646
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "dialogId"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    .line 2647
    :cond_1e
    iget-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$2;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$2;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/SyncClient;->deactivateProfile(J)V

    .line 2648
    :cond_32
    iget-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$2;->this$0:Lcom/chimeranft/core/Main;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chimeranft/core/Main;->access$setActiveProfileActivity$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V

    .line 2649
    iget-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$2;->this$0:Lcom/chimeranft/core/Main;

    # getter for: Lcom/chimeranft/core/Main;->activeProfileGeneration:J
    invoke-static {p1}, Lcom/chimeranft/core/Main;->access$getActiveProfileGeneration$p(Lcom/chimeranft/core/Main;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/chimeranft/core/Main$installProfileHook$2;->this$0:Lcom/chimeranft/core/Main;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/chimeranft/core/Main;->access$setActiveProfileGeneration$p(Lcom/chimeranft/core/Main;J)V
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_46

    :catchall_46
    :cond_46
    return-void
.end method
