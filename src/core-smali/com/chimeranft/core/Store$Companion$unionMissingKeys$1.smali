.class public final Lcom/chimeranft/core/Store$Companion$unionMissingKeys$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic $stamps:[J


# direct methods
.method constructor <init>([J)V
    .registers 2

    iput-object p1, p0, Lcom/chimeranft/core/Store$Companion$unionMissingKeys$1;->$stamps:[J

    .line 3091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 7

    .line 3093
    iget-object v0, p0, Lcom/chimeranft/core/Store$Companion$unionMissingKeys$1;->$stamps:[J

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    aget-wide v2, v0, p2

    iget-object p2, p0, Lcom/chimeranft/core/Store$Companion$unionMissingKeys$1;->$stamps:[J

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_15
    aget-wide p1, p2, v1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 3091
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/chimeranft/core/Store$Companion$unionMissingKeys$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
