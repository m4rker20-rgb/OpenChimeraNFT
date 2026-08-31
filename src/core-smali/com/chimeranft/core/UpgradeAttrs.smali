.class public final Lcom/chimeranft/core/UpgradeAttrs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTR_FIELDS:[Ljava/lang/String;

.field private static final CONN:Ljava/lang/String;

.field private static final DEADLINE_MS:J

.field private static final FAIL_MEMO_MS:J

.field public static final INSTANCE:Lcom/chimeranft/core/UpgradeAttrs;

.field private static final MAX_CACHED:I

.field private static final REQUESTS:[Ljava/lang/String;

.field private static final REQ_DELEGATE:Ljava/lang/String;

.field private static final UC:Ljava/lang/String;

.field private static final failedAt:Ljava/util/HashMap;

.field private static final failures:Ljava/util/HashMap;

.field private static final lock:Ljava/lang/Object;

.field private static final ready:Ljava/util/LinkedHashMap;

.field private static final sentAt:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/UpgradeAttrs;

    invoke-direct {v0}, Lcom/chimeranft/core/UpgradeAttrs;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->INSTANCE:Lcom/chimeranft/core/UpgradeAttrs;

    .line 27
    const-string v0, "org.telegram.messenger.UserConfig"

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->UC:Ljava/lang/String;

    .line 28
    const-string v0, "org.telegram.tgnet.ConnectionsManager"

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->CONN:Ljava/lang/String;

    .line 29
    const-string v0, "org.telegram.tgnet.RequestDelegate"

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->REQ_DELEGATE:Ljava/lang/String;

    .line 33
    const-string v0, "org.telegram.tgnet.tl.TL_stars$getStarGiftUpgradeAttributes"

    .line 34
    const-string v1, "org.telegram.tgnet.tl.TL_stars$getStarGiftUpgradePreview"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->REQUESTS:[Ljava/lang/String;

    .line 37
    const-string v0, "attributes"

    const-string v1, "sample_attributes"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->ATTR_FIELDS:[Ljava/lang/String;

    const-wide/16 v0, 0x2ee0

    .line 39
    sput-wide v0, Lcom/chimeranft/core/UpgradeAttrs;->DEADLINE_MS:J

    const-wide/16 v0, 0xbb8

    .line 40
    sput-wide v0, Lcom/chimeranft/core/UpgradeAttrs;->FAIL_MEMO_MS:J

    const/16 v0, 0x18

    .line 41
    sput v0, Lcom/chimeranft/core/UpgradeAttrs;->MAX_CACHED:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->lock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->sentAt:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->failures:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->failedAt:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/UpgradeAttrs;->ready:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$fail(Lcom/chimeranft/core/UpgradeAttrs;JLjava/lang/String;)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/UpgradeAttrs;->fail(JLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onAnswer(Lcom/chimeranft/core/UpgradeAttrs;JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/UpgradeAttrs;->onAnswer(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final fail(JLjava/lang/String;)V
    .registers 7

    if-eqz p3, :cond_8

    .line 118
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const-string p3, "\u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u0430\u044f \u043e\u0448\u0438\u0431\u043a\u0430"

    .line 119
    :cond_a
    sget-object v0, Lcom/chimeranft/core/UpgradeAttrs;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_d
    sget-object v1, Lcom/chimeranft/core/UpgradeAttrs;->sentAt:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/chimeranft/core/UpgradeAttrs;->failures:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object p3, Lcom/chimeranft/core/UpgradeAttrs;->failedAt:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_35

    .line 119
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final onAnswer(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    if-eqz p4, :cond_18

    .line 171
    const-string p3, "text"

    invoke-static {p4, p3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/chimeranft/core/UpgradeAttrs;->strOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 172
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_14

    const-string p3, "Telegram \u043e\u0442\u043a\u0430\u0437\u0430\u043b"

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/UpgradeAttrs;->fail(JLjava/lang/String;)V

    return-void

    :cond_18
    if-nez p3, :cond_20

    .line 177
    const-string p3, "\u043f\u0443\u0441\u0442\u043e\u0439 \u043e\u0442\u0432\u0435\u0442"

    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/UpgradeAttrs;->fail(JLjava/lang/String;)V

    return-void

    .line 181
    :cond_20
    sget-object p4, Lcom/chimeranft/core/UpgradeAttrs;->ATTR_FIELDS:[Ljava/lang/String;

    array-length v0, p4

    const/4 v1, 0x0

    :goto_24
    const/4 v2, 0x0

    if-ge v1, v0, :cond_38

    aget-object v3, p4, v1

    .line 183
    invoke-static {p3, v3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 184
    invoke-direct {p0, v3}, Lcom/chimeranft/core/UpgradeAttrs;->size(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_39

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_38
    move-object v3, v2

    :cond_39
    if-eqz v3, :cond_a9

    .line 188
    invoke-direct {p0, v3}, Lcom/chimeranft/core/UpgradeAttrs;->size(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_42

    goto :goto_a9

    .line 196
    :cond_42
    instance-of p3, v3, Ljava/util/ArrayList;

    if-eqz p3, :cond_4a

    .line 197
    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_55

    .line 198
    :cond_4a
    instance-of p3, v3, Ljava/util/List;

    if-eqz p3, :cond_55

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_55
    :goto_55
    if-nez v2, :cond_5d

    .line 204
    const-string p3, "\u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u044b\u0439 \u0444\u043e\u0440\u043c\u0430\u0442 \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u043e\u0432"

    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/UpgradeAttrs;->fail(JLjava/lang/String;)V

    return-void

    .line 207
    :cond_5d
    sget-object p3, Lcom/chimeranft/core/UpgradeAttrs;->lock:Ljava/lang/Object;

    monitor-enter p3

    .line 208
    :try_start_60
    sget-object p4, Lcom/chimeranft/core/UpgradeAttrs;->sentAt:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object p4, Lcom/chimeranft/core/UpgradeAttrs;->failures:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object p4, Lcom/chimeranft/core/UpgradeAttrs;->failedAt:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object p4, Lcom/chimeranft/core/UpgradeAttrs;->ready:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p4}, Ljava/util/AbstractMap;->size()I

    move-result p1

    sget p2, Lcom/chimeranft/core/UpgradeAttrs;->MAX_CACHED:I

    if-le p1, p2, :cond_a3

    .line 214
    invoke-virtual {p4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a3

    .line 217
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_a3

    :catchall_a1
    move-exception p1

    goto :goto_a7

    .line 221
    :cond_a3
    :goto_a3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a5
    .catchall {:try_start_60 .. :try_end_a5} :catchall_a1

    .line 207
    monitor-exit p3

    return-void

    :goto_a7
    monitor-exit p3

    throw p1

    .line 190
    :cond_a9
    :goto_a9
    const-string p3, "\u0443 \u044d\u0442\u043e\u0433\u043e \u043f\u043e\u0434\u0430\u0440\u043a\u0430 \u043d\u0435\u0442 \u0430\u0442\u0440\u0438\u0431\u0443\u0442\u043e\u0432"

    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/UpgradeAttrs;->fail(JLjava/lang/String;)V

    return-void
.end method

.method public static final poll(J)Ljava/lang/String;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    .line 80
    const-string p0, "fail|\u043d\u0435\u0442 id \u043f\u043e\u0434\u0430\u0440\u043a\u0430"

    return-object p0

    .line 81
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    sget-object v2, Lcom/chimeranft/core/UpgradeAttrs;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_10
    sget-object v3, Lcom/chimeranft/core/UpgradeAttrs;->ready:Ljava/util/LinkedHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 84
    sget-object p0, Lcom/chimeranft/core/UpgradeAttrs;->INSTANCE:Lcom/chimeranft/core/UpgradeAttrs;

    invoke-direct {p0, v3}, Lcom/chimeranft/core/UpgradeAttrs;->size(Ljava/lang/Object;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ok|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_35

    monitor-exit v2

    return-object p0

    :catchall_35
    move-exception p0

    goto :goto_9b

    .line 85
    :cond_37
    :try_start_37
    sget-object v3, Lcom/chimeranft/core/UpgradeAttrs;->failures:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_58

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fail|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_56
    .catchall {:try_start_37 .. :try_end_56} :catchall_35

    monitor-exit v2

    return-object p0

    .line 87
    :cond_58
    :try_start_58
    sget-object v4, Lcom/chimeranft/core/UpgradeAttrs;->sentAt:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_6a

    .line 88
    const-string p0, "fail|\u0437\u0430\u043f\u0440\u043e\u0441 \u043d\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u0435\u043d"
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_35

    monitor-exit v2

    return-object p0

    .line 89
    :cond_6a
    :try_start_6a
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    sget-wide v7, Lcom/chimeranft/core/UpgradeAttrs;->DEADLINE_MS:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_7a

    const-string p0, "pending|"
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_35

    monitor-exit v2

    return-object p0

    .line 92
    :cond_7a
    :try_start_7a
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Telegram \u043d\u0435 \u043e\u0442\u0432\u0435\u0442\u0438\u043b"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v3, Lcom/chimeranft/core/UpgradeAttrs;->failedAt:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string p0, "fail|Telegram \u043d\u0435 \u043e\u0442\u0432\u0435\u0442\u0438\u043b"
    :try_end_99
    .catchall {:try_start_7a .. :try_end_99} :catchall_35

    monitor-exit v2

    return-object p0

    :goto_9b
    monitor-exit v2

    throw p0
.end method

.method private final reasonOf(J)Ljava/lang/String;
    .registers 4

    .line 113
    sget-object v0, Lcom/chimeranft/core/UpgradeAttrs;->failures:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_16

    .line 114
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_15

    goto :goto_16

    :cond_15
    return-object p1

    :cond_16
    :goto_16
    const-string p1, "\u043d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u0430\u044f \u043e\u0448\u0438\u0431\u043a\u0430"

    return-object p1
.end method

.method private final send(J)Z
    .registers 11

    const/4 v0, 0x0

    .line 129
    :try_start_1
    sget-object v1, Lcom/chimeranft/core/UpgradeAttrs;->UC:Ljava/lang/String;

    const-string v2, "selectedAccount"

    invoke-static {v1, v2, v0}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 130
    sget-object v2, Lcom/chimeranft/core/UpgradeAttrs;->CONN:Ljava/lang/String;

    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v0

    .line 130
    invoke-static {v2, v3, v5, v6}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/chimeranft/core/UpgradeAttrs;->REQ_DELEGATE:Ljava/lang/String;

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_67

    if-nez v2, :cond_2b

    goto :goto_67

    .line 135
    :cond_2b
    sget-object v3, Lcom/chimeranft/core/UpgradeAttrs;->REQUESTS:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v5, :cond_3d

    aget-object v6, v3, v7

    .line 137
    invoke-static {v6}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3d

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_3d
    if-nez v6, :cond_40

    return v0

    .line 141
    :cond_40
    const-string v3, "gift_id"

    invoke-static {v6, v3, p1, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "giftId"

    invoke-static {v6, v3, p1, p2}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_51

    return v0

    .line 143
    :cond_51
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 144
    new-array v4, v4, [Ljava/lang/Class;

    aput-object v2, v4, v0

    new-instance v5, Lcom/chimeranft/core/UpgradeAttrs$send$delegate$1;

    invoke-direct {v5, p1, p2}, Lcom/chimeranft/core/UpgradeAttrs$send$delegate$1;-><init>(J)V

    .line 143
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 160
    invoke-direct {p0, v1, v2, v6, p1}, Lcom/chimeranft/core/UpgradeAttrs;->sendRequest(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_67

    return p1

    :catchall_67
    :cond_67
    :goto_67
    return v0
.end method

.method private final sendRequest(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 239
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sendRequest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 240
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 241
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eq v3, p2, :cond_33

    goto :goto_c

    .line 244
    :cond_33
    :try_start_33
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 245
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v2

    aput-object p4, v3, v4

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_40

    return v4

    :catchall_40
    nop

    goto :goto_c

    :cond_42
    return v2
.end method

.method private final size(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 226
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_f

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 227
    :cond_f
    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "size"

    invoke-static {p1, v3, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 228
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_24

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_24
    return v0
.end method

.method public static final start(J)Ljava/lang/String;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    .line 56
    const-string p0, "fail|\u043d\u0435\u0442 id \u043f\u043e\u0434\u0430\u0440\u043a\u0430"

    return-object p0

    .line 57
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    sget-object v2, Lcom/chimeranft/core/UpgradeAttrs;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_10
    sget-object v3, Lcom/chimeranft/core/UpgradeAttrs;->ready:Ljava/util/LinkedHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 60
    sget-object p0, Lcom/chimeranft/core/UpgradeAttrs;->INSTANCE:Lcom/chimeranft/core/UpgradeAttrs;

    invoke-direct {p0, v3}, Lcom/chimeranft/core/UpgradeAttrs;->size(Ljava/lang/Object;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ok|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_35

    monitor-exit v2

    return-object p0

    :catchall_35
    move-exception p0

    goto/16 :goto_bd

    .line 61
    :cond_38
    :try_start_38
    sget-object v3, Lcom/chimeranft/core/UpgradeAttrs;->sentAt:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_56

    .line 62
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    sget-wide v6, Lcom/chimeranft/core/UpgradeAttrs;->DEADLINE_MS:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_56

    const-string p0, "pending|"
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_35

    monitor-exit v2

    return-object p0

    .line 63
    :cond_56
    :try_start_56
    sget-object v4, Lcom/chimeranft/core/UpgradeAttrs;->failedAt:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_89

    .line 64
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    sget-wide v7, Lcom/chimeranft/core/UpgradeAttrs;->FAIL_MEMO_MS:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_89

    .line 65
    sget-object v0, Lcom/chimeranft/core/UpgradeAttrs;->INSTANCE:Lcom/chimeranft/core/UpgradeAttrs;

    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/UpgradeAttrs;->reasonOf(J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_87
    .catchall {:try_start_56 .. :try_end_87} :catchall_35

    monitor-exit v2

    return-object p0

    .line 66
    :cond_89
    :try_start_89
    sget-object v5, Lcom/chimeranft/core/UpgradeAttrs;->failures:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_a7
    .catchall {:try_start_89 .. :try_end_a7} :catchall_35

    .line 58
    monitor-exit v2

    .line 70
    sget-object v0, Lcom/chimeranft/core/UpgradeAttrs;->INSTANCE:Lcom/chimeranft/core/UpgradeAttrs;

    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/UpgradeAttrs;->send(J)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 72
    const-string v1, "\u043a\u043b\u0438\u0435\u043d\u0442 \u043d\u0435 \u0434\u0430\u0451\u0442 \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0437\u0430\u043f\u0440\u043e\u0441"

    invoke-direct {v0, p0, p1, v1}, Lcom/chimeranft/core/UpgradeAttrs;->fail(JLjava/lang/String;)V

    .line 73
    invoke-static {p0, p1}, Lcom/chimeranft/core/UpgradeAttrs;->poll(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_ba
    const-string p0, "pending|"

    return-object p0

    .line 58
    :goto_bd
    monitor-exit v2

    throw p0
.end method

.method private final strOrEmpty(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    .line 232
    const-string p1, ""

    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final take(J)Ljava/lang/Object;
    .registers 4

    .line 107
    sget-object v0, Lcom/chimeranft/core/UpgradeAttrs;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/chimeranft/core/UpgradeAttrs;->ready:Ljava/util/LinkedHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method
