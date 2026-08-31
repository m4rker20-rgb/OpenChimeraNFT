.class public final Lcom/chimeranft/core/Badges$persistJson$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $json:Ljava/lang/String;

.field final synthetic this$0:Lcom/chimeranft/core/Badges;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Badges;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Badges$persistJson$1;->this$0:Lcom/chimeranft/core/Badges;

    iput-object p2, p0, Lcom/chimeranft/core/Badges$persistJson$1;->$json:Ljava/lang/String;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 608
    iget-object v0, p0, Lcom/chimeranft/core/Badges$persistJson$1;->this$0:Lcom/chimeranft/core/Badges;

    iget-object v1, p0, Lcom/chimeranft/core/Badges$persistJson$1;->$json:Ljava/lang/String;

    # invokes: Lcom/chimeranft/core/Badges;->persistJsonBlocking(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/chimeranft/core/Badges;->access$persistJsonBlocking(Lcom/chimeranft/core/Badges;Ljava/lang/String;)V

    return-void
.end method
