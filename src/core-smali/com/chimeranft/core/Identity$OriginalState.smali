.class final Lcom/chimeranft/core/Identity$OriginalState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/Identity$OriginalState$Companion;

.field private static final FIELDS:[Ljava/lang/String;


# instance fields
.field private final values:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lcom/chimeranft/core/Identity$OriginalState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/Identity$OriginalState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/Identity$OriginalState;->Companion:Lcom/chimeranft/core/Identity$OriginalState$Companion;

    .line 193
    const-string v12, "bot_verification_icon"

    const-string v13, "verified"

    const-string v2, "username"

    const-string v3, "phone"

    const-string v4, "emoji_status"

    const-string v5, "premium"

    const-string v6, "usernames"

    const-string v7, "active_usernames"

    const-string v8, "editable_usernames"

    const-string v9, "stars_rating"

    const-string v10, "starsRating"

    const-string v11, "bot_verification"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/Identity$OriginalState;->FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Identity$OriginalState;->values:Ljava/util/HashMap;

    .line 158
    sget-object v0, Lcom/chimeranft/core/Identity$OriginalState;->FIELDS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_2b

    aget-object v4, v0, v3

    .line 160
    invoke-static {p1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_23

    new-instance v6, Ljava/util/ArrayList;

    check-cast v5, Ljava/util/List;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v6

    .line 162
    :cond_23
    iget-object v6, p0, Lcom/chimeranft/core/Identity$OriginalState;->values:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 166
    :cond_2b
    sget-object v0, Lcom/chimeranft/core/Identity;->Companion:Lcom/chimeranft/core/Identity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    # invokes: Lcom/chimeranft/core/Identity$Companion;->phoneFieldsOf(Ljava/lang/Class;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/chimeranft/core/Identity$Companion;->access$phoneFieldsOf(Lcom/chimeranft/core/Identity$Companion;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_36
    if-ge v2, v1, :cond_4e

    aget-object v3, v0, v2

    .line 168
    iget-object v4, p0, Lcom/chimeranft/core/Identity$OriginalState;->values:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    iget-object v4, p0, Lcom/chimeranft/core/Identity$OriginalState;->values:Ljava/util/HashMap;

    invoke-static {p1, v3}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_4e
    return-void
.end method


# virtual methods
.method public final restore(Ljava/lang/Object;)V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/chimeranft/core/Identity$OriginalState;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 176
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_26

    new-instance v3, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 177
    :cond_26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_a

    :cond_30
    return-void
.end method

.method public final restoreUsernames(Ljava/lang/Object;)V
    .registers 8

    .line 183
    # getter for: Lcom/chimeranft/core/Identity;->USERNAME_FIELDS:[Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Identity;->access$getUSERNAME_FIELDS$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 185
    iget-object v4, p0, Lcom/chimeranft/core/Identity$OriginalState;->values:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 186
    iget-object v4, p0, Lcom/chimeranft/core/Identity$OriginalState;->values:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 187
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_24

    new-instance v5, Ljava/util/ArrayList;

    check-cast v4, Ljava/util/List;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v5

    .line 188
    :cond_24
    invoke-static {p1, v3, v4}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2a
    return-void
.end method
