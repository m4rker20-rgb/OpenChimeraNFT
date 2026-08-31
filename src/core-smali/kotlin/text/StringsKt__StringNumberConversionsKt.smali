.class abstract Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "SourceFile"


# direct methods
.method public static toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 57
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    .line 77
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    const v5, -0x7fffffff

    if-gez v4, :cond_33

    const/4 v4, 0x1

    if-ne v0, v4, :cond_24

    return-object v1

    :cond_24
    const/16 v6, 0x2b

    if-eq v3, v6, :cond_31

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_2d

    return-object v1

    :cond_2d
    const/high16 v5, -0x80000000

    const/4 v3, 0x1

    goto :goto_35

    :cond_31
    const/4 v3, 0x0

    goto :goto_35

    :cond_33
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_35
    const v6, -0x38e38e3

    const v7, -0x38e38e3

    :goto_3b
    if-ge v4, v0, :cond_5c

    .line 102
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, p1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v8

    if-gez v8, :cond_48

    return-object v1

    :cond_48
    if-ge v2, v7, :cond_51

    if-ne v7, v6, :cond_50

    .line 107
    div-int v7, v5, p1

    if-ge v2, v7, :cond_51

    :cond_50
    return-object v1

    :cond_51
    mul-int v2, v2, p1

    add-int v9, v5, v8

    if-ge v2, v9, :cond_58

    return-object v1

    :cond_58
    sub-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_5c
    if-eqz v3, :cond_63

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_63
    neg-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 132
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {v1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return-object v3

    :cond_14
    const/4 v4, 0x0

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 152
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v6, :cond_38

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2a

    return-object v3

    :cond_2a
    const/16 v9, 0x2b

    if-eq v5, v9, :cond_37

    const/16 v4, 0x2d

    if-eq v5, v4, :cond_33

    return-object v3

    :cond_33
    const-wide/high16 v7, -0x8000000000000000L

    const/4 v4, 0x1

    goto :goto_39

    :cond_37
    const/4 v4, 0x1

    :cond_38
    const/4 v6, 0x0

    :goto_39
    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v11, 0x0

    move-wide v13, v9

    :goto_41
    if-ge v4, v2, :cond_73

    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v5

    if-gez v5, :cond_4e

    return-object v3

    :cond_4e
    cmp-long v15, v11, v13

    if-gez v15, :cond_5e

    cmp-long v15, v13, v9

    if-nez v15, :cond_62

    int-to-long v13, v1

    .line 182
    div-long v13, v7, v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_5e

    return-object v3

    :cond_5e
    move-object v15, v3

    move/from16 v16, v4

    goto :goto_63

    :cond_62
    return-object v3

    :goto_63
    int-to-long v3, v1

    mul-long v11, v11, v3

    int-to-long v3, v5

    add-long v17, v7, v3

    cmp-long v5, v11, v17

    if-gez v5, :cond_6e

    return-object v15

    :cond_6e
    sub-long/2addr v11, v3

    add-int/lit8 v4, v16, 0x1

    move-object v3, v15

    goto :goto_41

    :cond_73
    if-eqz v6, :cond_7a

    .line 199
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_7a
    neg-long v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
