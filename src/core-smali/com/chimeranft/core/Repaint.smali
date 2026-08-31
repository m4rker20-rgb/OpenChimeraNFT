.class public final Lcom/chimeranft/core/Repaint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DRAIN:Lcom/chimeranft/core/Repaint$DRAIN$1;

.field private static final EMPTY:[Ljava/lang/Object;

.field private static final GATED_DRAIN:Lcom/chimeranft/core/Repaint$GATED_DRAIN$1;

.field public static final INSTANCE:Lcom/chimeranft/core/Repaint;

.field private static final LOCK:Ljava/lang/Object;

.field private static volatile MASK:I

.field private static final MC:Ljava/lang/String;

.field private static final MIN_GAP_MS:J

.field private static final NC:Ljava/lang/String;

.field private static final UC:Ljava/lang/String;

.field private static armed:Z

.field public static chatHolds:J

.field public static collapsed:J

.field public static flushes:J

.field private static heldForChat:Z

.field private static lastFlushMs:J

.field private static pendingDialogs:Z

.field private static pendingMask:I

.field public static requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/Repaint;

    invoke-direct {v0}, Lcom/chimeranft/core/Repaint;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Repaint;->INSTANCE:Lcom/chimeranft/core/Repaint;

    .line 26
    const-string v0, "org.telegram.messenger.UserConfig"

    sput-object v0, Lcom/chimeranft/core/Repaint;->UC:Ljava/lang/String;

    .line 27
    const-string v0, "org.telegram.messenger.MessagesController"

    sput-object v0, Lcom/chimeranft/core/Repaint;->MC:Ljava/lang/String;

    .line 28
    const-string v0, "org.telegram.messenger.NotificationCenter"

    sput-object v0, Lcom/chimeranft/core/Repaint;->NC:Ljava/lang/String;

    const-wide/16 v0, 0xdc

    .line 31
    sput-wide v0, Lcom/chimeranft/core/Repaint;->MIN_GAP_MS:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Repaint;->LOCK:Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/chimeranft/core/Repaint$DRAIN$1;

    invoke-direct {v0}, Lcom/chimeranft/core/Repaint$DRAIN$1;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Repaint;->DRAIN:Lcom/chimeranft/core/Repaint$DRAIN$1;

    .line 58
    new-instance v0, Lcom/chimeranft/core/Repaint$GATED_DRAIN$1;

    invoke-direct {v0}, Lcom/chimeranft/core/Repaint$GATED_DRAIN$1;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Repaint;->GATED_DRAIN:Lcom/chimeranft/core/Repaint$GATED_DRAIN$1;

    const/4 v0, 0x0

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/chimeranft/core/Repaint;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$flush(Lcom/chimeranft/core/Repaint;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/chimeranft/core/Repaint;->flush()V

    return-void
.end method

.method public static final synthetic access$getDRAIN$p()Lcom/chimeranft/core/Repaint$DRAIN$1;
    .registers 1

    .line 24
    sget-object v0, Lcom/chimeranft/core/Repaint;->DRAIN:Lcom/chimeranft/core/Repaint$DRAIN$1;

    return-object v0
.end method

.method public static final dialogsNeedReload(I)V
    .registers 8

    .line 91
    sget-object v0, Lcom/chimeranft/core/Repaint;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    sget-wide v1, Lcom/chimeranft/core/Repaint;->requested:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/chimeranft/core/Repaint;->requested:J

    .line 93
    sget-boolean v1, Lcom/chimeranft/core/Repaint;->armed:Z

    if-eqz v1, :cond_16

    sget-wide v5, Lcom/chimeranft/core/Repaint;->collapsed:J

    add-long/2addr v5, v3

    sput-wide v5, Lcom/chimeranft/core/Repaint;->collapsed:J

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_30

    :cond_16
    :goto_16
    const/4 v2, 0x1

    .line 94
    sput-boolean v2, Lcom/chimeranft/core/Repaint;->pendingDialogs:Z

    .line 95
    sget v3, Lcom/chimeranft/core/Repaint;->pendingMask:I

    or-int/2addr p0, v3

    sput p0, Lcom/chimeranft/core/Repaint;->pendingMask:I

    .line 97
    sput-boolean v2, Lcom/chimeranft/core/Repaint;->armed:Z

    .line 98
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_14

    .line 91
    monitor-exit v0

    if-nez v1, :cond_2f

    .line 99
    sget-object p0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    sget-object v0, Lcom/chimeranft/core/Repaint;->DRAIN:Lcom/chimeranft/core/Repaint$DRAIN$1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    :cond_2f
    return-void

    .line 91
    :goto_30
    monitor-exit v0

    throw p0
.end method

.method private final flush()V
    .registers 14

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    sget-object v2, Lcom/chimeranft/core/Repaint;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_7
    sget-wide v3, Lcom/chimeranft/core/Repaint;->lastFlushMs:J

    sub-long v3, v0, v3

    .line 129
    sget-wide v5, Lcom/chimeranft/core/Repaint;->MIN_GAP_MS:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v5

    if-gez v11, :cond_19

    sub-long/2addr v5, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_5c

    .line 159
    :cond_19
    invoke-static {}, Lcom/chimeranft/core/Repaint;->nameAndStatusMask()I

    move-result v3

    .line 160
    sget-object v4, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v4}, Lcom/chimeranft/core/Main$Companion;->isChatScreenActive()Z

    move-result v5

    const-wide/16 v11, 0x1

    if-eqz v5, :cond_43

    invoke-virtual {v4}, Lcom/chimeranft/core/Main$Companion;->isProfileScreenActive()Z

    move-result v4

    if-nez v4, :cond_43

    .line 161
    sget v4, Lcom/chimeranft/core/Repaint;->pendingMask:I

    and-int v5, v4, v3

    if-eqz v5, :cond_43

    not-int v5, v3

    and-int/2addr v5, v4

    and-int/2addr v3, v4

    .line 164
    sput v3, Lcom/chimeranft/core/Repaint;->pendingMask:I

    .line 165
    sput-boolean v7, Lcom/chimeranft/core/Repaint;->heldForChat:Z

    .line 166
    sget-wide v3, Lcom/chimeranft/core/Repaint;->chatHolds:J

    add-long/2addr v3, v11

    sput-wide v3, Lcom/chimeranft/core/Repaint;->chatHolds:J

    goto :goto_49

    :catchall_40
    move-exception v0

    goto/16 :goto_b7

    .line 170
    :cond_43
    sget v5, Lcom/chimeranft/core/Repaint;->pendingMask:I

    .line 171
    sput v8, Lcom/chimeranft/core/Repaint;->pendingMask:I

    .line 172
    sput-boolean v8, Lcom/chimeranft/core/Repaint;->heldForChat:Z

    .line 174
    :goto_49
    sget-boolean v3, Lcom/chimeranft/core/Repaint;->pendingDialogs:Z

    .line 175
    sput-boolean v8, Lcom/chimeranft/core/Repaint;->pendingDialogs:Z

    .line 176
    sput-boolean v8, Lcom/chimeranft/core/Repaint;->armed:Z

    .line 177
    sput-wide v0, Lcom/chimeranft/core/Repaint;->lastFlushMs:J

    if-nez v5, :cond_55

    if-eqz v3, :cond_5a

    .line 178
    :cond_55
    sget-wide v0, Lcom/chimeranft/core/Repaint;->flushes:J

    add-long/2addr v0, v11

    sput-wide v0, Lcom/chimeranft/core/Repaint;->flushes:J

    :cond_5a
    move v0, v5

    move-wide v5, v9

    .line 180
    :goto_5c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_40

    .line 127
    monitor-exit v2

    cmp-long v1, v5, v9

    if-lez v1, :cond_6b

    .line 187
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    sget-object v1, Lcom/chimeranft/core/Repaint;->GATED_DRAIN:Lcom/chimeranft/core/Repaint$GATED_DRAIN$1;

    invoke-virtual {v0, v1, v5, v6}, Lcom/chimeranft/core/Main$Companion;->postUiLater(Ljava/lang/Runnable;J)V

    return-void

    :cond_6b
    if-nez v0, :cond_70

    if-nez v3, :cond_70

    goto :goto_b6

    .line 193
    :cond_70
    :try_start_70
    sget-object v1, Lcom/chimeranft/core/Repaint;->UC:Ljava/lang/String;

    const-string v2, "selectedAccount"

    invoke-static {v1, v2, v8}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 194
    sget-object v2, Lcom/chimeranft/core/Repaint;->NC:Ljava/lang/String;

    const-string v4, "getInstance"

    .line 195
    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    .line 194
    invoke-static {v2, v4, v5, v6}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_91

    goto :goto_b6

    :cond_91
    const/4 v4, -0x1

    if-eqz v3, :cond_a1

    .line 199
    const-string v3, "dialogsNeedReload"

    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_a1

    .line 200
    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v1, v3, v5}, Lcom/chimeranft/core/Repaint;->post(Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_a1
    if-eqz v0, :cond_b6

    .line 204
    const-string v3, "updateInterfaces"

    invoke-static {v2, v3, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_b6

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/chimeranft/core/Repaint;->post(Ljava/lang/Object;I[Ljava/lang/Object;)V
    :try_end_b6
    .catchall {:try_start_70 .. :try_end_b6} :catchall_b6

    :catchall_b6
    :cond_b6
    :goto_b6
    return-void

    .line 127
    :goto_b7
    monitor-exit v2

    throw v0
.end method

.method public static final nameAndStatusMask()I
    .registers 4

    .line 222
    sget v0, Lcom/chimeranft/core/Repaint;->MASK:I

    if-eqz v0, :cond_5

    return v0

    .line 224
    :cond_5
    sget-object v0, Lcom/chimeranft/core/Repaint;->MC:Ljava/lang/String;

    const-string v1, "UPDATE_MASK_EMOJI_STATUS"

    const/high16 v2, 0x80000

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "UPDATE_MASK_NAME"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v1

    .line 225
    sput v0, Lcom/chimeranft/core/Repaint;->MASK:I

    return v0
.end method

.method public static final onChatClosed()V
    .registers 5

    .line 112
    sget-object v0, Lcom/chimeranft/core/Repaint;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-boolean v1, Lcom/chimeranft/core/Repaint;->heldForChat:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 114
    :try_start_a
    sput-boolean v1, Lcom/chimeranft/core/Repaint;->heldForChat:Z

    .line 115
    sget v2, Lcom/chimeranft/core/Repaint;->pendingMask:I

    if-nez v2, :cond_18

    sget-boolean v2, Lcom/chimeranft/core/Repaint;->pendingDialogs:Z
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    if-nez v2, :cond_18

    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    goto :goto_2c

    .line 116
    :cond_18
    :try_start_18
    sget-boolean v2, Lcom/chimeranft/core/Repaint;->armed:Z

    const/4 v3, 0x1

    .line 117
    sput-boolean v3, Lcom/chimeranft/core/Repaint;->armed:Z

    .line 118
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_16

    .line 112
    monitor-exit v0

    if-nez v2, :cond_2b

    .line 119
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    sget-object v2, Lcom/chimeranft/core/Repaint;->DRAIN:Lcom/chimeranft/core/Repaint$DRAIN$1;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    :cond_2b
    return-void

    .line 112
    :goto_2c
    monitor-exit v0

    throw v1
.end method

.method public static final poll()Ljava/lang/String;
    .registers 13

    .line 242
    sget-object v0, Lcom/chimeranft/core/Repaint;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    sget-wide v1, Lcom/chimeranft/core/Repaint;->requested:J

    sget-wide v3, Lcom/chimeranft/core/Repaint;->flushes:J

    .line 246
    sget-wide v5, Lcom/chimeranft/core/Repaint;->collapsed:J

    sget-wide v7, Lcom/chimeranft/core/Repaint;->chatHolds:J

    .line 247
    sget-boolean v9, Lcom/chimeranft/core/Repaint;->heldForChat:Z

    if-eqz v9, :cond_18

    sget v9, Lcom/chimeranft/core/Repaint;->pendingMask:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1a

    :catchall_16
    move-exception v1

    goto :goto_5c

    :cond_18
    const-string v9, "0"

    .line 248
    :goto_1a
    sget-boolean v10, Lcom/chimeranft/core/Repaint;->armed:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "repaint[req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " sent="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " collapsed="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " heldInChat="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " held="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " armed="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_16

    .line 245
    monitor-exit v0

    return-object v1

    :goto_5c
    monitor-exit v0

    throw v1
.end method

.method private final post(Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 9

    if-gtz p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    .line 215
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    .line 214
    const-string p2, "postNotificationName"

    invoke-static {p1, p2, v1, v0}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final reset()V
    .registers 2

    .line 232
    sget-object v0, Lcom/chimeranft/core/Repaint;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 233
    :try_start_4
    sput v1, Lcom/chimeranft/core/Repaint;->pendingMask:I

    .line 234
    sput-boolean v1, Lcom/chimeranft/core/Repaint;->pendingDialogs:Z

    .line 235
    sput-boolean v1, Lcom/chimeranft/core/Repaint;->armed:Z

    .line 236
    sput-boolean v1, Lcom/chimeranft/core/Repaint;->heldForChat:Z

    .line 237
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    .line 232
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final updateInterfaces(I)V
    .registers 8

    if-nez p0, :cond_3

    goto :goto_3e

    .line 73
    :cond_3
    sget-object v0, Lcom/chimeranft/core/Repaint;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_6
    sget-wide v1, Lcom/chimeranft/core/Repaint;->requested:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/chimeranft/core/Repaint;->requested:J

    .line 75
    sget-boolean v1, Lcom/chimeranft/core/Repaint;->armed:Z

    if-eqz v1, :cond_20

    sget v2, Lcom/chimeranft/core/Repaint;->pendingMask:I

    or-int v5, v2, p0

    if-ne v5, v2, :cond_20

    .line 76
    sget-wide v1, Lcom/chimeranft/core/Repaint;->collapsed:J

    add-long/2addr v1, v3

    sput-wide v1, Lcom/chimeranft/core/Repaint;->collapsed:J
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1e

    .line 77
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_3f

    :cond_20
    if-eqz v1, :cond_27

    .line 79
    :try_start_22
    sget-wide v5, Lcom/chimeranft/core/Repaint;->collapsed:J

    add-long/2addr v5, v3

    sput-wide v5, Lcom/chimeranft/core/Repaint;->collapsed:J

    .line 80
    :cond_27
    sget v2, Lcom/chimeranft/core/Repaint;->pendingMask:I

    or-int/2addr p0, v2

    sput p0, Lcom/chimeranft/core/Repaint;->pendingMask:I

    const/4 p0, 0x1

    .line 82
    sput-boolean p0, Lcom/chimeranft/core/Repaint;->armed:Z

    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_1e

    .line 73
    monitor-exit v0

    if-nez v1, :cond_3e

    .line 84
    sget-object p0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    sget-object v0, Lcom/chimeranft/core/Repaint;->DRAIN:Lcom/chimeranft/core/Repaint$DRAIN$1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    :cond_3e
    :goto_3e
    return-void

    .line 73
    :goto_3f
    monitor-exit v0

    throw p0
.end method
