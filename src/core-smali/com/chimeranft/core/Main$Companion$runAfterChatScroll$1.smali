.class public final Lcom/chimeranft/core/Main$Companion$runAfterChatScroll$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $guarded:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$Companion$runAfterChatScroll$1;->$guarded:Ljava/lang/Runnable;

    .line 5173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 5175
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Main$Companion$runAfterChatScroll$1;->$guarded:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/Main$Companion;->runAfterChatScroll(Ljava/lang/Runnable;)V

    return-void
.end method
