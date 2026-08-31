.class public final Lcom/chimeranft/core/PinnedChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AU:Ljava/lang/String;

.field private static final CACHED_CHAT_MEMO_MS:J

.field private static final CONN:Ljava/lang/String;

.field public static final INSTANCE:Lcom/chimeranft/core/PinnedChannel;

.field private static final MC:Ljava/lang/String;

.field private static final MS:Ljava/lang/String;

.field private static final PIN_DEADLINE_MS:J

.field private static final REQ_DELEGATE:Ljava/lang/String;

.field private static final UC:Ljava/lang/String;

.field private static volatile anyStamp:Z

.field private static final cachedChats:Lcom/chimeranft/core/LongStamps;

.field private static volatile pinAttempt:I

.field private static final pinLock:Ljava/lang/Object;

.field private static volatile pinStartedAt:J

.field private static volatile pinStatus:Ljava/lang/String;

.field private static volatile pinnedAttemptId:J

.field private static volatile pinnedAttemptNo:I

.field private static final postIds:Lcom/chimeranft/core/LongStamps;

.field private static volatile putChatMethod:Ljava/lang/reflect/Method;

.field private static volatile putChatResolved:Z

.field private static volatile putChatsMethod:Ljava/lang/reflect/Method;

.field private static volatile putChatsResolved:Z

.field private static final resolving:Ljava/util/HashMap;

.field private static final stamped:Ljava/util/WeakHashMap;

.field private static volatile userOrChatMethod:Ljava/lang/reflect/Method;

