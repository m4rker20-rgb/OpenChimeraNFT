.class public final Lcom/chimeranft/core/GiftHook$closeSendSheet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $attempt:I

.field final synthetic $next:I

.field final synthetic $sheet:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/GiftHook;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;II)V
    .registers 5

    iput-object p1, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iput-object p2, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$sheet:Ljava/lang/Object;

    iput p3, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$attempt:I

    iput p4, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$next:I

    .line 3590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 3594
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$sheet:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->sendSheetIsUp(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$sendSheetIsUp(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 3596
    iget v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$attempt:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$sheet:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->runCloseParentSheet(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$runCloseParentSheet(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    return-void

    :catchall_16
    move-exception v0

    goto :goto_51

    :cond_18
    return-void

    .line 3599
    :cond_19
    iget v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$attempt:I

    if-nez v0, :cond_2b

    .line 3601
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$sheet:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->hideSendSheetKeyboard(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$hideSendSheetKeyboard(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    .line 3602
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$sheet:Ljava/lang/Object;

    # invokes: Lcom/chimeranft/core/GiftHook;->runCloseParentSheet(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/GiftHook;->access$runCloseParentSheet(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;)V

    .line 3604
    :cond_2b
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$sheet:Ljava/lang/Object;

    const-string v1, "dismiss"

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3605
    iget v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$next:I

    # getter for: Lcom/chimeranft/core/GiftHook;->SEND_SHEET_DISMISS_ATTEMPTS:I
    invoke-static {}, Lcom/chimeranft/core/GiftHook;->access$getSEND_SHEET_DISMISS_ATTEMPTS$cp()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 3606
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$sheet:Ljava/lang/Object;

    iget v2, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$next:I

    # invokes: Lcom/chimeranft/core/GiftHook;->closeSendSheet(Ljava/lang/Object;I)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$closeSendSheet(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;I)V

    return-void

    .line 3608
    :cond_48
    iget-object v0, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->$sheet:Ljava/lang/Object;

    const/4 v2, 0x0

    # invokes: Lcom/chimeranft/core/GiftHook;->setSendSheetLoading(Ljava/lang/Object;Z)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->access$setSendSheetLoading(Lcom/chimeranft/core/GiftHook;Ljava/lang/Object;Z)V
    :try_end_50
    .catchall {:try_start_0 .. :try_end_50} :catchall_16

    return-void

    .line 3611
    :goto_51
    iget-object v1, p0, Lcom/chimeranft/core/GiftHook$closeSendSheet$1;->this$0:Lcom/chimeranft/core/GiftHook;

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDismiss: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chimeranft/core/GiftHook;->setLastError(Ljava/lang/String;)V

    return-void
.end method
