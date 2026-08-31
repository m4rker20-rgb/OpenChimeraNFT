.class public final Lcom/chimeranft/core/Main$Companion$installCrashHandler$ours$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic $crashFile:Ljava/io/File;

.field final synthetic $prev:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/chimeranft/core/Main$Companion$installCrashHandler$ours$1;->$crashFile:Ljava/io/File;

    iput-object p2, p0, Lcom/chimeranft/core/Main$Companion$installCrashHandler$ours$1;->$prev:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 4302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 4306
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    iget-object v1, p0, Lcom/chimeranft/core/Main$Companion$installCrashHandler$ours$1;->$crashFile:Ljava/io/File;

    # invokes: Lcom/chimeranft/core/Main$Companion;->renderCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->access$renderCrash(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/chimeranft/core/Main$Companion;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/chimeranft/core/Main$Companion;->access$writeTextFile(Lcom/chimeranft/core/Main$Companion;Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    nop

    .line 4310
    :goto_d
    iget-object v0, p0, Lcom/chimeranft/core/Main$Companion$installCrashHandler$ours$1;->$prev:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_17

    .line 4313
    :try_start_11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_17

    :catchall_17
    :cond_17
    return-void
.end method
