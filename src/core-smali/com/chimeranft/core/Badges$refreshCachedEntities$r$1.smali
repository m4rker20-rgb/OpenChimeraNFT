.class public final Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $chats:Ljava/util/HashMap;

.field final synthetic $oldChats:Ljava/util/HashMap;

.field final synthetic $oldUsers:Ljava/util/HashMap;

.field final synthetic $users:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/chimeranft/core/Badges;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/chimeranft/core/Badges;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 6

    iput-object p1, p0, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$oldUsers:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$users:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->this$0:Lcom/chimeranft/core/Badges;

    iput-object p4, p0, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$oldChats:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$chats:Ljava/util/HashMap;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    move-object/from16 v1, p0

    .line 709
    :try_start_2
    const-string v0, "org.telegram.messenger.UserConfig"

    const-string v2, "selectedAccount"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 710
    const-string v2, "org.telegram.messenger.MessagesController"

    const-string v4, "getInstance"

    const/4 v5, 0x1

    .line 711
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v3

    .line 710
    invoke-static {v2, v4, v6, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    goto/16 :goto_289

    .line 713
    :cond_26
    iget-object v2, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$oldUsers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_ad

    const-string v6, "getUserFull"

    const-string v7, "getUser"

    const/4 v8, 0x0

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eqz v4, :cond_ec

    :try_start_3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 715
    iget-object v11, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$users:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/chimeranft/core/Badges$Badge;

    if-eqz v11, :cond_b0

    .line 716
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getBotId()J

    move-result-wide v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v14}, Lcom/chimeranft/core/Badges$Badge;->getBotId()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_b0

    .line 717
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v14}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_b0

    .line 718
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v14}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_b0

    .line 719
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v13}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v13

    if-ne v12, v13, :cond_b0

    .line 720
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3, v9, v8}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b0

    goto :goto_30

    :catchall_ad
    move-exception v0

    goto/16 :goto_28a

    .line 722
    :cond_b0
    new-array v8, v5, [Ljava/lang/Class;

    aput-object v10, v8, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v9, v11, v3

    invoke-static {v0, v7, v8, v11}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_cd

    .line 723
    sget-object v8, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/chimeranft/core/Badges$Badge;

    # invokes: Lcom/chimeranft/core/Badges$Companion;->clearStamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v8, v7, v9}, Lcom/chimeranft/core/Badges$Companion;->access$clearStamp(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    .line 724
    :cond_cd
    new-array v7, v5, [Ljava/lang/Class;

    aput-object v10, v7, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v8, v9, v3

    invoke-static {v0, v6, v7, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 725
    sget-object v7, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/Badges$Badge;

    # invokes: Lcom/chimeranft/core/Badges$Companion;->clearStamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v7, v6, v4}, Lcom/chimeranft/core/Badges$Companion;->access$clearStamp(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    goto/16 :goto_30

    .line 727
    :cond_ec
    iget-object v2, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$users:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f6
    :goto_f6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 729
    new-array v11, v5, [Ljava/lang/Class;

    aput-object v10, v11, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v12, v13, v3

    invoke-static {v0, v7, v11, v13}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_11f

    .line 730
    iget-object v12, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->this$0:Lcom/chimeranft/core/Badges;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/chimeranft/core/Badges$Badge;

    # invokes: Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v12, v11, v13}, Lcom/chimeranft/core/Badges;->access$stamp(Lcom/chimeranft/core/Badges;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    .line 731
    :cond_11f
    new-array v11, v5, [Ljava/lang/Class;

    aput-object v10, v11, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v12, v13, v3

    invoke-static {v0, v6, v11, v13}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_f6

    .line 732
    iget-object v12, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->this$0:Lcom/chimeranft/core/Badges;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/Badges$Badge;

    # invokes: Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v12, v11, v4}, Lcom/chimeranft/core/Badges;->access$stamp(Lcom/chimeranft/core/Badges;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    goto :goto_f6

    .line 734
    :cond_13d
    iget-object v2, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$oldChats:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_147
    :goto_147
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_14b
    .catchall {:try_start_3e .. :try_end_14b} :catchall_ad

    const-string v6, "getChatFull"

    const-string v7, "getChat"

    const-wide v13, -0xe8d4a51000L

    if-eqz v4, :cond_21d

    :try_start_156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 736
    iget-object v15, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$chats:Ljava/util/HashMap;

    const-wide v16, 0xe8d4a51000L

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/chimeranft/core/Badges$Badge;

    if-eqz v11, :cond_1cb

    .line 737
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getBotId()J

    move-result-wide v18

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getBotId()J

    move-result-wide v20

    cmp-long v12, v18, v20

    if-nez v12, :cond_1cb

    .line 738
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v18

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getIcon()J

    move-result-wide v20

    cmp-long v12, v18, v20

    if-nez v12, :cond_1cb

    .line 739
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v18

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getCombinedIcon()J

    move-result-wide v20

    cmp-long v12, v18, v20

    if-nez v12, :cond_1cb

    .line 740
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v15}, Lcom/chimeranft/core/Badges$Badge;->getSupporter()Z

    move-result v15

    if-ne v12, v15, :cond_1cb

    .line 741
    invoke-virtual {v11}, Lcom/chimeranft/core/Badges$Badge;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/chimeranft/core/Badges$Badge;

    invoke-virtual {v12}, Lcom/chimeranft/core/Badges$Badge;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3, v9, v8}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1cb

    goto/16 :goto_147

    .line 743
    :cond_1cb
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    cmp-long v15, v11, v13

    if-gez v15, :cond_1dd

    neg-long v11, v11

    sub-long v11, v11, v16

    goto :goto_1e1

    .line 744
    :cond_1dd
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 745
    :goto_1e1
    new-array v13, v5, [Ljava/lang/Class;

    aput-object v10, v13, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v14, v15, v3

    invoke-static {v0, v7, v13, v15}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1fe

    .line 746
    sget-object v13, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/chimeranft/core/Badges$Badge;

    # invokes: Lcom/chimeranft/core/Badges$Companion;->clearStamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v13, v7, v14}, Lcom/chimeranft/core/Badges$Companion;->access$clearStamp(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    .line 747
    :cond_1fe
    new-array v7, v5, [Ljava/lang/Class;

    aput-object v10, v7, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v11, v12, v3

    invoke-static {v0, v6, v7, v12}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_147

    .line 748
    sget-object v7, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/Badges$Badge;

    # invokes: Lcom/chimeranft/core/Badges$Companion;->clearStamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v7, v6, v4}, Lcom/chimeranft/core/Badges$Companion;->access$clearStamp(Lcom/chimeranft/core/Badges$Companion;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    goto/16 :goto_147

    :cond_21d
    const-wide v16, 0xe8d4a51000L

    .line 750
    iget-object v2, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->$chats:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22c
    :goto_22c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_289

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 752
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    cmp-long v11, v8, v13

    if-gez v11, :cond_24a

    neg-long v8, v8

    sub-long v8, v8, v16

    goto :goto_24e

    .line 753
    :cond_24a
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 754
    :goto_24e
    new-array v11, v5, [Ljava/lang/Class;

    aput-object v10, v11, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v12, v15, v3

    invoke-static {v0, v7, v11, v15}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_26b

    .line 755
    iget-object v12, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->this$0:Lcom/chimeranft/core/Badges;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/chimeranft/core/Badges$Badge;

    # invokes: Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v12, v11, v15}, Lcom/chimeranft/core/Badges;->access$stamp(Lcom/chimeranft/core/Badges;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z

    .line 756
    :cond_26b
    new-array v11, v5, [Ljava/lang/Class;

    aput-object v10, v11, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v8, v9, v3

    invoke-static {v0, v6, v11, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_22c

    .line 757
    iget-object v9, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->this$0:Lcom/chimeranft/core/Badges;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chimeranft/core/Badges$Badge;

    # invokes: Lcom/chimeranft/core/Badges;->stamp(Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    invoke-static {v9, v8, v4}, Lcom/chimeranft/core/Badges;->access$stamp(Lcom/chimeranft/core/Badges;Ljava/lang/Object;Lcom/chimeranft/core/Badges$Badge;)Z
    :try_end_288
    .catchall {:try_start_156 .. :try_end_288} :catchall_ad

    goto :goto_22c

    :cond_289
    :goto_289
    return-void

    .line 761
    :goto_28a
    iget-object v2, v1, Lcom/chimeranft/core/Badges$refreshCachedEntities$r$1;->this$0:Lcom/chimeranft/core/Badges;

    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v3, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheApply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Badges;->setLastError(Ljava/lang/String;)V

    return-void
.end method
