.class public final Lcom/chimeranft/core/Verification;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HOLD_DESC:Ljava/lang/String; = "\u0410\u043a\u043a\u0430\u0443\u043d\u0442 \u0432\u0435\u0440\u0438\u0444\u0438\u0446\u0438\u0440\u043e\u0432\u0430\u043d \u043e\u0440\u0433\u0430\u043d\u0438\u0437\u0430\u0446\u0438\u0435\u0439 \u00abHold\u00bb."

.field public static final HOLD_ICON:J = 0x575105ab00001b5aL

.field public static final INSTANCE:Lcom/chimeranft/core/Verification;

.field public static final MAJOR_DESC:Ljava/lang/String; = "\u0410\u043a\u043a\u0430\u0443\u043d\u0442 \u0432\u0435\u0440\u0438\u0444\u0438\u0446\u0438\u0440\u043e\u0432\u0430\u043d \u043e\u0440\u0433\u0430\u043d\u0438\u0437\u0430\u0446\u0438\u0435\u0439 \u00abMajor\u00bb."

.field public static final MAJOR_ICON:J = 0x53807462000013c1L

.field private static final TL_BOT_VERIFICATION:Ljava/lang/String; = "org.telegram.tgnet.tl.TL_bots$botVerification"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/Verification;

    invoke-direct {v0}, Lcom/chimeranft/core/Verification;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Verification;->INSTANCE:Lcom/chimeranft/core/Verification;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final build(I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-static {p0}, Lcom/chimeranft/core/Verification;->iconFor(I)J

    move-result-wide v0

    invoke-static {p0}, Lcom/chimeranft/core/Verification;->descFor(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/chimeranft/core/Verification;->build(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final build(JLjava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-wide/16 v0, 0x0

    .line 21
    invoke-static {p0, p1, p2, v0, v1}, Lcom/chimeranft/core/Verification;->build(JLjava/lang/String;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final build(JLjava/lang/String;J)Ljava/lang/Object;
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-gtz v3, :cond_10

    if-eqz p2, :cond_f

    .line 24
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    return-object v2

    .line 25
    :cond_10
    const-string v0, "org.telegram.tgnet.tl.TL_bots$botVerification"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_19

    return-object v2

    .line 27
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 28
    const-string v1, "bot_id"

    invoke-static {v0, v1, p3, p4}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 29
    const-string p3, "icon"

    invoke-static {v0, p3, p0, p1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    .line 30
    const-string p0, "description"

    if-nez p2, :cond_2d

    const-string p2, ""

    :cond_2d
    invoke-static {v0, p0, p2}, Lcom/chimeranft/core/Refl;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_31

    return-object v0

    :catchall_31
    return-object v2
.end method

.method public static final descFor(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 16
    const-string p0, ""

    return-object p0

    :cond_9
    const-string p0, "\u0410\u043a\u043a\u0430\u0443\u043d\u0442 \u0432\u0435\u0440\u0438\u0444\u0438\u0446\u0438\u0440\u043e\u0432\u0430\u043d \u043e\u0440\u0433\u0430\u043d\u0438\u0437\u0430\u0446\u0438\u0435\u0439 \u00abMajor\u00bb."

    return-object p0

    :cond_c
    const-string p0, "\u0410\u043a\u043a\u0430\u0443\u043d\u0442 \u0432\u0435\u0440\u0438\u0444\u0438\u0446\u0438\u0440\u043e\u0432\u0430\u043d \u043e\u0440\u0433\u0430\u043d\u0438\u0437\u0430\u0446\u0438\u0435\u0439 \u00abHold\u00bb."

    return-object p0
.end method

.method public static final iconFor(I)J
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_9
    const-wide v0, 0x53807462000013c1L    # 1.716155067032983E94

    return-wide v0

    :cond_f
    const-wide v0, 0x575105ab00001b5aL    # 4.093667514485554E112

    return-wide v0
.end method
