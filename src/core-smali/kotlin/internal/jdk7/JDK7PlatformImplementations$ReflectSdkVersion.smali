.class final Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;

.field public static final sdkVersion:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;

    invoke-direct {v0}, Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;-><init>()V

    sput-object v0, Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;->INSTANCE:Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;

    const/4 v0, 0x0

    .line 16
    :try_start_8
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_20

    check-cast v1, Ljava/lang/Integer;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    nop

    :cond_20
    move-object v1, v0

    :goto_21
    if-eqz v1, :cond_2a

    .line 19
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_2a

    move-object v0, v1

    :cond_2a
    sput-object v0, Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