.field private static volatile userOrChatResolved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/PinnedChannel;

    invoke-direct {v0}, Lcom/chimeranft/core/PinnedChannel;-><init>()V

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    .line 12
    const-string v0, "org.telegram.messenger.MessagesController"

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->MC:Ljava/lang/String;

    .line 13
    const-string v0, "org.telegram.messenger.MessagesStorage"

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->MS:Ljava/lang/String;

    .line 14
    const-string v0, "org.telegram.messenger.UserConfig"

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->UC:Ljava/lang/String;

    .line 15
    const-string v0, "org.telegram.messenger.AndroidUtilities"

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->AU:Ljava/lang/String;

    .line 16
    const-string v0, "org.telegram.tgnet.ConnectionsManager"

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->CONN:Ljava/lang/String;

    .line 17
    const-string v0, "org.telegram.tgnet.RequestDelegate"

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->REQ_DELEGATE:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->stamped:Ljava/util/WeakHashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->resolving:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lcom/chimeranft/core/LongStamps;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->cachedChats:Lcom/chimeranft/core/LongStamps;

    const-wide/16 v0, 0x7530

    .line 47
    sput-wide v0, Lcom/chimeranft/core/PinnedChannel;->CACHED_CHAT_MEMO_MS:J

    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->pinLock:Ljava/lang/Object;

    .line 346
    const-string v0, ""

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->pinStatus:Ljava/lang/String;

    const-wide/16 v0, 0x3a98

    .line 351
    sput-wide v0, Lcom/chimeranft/core/PinnedChannel;->PIN_DEADLINE_MS:J

    .line 763
    new-instance v0, Lcom/chimeranft/core/LongStamps;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    sput-object v0, Lcom/chimeranft/core/PinnedChannel;->postIds:Lcom/chimeranft/core/LongStamps;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$currentParticipants(Lcom/chimeranft/core/PinnedChannel;J)I
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/PinnedChannel;->currentParticipants(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getChat(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/PinnedChannel;->getChat(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$latestPostId(Lcom/chimeranft/core/PinnedChannel;J)I
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/PinnedChannel;->latestPostId(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$onPinResolved(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 11
    invoke-direct/range {p0 .. p6}, Lcom/chimeranft/core/PinnedChannel;->onPinResolved(Ljava/lang/Object;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$onUsernameResolved(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;IJILjava/lang/Object;)V
    .registers 7

    .line 11
    invoke-direct/range {p0 .. p6}, Lcom/chimeranft/core/PinnedChannel;->onUsernameResolved(Ljava/lang/Object;IJILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$postRepaint(Lcom/chimeranft/core/PinnedChannel;J)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/PinnedChannel;->postRepaint(J)V

    return-void
.end method

.method public static final synthetic access$rememberPostId(Lcom/chimeranft/core/PinnedChannel;JJ)V
    .registers 5

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/PinnedChannel;->rememberPostId(JJ)V

    return-void
.end method

.method public static final synthetic access$setPinStatus(Lcom/chimeranft/core/PinnedChannel;ILjava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$stampParticipants(Lcom/chimeranft/core/PinnedChannel;Ljava/lang/Object;I)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/PinnedChannel;->stampParticipants(Ljava/lang/Object;I)V

    return-void
.end method

.method public static final synthetic access$stillOurs(Lcom/chimeranft/core/PinnedChannel;IJ)Z
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/PinnedChannel;->stillOurs(IJ)Z

    move-result p0

    return p0
.end method

.method public static final apply(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 85
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "personal_channel_id"

    invoke-static {v3, v4}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_22

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "personalChannelId"

    invoke-static {v3, v4}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    return v2

    :cond_22
    :goto_22
    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_2c

    .line 87
    :cond_26
    const-string v3, "pinned_channel"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    :goto_2c
    sget-object v3, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    invoke-direct {v3, v0}, Lcom/chimeranft/core/PinnedChannel;->enabledIn(Lorg/json/JSONObject;)Z

    move-result v4

    .line 89
    sget-object v6, Lcom/chimeranft/core/PinnedChannel;->stamped:Ljava/util/WeakHashMap;

    monitor-enter v6

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-nez v4, :cond_c2

    .line 92
    :try_start_3b
    invoke-virtual {v6, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [J

    if-eqz v11, :cond_6a

    const/4 v4, 0x0

    .line 95
    const-string v2, "personal_channel_id"

    move-object v0, v3

    const-string v3, "personalChannelId"

    aget-wide v4, v11, v4

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->setBoth(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V

    .line 96
    const-string v2, "personal_channel_message"

    const-string v3, "personalChannelMessage"

    aget-wide v4, v11, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->setBoth(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V

    .line 97
    const-string v2, "flags2"

    const-string v3, "flags2"

    aget-wide v4, v11, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->setBoth(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_65
    .catchall {:try_start_3b .. :try_end_65} :catchall_67

    .line 98
    monitor-exit v6

    return v10

    :catchall_67
    move-exception v0

    goto/16 :goto_149

    :cond_6a
    move-object v2, v3

    const/4 v4, 0x0

    if-nez v0, :cond_70

    move-wide v11, v8

    goto :goto_76

    .line 103
    :cond_70
    :try_start_70
    const-string v3, "last_managed_id"

    invoke-virtual {v0, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 104
    :goto_76
    const-string v3, "personal_channel_id"

    const-string v5, "personalChannelId"

    invoke-direct {v2, v1, v3, v5}, Lcom/chimeranft/core/PinnedChannel;->firstLong(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    if-eqz v0, :cond_c0

    .line 105
    const-string v3, "managed"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 106
    const-string v3, "removed_at"

    invoke-virtual {v0, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v15

    cmp-long v0, v15, v8

    if-lez v0, :cond_c0

    cmp-long v0, v11, v8

    if-lez v0, :cond_c0

    cmp-long v0, v13, v11

    if-eqz v0, :cond_9b

    goto :goto_c0

    :cond_9b
    move-object v0, v2

    .line 108
    const-string v2, "personal_channel_id"

    const-string v3, "personalChannelId"

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->setBoth(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    const-string v2, "personal_channel_message"

    const-string v3, "personalChannelMessage"

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->setBoth(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V

    .line 110
    const-string v0, "flags2"

    invoke-static {v1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    .line 111
    const-string v0, "flags2"

    const-wide/16 v4, -0x41

    and-long/2addr v2, v4

    invoke-static {v1, v0, v2, v3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z
    :try_end_be
    .catchall {:try_start_70 .. :try_end_be} :catchall_67

    .line 112
    monitor-exit v6

    return v10

    .line 107
    :cond_c0
    :goto_c0
    monitor-exit v6

    return v4

    :cond_c2
    move-object v2, v3

    const/4 v4, 0x0

    if-nez v0, :cond_c8

    .line 115
    monitor-exit v6

    return v4

    .line 116
    :cond_c8
    :try_start_c8
    const-string v3, "id"

    invoke-virtual {v0, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 117
    const-string v3, "message_id"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 118
    invoke-virtual {v6, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 120
    const-string v0, "personal_channel_id"

    const-string v3, "personalChannelId"

    invoke-direct {v2, v1, v0, v3}, Lcom/chimeranft/core/PinnedChannel;->firstLong(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    const-string v0, "personal_channel_message"

    const-string v3, "personalChannelMessage"

    invoke-direct {v2, v1, v0, v3}, Lcom/chimeranft/core/PinnedChannel;->firstLong(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    const-string v0, "flags2"

    invoke-static {v1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v18

    const/4 v0, 0x3

    new-array v0, v0, [J

    aput-wide v14, v0, v4

    aput-wide v16, v0, v10

    aput-wide v18, v0, v7

    invoke-virtual {v6, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sput-boolean v10, Lcom/chimeranft/core/PinnedChannel;->anyStamp:Z

    .line 124
    :cond_102
    const-string v0, "personal_channel_id"

    const-string v3, "personalChannelId"

    invoke-direct {v2, v1, v0, v3}, Lcom/chimeranft/core/PinnedChannel;->firstLong(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v0, v14, v11

    if-eqz v0, :cond_119

    move-object v0, v2

    .line 126
    const-string v2, "personal_channel_id"

    const-string v3, "personalChannelId"

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->setBoth(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x1

    goto :goto_11b

    :cond_119
    move-object v0, v2

    const/4 v2, 0x0

    .line 129
    :goto_11b
    const-string v3, "personal_channel_message"

    const-string v4, "personalChannelMessage"

    invoke-direct {v0, v1, v3, v4}, Lcom/chimeranft/core/PinnedChannel;->firstLong(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    int-to-long v11, v13

    cmp-long v5, v3, v11

    if-eqz v5, :cond_131

    .line 131
    const-string v2, "personal_channel_message"

    const-string v3, "personalChannelMessage"

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->setBoth(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x1

    .line 134
    :cond_131
    const-string v0, "flags2"

    invoke-static {v1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v11, 0x40

    and-long v13, v3, v11

    cmp-long v0, v13, v8

    if-nez v0, :cond_146

    .line 137
    const-string v0, "flags2"

    or-long/2addr v3, v11

    invoke-static {v1, v0, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z
    :try_end_145
    .catchall {:try_start_c8 .. :try_end_145} :catchall_67

    goto :goto_147

    :cond_146
    move v10, v2

    .line 140
    :goto_147
    monitor-exit v6

    return v10

    :goto_149
    monitor-exit v6

    throw v0
.end method

.method private final cacheResolvedChats(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    .line 880
    :try_start_0
    const-string v0, "chats"

    invoke-static {p2, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 881
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_c

    goto/16 :goto_97

    .line 882
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 883
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_97

    .line 884
    :cond_1b
    invoke-direct {p0, p1}, Lcom/chimeranft/core/PinnedChannel;->putChats(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2f

    .line 885
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :cond_2f
    const-string v0, "users"

    invoke-static {p2, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    instance-of v5, p2, Ljava/util/List;

    if-eqz v5, :cond_43

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 889
    :cond_43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_60

    .line 890
    const-string p2, "putUsers"

    .line 891
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v5, v4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v6, v3

    .line 890
    invoke-static {p1, p2, v5, v6}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    :cond_60
    sget-object p1, Lcom/chimeranft/core/PinnedChannel;->UC:Ljava/lang/String;

    const-string p2, "selectedAccount"

    invoke-static {p1, p2, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 893
    sget-object p2, Lcom/chimeranft/core/PinnedChannel;->MS:Ljava/lang/String;

    const-string v5, "getInstance"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    .line 894
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    .line 893
    invoke-static {p2, v5, v6, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 895
    const-string p2, "putUsersAndChats"

    const/4 v5, 0x4

    invoke-direct {p0, p1, p2, v5}, Lcom/chimeranft/core/PinnedChannel;->hostMethod(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_97

    .line 897
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object v1, v5, v3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, v5, v2

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catchall {:try_start_0 .. :try_end_97} :catchall_97

    :catchall_97
    :cond_97
    :goto_97
    return-void
.end method

.method private final cachedChatByUsername(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    .line 462
    :try_start_1
    sget-boolean v1, Lcom/chimeranft/core/PinnedChannel;->userOrChatResolved:Z

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 464
    const-string v1, "getUserOrChat"

    invoke-direct {p0, p1, v1}, Lcom/chimeranft/core/PinnedChannel;->stringMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/chimeranft/core/PinnedChannel;->userOrChatMethod:Ljava/lang/reflect/Method;

    .line 465
    sput-boolean v2, Lcom/chimeranft/core/PinnedChannel;->userOrChatResolved:Z

    .line 467
    :cond_10
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->userOrChatMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_15

    return-object v0

    .line 469
    :cond_15
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 470
    invoke-direct {p0, p1}, Lcom/chimeranft/core/PinnedChannel;->isChannelShape(Ljava/lang/Object;)Z

    move-result p2
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    if-eqz p2, :cond_25

    return-object p1

    :catchall_25
    :cond_25
    return-object v0
.end method

.method private final channelUsername(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 518
    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/PinnedChannel;->strOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/PinnedChannel;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_55

    .line 520
    const-string v1, "usernames"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 521
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_52

    .line 523
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 526
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "active"

    invoke-static {v1, v3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 527
    invoke-static {v1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/PinnedChannel;->strOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chimeranft/core/PinnedChannel;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_51

    goto :goto_24

    :cond_51
    return-object v1

    .line 531
    :cond_52
    const-string p1, ""

    return-object p1

    :cond_55
    return-object v1
.end method

.method private final commitPin(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;I)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v9, p5

    .line 536
    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v2, 0x0

    const/16 v20, 0x1

    cmp-long v4, v12, v2

    if-gtz v4, :cond_1a

    .line 539
    const-string v1, "fail|\u041a\u0430\u043d\u0430\u043b \u0431\u0435\u0437 id"

    invoke-direct {v0, v9, v1}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    return v20

    .line 542
    :cond_1a
    invoke-direct {v0, v1}, Lcom/chimeranft/core/PinnedChannel;->channelUsername(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v2, p4

    :cond_26
    const/16 v3, 0x40

    invoke-direct {v0, v2, v3}, Lcom/chimeranft/core/PinnedChannel;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v14

    .line 544
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_38

    .line 546
    const-string v1, "fail|\u0423 \u044d\u0442\u043e\u0433\u043e \u043a\u0430\u043d\u0430\u043b\u0430 \u043d\u0435\u0442 \u043f\u0443\u0431\u043b\u0438\u0447\u043d\u043e\u0439 \u0441\u0441\u044b\u043b\u043a\u0438"

    invoke-direct {v0, v9, v1}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    return v20

    .line 549
    :cond_38
    const-string v2, "access_hash"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v18

    .line 550
    const-string v2, "title"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/chimeranft/core/PinnedChannel;->strOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 551
    const-string v2, "participants_count"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    .line 554
    sget-object v10, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const/4 v1, 0x0

    .line 555
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v17, 0x0

    const/4 v11, 0x1

    .line 554
    invoke-virtual/range {v10 .. v19}, Lcom/chimeranft/core/Main$Companion;->setPinnedChannel(IJLjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 556
    const-string v4, "FAIL"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "FATAL"

    invoke-static {v3, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "not initialized"

    invoke-static {v3, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    goto :goto_a8

    .line 561
    :cond_78
    invoke-direct {v0, v9, v12, v13}, Lcom/chimeranft/core/PinnedChannel;->rememberPin(IJ)V

    .line 562
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ok|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide v3, v12

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v7, v18

    .line 563
    invoke-direct/range {v0 .. v9}, Lcom/chimeranft/core/PinnedChannel;->enrichPin(Ljava/lang/Object;IJLjava/lang/String;Ljava/lang/String;JI)V

    return v20

    .line 558
    :cond_a8
    :goto_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    return v20
.end method

.method private final currentParticipants(J)I
    .registers 8

    .line 774
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pinnedChannelRecord()Lorg/json/JSONObject;

    move-result-object v0

    .line 775
    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    const/4 v3, 0x0

    cmp-long v4, v1, p1

    if-eqz v4, :cond_14

    return v3

    .line 776
    :cond_14
    const-string p1, "participants_count"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private final enabledIn(Lorg/json/JSONObject;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 78
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 79
    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_28

    .line 80
    const-string v1, "username"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x1

    return p1

    :cond_28
    :goto_28
    return v0
.end method

.method private final enrichPin(Ljava/lang/Object;IJLjava/lang/String;Ljava/lang/String;JI)V
    .registers 28

    move-object/from16 v0, p0

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    .line 679
    const-string v10, "access_hash"

    const-string v11, "channel_id"

    const-wide/16 v1, 0x0

    cmp-long v5, v7, v1

    if-nez v5, :cond_12

    goto/16 :goto_ba

    .line 680
    :cond_12
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->CONN:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v2, v12, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v5, v2, v13

    .line 681
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v13

    .line 680
    const-string v5, "getInstance"

    invoke-static {v1, v5, v2, v6}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 682
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->REQ_DELEGATE:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    if-eqz v14, :cond_ba

    if-nez v15, :cond_36

    goto/16 :goto_ba

    .line 686
    :cond_36
    :try_start_36
    const-string v1, "org.telegram.tgnet.TLRPC$TL_channels_getFullChannel"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 687
    const-string v2, "org.telegram.tgnet.TLRPC$TL_inputChannel"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_76

    if-eqz v2, :cond_76

    .line 690
    invoke-static {v2, v11, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 691
    invoke-static {v2, v10, v7, v8}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 692
    const-string v5, "channel"

    invoke-static {v1, v5, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 694
    new-array v5, v12, [Ljava/lang/Class;

    aput-object v15, v5, v13

    move-object v6, v1

    new-instance v1, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;
    :try_end_5c
    .catchall {:try_start_36 .. :try_end_5c} :catchall_76

    move-object/from16 v9, p1

    move-object v12, v2

    move-object v13, v6

    move-object/from16 v17, v10

    const/16 v16, 0x0

    move-object/from16 v6, p6

    move/from16 v2, p9

    move-object v10, v5

    move-object/from16 v5, p5

    :try_start_6b
    invoke-direct/range {v1 .. v9}, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$1;-><init>(IJLjava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 693
    invoke-static {v12, v10, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 716
    invoke-direct {v0, v14, v15, v13, v1}, Lcom/chimeranft/core/PinnedChannel;->sendRequest(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_7a

    goto :goto_7a

    :catchall_76
    :cond_76
    move-object/from16 v17, v10

    const/16 v16, 0x0

    .line 723
    :catchall_7a
    :goto_7a
    :try_start_7a
    const-string v1, "org.telegram.tgnet.TLRPC$TL_messages_getHistory"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 724
    const-string v1, "org.telegram.tgnet.TLRPC$TL_inputPeerChannel"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v9, :cond_ba

    if-nez v1, :cond_8b

    goto :goto_ba

    .line 726
    :cond_8b
    invoke-static {v1, v11, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-object/from16 v2, v17

    .line 727
    invoke-static {v1, v2, v7, v8}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 728
    const-string v2, "peer"

    invoke-static {v9, v2, v1}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 729
    const-string v1, "limit"

    const-wide/16 v5, 0x1

    invoke-static {v9, v1, v5, v6}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 730
    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const/4 v1, 0x1

    .line 731
    new-array v11, v1, [Ljava/lang/Class;

    aput-object v15, v11, v16

    new-instance v1, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v2, p9

    invoke-direct/range {v1 .. v8}, Lcom/chimeranft/core/PinnedChannel$enrichPin$delegate$2;-><init>(IJLjava/lang/String;Ljava/lang/String;J)V

    .line 730
    invoke-static {v10, v11, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 755
    invoke-direct {v0, v14, v15, v9, v1}, Lcom/chimeranft/core/PinnedChannel;->sendRequest(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ba
    .catchall {:try_start_7a .. :try_end_ba} :catchall_ba

    :catchall_ba
    :cond_ba
    :goto_ba
    return-void
.end method

.method public static final ensureCached(Lorg/json/JSONObject;)V
    .registers 18

    .line 155
    invoke-static/range {p0 .. p0}, Lcom/chimeranft/core/PinnedChannel;->has(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_ad

    .line 156
    :cond_8
    const-string v0, "pinned_channel"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 157
    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v1, v7, v2

    if-gtz v1, :cond_1e

    goto/16 :goto_ad

    .line 159
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 160
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->cachedChats:Lcom/chimeranft/core/LongStamps;

    invoke-virtual {v1, v7, v8}, Lcom/chimeranft/core/LongStamps;->get(J)J

    move-result-wide v9

    cmp-long v6, v9, v2

    if-eqz v6, :cond_36

    sub-long v9, v4, v9

    .line 161
    sget-wide v11, Lcom/chimeranft/core/PinnedChannel;->CACHED_CHAT_MEMO_MS:J

    cmp-long v6, v9, v11

    if-gez v6, :cond_36

    goto/16 :goto_ad

    .line 162
    :cond_36
    const-string v6, "username"

    const-string v9, ""

    invoke-virtual {v0, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "@"

    const-string v12, ""

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_58

    return-void

    .line 164
    :cond_58
    sget-object v6, Lcom/chimeranft/core/PinnedChannel;->UC:Ljava/lang/String;

    const-string v10, "selectedAccount"

    const/4 v11, 0x0

    invoke-static {v6, v10, v11}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 165
    sget-object v10, Lcom/chimeranft/core/PinnedChannel;->MC:Ljava/lang/String;

    const-string v12, "getInstance"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v11

    .line 166
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v15, v13, v11

    .line 165
    invoke-static {v10, v12, v14, v13}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7b

    goto :goto_ad

    .line 170
    :cond_7b
    invoke-virtual {v1, v7, v8, v4, v5}, Lcom/chimeranft/core/LongStamps;->put(JJ)V

    .line 171
    const-string v1, "participants_count"

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-wide v11, v4

    .line 172
    sget-object v4, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    invoke-direct {v4, v10, v7, v8}, Lcom/chimeranft/core/PinnedChannel;->getChat(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 173
    invoke-direct {v4, v5}, Lcom/chimeranft/core/PinnedChannel;->isComplete(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ae

    .line 178
    invoke-direct {v4, v5, v1}, Lcom/chimeranft/core/PinnedChannel;->stampParticipants(Ljava/lang/Object;I)V

    .line 179
    const-string v0, "participants_count"

    invoke-static {v5, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v9, v0, v2

    if-gtz v9, :cond_ad

    .line 180
    const-string v0, "access_hash"

    invoke-static {v5, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    move-object v5, v10

    move-wide v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/chimeranft/core/PinnedChannel;->requestFullChannel(Ljava/lang/Object;IJJ)V

    :cond_ad
    :goto_ad
    return-void

    :cond_ae
    move-object v2, v10

    .line 185
    invoke-direct {v4, v5}, Lcom/chimeranft/core/PinnedChannel;->isUsable(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bc

    invoke-direct {v4, v6}, Lcom/chimeranft/core/PinnedChannel;->localAccountId(I)J

    move-result-wide v13

    invoke-direct {v4, v2, v0, v13, v14}, Lcom/chimeranft/core/PinnedChannel;->putFallbackChat(Ljava/lang/Object;Lorg/json/JSONObject;J)V

    .line 186
    :cond_bc
    invoke-direct {v4, v5, v1}, Lcom/chimeranft/core/PinnedChannel;->stampParticipants(Ljava/lang/Object;I)V

    .line 187
    sget-object v3, Lcom/chimeranft/core/PinnedChannel;->resolving:Ljava/util/HashMap;

    monitor-enter v3

    .line 188
    :try_start_c2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "toLowerCase(...)"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_e5

    .line 189
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_d9
    .catchall {:try_start_c2 .. :try_end_d9} :catchall_e3

    sub-long v13, v11, v13

    const-wide/16 v15, 0x3a98

    cmp-long v5, v13, v15

    if-gez v5, :cond_e5

    monitor-exit v3

    return-void

    :catchall_e3
    move-exception v0

    goto :goto_ff

    .line 190
    :cond_e5
    :try_start_e5
    invoke-virtual {v9, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "toLowerCase(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_f8
    .catchall {:try_start_e5 .. :try_end_f8} :catchall_e3

    .line 187
    monitor-exit v3

    move v10, v1

    move-object v5, v2

    .line 192
    invoke-direct/range {v4 .. v10}, Lcom/chimeranft/core/PinnedChannel;->resolvePublicUsername(Ljava/lang/Object;IJLjava/lang/String;I)V

    return-void

    .line 187
    :goto_ff
    monitor-exit v3

    throw v0
.end method

.method private final firstLong(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    .line 145
    invoke-static {p1, p2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_b

    return-wide v0

    .line 146
    :cond_b
    invoke-static {p1, p3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method private final getChat(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x1

    .line 864
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "getChat"

    invoke-static {p1, v4, v1, v5}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    .line 865
    new-array v1, v0, [Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {p1, v4, v1, p3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_29
    return-object v1
.end method

.method public static final has(Lorg/json/JSONObject;)Z
    .registers 3

    .line 63
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    const-string v1, "pinned_channel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_c
    invoke-direct {v0, p0}, Lcom/chimeranft/core/PinnedChannel;->enabledIn(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static final hasAnyStamp()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/chimeranft/core/PinnedChannel;->anyStamp:Z

    return v0
.end method

.method private final hostMethod(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 833
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 835
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v1}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v2

    if-ne v2, p3, :cond_10

    const/4 p1, 0x1

    .line 837
    invoke-virtual {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_31

    return-object v1

    :catchall_31
    :cond_31
    return-object v0
.end method

.method private final isChannelShape(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 503
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_10

    goto :goto_2e

    .line 504
    :cond_10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "broadcast"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 505
    const-string v2, "megagroup"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    return p1

    :cond_2e
    :goto_2e
    return v0
.end method

.method private final isComplete(Ljava/lang/Object;)Z
    .registers 6

    .line 217
    invoke-direct {p0, p1}, Lcom/chimeranft/core/PinnedChannel;->isUsable(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 218
    :cond_8
    const-string v0, "photo"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "Empty"

    invoke-static {p1, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    return v1
.end method

.method private final isUsable(Ljava/lang/Object;)Z
    .registers 6

    if-eqz p1, :cond_10

    .line 205
    const-string v0, "access_hash"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private final latestPostId(J)I
    .registers 4

    .line 770
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->postIds:Lcom/chimeranft/core/LongStamps;

    invoke-virtual {v0, p1, p2}, Lcom/chimeranft/core/LongStamps;->get(J)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private final localAccountId(I)J
    .registers 7

    .line 223
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->UC:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 223
    const-string p1, "getInstance"

    invoke-static {v0, p1, v2, v1}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 225
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/Main$Companion;->localAccountId(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final onPinResolved(Ljava/lang/Object;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    .line 604
    const-string v0, "fail|"

    if-eqz p6, :cond_29

    .line 606
    const-string p1, "text"

    invoke-static {p6, p1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/PinnedChannel;->strOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 607
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_16

    const-string p1, "\u041a\u0430\u043d\u0430\u043b \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d"

    :cond_16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    return-void

    :cond_29
    if-nez p5, :cond_31

    .line 612
    const-string p1, "fail|\u041a\u0430\u043d\u0430\u043b \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d \u0438\u043b\u0438 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d"

    invoke-direct {p0, p4, p1}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    return-void

    .line 615
    :cond_31
    invoke-direct {p0, p1, p5}, Lcom/chimeranft/core/PinnedChannel;->cacheResolvedChats(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    invoke-direct {p0, p5}, Lcom/chimeranft/core/PinnedChannel;->pickChannel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_51

    .line 619
    invoke-direct {p0, p5}, Lcom/chimeranft/core/PinnedChannel;->refusalFor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    return-void

    :cond_51
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 622
    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->commitPin(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;I)Z

    return-void
.end method

.method private final onUsernameResolved(Ljava/lang/Object;IJILjava/lang/Object;)V
    .registers 14

    if-nez p6, :cond_3

    return-void

    .line 278
    :cond_3
    invoke-direct {p0, p1, p6}, Lcom/chimeranft/core/PinnedChannel;->cacheResolvedChats(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    invoke-direct {p0, p1, p3, p4}, Lcom/chimeranft/core/PinnedChannel;->getChat(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p6

    .line 280
    invoke-direct {p0, p6, p5}, Lcom/chimeranft/core/PinnedChannel;->stampParticipants(Ljava/lang/Object;I)V

    .line 281
    invoke-direct {p0, p6}, Lcom/chimeranft/core/PinnedChannel;->isUsable(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2d

    const-string p5, "participants_count"

    invoke-static {p6, p5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-gtz p5, :cond_2d

    .line 282
    const-string p5, "access_hash"

    invoke-static {p6, p5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/chimeranft/core/PinnedChannel;->requestFullChannel(Ljava/lang/Object;IJJ)V

    goto :goto_2f

    :cond_2d
    move-object v0, p0

    move-wide v3, p3

    .line 283
    :goto_2f
    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/PinnedChannel;->postRepaint(J)V

    return-void
.end method

.method private final peerChannelId(Ljava/lang/Object;)J
    .registers 7

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 653
    :cond_5
    const-string v2, "channel_id"

    invoke-static {p1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_10

    return-wide v2

    .line 654
    :cond_10
    const-string v0, "chat_id"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final pickChannel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 635
    const-string v0, "chats"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return-object v2

    .line 637
    :cond_c
    const-string v1, "peer"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chimeranft/core/PinnedChannel;->peerChannelId(Ljava/lang/Object;)J

    move-result-wide v3

    .line 640
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, v2

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 642
    invoke-direct {p0, v1}, Lcom/chimeranft/core/PinnedChannel;->isChannelShape(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3e

    .line 643
    const-string v5, "id"

    invoke-static {v1, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_3e

    return-object v1

    :cond_3e
    if-nez v2, :cond_4f

    .line 644
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "broadcast"

    invoke-static {v1, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    move-object v2, v1

    :cond_4f
    if-nez v0, :cond_1d

    move-object v0, v1

    goto :goto_1d

    :cond_53
    if-nez v2, :cond_56

    return-object v0

    :cond_56
    return-object v2
.end method

.method private final pinFromCache(Ljava/lang/Object;ILjava/lang/String;I)Z
    .registers 12

    .line 441
    invoke-direct {p0, p1, p3}, Lcom/chimeranft/core/PinnedChannel;->cachedChatByUsername(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v3, :cond_8

    return v0

    .line 445
    :cond_8
    const-string v1, "access_hash"

    invoke-static {v3, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_15

    return v0

    :cond_15
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 446
    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/PinnedChannel;->commitPin(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public static final pollPin()Ljava/lang/String;
    .registers 9

    .line 394
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->pinStatus:Ljava/lang/String;

    .line 395
    const-string v1, "pending|"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3c

    .line 396
    :cond_e
    sget-wide v5, Lcom/chimeranft/core/PinnedChannel;->pinStartedAt:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3c

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    sget-wide v5, Lcom/chimeranft/core/PinnedChannel;->PIN_DEADLINE_MS:J

    cmp-long v1, v7, v5

    if-gez v1, :cond_22

    goto :goto_3c

    .line 400
    :cond_22
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->pinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_25
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->pinStatus:Ljava/lang/String;

    const-string v5, "pending|"

    invoke-static {v1, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 402
    const-string v1, "fail|Telegram \u043d\u0435 \u043e\u0442\u0432\u0435\u0442\u0438\u043b \u043d\u0430 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0443 \u0441\u0441\u044b\u043b\u043a\u0438. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437"

    sput-object v1, Lcom/chimeranft/core/PinnedChannel;->pinStatus:Ljava/lang/String;

    goto :goto_36

    :catchall_34
    move-exception v1

    goto :goto_3a

    .line 403
    :cond_36
    :goto_36
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->pinStatus:Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_34

    monitor-exit v0

    return-object v1

    :goto_3a
    monitor-exit v0

    throw v1

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method private final postRepaint(J)V
    .registers 7

    .line 819
    new-instance v0, Lcom/chimeranft/core/PinnedChannel$postRepaint$task$1;

    invoke-direct {v0, p1, p2}, Lcom/chimeranft/core/PinnedChannel$postRepaint$task$1;-><init>(J)V

    .line 826
    sget-object p1, Lcom/chimeranft/core/PinnedChannel;->AU:Ljava/lang/String;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Runnable;

    aput-object v3, v1, v2

    .line 827
    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v2

    .line 826
    const-string v0, "runOnUIThread"

    invoke-static {p1, v0, v1, p2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final putChat(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 4

    .line 848
    sget-boolean v0, Lcom/chimeranft/core/PinnedChannel;->putChatResolved:Z

    if-nez v0, :cond_10

    .line 849
    const-string v0, "putChat"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/chimeranft/core/PinnedChannel;->hostMethod(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/chimeranft/core/PinnedChannel;->putChatMethod:Ljava/lang/reflect/Method;

    const/4 p1, 0x1

    .line 850
    sput-boolean p1, Lcom/chimeranft/core/PinnedChannel;->putChatResolved:Z

    .line 852
    :cond_10
    sget-object p1, Lcom/chimeranft/core/PinnedChannel;->putChatMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method private final putChats(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 4

    .line 856
    sget-boolean v0, Lcom/chimeranft/core/PinnedChannel;->putChatsResolved:Z

    if-nez v0, :cond_10

    .line 857
    const-string v0, "putChats"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/chimeranft/core/PinnedChannel;->hostMethod(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/chimeranft/core/PinnedChannel;->putChatsMethod:Ljava/lang/reflect/Method;

    const/4 p1, 0x1

    .line 858
    sput-boolean p1, Lcom/chimeranft/core/PinnedChannel;->putChatsResolved:Z

    .line 860
    :cond_10
    sget-object p1, Lcom/chimeranft/core/PinnedChannel;->putChatsMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method private final putFallbackChat(Ljava/lang/Object;Lorg/json/JSONObject;J)V
    .registers 20

    move-object/from16 v0, p2

    .line 913
    const-string v1, "access_hash"

    const-string v2, "participants_count"

    const-string v3, "title"

    const-string v4, "id"

    const-string v5, "username"

    const-string v6, "flags"

    .line 915
    :try_start_e
    const-string v7, "org.telegram.tgnet.TLRPC$TL_channel"

    invoke-static {v7}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_18

    goto/16 :goto_a1

    .line 917
    :cond_18
    const-string v8, ""

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    .line 918
    invoke-virtual {v0, v4, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v7, v4, v11, v12}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "@"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 920
    invoke-static {v7, v5, v8}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 921
    const-string v3, "broadcast"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v3, v4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 922
    const-string v3, "megagroup"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v3, v4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 923
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v7, v2, v5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    const-wide/32 v11, 0x20060

    .line 926
    invoke-static {v7, v6, v11, v12}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 927
    invoke-virtual {v0, v1, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 928
    const-string v2, "access_account"

    invoke-virtual {v0, v2, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v0, v11, v9

    if-eqz v0, :cond_81

    cmp-long v0, v13, v9

    if-eqz v0, :cond_81

    cmp-long v0, v13, p3

    if-nez v0, :cond_81

    .line 931
    invoke-static {v7, v1, v11, v12}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 932
    invoke-static {v7, v6}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v8, 0x2000

    or-long/2addr v0, v8

    invoke-static {v7, v6, v0, v1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 934
    :cond_81
    const-string v0, "org.telegram.tgnet.TLRPC$TL_chatPhotoEmpty"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 935
    const-string v1, "photo"

    invoke-static {v7, v1, v0}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 936
    :cond_8e
    invoke-direct/range {p0 .. p1}, Lcom/chimeranft/core/PinnedChannel;->putChat(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_a1

    const/4 v1, 0x2

    .line 937
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catchall {:try_start_e .. :try_end_a1} :catchall_a1

    :catchall_a1
    :cond_a1
    :goto_a1
    return-void
.end method

.method private final refusalFor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 659
    const-string v0, "users"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 660
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_15

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 661
    const-string p1, "\u042d\u0442\u0430 \u0441\u0441\u044b\u043b\u043a\u0430 \u0432\u0435\u0434\u0451\u0442 \u043d\u0430 \u043f\u0440\u043e\u0444\u0438\u043b\u044c, \u0430 \u043d\u0435 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b"

    return-object p1

    .line 662
    :cond_15
    const-string v0, "chats"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 663
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2a

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2a

    .line 664
    const-string p1, "\u042d\u0442\u0430 \u0441\u0441\u044b\u043b\u043a\u0430 \u0432\u0435\u0434\u0451\u0442 \u043d\u0430 \u043e\u0431\u044b\u0447\u043d\u0443\u044e \u0433\u0440\u0443\u043f\u043f\u0443, \u0430 \u043d\u0435 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b"

    return-object p1

    .line 665
    :cond_2a
    const-string p1, "\u041a\u0430\u043d\u0430\u043b \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d"

    return-object p1
.end method

.method private final rememberPin(IJ)V
    .registers 6

    .line 415
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->pinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    sget v1, Lcom/chimeranft/core/PinnedChannel;->pinAttempt:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eq p1, v1, :cond_9

    monitor-exit v0

    return-void

    .line 417
    :cond_9
    :try_start_9
    sput p1, Lcom/chimeranft/core/PinnedChannel;->pinnedAttemptNo:I

    .line 418
    sput-wide p2, Lcom/chimeranft/core/PinnedChannel;->pinnedAttemptId:J

    .line 419
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    .line 415
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final rememberPostId(JJ)V
    .registers 6

    .line 766
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->postIds:Lcom/chimeranft/core/LongStamps;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/chimeranft/core/LongStamps;->put(JJ)V

    return-void
.end method

.method private final removeChar(Ljava/lang/String;C)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    .line 793
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_d

    return-object v0

    .line 794
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 795
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, p2, :cond_29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_26

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 796
    :cond_29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final requestFullChannel(Ljava/lang/Object;IJJ)V
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-nez v2, :cond_7

    goto :goto_5d

    .line 297
    :cond_7
    :try_start_7
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->CONN:Ljava/lang/String;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 298
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v5

    .line 297
    invoke-static {v0, v1, v3, v4}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 299
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->REQ_DELEGATE:Ljava/lang/String;

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 300
    const-string v1, "org.telegram.tgnet.TLRPC$TL_channels_getFullChannel"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 301
    const-string v3, "org.telegram.tgnet.TLRPC$TL_inputChannel"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p2, :cond_5d

    if-eqz v0, :cond_5d

    if-eqz v1, :cond_5d

    if-nez v3, :cond_3a

    goto :goto_5d

    .line 303
    :cond_3a
    const-string v4, "channel_id"

    invoke-static {v3, v4, p3, p4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 304
    const-string v4, "access_hash"

    invoke-static {v3, v4, p5, p6}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 305
    const-string p5, "channel"

    invoke-static {v1, p5, v3}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p5

    .line 307
    new-array p6, v2, [Ljava/lang/Class;

    aput-object v0, p6, v5

    new-instance v2, Lcom/chimeranft/core/PinnedChannel$requestFullChannel$delegate$1;

    invoke-direct {v2, p1, p3, p4}, Lcom/chimeranft/core/PinnedChannel$requestFullChannel$delegate$1;-><init>(Ljava/lang/Object;J)V

    .line 306
    invoke-static {p5, p6, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 328
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/chimeranft/core/PinnedChannel;->sendRequest(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_5d

    :catchall_5d
    :cond_5d
    :goto_5d
    return-void
.end method

.method private final resolvePublicUsername(Ljava/lang/Object;IJLjava/lang/String;I)V
    .registers 19

    .line 249
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->CONN:Ljava/lang/String;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v5

    .line 249
    invoke-static {v0, v1, v3, v6}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->REQ_DELEGATE:Ljava/lang/String;

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 252
    const-string v3, "org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_4b

    if-eqz v1, :cond_4b

    if-nez v3, :cond_2b

    goto :goto_4b

    .line 254
    :cond_2b
    const-string v4, "username"

    move-object/from16 v6, p5

    invoke-static {v3, v4, v6}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 256
    new-array v2, v2, [Ljava/lang/Class;

    aput-object v1, v2, v5

    new-instance v6, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;

    move-object v7, p1

    move v8, p2

    move-wide v9, p3

    move/from16 v11, p6

    invoke-direct/range {v6 .. v11}, Lcom/chimeranft/core/PinnedChannel$resolvePublicUsername$delegate$1;-><init>(Ljava/lang/Object;IJI)V

    .line 255
    invoke-static {v4, v2, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 269
    invoke-direct {p0, v0, v1, v3, p1}, Lcom/chimeranft/core/PinnedChannel;->sendRequest(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4b

    :catchall_4b
    :cond_4b
    :goto_4b
    return-void
.end method

.method private final sendRequest(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 801
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

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 803
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendRequest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 804
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 805
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eq v2, p2, :cond_32

    goto :goto_c

    .line 808
    :cond_32
    :try_start_32
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 809
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v2, v4

    aput-object p4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_40

    goto :goto_42

    :catchall_40
    nop

    goto :goto_c

    :cond_42
    :goto_42
    return-void
.end method

.method private final sendResolve(Ljava/lang/Object;ILjava/lang/String;I)Z
    .registers 13

    const/4 v0, 0x0

    .line 570
    :try_start_1
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->CONN:Ljava/lang/String;

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 571
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v0

    .line 570
    invoke-static {v1, v2, v4, v6}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 572
    sget-object v2, Lcom/chimeranft/core/PinnedChannel;->REQ_DELEGATE:Ljava/lang/String;

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 573
    const-string v4, "org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername"

    invoke-static {v4}, Lcom/chimeranft/core/Refl;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v1, :cond_45

    if-eqz v2, :cond_45

    if-nez v4, :cond_2b

    goto :goto_45

    .line 575
    :cond_2b
    const-string v5, "username"

    invoke-static {v4, v5, p3}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 576
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 577
    new-array v6, v3, [Ljava/lang/Class;

    aput-object v2, v6, v0

    new-instance v7, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;

    invoke-direct {v7, p1, p2, p3, p4}, Lcom/chimeranft/core/PinnedChannel$sendResolve$delegate$1;-><init>(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 576
    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 593
    invoke-direct {p0, v1, v2, v4, p1}, Lcom/chimeranft/core/PinnedChannel;->sendRequest(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    return v3

    :catchall_45
    :cond_45
    :goto_45
    return v0
.end method

.method private final setBoth(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 150
    invoke-static {p1, p2, p4, p5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 151
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {p1, p3, p4, p5}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    :cond_c
    return-void
.end method

.method private final setPinStatus(ILjava/lang/String;)V
    .registers 5

    .line 408
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->pinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_3
    sget v1, Lcom/chimeranft/core/PinnedChannel;->pinAttempt:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-eq p1, v1, :cond_9

    monitor-exit v0

    return-void

    .line 410
    :cond_9
    :try_start_9
    sput-object p2, Lcom/chimeranft/core/PinnedChannel;->pinStatus:Ljava/lang/String;

    .line 411
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    .line 408
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final stampParticipants(Ljava/lang/Object;I)V
    .registers 8

    if-eqz p1, :cond_25

    if-gtz p2, :cond_5

    goto :goto_25

    .line 231
    :cond_5
    const-string v0, "participants_count"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    int-to-long v3, p2

    cmp-long p2, v1, v3

    if-ltz p2, :cond_11

    goto :goto_25

    .line 232
    :cond_11
    invoke-static {p1, v0, v3, v4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_25

    .line 233
    :cond_18
    const-string p2, "flags"

    invoke-static {p1, p2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public static final startPin(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 366
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->INSTANCE:Lcom/chimeranft/core/PinnedChannel;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    invoke-direct {v0, p0}, Lcom/chimeranft/core/PinnedChannel;->trimAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/chimeranft/core/PinnedChannel;->removeChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_19

    const-string p0, "fail|\u041d\u0443\u0436\u043d\u0430 \u043f\u0443\u0431\u043b\u0438\u0447\u043d\u0430\u044f \u0441\u0441\u044b\u043b\u043a\u0430"

    return-object p0

    .line 368
    :cond_19
    sget-object v1, Lcom/chimeranft/core/PinnedChannel;->UC:Ljava/lang/String;

    const-string v2, "selectedAccount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 369
    sget-object v2, Lcom/chimeranft/core/PinnedChannel;->MC:Ljava/lang/String;

    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 370
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v3

    .line 369
    invoke-static {v2, v4, v6, v8}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 371
    const-string p0, "fail|\u041a\u043b\u0438\u0435\u043d\u0442 \u043d\u0435 \u0433\u043e\u0442\u043e\u0432"

    return-object p0

    .line 373
    :cond_3e
    sget-object v3, Lcom/chimeranft/core/PinnedChannel;->pinLock:Ljava/lang/Object;

    monitor-enter v3

    .line 374
    :try_start_41
    sget v4, Lcom/chimeranft/core/PinnedChannel;->pinAttempt:I

    add-int/2addr v4, v5

    sput v4, Lcom/chimeranft/core/PinnedChannel;->pinAttempt:I

    .line 375
    sget v4, Lcom/chimeranft/core/PinnedChannel;->pinAttempt:I

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/chimeranft/core/PinnedChannel;->pinStartedAt:J

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pending|\u041f\u0440\u043e\u0432\u0435\u0440\u044f\u044e @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/chimeranft/core/PinnedChannel;->pinStatus:Ljava/lang/String;

    .line 378
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_63
    .catchall {:try_start_41 .. :try_end_63} :catchall_7f

    .line 373
    monitor-exit v3

    .line 384
    invoke-direct {v0, v2, v1, p0, v4}, Lcom/chimeranft/core/PinnedChannel;->pinFromCache(Ljava/lang/Object;ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-static {}, Lcom/chimeranft/core/PinnedChannel;->pollPin()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 385
    :cond_6f
    invoke-direct {v0, v2, v1, p0, v4}, Lcom/chimeranft/core/PinnedChannel;->sendResolve(Ljava/lang/Object;ILjava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_7a

    .line 387
    const-string p0, "fail|\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0437\u0430\u043f\u0440\u043e\u0441"

    invoke-direct {v0, v4, p0}, Lcom/chimeranft/core/PinnedChannel;->setPinStatus(ILjava/lang/String;)V

    .line 389
    :cond_7a
    invoke-static {}, Lcom/chimeranft/core/PinnedChannel;->pollPin()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_7f
    move-exception p0

    .line 373
    monitor-exit v3

    throw p0
.end method

.method private final stillOurs(IJ)Z
    .registers 9

    .line 431
    sget-object v0, Lcom/chimeranft/core/PinnedChannel;->pinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    sget v1, Lcom/chimeranft/core/PinnedChannel;->pinAttempt:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_37

    sget v1, Lcom/chimeranft/core/PinnedChannel;->pinnedAttemptNo:I

    if-eq p1, v1, :cond_d

    goto :goto_37

    .line 433
    :cond_d
    sget-wide v3, Lcom/chimeranft/core/PinnedChannel;->pinnedAttemptId:J
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35

    cmp-long p1, v3, p2

    if-eqz p1, :cond_15

    monitor-exit v0

    return v2

    .line 434
    :cond_15
    :try_start_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_35

    .line 431
    monitor-exit v0

    .line 435
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p1}, Lcom/chimeranft/core/Main$Companion;->pinnedChannelRecord()Lorg/json/JSONObject;

    move-result-object p1

    .line 436
    const-string v0, "enabled"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "id"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_34

    const/4 p1, 0x1

    return p1

    :cond_34
    return v2

    :catchall_35
    move-exception p1

    goto :goto_39

    .line 432
    :cond_37
    :goto_37
    monitor-exit v0

    return v2

    .line 431
    :goto_39
    monitor-exit v0

    throw p1
.end method

.method private final strOrEmpty(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    .line 780
    const-string p1, ""

    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final stringMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 481
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 483
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v1}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2e

    goto :goto_10

    .line 484
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-class v4, Ljava/lang/String;

    if-ne v2, v4, :cond_10

    .line 485
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3d

    return-object v1

    :catchall_3d
    :cond_3d
    return-object v0
.end method

.method private final trimAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    .line 786
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-le v0, v1, :cond_1f

    add-int/lit8 v3, v0, -0x1

    .line 787
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_1f
    if-nez v1, :cond_28

    .line 788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_28

    return-object p1

    .line 789
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
