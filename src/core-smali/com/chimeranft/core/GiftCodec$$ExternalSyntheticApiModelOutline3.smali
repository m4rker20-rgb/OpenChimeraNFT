.class public abstract synthetic Lcom/chimeranft/core/GiftCodec$$ExternalSyntheticApiModelOutline3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
