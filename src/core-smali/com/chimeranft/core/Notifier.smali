.class public final Lcom/chimeranft/core/Notifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AU:Ljava/lang/String;

.field public static final Companion:Lcom/chimeranft/core/Notifier$Companion;

.field private static final MC:Ljava/lang/String;

.field private static final NC:Ljava/lang/String;

.field private static final UC:Ljava/lang/String;

.field private static final USER:Ljava/lang/String;


# instance fields
.field private final identity:Lcom/chimeranft/core/Identity;

.field public lastError:Ljava/lang/String;

.field private volatile lastPostMs:J

.field private final myId:J

.field public posts:J

.field public refreshes:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/Notifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/Notifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/Notifier;->Companion:Lcom/chimeranft/core/Notifier$Companion;

    .line 195
    const-string v0, "org.telegram.messenger.UserConfig"

    sput-object v0, Lcom/chimeranft/core/Notifier;->UC:Ljava/lang/String;

    .line 196
    const-string v0, "org.telegram.messenger.MessagesController"

    sput-object v0, Lcom/chimeranft/core/Notifier;->MC:Ljava/lang/String;

    .line 197
    const-string v0, "org.telegram.messenger.NotificationCenter"

    sput-object v0, Lcom/chimeranft/core/Notifier;->NC:Ljava/lang/String;

    .line 198
    const-string v0, "org.telegram.messenger.AndroidUtilities"

    sput-object v0, Lcom/chimeranft/core/Notifier;->AU:Ljava/lang/String;

    .line 199
    const-string v0, "org.telegram.tgnet.TLRPC$User"

    sput-object v0, Lcom/chimeranft/core/Notifier;->USER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/chimeranft/core/Identity;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/chimeranft/core/Notifier;->myId:J

    iput-object p3, p0, Lcom/chimeranft/core/Notifier;->identity:Lcom/chimeranft/core/Identity;

    .line 15
    const-string p1, ""

    iput-object p1, p0, Lcom/chimeranft/core/Notifier;->lastError:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$doRefresh(Lcom/chimeranft/core/Notifier;)V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/chimeranft/core/Notifier;->doRefresh()V

    return-void
.end method

.method public static final synthetic access$getMyId$p(Lcom/chimeranft/core/Notifier;)J
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/chimeranft/core/Notifier;->myId:J

    return-wide v0
.end method

