.class public final Lcom/chimeranft/core/Main$Companion$init$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $badges:Lcom/chimeranft/core/Badges;


# direct methods
.method constructor <init>(Lcom/chimeranft/core/Badges;)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Main$Companion$init$1;->$badges:Lcom/chimeranft/core/Badges;

    .line 4105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 4108
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$init$1;->$badges:Lcom/chimeranft/core/Badges;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges;->syncExteraCache()Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method
