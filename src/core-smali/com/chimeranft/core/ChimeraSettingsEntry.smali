.class public final Lcom/chimeranft/core/ChimeraSettingsEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chimeranft/core/ChimeraSettingsEntry;

.field private static final ROOT_ID:I = 0x43484d


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/chimeranft/core/ChimeraSettingsEntry;

    invoke-direct {v0}, Lcom/chimeranft/core/ChimeraSettingsEntry;-><init>()V

    sput-object v0, Lcom/chimeranft/core/ChimeraSettingsEntry;->INSTANCE:Lcom/chimeranft/core/ChimeraSettingsEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addRoot(Ljava/util/ArrayList;)V
    .registers 11

    .line 768
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->appContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 773
    :cond_7
    sget-object v1, Lcom/chimeranft/core/ChimeraUi;->INSTANCE:Lcom/chimeranft/core/ChimeraUi;

    const-string v2, "settings_gift"

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v2, v3}, Lcom/chimeranft/core/ChimeraUi;->identifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 774
    const-string v2, "ChimeraSettingsTitle"

    const-string v3, "Chimera NFT"

    invoke-virtual {v1, v0, v2, v3}, Lcom/chimeranft/core/ChimeraUi;->string(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 775
    const-string v2, "ChimeraSettingsSubtitle"

    const-string v3, "\u043f\u043e\u0434\u0430\u0440\u043a\u0438, \u043f\u0440\u043e\u0444\u0438\u043b\u044c, \u0431\u0430\u043b\u0430\u043d\u0441 \u0438 \u0434\u0430\u043d\u043d\u044b\u0435"

    invoke-virtual {v1, v0, v2, v3}, Lcom/chimeranft/core/ChimeraUi;->string(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const v4, 0x43484d

    .line 772
    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/UItem;->asButtonWithSubtext(IILjava/lang/CharSequence;Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final openIfNeeded(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)Z
    .registers 4

    .line 781
    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const v1, 0x43484d

    if-ne v0, v1, :cond_11

    .line 782
    new-instance p1, Lcom/chimeranft/core/ChimeraSettingsActivity;

    invoke-direct {p1}, Lcom/chimeranft/core/ChimeraSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p0, 0x1

    return p0

    .line 785
    :cond_11
    invoke-static {p0, p1}, Lcom/chimeranft/core/LarpGramTweaksEntry;->openIfNeeded(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)Z

    move-result p0

    return p0
.end method
