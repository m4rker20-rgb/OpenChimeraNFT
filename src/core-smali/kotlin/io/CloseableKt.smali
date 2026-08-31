.class public abstract Lkotlin/io/CloseableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .registers 2

    if-eqz p0, :cond_10

    if-nez p1, :cond_8

    .line 56
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void

    .line 59
    :cond_8
    :try_start_8
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p0

    .line 61
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method
