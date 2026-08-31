.class public final Lcom/chimeranft/core/Badges$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/chimeranft/core/Badges$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$clearStamp(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    .registers 3

    .line 955
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges$Companion;->clearStamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$effectiveIcon(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)J
    .registers 3

    .line 955
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Badges$Companion;->effectiveIcon(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$exteraIconFor(Lcom/chimeranft/core/Badges$Companion;Lcom/chimeranft/core/Badges$Badge;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)J
    .registers 6

    .line 955
    invoke-direct/range {p0 .. p5}, Lcom/chimeranft/core/Badges$Companion;->exteraIconFor(Lcom/chimeranft/core/Badges$Badge;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$fillGates(Lcom/chimeranft/core/Badges$Companion;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;)V
    .registers 8

    .line 955
    invoke-direct/range {p0 .. p7}, Lcom/chimeranft/core/Badges$Companion;->fillGates(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;)V

    return-void
.end method

.method public static final synthetic access$mapSignature(Lcom/chimeranft/core/Badges$Companion;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 4

    .line 955
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Badges$Companion;->mapSignature(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requiredFlags2(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;ZZ)J
    .registers 4

    .line 955
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Badges$Companion;->requiredFlags2(Ljava/lang/Object;ZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$resolveExteraHandles(Lcom/chimeranft/core/Badges$Companion;)V
    .registers 1

    .line 955
    invoke-direct {p0}, Lcom/chimeranft/core/Badges$Companion;->resolveExteraHandles()V

    return-void
.end method

.method private final clearStamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    .registers 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_b3

    if-nez p2, :cond_9

    goto/16 :goto_b3

    .line 1160
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "bot_verification_icon"

    invoke-static {v2, v3}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 1161
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "bot_verification"

    invoke-static {v5, v6}, Lcom/chimeranft/core/Refl;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 1162
    :goto_28
    invoke-static {v0, v6}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1163
    invoke-static {v0, v3}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_4e

    .line 1164
    invoke-virtual/range {p2 .. p2}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v12

    cmp-long v2, v8, v12

    if-eqz v2, :cond_4c

    invoke-virtual/range {p2 .. p2}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v12

    cmp-long v2, v12, v10

    if-lez v2, :cond_4e

    invoke-virtual/range {p2 .. p2}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v12

    cmp-long v2, v8, v12

    if-nez v2, :cond_4e

    :cond_4c
    const/4 v2, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    if-eqz v5, :cond_83

    if-eqz v7, :cond_83

    .line 1165
    invoke-virtual/range {p2 .. p2}, Lcom/chimeranft/core/Badges$Badge;->getCachedBv()Ljava/lang/Object;

    move-result-object v5

    if-eq v7, v5, :cond_81

    .line 1166
    invoke-virtual/range {p2 .. p2}, Lcom/chimeranft/core/Badges$Badge;->getCachedCombinedBv()Ljava/lang/Object;

    move-result-object v5

    if-eq v7, v5, :cond_81

    const-string v5, "icon"

    invoke-static {v7, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v12

    cmp-long v14, v8, v12

    if-eqz v14, :cond_81

    .line 1167
    invoke-virtual/range {p2 .. p2}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v8

    cmp-long v12, v8, v10

    if-lez v12, :cond_83

    invoke-static {v7, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v12

    cmp-long v5, v7, v12

    if-nez v5, :cond_83

    :cond_81
    const/4 v5, 0x1

    goto :goto_84

    :cond_83
    const/4 v5, 0x0

    :goto_84
    if-nez v2, :cond_89

    if-nez v5, :cond_89

    return v1

    :cond_89
    if-eqz v2, :cond_92

    .line 1170
    invoke-static {v0, v3, v10, v11}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_92

    const/4 v1, 0x1

    :cond_92
    if-eqz v5, :cond_9c

    const/4 v3, 0x0

    .line 1171
    invoke-static {v0, v6, v3}, Lcom/chimeranft/core/Refl;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    const/4 v1, 0x1

    .line 1172
    :cond_9c
    invoke-direct {p0, v0, v2, v5}, Lcom/chimeranft/core/Badges$Companion;->requiredFlags2(Ljava/lang/Object;ZZ)J

    move-result-wide v2

    cmp-long v5, v2, v10

    if-eqz v5, :cond_b3

    .line 1175
    const-string v5, "flags2"

    invoke-static {v0, v5}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    not-long v2, v2

    and-long/2addr v2, v6

    .line 1176
    invoke-static {v0, v5, v2, v3}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_b3

    return v4

    :cond_b3
    :goto_b3
    return v1
.end method

.method private final effectiveIcon(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)J
    .registers 10

    const-wide/16 v0, 0x0

    if-nez p2, :cond_5

    return-wide v0

    .line 1267
    :cond_5
    invoke-virtual {p2}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p2}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_15

    if-nez p1, :cond_17

    :cond_15
    move-object v2, p2

    goto :goto_2c

    .line 1268
    :cond_17
    const-string v0, "user"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    move-object v3, p1

    goto :goto_22

    :cond_21
    move-object v3, v0

    :goto_22
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 1272
    invoke-direct/range {v1 .. v6}, Lcom/chimeranft/core/Badges$Companion;->exteraIconFor(Lcom/chimeranft/core/Badges$Badge;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)J

    move-result-wide p1

    return-wide p1

    .line 1267
    :goto_2c
    invoke-virtual {v2}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide p1

    return-wide p1
.end method

.method private final exteraIconFor(Lcom/chimeranft/core/Badges$Badge;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)J
    .registers 11

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 1189
    :cond_5
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_30

    if-eqz p5, :cond_10

    goto :goto_30

    .line 1190
    :cond_10
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getCombinedVerdict()I

    move-result p5

    const/4 v0, 0x1

    if-nez p5, :cond_24

    .line 1193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/Badges$Companion;->resolveCombinedVerdict(Lcom/chimeranft/core/Badges$Badge;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    const/4 p5, 0x1

    goto :goto_21

    :cond_1f
    const/4 p2, 0x2

    const/4 p5, 0x2

    .line 1194
    :goto_21
    invoke-virtual {p1, p5}, Lcom/chimeranft/core/Badges$Badge;->setCombinedVerdict(I)V

    :cond_24
    if-ne p5, v0, :cond_2b

    .line 1196
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide p1

    return-wide p1

    :cond_2b
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide p1

    return-wide p1

    .line 1189
    :cond_30
    :goto_30
    invoke-virtual {p1}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide p1

    return-wide p1
.end method

.method private final fillGates(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;Lcom/chimeranft/core/LongSet;)V
    .registers 12

    .line 1094
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/chimeranft/core/LongSet;->add(J)V

    goto :goto_8

    .line 1095
    :cond_1c
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1097
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_43

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/chimeranft/core/LongSet;->add(J)V

    .line 1098
    :cond_43
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chimeranft/core/Badges$Badge;

    if-eqz p2, :cond_24

    .line 1100
    invoke-virtual {p2}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-lez p4, :cond_5c

    invoke-virtual {p2}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v0

    invoke-virtual {p7, v0, v1}, Lcom/chimeranft/core/LongSet;->add(J)V

    .line 1101
    :cond_5c
    invoke-virtual {p2}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v0

    cmp-long p4, v0, v2

    if-lez p4, :cond_24

    invoke-virtual {p2}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v0

    invoke-virtual {p7, v0, v1}, Lcom/chimeranft/core/LongSet;->add(J)V

    goto :goto_24

    .line 1103
    :cond_6c
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 1107
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p4

    invoke-virtual {p6, p4, p5}, Lcom/chimeranft/core/LongSet;->add(J)V

    const-wide p4, -0xe8d4a51000L

    const-wide v0, 0xe8d4a51000L

    cmp-long p7, p2, p4

    if-gez p7, :cond_9c

    neg-long p4, p2

    sub-long/2addr p4, v0

    goto :goto_a0

    .line 1108
    :cond_9c
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p4

    .line 1109
    :goto_a0
    invoke-virtual {p6, p4, p5}, Lcom/chimeranft/core/LongSet;->add(J)V

    add-long/2addr p2, v0

    .line 1113
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    invoke-virtual {p6, p2, p3}, Lcom/chimeranft/core/LongSet;->add(J)V

    goto :goto_74

    :cond_ac
    return-void
.end method

.method private final hasSingleObjectArgMethod(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1040
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 1042
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 1043
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_36

    if-nez v1, :cond_c

    return v3

    :catchall_36
    :cond_36
    return v0
.end method

.method private final mapSignature(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 15

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1236
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1237
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1238
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    const/16 v5, 0x7c

    const/16 v6, 0x3a

    if-ge v4, v2, :cond_71

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 1240
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {p1, v9}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/chimeranft/core/Badges$Badge;

    const/16 v10, 0x75

    .line 1241
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/chimeranft/core/Badges$Badge;->getBotId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/chimeranft/core/Badges$Badge;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1244
    :cond_71
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1245
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1246
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_82
    if-ge v2, v1, :cond_d8

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 1248
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/Badges$Badge;

    const/16 v9, 0x73

    .line 1249
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getBotId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 1252
    :cond_d8
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1253
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1254
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_e8
    if-ge v3, p2, :cond_13e

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 1256
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p3, v4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/Badges$Badge;

    const/16 v7, 0x63

    .line 1257
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getBotId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/chimeranft/core/Badges$Badge;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e8

    .line 1260
    :cond_13e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final requiredFlags2(Ljava/lang/Object;ZZ)J
    .registers 4

    .line 1278
    invoke-static {p1}, Lcom/chimeranft/core/Refl;->isChatEntity(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p3, :cond_f

    if-eqz p1, :cond_c

    const-wide/32 p1, 0x20000

    return-wide p1

    :cond_c
    const-wide/16 p1, 0x1000

    return-wide p1

    :cond_f
    if-eqz p2, :cond_19

    if-eqz p1, :cond_16

    const-wide/16 p1, 0x2000

    return-wide p1

    :cond_16
    const-wide/16 p1, 0x4000

    return-wide p1

    :cond_19
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private final resolveCombinedVerdict(Lcom/chimeranft/core/Badges$Badge;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    if-nez p3, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_b

    .line 1201
    :cond_5
    const-string p1, "documentId"

    invoke-static {p3, p1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    .line 1202
    :goto_b
    # getter for: Lcom/chimeranft/core/Badges;->EXTERA_SUPPORTER_DOC:J
    invoke-static {}, Lcom/chimeranft/core/Badges;->access$getEXTERA_SUPPORTER_DOC$cp()J

    move-result-wide v2

    const/4 p1, 0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_15

    return p1

    :cond_15
    const/4 p3, 0x0

    .line 1205
    :try_start_16
    const-string v0, "org.telegram.tgnet.TLRPC$User"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 1206
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_6c

    :cond_25
    if-nez p4, :cond_3e

    .line 1210
    const-string p4, "com.exteragram.messenger.badges.BadgesController"

    invoke-static {p4}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    if-nez p4, :cond_30

    return p3

    .line 1212
    :cond_30
    const-string v1, "INSTANCE"

    invoke-virtual {p4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p4

    .line 1213
    invoke-virtual {p4, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 1214
    invoke-virtual {p4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :cond_3e
    if-nez p4, :cond_41

    return p3

    .line 1217
    :cond_41
    const-string v1, "canChangeBadge"

    .line 1218
    new-array v2, p1, [Ljava/lang/Class;

    aput-object v0, v2, p3

    new-array v3, p1, [Ljava/lang/Object;

    aput-object p2, v3, p3

    .line 1217
    invoke-static {p4, v1, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1219
    const-string v2, "isDeveloper"

    .line 1220
    new-array v3, p1, [Ljava/lang/Class;

    aput-object v0, v3, p3

    new-array v0, p1, [Ljava/lang/Object;

    aput-object p2, v0, p3

    .line 1219
    invoke-static {p4, v2, v3, v0}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1221
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_69
    .catchall {:try_start_16 .. :try_end_69} :catchall_6c

    if-nez p2, :cond_6c

    return p1

    :catchall_6c
    :cond_6c
    :goto_6c
    return p3
.end method

.method private final resolveExteraHandles()V
    .registers 9

    .line 1133
    # getter for: Lcom/chimeranft/core/Badges;->exteraHandlesResolved:Z
    invoke-static {}, Lcom/chimeranft/core/Badges;->access$getExteraHandlesResolved$cp()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_60

    :cond_7
    const/4 v0, 0x1

    .line 1134
    invoke-static {v0}, Lcom/chimeranft/core/Badges;->access$setExteraHandlesResolved$cp(Z)V

    const/4 v1, 0x0

    .line 1137
    :try_start_c
    const-string v2, "com.exteragram.messenger.badges.BadgesController"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1138
    const-string v3, "com.exteragram.messenger.api.dto.BadgeDTO"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1139
    const-string v4, "com.exteragram.messenger.badges.source.BadgeInfo"

    invoke-static {v4}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1140
    const-string v5, "com.exteragram.messenger.api.model.ProfileStatus"

    invoke-static {v5}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v2, :cond_60

    if-eqz v3, :cond_60

    if-eqz v4, :cond_60

    if-nez v5, :cond_2d

    goto :goto_60

    .line 1142
    :cond_2d
    const-string v6, "INSTANCE"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1143
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v6, 0x3

    .line 1145
    new-array v6, v6, [Ljava/lang/Class;

    aput-object v3, v6, v1

    aput-object v5, v6, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v3, v6, v7

    .line 1144
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1146
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1147
    invoke-static {v2}, Lcom/chimeranft/core/Badges;->access$setExteraInstanceField$cp(Ljava/lang/reflect/Field;)V

    .line 1148
    invoke-static {v3}, Lcom/chimeranft/core/Badges;->access$setExteraInfoCtor$cp(Ljava/lang/reflect/Constructor;)V

    .line 1149
    const-string v2, "DEFAULT"

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/chimeranft/core/Badges;->access$setExteraDefaultStatus$cp(Ljava/lang/Object;)V

    .line 1150
    invoke-static {v0}, Lcom/chimeranft/core/Badges;->access$setExteraHostPresent$cp(Z)V
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_61

    :cond_60
    :goto_60
    return-void

    .line 1153
    :catchall_61
    invoke-static {v1}, Lcom/chimeranft/core/Badges;->access$setExteraHostPresent$cp(Z)V

    return-void
.end method


# virtual methods
.method public final forkOwnsSupporterRendering()Z
    .registers 3

    .line 1069
    # getter for: Lcom/chimeranft/core/Badges;->forkBadgeController:I
    invoke-static {}, Lcom/chimeranft/core/Badges;->access$getForkBadgeController$cp()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    .line 1070
    :cond_8
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges$Companion;->hostOwnsSupporterSlot()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 1071
    :cond_f
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges$Companion;->getBADGES_CONTROLLER()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_21

    .line 1072
    invoke-static {v1}, Lcom/chimeranft/core/Badges;->access$setForkBadgeController$cp(I)V

    :cond_21
    return v0
.end method

.method public final getBADGES_CONTROLLER()Ljava/lang/String;
    .registers 2

    .line 1005
    # getter for: Lcom/chimeranft/core/Badges;->BADGES_CONTROLLER:Ljava/lang/String;
    invoke-static {}, Lcom/chimeranft/core/Badges;->access$getBADGES_CONTROLLER$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hostHasSecondarySlot()Z
    .registers 4

    .line 1027
    # getter for: Lcom/chimeranft/core/Badges;->hostSecondarySlot:I
    invoke-static {}, Lcom/chimeranft/core/Badges;->access$getHostSecondarySlot$cp()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    if-ne v0, v2, :cond_b

    return v2

    :cond_b
    return v1

    .line 1029
    :cond_c
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges$Companion;->getBADGES_CONTROLLER()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_17

    return v1

    .line 1031
    :cond_17
    invoke-static {v2}, Lcom/chimeranft/core/Badges;->access$setForkBadgeController$cp(I)V

    .line 1032
    const-string v1, "getSecondaryBadge"

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/Badges$Companion;->hasSingleObjectArgMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x2

    .line 1033
    :goto_24
    invoke-static {v2}, Lcom/chimeranft/core/Badges;->access$setHostSecondarySlot$cp(I)V

    return v0
.end method

.method public final hostOwnsSupporterSlot()Z
    .registers 4

    .line 1008
    # getter for: Lcom/chimeranft/core/Badges;->hostSupporterSlot:I
    invoke-static {}, Lcom/chimeranft/core/Badges;->access$getHostSupporterSlot$cp()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    if-ne v0, v2, :cond_b

    return v2

    :cond_b
    return v1

    .line 1010
    :cond_c
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges$Companion;->getBADGES_CONTROLLER()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_17

    return v1

    .line 1012
    :cond_17
    invoke-static {v2}, Lcom/chimeranft/core/Badges;->access$setForkBadgeController$cp(I)V

    .line 1013
    const-string v1, "getBadge"

    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/Badges$Companion;->hasSingleObjectArgMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x2

    .line 1014
    :goto_24
    invoke-static {v2}, Lcom/chimeranft/core/Badges;->access$setHostSupporterSlot$cp(I)V

    return v0
.end method

.method public final supporterSlotOwner()Ljava/lang/String;
    .registers 2

    .line 1078
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges$Companion;->hostOwnsSupporterSlot()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "plugin(bot_verification)"

    return-object v0

    .line 1079
    :cond_9
    invoke-virtual {p0}, Lcom/chimeranft/core/Badges$Companion;->hostHasSecondarySlot()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "host(BadgeDTO+secondary)"

    return-object v0

    :cond_12
    const-string v0, "host(BadgeDTO)"

    return-object v0
.end method
