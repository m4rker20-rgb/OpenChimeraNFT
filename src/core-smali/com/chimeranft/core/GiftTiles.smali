.class public final Lcom/chimeranft/core/GiftTiles;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/GiftTiles;

.field private static final cache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/GiftTiles;

    invoke-direct {v0}, Lcom/chimeranft/core/GiftTiles;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftTiles;->INSTANCE:Lcom/chimeranft/core/GiftTiles;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/GiftTiles;->cache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final decode(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 8

    .line 60
    const-string v0, "b64"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return-object v2

    .line 62
    :cond_10
    const-string v1, "unique_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    sget-object v1, Lcom/chimeranft/core/GiftTiles;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_43

    return-object v3

    .line 64
    :cond_43
    invoke-static {v0}, Lcom/chimeranft/core/GiftCodec;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4a

    return-object v2

    .line 67
    :cond_4a
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x190

    if-le v2, v3, :cond_55

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 68
    :cond_55
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final forget()V
    .registers 2

    .line 72
    sget-object v0, Lcom/chimeranft/core/GiftTiles;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final tile(ILorg/json/JSONObject;)Lorg/telegram/ui/Components/UItem;
    .registers 6

    .line 39
    invoke-direct {p0, p2}, Lcom/chimeranft/core/GiftTiles;->decode(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    .line 42
    :cond_8
    :try_start_8
    sget-object v1, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftForge;->account()I

    move-result v1

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    const/4 v2, 0x0

    .line 41
    invoke-static {v1, p2, v2, v2, v2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 43
    iput p1, p2, Lorg/telegram/ui/Components/UItem;->id:I
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    return-object p2

    :catchall_18
    return-object v0
.end method

.method public final view(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Object;)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 52
    :cond_4
    :try_start_4
    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    sget-object v2, Lcom/chimeranft/core/GiftForge;->INSTANCE:Lcom/chimeranft/core/GiftForge;

    invoke-virtual {v2}, Lcom/chimeranft/core/GiftForge;->account()I

    move-result v2

    invoke-direct {v1, p1, v2, p2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 53
    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    const/4 p1, 0x0

    invoke-virtual {v1, p3, p1, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    return-object v1

    :catchall_19
    return-object v0
.end method