.method public static final synthetic access$getNC$cp()Ljava/lang/String;
    .registers 1

    .line 10
    sget-object v0, Lcom/chimeranft/core/Notifier;->NC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUC$cp()Ljava/lang/String;
    .registers 1

    .line 10
    sget-object v0, Lcom/chimeranft/core/Notifier;->UC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$post(Lcom/chimeranft/core/Notifier;Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Notifier;->post(Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method private final doRefresh()V
    .registers 16

    .line 135
    iget-wide v0, p0, Lcom/chimeranft/core/Notifier;->refreshes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/Notifier;->refreshes:J

    .line 136
    sget-object v0, Lcom/chimeranft/core/Notifier;->UC:Ljava/lang/String;

    const-string v1, "selectedAccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 138
    sget-object v1, Lcom/chimeranft/core/Notifier;->MC:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "getInstance"

    invoke-static {v1, v6, v4, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 139
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_2d

    const/4 v7, 0x0

    goto :goto_41

    .line 142
    :cond_2d
    new-array v7, v3, [Ljava/lang/Class;

    aput-object v4, v7, v2

    iget-wide v8, p0, Lcom/chimeranft/core/Notifier;->myId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v2

    const-string v8, "getUser"

    invoke-static {v1, v8, v7, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_41
    const/4 v8, 0x2

    if-eqz v7, :cond_7f

    .line 148
    iget-object v9, p0, Lcom/chimeranft/core/Notifier;->identity:Lcom/chimeranft/core/Identity;

    invoke-virtual {v9, v7}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    .line 149
    sget-object v9, Lcom/chimeranft/core/Notifier;->USER:Ljava/lang/String;

    invoke-static {v9}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_7f

    const/4 v10, 0x3

    .line 152
    new-array v11, v10, [Ljava/lang/Class;

    aput-object v9, v11, v2

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v3

    aput-object v12, v11, v8

    .line 153
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v2

    aput-object v13, v10, v3

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v14, v10, v8

    .line 152
    const-string v14, "putUser"

    invoke-static {v1, v14, v11, v10}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7f

    .line 156
    new-array v10, v8, [Ljava/lang/Class;

    aput-object v9, v10, v2

    aput-object v12, v10, v3

    .line 157
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v13, v9, v3

    .line 156
    invoke-static {v1, v14, v10, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_7f
    sget-object v9, Lcom/chimeranft/core/Notifier;->NC:Ljava/lang/String;

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v5, v10, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v9, v6, v10, v5}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_94

    goto :goto_e7

    .line 169
    :cond_94
    invoke-static {}, Lcom/chimeranft/core/Repaint;->nameAndStatusMask()I

    move-result v5

    invoke-static {v5}, Lcom/chimeranft/core/Repaint;->updateInterfaces(I)V

    if-eqz v7, :cond_aa

    .line 170
    const-string v5, "userEmojiStatusUpdated"

    invoke-static {v9, v5, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v7, v6, v2

    invoke-direct {p0, v0, v5, v6}, Lcom/chimeranft/core/Notifier;->post(Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 171
    :cond_aa
    const-string v5, "mainUserInfoChanged"

    invoke-static {v9, v5, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v5, v6}, Lcom/chimeranft/core/Notifier;->post(Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 178
    new-array v5, v3, [Ljava/lang/Class;

    aput-object v4, v5, v2

    iget-wide v6, p0, Lcom/chimeranft/core/Notifier;->myId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "getUserFull"

    invoke-static {v1, v4, v5, v6}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e7

    .line 181
    iget-object v4, p0, Lcom/chimeranft/core/Notifier;->identity:Lcom/chimeranft/core/Identity;

    invoke-virtual {v4, v1}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    .line 182
    const-string v4, "userInfoDidLoad"

    invoke-static {v9, v4, v2}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_e7

    .line 183
    iget-wide v5, p0, Lcom/chimeranft/core/Notifier;->myId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v1, v6, v3

    invoke-direct {p0, v0, v4, v6}, Lcom/chimeranft/core/Notifier;->post(Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_e7
    :goto_e7
    return-void
.end method

.method private final post(Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 9

    if-gtz p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    .line 189
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    .line 189
    const-string p2, "postNotificationName"

    invoke-static {p1, p2, v1, v0}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final postProfileInfo(JLjava/lang/Object;J)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4b

    if-nez p3, :cond_9

    goto :goto_4b

    .line 61
    :cond_9
    new-instance v2, Lcom/chimeranft/core/Notifier$postProfileInfo$r$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/chimeranft/core/Notifier$postProfileInfo$r$1;-><init>(Lcom/chimeranft/core/Notifier;JLjava/lang/Object;)V

    .line 81
    sget-object p1, Lcom/chimeranft/core/Notifier;->AU:Ljava/lang/String;

    invoke-static {p1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_45

    cmp-long p2, p4, v0

    if-lez p2, :cond_45

    .line 84
    new-instance p2, Lcom/chimeranft/core/Notifier$postProfileInfo$deferred$1;

    invoke-direct {p2, v2}, Lcom/chimeranft/core/Notifier$postProfileInfo$deferred$1;-><init>(Lcom/chimeranft/core/Notifier$postProfileInfo$r$1;)V

    const-string v0, "notifier.deferred"

    invoke-static {v0, p2}, Lcom/chimeranft/core/Safe;->wrap(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    .line 90
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Runnable;

    aput-object v1, v0, p3

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    if-nez p2, :cond_35

    goto :goto_4b

    .line 91
    :cond_35
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    new-array p5, v3, [Ljava/lang/Object;

    aput-object p2, p5, p3

    aput-object p4, p5, v2

    .line 89
    const-string p2, "runOnUIThread"

    invoke-static {p1, p2, v0, p5}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 97
    :cond_45
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const/4 p2, 0x0

    invoke-static {p1, v2, p3, v3, p2}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final postUserInfo(Ljava/lang/Object;)V
    .registers 9

    if-nez p1, :cond_3

    goto :goto_11

    .line 25
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    iget-wide v2, p0, Lcom/chimeranft/core/Notifier;->lastPostMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v6, v2, v4

    if-gez v6, :cond_12

    :goto_11
    return-void

    .line 27
    :cond_12
    iput-wide v0, p0, Lcom/chimeranft/core/Notifier;->lastPostMs:J

    .line 28
    new-instance v0, Lcom/chimeranft/core/Notifier$postUserInfo$r$1;

    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/Notifier$postUserInfo$r$1;-><init>(Lcom/chimeranft/core/Notifier;Ljava/lang/Object;)V

    .line 53
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final refresh()V
    .registers 4

    .line 116
    new-instance v0, Lcom/chimeranft/core/Notifier$refresh$r$1;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/Notifier$refresh$r$1;-><init>(Lcom/chimeranft/core/Notifier;)V

    .line 131
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final reloadDialogs()V
    .registers 2

    .line 112
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isChatScreenActive()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-static {}, Lcom/chimeranft/core/Repaint;->nameAndStatusMask()I

    move-result v0

    :goto_e
    invoke-static {v0}, Lcom/chimeranft/core/Repaint;->dialogsNeedReload(I)V

    return-void
.end method
