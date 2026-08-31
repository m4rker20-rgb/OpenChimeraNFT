.class public final Lcom/chimeranft/core/BlackBox;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IDLE:Ljava/lang/String;

.field public static final INSTANCE:Lcom/chimeranft/core/BlackBox;

.field private static final LABEL_AT:I

.field private static final LABEL_MAX:I

.field private static final MAGIC:[B

.field private static final SIZE:I

.field private static volatile current:Ljava/lang/String;

.field private static volatile mapped:Z

.field private static volatile marks:J

.field private static volatile page:Ljava/nio/MappedByteBuffer;

.field private static volatile previous:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/chimeranft/core/BlackBox;

    invoke-direct {v0}, Lcom/chimeranft/core/BlackBox;-><init>()V

    sput-object v0, Lcom/chimeranft/core/BlackBox;->INSTANCE:Lcom/chimeranft/core/BlackBox;

    const/16 v0, 0x200

    .line 28
    sput v0, Lcom/chimeranft/core/BlackBox;->SIZE:I

    const/16 v1, 0x8

    .line 29
    sput v1, Lcom/chimeranft/core/BlackBox;->LABEL_AT:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 30
    sput v0, Lcom/chimeranft/core/BlackBox;->LABEL_MAX:I

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/chimeranft/core/BlackBox;->MAGIC:[B

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/chimeranft/core/BlackBox;->current:Ljava/lang/String;

    .line 36
    sput-object v0, Lcom/chimeranft/core/BlackBox;->previous:Ljava/lang/String;

    .line 40
    const-string v0, "idle"

    sput-object v0, Lcom/chimeranft/core/BlackBox;->IDLE:Ljava/lang/String;

    return-void

    nop

    :array_28
    .array-data 1
        0x43t
        0x42t
        0x42t
        0x31t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized bind(Ljava/lang/String;)V
    .registers 13

    const-class v1, Lcom/chimeranft/core/BlackBox;

    monitor-enter v1

    if-nez p0, :cond_7

    .line 51
    monitor-exit v1

    return-void

    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 52
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_6b

    if-nez v0, :cond_11

    monitor-exit v1

    return-void

    .line 53
    :cond_11
    :try_start_11
    new-instance v0, Ljava/io/File;

    const-string v4, "chimeranft_phase.bin"

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object p0, Lcom/chimeranft/core/BlackBox;->INSTANCE:Lcom/chimeranft/core/BlackBox;

    invoke-direct {p0, v0}, Lcom/chimeranft/core/BlackBox;->readPrevious(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/chimeranft/core/BlackBox;->previous:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_6b

    .line 58
    :try_start_20
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {p0, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_63

    .line 59
    :try_start_27
    sget v0, Lcom/chimeranft/core/BlackBox;->SIZE:I

    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 60
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    int-to-long v10, v0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/chimeranft/core/BlackBox;->page:Ljava/nio/MappedByteBuffer;

    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/chimeranft/core/BlackBox;->mapped:Z

    .line 62
    sget-object v0, Lcom/chimeranft/core/BlackBox;->page:Ljava/nio/MappedByteBuffer;
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_58

    if-nez v0, :cond_48

    .line 73
    :try_start_43
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_46

    .line 62
    :catchall_46
    monitor-exit v1

    return-void

    .line 63
    :cond_48
    :try_start_48
    sget-object v4, Lcom/chimeranft/core/BlackBox;->MAGIC:[B

    array-length v4, v4

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v4, :cond_5a

    sget-object v6, Lcom/chimeranft/core/BlackBox;->MAGIC:[B

    aget-byte v6, v6, v5

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :catchall_58
    move-exception v0

    goto :goto_65

    .line 64
    :cond_5a
    const-string v0, "init"

    invoke-static {v0}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_58

    .line 73
    :try_start_5f
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_76

    goto :goto_76

    :catchall_63
    move-exception v0

    move-object p0, v3

    :goto_65
    if-eqz p0, :cond_6a

    :try_start_67
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6a

    .line 75
    :catchall_6a
    :cond_6a
    :try_start_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v0

    move-object p0, v0

    .line 80
    :try_start_6d
    sput-boolean v2, Lcom/chimeranft/core/BlackBox;->mapped:Z

    .line 81
    sput-object v3, Lcom/chimeranft/core/BlackBox;->page:Ljava/nio/MappedByteBuffer;

    .line 82
    const-string v0, "blackbox.bind"

    invoke-static {v0, p0}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_78

    .line 85
    :catchall_76
    :goto_76
    monitor-exit v1

    return-void

    :catchall_78
    move-exception v0

    move-object p0, v0

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_78

    throw p0
.end method

.method public static final clean()V
    .registers 1

    .line 171
    const-string v0, "clean"

    invoke-static {v0}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    return-void
.end method

.method public static final describe()Ljava/lang/String;
    .registers 7

    .line 205
    invoke-static {}, Lcom/chimeranft/core/BlackBox;->previous()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_9

    move-object v0, v1

    .line 206
    :cond_9
    sget-object v2, Lcom/chimeranft/core/BlackBox;->current:Ljava/lang/String;

    sget-wide v3, Lcom/chimeranft/core/BlackBox;->marks:J

    sget-boolean v5, Lcom/chimeranft/core/BlackBox;->mapped:Z

    if-eqz v5, :cond_14

    const-string v5, " mmap"

    goto :goto_16

    :cond_14
    const-string v5, " NO-MMAP"

    .line 207
    :goto_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1d

    goto :goto_2e

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " prevDeath="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phase["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " marks="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final hasPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    .line 196
    :goto_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method public static final idle()V
    .registers 1

    .line 165
    sget-object v0, Lcom/chimeranft/core/BlackBox;->IDLE:Ljava/lang/String;

    invoke-static {v0}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    return-void
.end method

.method public static final mark(Ljava/lang/String;)V
    .registers 9

    if-nez p0, :cond_4

    .line 126
    const-string p0, "?"

    .line 127
    :cond_4
    sput-object p0, Lcom/chimeranft/core/BlackBox;->current:Ljava/lang/String;

    .line 128
    sget-wide v0, Lcom/chimeranft/core/BlackBox;->marks:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/chimeranft/core/BlackBox;->marks:J

    .line 129
    sget-object v0, Lcom/chimeranft/core/BlackBox;->page:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_12

    return-void

    .line 132
    :cond_12
    :try_start_12
    const-class v1, Lcom/chimeranft/core/BlackBox;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_63

    .line 133
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 134
    sget v3, Lcom/chimeranft/core/BlackBox;->LABEL_MAX:I

    if-le v2, v3, :cond_1e

    move v2, v3

    :cond_1e
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v2, :cond_3c

    .line 137
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 138
    sget v6, Lcom/chimeranft/core/BlackBox;->LABEL_AT:I

    add-int/2addr v6, v4

    const/16 v7, 0x20

    if-lt v5, v7, :cond_31

    const/16 v7, 0x7e

    if-le v5, v7, :cond_33

    :cond_31
    const/16 v5, 0x2e

    :cond_33
    int-to-byte v5, v5

    invoke-virtual {v0, v6, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :catchall_3a
    move-exception p0

    goto :goto_61

    .line 140
    :cond_3c
    sget p0, Lcom/chimeranft/core/BlackBox;->LABEL_AT:I

    add-int/2addr p0, v2

    invoke-virtual {v0, p0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 141
    sget-wide v2, Lcom/chimeranft/core/BlackBox;->marks:J

    long-to-int p0, v2

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x4

    .line 142
    invoke-virtual {v0, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x5

    .line 143
    invoke-virtual {v0, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x6

    .line 144
    invoke-virtual {v0, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v2, 0x7

    int-to-byte p0, p0

    .line 145
    invoke-virtual {v0, v2, p0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_5f
    .catchall {:try_start_15 .. :try_end_5f} :catchall_3a

    .line 132
    :try_start_5f
    monitor-exit v1

    return-void

    :goto_61
    monitor-exit v1

    throw p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    const/4 v0, 0x0

    .line 149
    sput-object v0, Lcom/chimeranft/core/BlackBox;->page:Ljava/nio/MappedByteBuffer;

    .line 150
    const-string v0, "blackbox.mark"

    invoke-static {v0, p0}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final phase()Ljava/lang/String;
    .registers 1

    .line 177
    sget-object v0, Lcom/chimeranft/core/BlackBox;->current:Ljava/lang/String;

    return-object v0
.end method

.method public static final previous()Ljava/lang/String;
    .registers 5

    .line 186
    sget-object v0, Lcom/chimeranft/core/BlackBox;->previous:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 187
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    return-object v1

    .line 188
    :cond_e
    sget-object v2, Lcom/chimeranft/core/BlackBox;->INSTANCE:Lcom/chimeranft/core/BlackBox;

    sget-object v3, Lcom/chimeranft/core/BlackBox;->IDLE:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/chimeranft/core/BlackBox;->hasPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 189
    const-string v4, "clean"

    invoke-direct {v2, v0, v4}, Lcom/chimeranft/core/BlackBox;->hasPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v3, :cond_22

    if-eqz v2, :cond_21

    goto :goto_22

    :cond_21
    return-object v0

    :cond_22
    :goto_22
    return-object v1
.end method

.method private final readPrevious(Ljava/io/File;)Ljava/lang/String;
    .registers 10

    .line 88
    const-string v0, ""

    const/4 v1, 0x0

    .line 91
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    sget v4, Lcom/chimeranft/core/BlackBox;->LABEL_AT:I

    add-int/lit8 v5, v4, 0x1

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_18

    goto/16 :goto_97

    .line 92
    :cond_18
    sget v2, Lcom/chimeranft/core/BlackBox;->SIZE:I

    new-array v2, v2, [B

    .line 93
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_95

    .line 94
    :try_start_21
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_42

    add-int/lit8 v4, v4, 0x1

    if-ge p1, v4, :cond_2d

    .line 111
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2c

    :catchall_2c
    return-object v0

    .line 96
    :cond_2d
    :try_start_2d
    sget-object v1, Lcom/chimeranft/core/BlackBox;->MAGIC:[B

    array-length v1, v1

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v1, :cond_45

    aget-byte v5, v2, v4

    sget-object v6, Lcom/chimeranft/core/BlackBox;->MAGIC:[B

    aget-byte v6, v6, v4
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_42

    if-eq v5, v6, :cond_3f

    .line 111
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3e

    :catchall_3e
    return-object v0

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :catchall_42
    nop

    move-object v1, v3

    goto :goto_98

    .line 97
    :cond_45
    :try_start_45
    sget v1, Lcom/chimeranft/core/BlackBox;->LABEL_AT:I

    :goto_47
    if-ge v1, p1, :cond_50

    .line 98
    aget-byte v4, v2, v1

    if-eqz v4, :cond_50

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 99
    :cond_50
    sget p1, Lcom/chimeranft/core/BlackBox;->LABEL_AT:I
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_42

    if-gt v1, p1, :cond_58

    .line 111
    :try_start_54
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_57

    :catchall_57
    return-object v0

    :cond_58
    const/4 v4, 0x4

    .line 100
    :try_start_59
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x5

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x6

    .line 101
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 100
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v1, p1

    .line 102
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, p1, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_91
    .catchall {:try_start_59 .. :try_end_91} :catchall_42

    .line 111
    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_94

    :catchall_94
    return-object p1

    :catchall_95
    nop

    goto :goto_98

    :cond_97
    :goto_97
    return-object v0

    :goto_98
    if-eqz v1, :cond_9d

    :try_start_9a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9d

    :catchall_9d
    :cond_9d
    return-object v0
.end method
