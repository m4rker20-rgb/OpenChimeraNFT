.class public final Lcom/chimeranft/core/Main$onScrollState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $list:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chimeranft/core/Main;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/chimeranft/core/Main;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$onScrollState$1;->$list:Ljava/lang/Object;

    iput-object p2, p0, Lcom/chimeranft/core/Main$onScrollState$1;->this$0:Lcom/chimeranft/core/Main;

    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1428
    iget-object v0, p0, Lcom/chimeranft/core/Main$onScrollState$1;->$list:Ljava/lang/Object;

    sget-object v1, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    const-string v3, "getScrollState"

    invoke-static {v0, v3, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1429
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_19

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 1430
    :cond_19
    iget-object v0, p0, Lcom/chimeranft/core/Main$onScrollState$1;->this$0:Lcom/chimeranft/core/Main;

    # invokes: Lcom/chimeranft/core/Main;->closeScrollWindows()V
    invoke-static {v0}, Lcom/chimeranft/core/Main;->access$closeScrollWindows(Lcom/chimeranft/core/Main;)V

    return-void
.end method
