.class abstract Lkotlin/collections/CollectionsKt__IterablesKt;
.super Lkotlin/collections/CollectionsKt__CollectionsKt;
.source "SourceFile"


# direct methods
.method public static collectionSizeOrDefault(Ljava/lang/Iterable;I)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_10

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    :cond_10
    return p1
.end method
