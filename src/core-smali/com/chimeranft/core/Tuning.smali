.class public final Lcom/chimeranft/core/Tuning;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOT_VERIF_ICON:I = 0x4

.field private static final CALLS:[J

.field public static final CHAT_ACTIVITY:I = 0xc

.field public static final CHAT_CELL:I = 0x9

.field public static final DIALOG_CELL:I = 0x5

.field public static final EMOJI_FREEZE:I = 0xa

.field public static final EXTERA_BADGE:I = 0x6

.field public static final EXTERA_SECONDARY:I = 0xd

.field public static final EXTERA_SOURCE:I = 0x7

.field private static final FAST_OUT:[J

.field public static final GET_CHAT:I = 0x2

.field public static final GET_CHAT_FULL:I = 0x3

.field public static final GET_USER:I = 0x0

.field public static final GET_USER_FULL:I = 0x1

.field public static final GROUP_COUNT:I = 0xe

.field public static final INSTANCE:Lcom/chimeranft/core/Tuning;

.field private static final MAX_NANOS:[J

.field private static final METER_BIT:I

.field private static final METER_TTL_MS:J

.field private static final NAMES:[Ljava/lang/String;

.field private static final NANOS:[J

.field public static final OPT_COUNT:I = 0x3

.field public static final OPT_DORMANT:I = 0x0

.field public static final OPT_EMOJI_FREEZE:I = 0x2

.field private static final OPT_NAMES:[Ljava/lang/String;

.field public static final OPT_UNHOOK_FLING:I = 0x1

.field public static final PUT_USER:I = 0x8

.field private static final SAMPLES:[J

.field private static final SAMPLE_MASK:J

.field public static final SCROLL_STATE:I = 0xb

.field private static final SUPPRESSED:[J

.field private static final WORK:[J

.field private static volatile disabledMask:I

.field private static volatile meterUntilMs:J

.field private static volatile optionMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Lcom/chimeranft/core/Tuning;

    invoke-direct {v0}, Lcom/chimeranft/core/Tuning;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Tuning;->INSTANCE:Lcom/chimeranft/core/Tuning;

    .line 41
    const-string v13, "chatActivity"

    const-string v14, "exteraSecondary"

    const-string v1, "getUser"

    const-string v2, "getUserFull"

    const-string v3, "getChat"

    const-string v4, "getChatFull"

    const-string v5, "botVerifIcon"

    const-string v6, "dialogCell"

    const-string v7, "exteraBadge"

    const-string v8, "exteraSource"

    const-string v9, "putUser"

    const-string v10, "chatCell"

    const-string v11, "emojiFreeze"

    const-string v12, "scrollState"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Tuning;->NAMES:[Ljava/lang/String;

    .line 67
    const-string v0, "unhookFling"

    const-string v1, "emojiFreeze"

    const-string v2, "dormant"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Tuning;->OPT_NAMES:[Ljava/lang/String;

    const/16 v0, 0xe

    .line 69
    new-array v1, v0, [J

    sput-object v1, Lcom/chimeranft/core/Tuning;->CALLS:[J

    .line 70
    new-array v1, v0, [J

    sput-object v1, Lcom/chimeranft/core/Tuning;->FAST_OUT:[J

    .line 71
    new-array v1, v0, [J

    sput-object v1, Lcom/chimeranft/core/Tuning;->WORK:[J

    .line 72
    new-array v1, v0, [J

    sput-object v1, Lcom/chimeranft/core/Tuning;->SUPPRESSED:[J

    .line 73
    new-array v1, v0, [J

    sput-object v1, Lcom/chimeranft/core/Tuning;->NANOS:[J

    .line 74
    new-array v1, v0, [J

    sput-object v1, Lcom/chimeranft/core/Tuning;->MAX_NANOS:[J

    .line 75
    new-array v0, v0, [J

    sput-object v0, Lcom/chimeranft/core/Tuning;->SAMPLES:[J

    const/high16 v0, -0x80000000

    .line 91
    sput v0, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    const/4 v0, 0x5

    .line 94
    sput v0, Lcom/chimeranft/core/Tuning;->optionMask:I

    const-wide/32 v0, 0xea60

    .line 97
    sput-wide v0, Lcom/chimeranft/core/Tuning;->METER_TTL_MS:J

    const-wide/16 v0, 0x3f

    .line 100
    sput-wide v0, Lcom/chimeranft/core/Tuning;->SAMPLE_MASK:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final armMetering(J)V
    .registers 4

    .line 105
    sget-wide v0, Lcom/chimeranft/core/Tuning;->METER_TTL_MS:J

    add-long/2addr p0, v0

    sput-wide p0, Lcom/chimeranft/core/Tuning;->meterUntilMs:J

    .line 106
    sget p0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    sget p1, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    or-int/2addr p0, p1

    sput p0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    return-void
.end method

.method public static final enter(I)Z
    .registers 7

    .line 131
    sget v0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    .line 132
    sget v1, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    and-int/2addr v1, v0

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/chimeranft/core/Tuning;->CALLS:[J

    aget-wide v4, v1, p0

    add-long/2addr v4, v2

    aput-wide v4, v1, p0

    :cond_10
    const/4 v1, 0x1

    shl-int v4, v1, p0

    and-int/2addr v0, v4

    if-nez v0, :cond_17

    return v1

    .line 134
    :cond_17
    sget-object v0, Lcom/chimeranft/core/Tuning;->SUPPRESSED:[J

    aget-wide v4, v0, p0

    add-long/2addr v4, v2

    aput-wide v4, v0, p0

    const/4 p0, 0x0

    return p0
.end method

.method public static final fastOut(I)V
    .registers 6

    .line 142
    sget v0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    sget v1, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    sget-object v0, Lcom/chimeranft/core/Tuning;->FAST_OUT:[J

    aget-wide v1, v0, p0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, v0, p0

    :cond_10
    return-void
.end method

.method public static final groupNames()Ljava/lang/String;
    .registers 2

    .line 266
    sget-object v0, Lcom/chimeranft/core/Tuning;->INSTANCE:Lcom/chimeranft/core/Tuning;

    sget-object v1, Lcom/chimeranft/core/Tuning;->NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/chimeranft/core/Tuning;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final hookDisabled(I)Z
    .registers 3

    .line 124
    sget v0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    const/4 v1, 0x1

    shl-int p0, v1, p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    return v1

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private final indexOf([Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    if-nez p2, :cond_4

    return v0

    .line 286
    :cond_4
    invoke-direct {p0, p2}, Lcom/chimeranft/core/Tuning;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 287
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    aget-object v4, p1, v2

    invoke-interface {v3, v4, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_17

    return v2

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method

.method public static final isDisabled(Ljava/lang/String;)Z
    .registers 3

    .line 189
    sget-object v0, Lcom/chimeranft/core/Tuning;->INSTANCE:Lcom/chimeranft/core/Tuning;

    sget-object v1, Lcom/chimeranft/core/Tuning;->NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/chimeranft/core/Tuning;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_12

    .line 190
    invoke-static {p0}, Lcom/chimeranft/core/Tuning;->hookDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static final isOptionEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 195
    sget-object v0, Lcom/chimeranft/core/Tuning;->INSTANCE:Lcom/chimeranft/core/Tuning;

    sget-object v1, Lcom/chimeranft/core/Tuning;->OPT_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/chimeranft/core/Tuning;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_12

    .line 196
    invoke-static {p0}, Lcom/chimeranft/core/Tuning;->optionEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private final join([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_18

    if-lez v2, :cond_10

    const/16 v3, 0x7c

    .line 278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_10
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 281
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final optionEnabled(I)Z
    .registers 3

    .line 117
    sget v0, Lcom/chimeranft/core/Tuning;->optionMask:I

    const/4 v1, 0x1

    shl-int p0, v1, p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    return v1

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static final optionNames()Ljava/lang/String;
    .registers 2

    .line 271
    sget-object v0, Lcom/chimeranft/core/Tuning;->INSTANCE:Lcom/chimeranft/core/Tuning;

    sget-object v1, Lcom/chimeranft/core/Tuning;->OPT_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/chimeranft/core/Tuning;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final poll()Ljava/lang/String;
    .registers 13

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 220
    sget-object v2, Lcom/chimeranft/core/Tuning;->INSTANCE:Lcom/chimeranft/core/Tuning;

    invoke-direct {v2, v0, v1}, Lcom/chimeranft/core/Tuning;->refreshMetering(J)V

    .line 221
    sget v2, Lcom/chimeranft/core/Tuning;->disabledMask:I

    sget v3, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    and-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 222
    :goto_15
    invoke-static {v0, v1}, Lcom/chimeranft/core/Tuning;->armMetering(J)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v2, :cond_26

    .line 224
    const-string v1, "metering just ARMED \u2014 scroll, then poll again\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_26
    const-string v1, "opts["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2c
    const/4 v2, 0x3

    if-ge v1, v2, :cond_53

    if-lez v1, :cond_36

    const/16 v2, 0x20

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_36
    sget-object v2, Lcom/chimeranft/core/Tuning;->OPT_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->optionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v2, 0x31

    goto :goto_4d

    :cond_4b
    const/16 v2, 0x30

    :goto_4d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_53
    const/16 v1, 0x5d

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    .line 233
    new-array v2, v1, [I

    const/4 v5, 0x0

    :goto_5d
    if-ge v5, v1, :cond_64

    .line 234
    aput v5, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_64
    :goto_64
    if-ge v4, v1, :cond_86

    .line 237
    aget v5, v2, v4

    add-int/lit8 v6, v4, -0x1

    :goto_6a
    if-ltz v6, :cond_7f

    .line 239
    sget-object v7, Lcom/chimeranft/core/Tuning;->CALLS:[J

    aget v8, v2, v6

    aget-wide v9, v7, v8

    aget-wide v11, v7, v5

    cmp-long v7, v9, v11

    if-gez v7, :cond_7f

    add-int/lit8 v7, v6, 0x1

    .line 240
    aput v8, v2, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_6a

    :cond_7f
    add-int/lit8 v6, v6, 0x1

    .line 243
    aput v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_86
    :goto_86
    if-ge v3, v1, :cond_11e

    .line 247
    aget v4, v2, v3

    .line 248
    sget-object v5, Lcom/chimeranft/core/Tuning;->CALLS:[J

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_9c

    sget-object v6, Lcom/chimeranft/core/Tuning;->SUPPRESSED:[J

    aget-wide v10, v6, v4

    cmp-long v6, v10, v8

    if-eqz v6, :cond_11a

    .line 249
    :cond_9c
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/chimeranft/core/Tuning;->NAMES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": calls="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v5, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    const-string v5, " work="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/chimeranft/core/Tuning;->WORK:[J

    aget-wide v6, v5, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " fastOut="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/chimeranft/core/Tuning;->FAST_OUT:[J

    aget-wide v6, v5, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    sget-object v5, Lcom/chimeranft/core/Tuning;->SUPPRESSED:[J

    aget-wide v6, v5, v4

    cmp-long v10, v6, v8

    if-lez v10, :cond_dc

    const-string v6, " off="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v5, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    :cond_dc
    sget-object v5, Lcom/chimeranft/core/Tuning;->SAMPLES:[J

    aget-wide v6, v5, v4

    cmp-long v10, v6, v8

    if-lez v10, :cond_11a

    .line 254
    const-string v6, " avg="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/chimeranft/core/Tuning;->NANOS:[J

    aget-wide v7, v6, v4

    aget-wide v9, v5, v4

    div-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "us"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v7, " max="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/chimeranft/core/Tuning;->MAX_NANOS:[J

    aget-wide v11, v7, v4

    div-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v6, " (n="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v5, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_86

    .line 259
    :cond_11e
    sget v1, Lcom/chimeranft/core/Tuning;->disabledMask:I

    sget v2, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    not-int v2, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_132

    .line 260
    const-string v2, "\ndisabledMask=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final refreshMetering(J)V
    .registers 7

    .line 111
    sget v0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    sget v1, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    sget-wide v2, Lcom/chimeranft/core/Tuning;->meterUntilMs:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_13

    sget p1, Lcom/chimeranft/core/Tuning;->disabledMask:I

    not-int p2, v1

    and-int/2addr p1, p2

    sput p1, Lcom/chimeranft/core/Tuning;->disabledMask:I

    :cond_13
    return-void
.end method

.method public static final reset()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_26

    .line 203
    sget-object v1, Lcom/chimeranft/core/Tuning;->SUPPRESSED:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 204
    sget-object v1, Lcom/chimeranft/core/Tuning;->WORK:[J

    aput-wide v2, v1, v0

    .line 205
    sget-object v1, Lcom/chimeranft/core/Tuning;->FAST_OUT:[J

    aput-wide v2, v1, v0

    .line 206
    sget-object v1, Lcom/chimeranft/core/Tuning;->CALLS:[J

    aput-wide v2, v1, v0

    .line 207
    sget-object v1, Lcom/chimeranft/core/Tuning;->SAMPLES:[J

    aput-wide v2, v1, v0

    .line 208
    sget-object v1, Lcom/chimeranft/core/Tuning;->MAX_NANOS:[J

    aput-wide v2, v1, v0

    .line 209
    sget-object v1, Lcom/chimeranft/core/Tuning;->NANOS:[J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_26
    return-void
.end method

.method public static final setDisabled(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 170
    sget-object v0, Lcom/chimeranft/core/Tuning;->INSTANCE:Lcom/chimeranft/core/Tuning;

    sget-object v1, Lcom/chimeranft/core/Tuning;->NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/chimeranft/core/Tuning;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2d

    .line 171
    invoke-static {}, Lcom/chimeranft/core/Tuning;->groupNames()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown hook group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, 0x1

    shl-int/2addr p0, v0

    .line 173
    sget v2, Lcom/chimeranft/core/Tuning;->disabledMask:I

    if-eqz p1, :cond_35

    or-int/2addr p0, v2

    goto :goto_37

    :cond_35
    not-int p0, p0

    and-int/2addr p0, v2

    :goto_37
    sput p0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    .line 174
    aget-object p0, v1, v0

    if-eqz p1, :cond_40

    const-string p1, " DISABLED"

    goto :goto_42

    :cond_40
    const-string p1, " enabled"

    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setOption(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 179
    sget-object v0, Lcom/chimeranft/core/Tuning;->INSTANCE:Lcom/chimeranft/core/Tuning;

    sget-object v1, Lcom/chimeranft/core/Tuning;->OPT_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/chimeranft/core/Tuning;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2d

    .line 180
    invoke-static {}, Lcom/chimeranft/core/Tuning;->optionNames()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, 0x1

    shl-int/2addr p0, v0

    .line 182
    sget v2, Lcom/chimeranft/core/Tuning;->optionMask:I

    if-eqz p1, :cond_35

    or-int/2addr p0, v2

    goto :goto_37

    :cond_35
    not-int p0, p0

    and-int/2addr p0, v2

    :goto_37
    sput p0, Lcom/chimeranft/core/Tuning;->optionMask:I

    .line 183
    aget-object p0, v1, v0

    if-eqz p1, :cond_40

    const-string p1, " ON"

    goto :goto_42

    :cond_40
    const-string p1, " OFF"

    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final tick(I)J
    .registers 8

    .line 154
    sget v0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    sget v1, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    and-int/2addr v0, v1

    const-wide/16 v1, 0x0

    if-nez v0, :cond_a

    return-wide v1

    .line 155
    :cond_a
    sget-object v0, Lcom/chimeranft/core/Tuning;->WORK:[J

    aget-wide v3, v0, p0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v0, p0

    .line 156
    sget-object v0, Lcom/chimeranft/core/Tuning;->CALLS:[J

    aget-wide v3, v0, p0

    sget-wide v5, Lcom/chimeranft/core/Tuning;->SAMPLE_MASK:J

    and-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-nez p0, :cond_23

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_23
    return-wide v1
.end method

.method public static final tock(IJ)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    goto :goto_26

    .line 162
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 163
    sget-object p1, Lcom/chimeranft/core/Tuning;->NANOS:[J

    aget-wide v2, p1, p0

    add-long/2addr v2, v0

    aput-wide v2, p1, p0

    .line 164
    sget-object p1, Lcom/chimeranft/core/Tuning;->SAMPLES:[J

    aget-wide v2, p1, p0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, p1, p0

    .line 165
    sget-object p1, Lcom/chimeranft/core/Tuning;->MAX_NANOS:[J

    aget-wide v2, p1, p0

    cmp-long p2, v0, v2

    if-lez p2, :cond_26

    aput-wide v0, p1, p0

    :cond_26
    :goto_26
    return-void
.end method

.method private final trimAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    .line 294
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-le v0, v1, :cond_1f

    add-int/lit8 v3, v0, -0x1

    .line 295
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1f
    if-nez v1, :cond_28

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_28

    return-object p1

    .line 297
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final work(I)V
    .registers 6

    .line 148
    sget v0, Lcom/chimeranft/core/Tuning;->disabledMask:I

    sget v1, Lcom/chimeranft/core/Tuning;->METER_BIT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    sget-object v0, Lcom/chimeranft/core/Tuning;->WORK:[J

    aget-wide v1, v0, p0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, v0, p0

    :cond_10
    return-void
.end method
