.class public final Lcom/chimeranft/core/GiftHook$installTonResaleFormHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$installTonResaleFormHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 1981
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 12

    .line 1986
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_35

    .line 1987
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_35

    .line 1988
    iget-object v3, p0, Lcom/chimeranft/core/GiftHook$installTonResaleFormHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v5, v0, v1

    const/4 v1, 0x1

    .line 1989
    aget-object v1, v0, v1

    instance-of v2, v1, Ljava/lang/Number;

    const/4 v9, 0x0

    if-eqz v2, :cond_1d

    check-cast v1, Ljava/lang/Number;

    goto :goto_1e

    :catchall_1a
    move-exception v0

    move-object p1, v0

    goto :goto_36

    :cond_1d
    move-object v1, v9

    :goto_1e
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :goto_24
    move-wide v6, v1

    goto :goto_29

    :cond_26
    const-wide/16 v1, 0x0

    goto :goto_24

    :goto_29
    const/4 v1, 0x2

    aget-object v8, v0, v1

    .line 1988
    invoke-virtual/range {v3 .. v8}, Lcom/chimeranft/core/GiftHook;->directResellingGiftForm(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1990
    invoke-virtual {p1, v9}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_1a

    :cond_35
    return-void

    .line 1993
    :goto_36
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$installTonResaleFormHook$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tonForm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
