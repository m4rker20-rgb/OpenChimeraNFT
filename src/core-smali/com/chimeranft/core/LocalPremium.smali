.class public final Lcom/chimeranft/core/LocalPremium;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_UTILITIES:Ljava/lang/String; = "org.telegram.messenger.AndroidUtilities"

.field public static final INSTANCE:Lcom/chimeranft/core/LocalPremium;

.field private static final MEDIA_DATA_CONTROLLER:Ljava/lang/String; = "org.telegram.messenger.MediaDataController"

.field private static final MESSAGES_CONTROLLER:Ljava/lang/String; = "org.telegram.messenger.MessagesController"

.field private static final NOTIFICATION_CENTER:Ljava/lang/String; = "org.telegram.messenger.NotificationCenter"

.field private static final USER_CONFIG:Ljava/lang/String; = "org.telegram.messenger.UserConfig"


# direct methods
.method public static synthetic $r8$lambda$IQUPFPjYgHt197HNcBHVjCWSG8Y(IZ)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/LocalPremium;->apply$lambda$0(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/LocalPremium;

    invoke-direct {v0}, Lcom/chimeranft/core/LocalPremium;-><init>()V

    sput-object v0, Lcom/chimeranft/core/LocalPremium;->INSTANCE:Lcom/chimeranft/core/LocalPremium;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final apply(IZ)V
    .registers 6

    .line 12
    new-instance v0, Lcom/chimeranft/core/LocalPremium$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/chimeranft/core/LocalPremium$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 76
    const-string p0, "org.telegram.messenger.AndroidUtilities"

    invoke-static {p0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    .line 79
    new-array v1, p1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v3

    .line 77
    const-string v0, "runOnUIThread"

    invoke-static {p0, v0, v1, p1}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 82
    :cond_1f
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static final apply$lambda$0(IZ)V
    .registers 16

    .line 13
    const-string v0, "org.telegram.messenger.MessagesController"

    const-string v1, "getInstance"

    const-string v2, "org.telegram.messenger.NotificationCenter"

    .line 14
    :try_start_6
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p0, v7, v6

    .line 17
    const-string p0, "org.telegram.messenger.UserConfig"

    .line 16
    invoke-static {p0, v1, v5, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p1, :cond_29

    .line 19
    sget-object p1, Lcom/chimeranft/core/LocalPremium;->INSTANCE:Lcom/chimeranft/core/LocalPremium;

    invoke-direct {p1, p0}, Lcom/chimeranft/core/LocalPremium;->isPremiumReal(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    .line 21
    :goto_2a
    invoke-static {v0, v1, v5, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_e0

    .line 24
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eqz p1, :cond_43

    .line 26
    :try_start_32
    const-string v9, "updatePremium"

    .line 27
    new-array v10, v4, [Ljava/lang/Class;

    aput-object v8, v10, v6

    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-array v11, v4, [Ljava/lang/Object;

    aput-object p0, v11, v6

    .line 25
    invoke-static {p1, v9, v10, v11}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_43
    invoke-static {v2, v1, v5, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v9, -0x1

    if-eqz p0, :cond_9e

    .line 36
    sget-object v10, Lcom/chimeranft/core/LocalPremium;->INSTANCE:Lcom/chimeranft/core/LocalPremium;

    const-string v11, "currentUserPremiumStatusChanged"

    invoke-static {v2, v11, v9}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    invoke-direct {v10, p0, v11}, Lcom/chimeranft/core/LocalPremium;->post(Ljava/lang/Object;I)V

    .line 37
    const-string v11, "mainUserInfoChanged"

    invoke-static {v2, v11, v9}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    invoke-direct {v10, p0, v11}, Lcom/chimeranft/core/LocalPremium;->post(Ljava/lang/Object;I)V

    .line 38
    const-string v11, "UPDATE_MASK_NAME"

    invoke-static {v0, v11, p1}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 39
    const-string v12, "UPDATE_MASK_EMOJI_STATUS"

    const/high16 v13, 0x80000

    invoke-static {v0, v12, v13}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v11

    .line 40
    const-string v11, "updateInterfaces"

    invoke-static {v2, v11, v9}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_95

    .line 43
    const-string v12, "postNotificationName"

    .line 44
    new-array v13, p1, [Ljava/lang/Class;

    aput-object v3, v13, v6

    const-class v3, [Ljava/lang/Object;

    aput-object v3, v13, v4

    .line 45
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v0, v11, v6

    new-array v0, p1, [Ljava/lang/Object;

    aput-object v3, v0, v6

    aput-object v11, v0, v4

    .line 42
    invoke-static {p0, v12, v13, v0}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_95
    const-string v0, "dialogsNeedReload"

    invoke-static {v2, v0, v9}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v10, p0, v0}, Lcom/chimeranft/core/LocalPremium;->post(Ljava/lang/Object;I)V

    .line 52
    :cond_9e
    const-string p0, "getGlobalInstance"

    sget-object v0, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    .line 51
    invoke-static {v2, p0, v0, v3}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b5

    .line 55
    sget-object v0, Lcom/chimeranft/core/LocalPremium;->INSTANCE:Lcom/chimeranft/core/LocalPremium;

    const-string v3, "premiumStatusChangedGlobal"

    invoke-static {v2, v3, v9}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/chimeranft/core/LocalPremium;->post(Ljava/lang/Object;I)V

    .line 59
    :cond_b5
    const-string p0, "org.telegram.messenger.MediaDataController"

    .line 58
    invoke-static {p0, v1, v5, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e0

    .line 63
    const-string v0, "loadPremiumPromo"

    .line 64
    new-array v1, v4, [Ljava/lang/Class;

    aput-object v8, v1, v6

    .line 65
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v6

    .line 62
    invoke-static {p0, v0, v1, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "loadReactions"

    .line 69
    new-array v1, p1, [Ljava/lang/Class;

    aput-object v8, v1, v6

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v4

    .line 70
    new-array p1, p1, [Ljava/lang/Boolean;

    aput-object v2, p1, v6

    const/4 v2, 0x0

    aput-object v2, p1, v4

    .line 67
    invoke-static {p0, v0, v1, p1}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e0
    .catchall {:try_start_32 .. :try_end_e0} :catchall_e0

    :catchall_e0
    :cond_e0
    return-void
.end method

.method private final isPremiumReal(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 89
    :cond_4
    :try_start_4
    const-string v1, "isPremiumReal"

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 90
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1c

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :catchall_1c
    :cond_1c
    return v0
.end method

.method private final post(Ljava/lang/Object;I)V
    .registers 8

    if-eqz p1, :cond_23

    if-gez p2, :cond_5

    goto :goto_23

    :cond_5
    const/4 v0, 0x2

    .line 100
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v2, v3, [Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object v2, v0, v4

    .line 98
    const-string p2, "postNotificationName"

    invoke-static {p1, p2, v1, v0}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_23
    return-void
.end method
