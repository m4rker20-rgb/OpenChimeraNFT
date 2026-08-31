.class public final Lcom/chimeranft/core/GiftHook$tabCallback$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$tabCallback$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    .line 3090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 3094
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "run"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    if-eqz p3, :cond_76

    array-length p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_76

    const/4 p1, 0x0

    aget-object p3, p3, p1

    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_76

    .line 3096
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$tabCallback$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-nez p3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    invoke-static {v0, p2}, Lcom/chimeranft/core/GiftHook;->access$setPickerVisualMode$p(Lcom/chimeranft/core/GiftHook;Z)V

    .line 3097
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$tabCallback$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->pickerVisualMode:Z
    invoke-static {p1}, Lcom/chimeranft/core/GiftHook;->access$getPickerVisualMode$p(Lcom/chimeranft/core/GiftHook;)Z

    move-result p2

    if-eqz p2, :cond_3a

    const-string p2, "Chimera NFT"

    goto :goto_3c

    :catchall_38
    move-exception p1

    goto :goto_5a

    :cond_3a
    const-string p2, "orig"

    :goto_3c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode -> "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chimeranft/core/GiftHook;->setLastSendDiag(Ljava/lang/String;)V

    .line 3098
    iget-object p1, p0, Lcom/chimeranft/core/GiftHook$tabCallback$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    # getter for: Lcom/chimeranft/core/GiftHook;->_pickerAdapter:Ljava/lang/Object;
    invoke-static {p1}, Lcom/chimeranft/core/GiftHook;->access$get_pickerAdapter$p(Lcom/chimeranft/core/GiftHook;)Ljava/lang/Object;

    move-result-object p2

    # invokes: Lcom/chimeranft/core/GiftHook;->rebuildPicker(Ljava/lang/Object;)V
    invoke-static {p1, p2}, Lcom/chimeranft/core/GiftHook;->access$rebuildPicker(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_0 .. :try_end_59} :catchall_38

    goto :goto_76

    .line 3102
    :goto_5a
    iget-object p2, p0, Lcom/chimeranft/core/GiftHook$tabCallback$h$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object p3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {p3, p1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tabcb: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    :cond_76
    :goto_76
    const/4 p1, 0x0

    return-object p1
.end method
