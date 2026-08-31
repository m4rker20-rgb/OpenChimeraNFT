.class abstract Lkotlin/collections/CollectionsKt__CollectionsJVMKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static listOf(Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 22
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
