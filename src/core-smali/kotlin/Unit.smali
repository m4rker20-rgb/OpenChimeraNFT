.class public final Lkotlin/Unit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/Unit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/Unit;

    invoke-direct {v0}, Lkotlin/Unit;-><init>()V

    sput-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 12
    const-string v0, "kotlin.Unit"

    return-object v0
.end method
