.class public final Lcom/chimeranft/core/GiftHook$showPickerWarning$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$showPickerWarning$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 2993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 2997
    const-class v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 3000
    :try_start_3
    const-string v2, "org.telegram.ui.LaunchActivity"

    invoke-static {v2}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 3001
    const-string v3, "instance"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    nop

    :cond_17
    move-object v2, v1

    :goto_18
    if-nez v2, :cond_1c

    goto/16 :goto_e9

    .line 3006
    :cond_1c
    :try_start_1c
    const-string v3, "org.telegram.ui.ActionBar.AlertDialog$Builder"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_26

    goto/16 :goto_e9

    .line 3010
    :cond_26
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    :catchall_2e
    :cond_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 3012
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 3013
    array-length v9, v8

    if-lt v9, v6, :cond_2e

    aget-object v9, v8, v7

    invoke-virtual {v9, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 3015
    array-length v8, v8

    new-array v9, v8, [Ljava/lang/Object;

    .line 3016
    aput-object v2, v9, v7
    :try_end_50
    .catchall {:try_start_1c .. :try_end_50} :catchall_5c

    .line 3019
    :try_start_50
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3020
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_2e

    goto :goto_5f

    :catchall_5c
    move-exception v0

    goto :goto_cd

    :cond_5e
    move-object v2, v1

    :goto_5f
    if-nez v2, :cond_63

    goto/16 :goto_e9

    .line 3030
    :cond_63
    :try_start_63
    const-string v4, "setTitle"

    new-array v5, v6, [Ljava/lang/Class;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string v8, "\u041a\u0430\u043a \u0441\u043f\u0438\u0441\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u0437\u0432\u0451\u0437\u0434\u044b \u2b50"

    aput-object v8, v5, v7

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_76

    .line 3041
    :catchall_76
    :try_start_76
    const-string v4, "setMessage"

    new-array v5, v6, [Ljava/lang/Class;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string v8, "\u0417\u0432\u0451\u0437\u0434\u044b \u0441\u043f\u0438\u0448\u0443\u0442\u0441\u044f \u0422\u041e\u041b\u042c\u041a\u041e \u0435\u0441\u043b\u0438:\n\n\u2022 \u043f\u043e\u043a\u0443\u043f\u0430\u0435\u0448\u044c \u043e\u0431\u044b\u0447\u043d\u044b\u0439 \u043f\u043e\u0434\u0430\u0440\u043e\u043a \u0441\u0430\u043c\u043e\u043c\u0443 \u0441\u0435\u0431\u0435 \u0437\u0430 \u0437\u0432\u0451\u0437\u0434\u044b, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u0443 \u0442\u0435\u0431\u044f \u0435\u0441\u0442\u044c;\n\u2022 \u043f\u043e\u043a\u0443\u043f\u0430\u0435\u0448\u044c \u0447\u0435\u0440\u0435\u0437 \u0432\u043a\u043b\u0430\u0434\u043a\u0443 \u00ab\u041e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u00bb.\n\n\u0410 \u0435\u0441\u043b\u0438 \u043f\u043e\u043a\u0443\u043f\u0430\u0435\u0448\u044c \u0438\u043b\u0438 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0435\u0448\u044c \u0447\u0435\u0440\u0435\u0437 \u0432\u043a\u043b\u0430\u0434\u043a\u0443 \u00abChimera NFT\u00bb \u0434\u0440\u0443\u0433\u0438\u043c \u043b\u044e\u0434\u044f\u043c \u0438\u043b\u0438 \u043a\u0430\u043d\u0430\u043b\u0430\u043c \u2014 \u041d\u0418\u0427\u0415\u0413\u041e \u043d\u0435 \u0441\u043f\u0438\u0448\u0435\u0442\u0441\u044f. \u0412\u0441\u0451 \u0432\u0438\u0437\u0443\u0430\u043b\u044c\u043d\u043e \u0438 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u043e."

    aput-object v8, v5, v7

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_76 .. :try_end_89} :catchall_89

    .line 3046
    :catchall_89
    :try_start_89
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    :cond_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 3048
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setPositiveButton"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-static {v5}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_91

    .line 3049
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v7
    :try_end_b6
    .catchall {:try_start_89 .. :try_end_b6} :catchall_5c

    if-ne v8, v0, :cond_91

    .line 3053
    :try_start_b8
    new-array v0, v9, [Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u043d\u044f\u0442\u043d\u043e"

    aput-object v4, v0, v7

    aput-object v1, v0, v6

    invoke-virtual {v5, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catchall {:try_start_b8 .. :try_end_c3} :catchall_c3

    .line 3060
    :catchall_c3
    :cond_c3
    :try_start_c3
    const-string v0, "show"

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catchall {:try_start_c3 .. :try_end_cc} :catchall_5c

    goto :goto_e9

    .line 3063
    :goto_cd
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$showPickerWarning$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickerWarn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    :goto_e9
    return-void
.end method
