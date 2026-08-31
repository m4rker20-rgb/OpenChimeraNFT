.class public abstract Lcom/chimeranft/core/ForkPreferences;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/chimeranft/core/ForkPreferences$Companion;

.field public static final TWO_LINE_DP:I = 0x3c


# instance fields
.field private destroyed:Z


# direct methods
.method public static synthetic $r8$lambda$DWfU6Q3Z1j99_DIepaWIoXte9g4(Lkotlin/jvm/functions/Function1;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->picker$lambda$3(Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ah1K5OHQI7vdtupF8PiNAfYtdVs(Lkotlin/jvm/functions/Function0;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->editor$lambda$1(Lkotlin/jvm/functions/Function0;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gMHsmlRZElKNQxVOkuxBige8WPY(Lkotlin/jvm/functions/Function0;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->confirm$lambda$2(Lkotlin/jvm/functions/Function0;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tfgz0pH2nn2A0MruzIwO7ZMPRl0(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->toggle$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/ForkPreferences$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/ForkPreferences$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/ForkPreferences;->Companion:Lcom/chimeranft/core/ForkPreferences$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    return-void
.end method

.method private final bulletin(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 6

    .line 117
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v0, v1, p1, v2}, Lcom/chimeranft/core/ChimeraUi;->identifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_1a

    .line 119
    :cond_f
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    :catchall_1a
    :goto_1a
    return-void
.end method

.method private static final confirm$lambda$2(Lkotlin/jvm/functions/Function0;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .registers 3

    .line 297
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    .line 298
    :catchall_3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final editor$lambda$1(Lkotlin/jvm/functions/Function0;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .registers 3

    .line 283
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 284
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6

    :catchall_6
    return-void
.end method

.method public static synthetic field$default(Lcom/chimeranft/core/ForkPreferences;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/chimeranft/core/ForkPreferences$Field;
    .registers 9

    if-nez p7, :cond_17

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_8

    const/4 p3, 0x0

    :cond_8
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_d

    const/4 p4, 0x0

    :cond_d
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_12

    const/4 p5, 0x0

    .line 224
    :cond_12
    invoke-virtual/range {p0 .. p5}, Lcom/chimeranft/core/ForkPreferences;->field(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/chimeranft/core/ForkPreferences$Field;

    move-result-object p0

    return-object p0

    :cond_17
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: field"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final picker$lambda$3(Lkotlin/jvm/functions/Function1;I)V
    .registers 2

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic row$default(Lcom/chimeranft/core/ForkPreferences;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/telegram/ui/Components/UItem;
    .registers 14

    if-nez p7, :cond_12

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_7

    const/4 p5, 0x0

    :cond_7
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/ForkPreferences;->row(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: row"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final toggle$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V
    .registers 3

    .line 188
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final backupSummary(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10

    .line 202
    const-string v0, "auto_backup_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_12

    .line 203
    const-string p1, "ChimeraBackupsNone"

    const-string v0, "\u041a\u043e\u043f\u0438\u0439 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 204
    :cond_12
    const-string v6, "%d \u043a\u043e\u043f\u0438\u0438"

    const-string v7, "%d \u043a\u043e\u043f\u0438\u0439"

    const-string v3, "ChimeraPluralBackups"

    const-string v5, "%d \u043a\u043e\u043f\u0438\u044f"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/ForkPreferences;->plural(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "auto_backup_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gtz p1, :cond_2c

    return-object v0

    .line 208
    :cond_2c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    mul-long v4, v4, v1

    .line 209
    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    .line 210
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 211
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 212
    const-string v2, ""

    const-string v3, "0"

    const/16 v4, 0xa

    if-ge v1, v4, :cond_4d

    move-object v5, v3

    goto :goto_4e

    :cond_4d
    move-object v5, v2

    :goto_4e
    if-ge p1, v4, :cond_51

    move-object v2, v3

    .line 213
    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final card(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .registers 6

    .line 157
    invoke-virtual {p0, p3, p4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/chimeranft/core/ForkPreferences;->cardOf(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    return-object p1
.end method

.method protected final cardOf(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .registers 12

    if-eqz p4, :cond_8

    .line 161
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    move v1, p1

    move-object v3, p3

    goto :goto_1a

    .line 162
    :cond_b
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/UItem;->asButtonWithSubtext(IILjava/lang/CharSequence;Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    return-object p1

    .line 161
    :goto_1a
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1, v3}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    return-object p1
.end method

.method protected final confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 8

    .line 293
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 294
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 295
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 296
    new-instance p1, Lcom/chimeranft/core/ForkPreferences$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/chimeranft/core/ForkPreferences$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p3, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 300
    const-string p1, "ChimeraCancel"

    const-string p2, "\u041e\u0442\u043c\u0435\u043d\u0430"

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 301
    :try_start_27
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2e

    :catchall_2e
    return-void
.end method

.method protected final dp(I)I
    .registers 4

    .line 103
    sget-object v0, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/chimeranft/core/ChimeraUi;->dp(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method protected final editor(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .registers 9

    .line 267
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x16

    .line 269
    invoke-virtual {p0, v1}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v1

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 270
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_28
    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 272
    instance-of v2, v1, Lcom/chimeranft/core/ForkPreferences$Field;

    if-eqz v2, :cond_3d

    check-cast v1, Lcom/chimeranft/core/ForkPreferences$Field;

    invoke-virtual {v1}, Lcom/chimeranft/core/ForkPreferences$Field;->view$main()Landroid/view/View;

    move-result-object v1

    goto :goto_43

    .line 273
    :cond_3d
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_28

    check-cast v1, Landroid/view/View;

    .line 276
    :goto_43
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    .line 279
    :cond_4e
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 280
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 281
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 282
    const-string p1, "ChimeraSave"

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/chimeranft/core/ForkPreferences$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/chimeranft/core/ForkPreferences$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 286
    const-string p1, "ChimeraCancel"

    const-string p3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    invoke-virtual {p0, p1, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 287
    :try_start_7d
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_84

    :catchall_84
    return-void
.end method

.method protected final failure(Ljava/lang/CharSequence;)V
    .registers 3

    .line 113
    const-string v0, "error"

    invoke-direct {p0, v0, p1}, Lcom/chimeranft/core/ForkPreferences;->bulletin(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final field(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/chimeranft/core/ForkPreferences$Field;
    .registers 11

    .line 228
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    const/4 v1, 0x1

    .line 230
    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getThemedColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 233
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextHint:I

    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getThemedColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 234
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getThemedColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 p2, 0x3fc00000    # 1.5f

    .line 235
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/16 p2, 0x14

    .line 236
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/4 p2, 0x0

    .line 237
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x4

    .line 238
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_57

    const/16 p1, 0x2002

    goto :goto_62

    :cond_57
    if-eqz p3, :cond_5b

    const/4 p1, 0x2

    goto :goto_62

    :cond_5b
    if-eqz p5, :cond_61

    const p1, 0x20001

    goto :goto_62

    :cond_61
    const/4 p1, 0x1

    .line 240
    :goto_62
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    if-eqz p5, :cond_76

    .line 247
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMinLines(I)V

    const/16 p1, 0xa

    .line 248
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    const p1, 0x800033

    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_79

    .line 251
    :cond_76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 253
    :goto_79
    new-instance p1, Lcom/chimeranft/core/ForkPreferences$Field;

    invoke-direct {p1, v0}, Lcom/chimeranft/core/ForkPreferences$Field;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-object p1
.end method

.method protected final getCtx()Landroid/content/Context;
    .registers 2

    .line 86
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final getDestroyed()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/chimeranft/core/ForkPreferences;->destroyed:Z

    return v0
.end method

.method protected final giftsSummary(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10

    .line 195
    const-string v0, "gift_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_12

    .line 196
    const-string p1, "ChimeraGiftsEmpty"

    const-string v0, "\u041f\u043e\u043a\u0430 \u043f\u0443\u0441\u0442\u043e"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 197
    :cond_12
    const-string v6, "%d \u043f\u043e\u0434\u0430\u0440\u043a\u0430"

    const-string v7, "%d \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432"

    const-string v3, "ChimeraPluralGifts"

    const-string v5, "%d \u043f\u043e\u0434\u0430\u0440\u043e\u043a"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/chimeranft/core/ForkPreferences;->plural(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final icon(Ljava/lang/String;)I
    .registers 5

    .line 102
    sget-object v0, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, p1, v2}, Lcom/chimeranft/core/ChimeraUi;->identifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected final info(Ljava/lang/CharSequence;)V
    .registers 3

    .line 112
    const-string v0, "info"

    invoke-direct {p0, v0, p1}, Lcom/chimeranft/core/ForkPreferences;->bulletin(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final label(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .line 257
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 258
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    const/high16 v1, 0x41500000    # 13.0f

    .line 260
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xc

    .line 261
    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method protected final message(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 306
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 308
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 309
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 310
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 311
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 312
    invoke-virtual {v1, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 313
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x16

    .line 317
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v4

    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result p2

    invoke-virtual {v0, v3, v4, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 318
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x140

    .line 319
    invoke-virtual {p0, v2}, Lcom/chimeranft/core/ForkPreferences;->dp(I)I

    move-result v2

    .line 318
    invoke-direct {p2, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 321
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 322
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 323
    const-string p1, "ChimeraClose"

    const-string v0, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    invoke-virtual {p0, p1, v0}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 324
    :try_start_80
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_87

    :catchall_87
    return-void
.end method

.method public onFragmentDestroy()V
    .registers 2

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/chimeranft/core/ForkPreferences;->destroyed:Z

    .line 98
    invoke-super {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->onFragmentDestroy()V

    return-void
.end method

.method protected final outcome(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 129
    const-string v0, "FATAL"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "(not initialized)"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 130
    const-string v0, "ERR"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "error"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_2b

    .line 135
    :cond_24
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->info(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->refresh()V

    return-void

    :cond_2b
    :goto_2b
    const/16 p2, 0xa0

    .line 132
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chimeranft/core/ForkPreferences;->failure(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final picker(Lorg/telegram/ui/Components/UItem;Ljava/lang/String;[Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)V
    .registers 12

    .line 329
    new-instance v5, Lcom/chimeranft/core/ForkPreferences$$ExternalSyntheticLambda0;

    invoke-direct {v5, p5}, Lcom/chimeranft/core/ForkPreferences$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void
.end method

.method protected final plural(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 105
    sget-object v0, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/chimeranft/core/ChimeraUi;->plural(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final refresh()V
    .registers 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_c

    :catchall_c
    :cond_c
    return-void
.end method

.method protected final row(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;
    .registers 6

    .line 142
    invoke-virtual {p0, p3, p4}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p5, :cond_16

    .line 143
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_d

    goto :goto_16

    .line 144
    :cond_d
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p3, p5}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    return-object p1

    .line 143
    :cond_16
    :goto_16
    invoke-virtual {p0, p2}, Lcom/chimeranft/core/ForkPreferences;->icon(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    return-object p1
.end method

.method protected final switch(ILjava/lang/String;Ljava/lang/String;Z)Lorg/telegram/ui/Components/UItem;
    .registers 5

    .line 184
    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    return-object p1
.end method

.method protected final switchWith(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;
    .registers 6

    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/chimeranft/core/ForkPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_13

    .line 172
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_d

    goto :goto_13

    :cond_d
    const/4 p3, 0x1

    .line 173
    invoke-static {p1, p2, p4, p3}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    goto :goto_17

    .line 172
    :cond_13
    :goto_13
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 174
    :goto_17
    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    return-object p1
.end method

.method protected final text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 101
    sget-object v0, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    invoke-virtual {p0}, Lcom/chimeranft/core/ForkPreferences;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/chimeranft/core/ChimeraUi;->string(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final toggle(Lorg/telegram/ui/Components/UItem;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    .line 188
    new-instance v0, Lcom/chimeranft/core/ForkPreferences$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/chimeranft/core/ForkPreferences$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method
