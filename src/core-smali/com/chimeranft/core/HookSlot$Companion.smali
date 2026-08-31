.class public final Lcom/chimeranft/core/HookSlot$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/HookSlot$Companion;-><init>()V

    return-void
.end method

.method private final describe(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .registers 5

    .line 259
    const-string v0, "?"

    if-nez p1, :cond_5

    return-object v0

    .line 260
    :cond_5
    :try_start_5
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_d

    move-object v1, v0

    goto :goto_11

    .line 261
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 262
    :goto_11
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-object p1

    :catchall_2a
    return-object v0
.end method

.method private final mainThread()Ljava/lang/Thread;
    .registers 6

    .line 167
    # getter for: Lcom/chimeranft/core/HookSlot;->uiThread:Ljava/lang/Thread;
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getUiThread$cp()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_32

    .line 168
    # getter for: Lcom/chimeranft/core/HookSlot;->uiThreadResolved:Z
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getUiThreadResolved$cp()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_32

    :cond_d
    const/4 v0, 0x0

    .line 172
    :try_start_e
    const-string v1, "android.os.Looper"

    const-string v2, "getMainLooper"

    .line 173
    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 172
    invoke-static {v1, v2, v3, v4}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1e

    move-object v1, v0

    goto :goto_24

    .line 177
    :cond_1e
    const-string v2, "getThread"

    invoke-static {v1, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    :goto_24
    instance-of v2, v1, Ljava/lang/Thread;

    if-eqz v2, :cond_2b

    check-cast v1, Ljava/lang/Thread;
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_2b

    move-object v0, v1

    .line 183
    :catchall_2b
    :cond_2b
    invoke-static {v0}, Lcom/chimeranft/core/HookSlot;->access$setUiThread$cp(Ljava/lang/Thread;)V

    const/4 v1, 0x1

    .line 184
    invoke-static {v1}, Lcom/chimeranft/core/HookSlot;->access$setUiThreadResolved$cp(Z)V

    :cond_32
    :goto_32
    return-object v0
.end method


# virtual methods
.method public final deferred(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    if-nez p3, :cond_6

    goto :goto_c

    .line 130
    :cond_6
    new-instance v1, Lcom/chimeranft/core/HookSlot;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/chimeranft/core/HookSlot;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_c
    :goto_c
    return-object v0
.end method

.method public final hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    if-nez p3, :cond_6

    goto :goto_12

    .line 116
    :cond_6
    new-instance v1, Lcom/chimeranft/core/HookSlot;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/chimeranft/core/HookSlot;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot;->install()Z

    move-result p1

    if-eqz p1, :cond_12

    return-object v1

    :cond_12
    :goto_12
    return-object v0
.end method

.method public final hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 11

    .line 206
    const-string v0, "hooked "

    const/4 v1, 0x0

    if-eqz p1, :cond_ae

    if-nez p2, :cond_9

    goto/16 :goto_ae

    .line 207
    :cond_9
    invoke-direct {p0, p1}, Lcom/chimeranft/core/HookSlot$Companion;->describe(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p0}, Lcom/chimeranft/core/HookSlot$Companion;->uiThreadKnown()Z

    move-result v3

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_26

    invoke-virtual {p0}, Lcom/chimeranft/core/HookSlot$Companion;->isUiThread()Z

    move-result v3

    if-nez v3, :cond_26

    .line 210
    # getter for: Lcom/chimeranft/core/HookSlot;->offUiInstalls:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getOffUiInstalls$cp()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/chimeranft/core/HookSlot;->access$setOffUiInstalls$cp(J)V

    .line 211
    invoke-static {v2}, Lcom/chimeranft/core/HookSlot;->access$setLastOffUi$cp(Ljava/lang/String;)V

    .line 213
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hook+ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    .line 216
    :try_start_3a
    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    if-nez p1, :cond_5d

    .line 218
    # getter for: Lcom/chimeranft/core/HookSlot;->totalFailures:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalFailures$cp()J

    move-result-wide p1

    add-long/2addr p1, v4

    invoke-static {p1, p2}, Lcom/chimeranft/core/HookSlot;->access$setTotalFailures$cp(J)V
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_5b

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    return-object v1

    :catchall_5b
    move-exception p1

    goto :goto_78

    .line 221
    :cond_5d
    :try_start_5d
    # getter for: Lcom/chimeranft/core/HookSlot;->totalInstalls:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalInstalls$cp()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/chimeranft/core/HookSlot;->access$setTotalInstalls$cp(J)V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_5b

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    return-object p1

    .line 225
    :goto_78
    :try_start_78
    # getter for: Lcom/chimeranft/core/HookSlot;->totalFailures:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalFailures$cp()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/chimeranft/core/HookSlot;->access$setTotalFailures$cp(J)V

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hook.install."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_94
    .catchall {:try_start_78 .. :try_end_94} :catchall_9a

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4d

    :catchall_9a
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    throw p1

    :cond_ae
    :goto_ae
    return-object v1
.end method

.method public final isUiThread()Z
    .registers 3

    .line 190
    invoke-direct {p0}, Lcom/chimeranft/core/HookSlot$Companion;->mainThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final markUiThread()V
    .registers 1

    .line 163
    invoke-direct {p0}, Lcom/chimeranft/core/HookSlot$Companion;->mainThread()Ljava/lang/Thread;

    return-void
.end method

.method public final report()Ljava/lang/String;
    .registers 7

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 273
    const-string v1, "hooks[+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/HookSlot;->totalInstalls:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalInstalls$cp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/HookSlot;->totalRemovals:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalRemovals$cp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    # getter for: Lcom/chimeranft/core/HookSlot;->totalFailures:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalFailures$cp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_35

    const-string v1, " fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/HookSlot;->totalFailures:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalFailures$cp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    :cond_35
    const-string v1, " ui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chimeranft/core/HookSlot$Companion;->uiThreadKnown()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "known"

    goto :goto_45

    :cond_43
    const-string v1, "?"

    :goto_45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    # getter for: Lcom/chimeranft/core/HookSlot;->offUiInstalls:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getOffUiInstalls$cp()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_68

    const-string v1, " offUi!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/HookSlot;->offUiInstalls:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getOffUiInstalls$cp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    # getter for: Lcom/chimeranft/core/HookSlot;->lastOffUi:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getLastOffUi$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    const/16 v1, 0x5d

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uiThreadKnown()Z
    .registers 2

    .line 195
    invoke-direct {p0}, Lcom/chimeranft/core/HookSlot$Companion;->mainThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final unhook(Lde/robv/android/xposed/XC_MethodHook$Unhook;Ljava/lang/String;)Z
    .registers 10

    .line 237
    const-string v0, "unhooked "

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    .line 238
    :cond_6
    const-string v2, "?"

    if-nez p2, :cond_c

    move-object v3, v2

    goto :goto_d

    :cond_c
    move-object v3, p2

    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hook- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    .line 241
    :try_start_23
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    .line 242
    # getter for: Lcom/chimeranft/core/HookSlot;->totalRemovals:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalRemovals$cp()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/chimeranft/core/HookSlot;->access$setTotalRemovals$cp(J)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_45

    if-nez p2, :cond_31

    move-object p2, v2

    .line 252
    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_45
    move-exception p1

    .line 246
    :try_start_46
    # getter for: Lcom/chimeranft/core/HookSlot;->totalFailures:J
    invoke-static {}, Lcom/chimeranft/core/HookSlot;->access$getTotalFailures$cp()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/chimeranft/core/HookSlot;->access$setTotalFailures$cp(J)V

    if-nez p2, :cond_52

    move-object v3, v2

    goto :goto_53

    :cond_52
    move-object v3, p2

    .line 247
    :goto_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hook.unhook."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_46 .. :try_end_67} :catchall_7d

    if-nez p2, :cond_6a

    move-object p2, v2

    .line 252
    :cond_6a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    return v1

    :catchall_7d
    move-exception p1

    if-nez p2, :cond_81

    move-object p2, v2

    :cond_81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    throw p1
.end method
