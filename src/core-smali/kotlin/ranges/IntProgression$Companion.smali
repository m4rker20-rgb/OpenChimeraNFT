.class public final Lkotlin/ranges/IntProgression$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/ranges/IntProgression$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromClosedRange(III)Lkotlin/ranges/IntProgression;
    .registers 5

    .line 133
    new-instance v0, Lkotlin/ranges/IntProgression;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    return-object v0
.end method
