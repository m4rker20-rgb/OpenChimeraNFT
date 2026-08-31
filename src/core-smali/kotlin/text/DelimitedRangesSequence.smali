.class final Lkotlin/text/DelimitedRangesSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field private final getNextMatch:Lkotlin/jvm/functions/Function2;

.field private final input:Ljava/lang/CharSequence;

.field private final limit:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V
    .registers 6

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    .line 1185
    iput p2, p0, Lkotlin/text/DelimitedRangesSequence;->startIndex:I

    .line 1186
    iput p3, p0, Lkotlin/text/DelimitedRangesSequence;->limit:I

    .line 1187
    iput-object p4, p0, Lkotlin/text/DelimitedRangesSequence;->getNextMatch:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getGetNextMatch$p(Lkotlin/text/DelimitedRangesSequence;)Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 1183
    iget-object p0, p0, Lkotlin/text/DelimitedRangesSequence;->getNextMatch:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;
    .registers 1

    .line 1183
    iget-object p0, p0, Lkotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I
    .registers 1

    .line 1183
    iget p0, p0, Lkotlin/text/DelimitedRangesSequence;->limit:I

    return p0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/text/DelimitedRangesSequence;)I
    .registers 1

    .line 1183
    iget p0, p0, Lkotlin/text/DelimitedRangesSequence;->startIndex:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    .line 1190
    new-instance v0, Lkotlin/text/DelimitedRangesSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lkotlin/text/DelimitedRangesSequence;)V

    return-object v0
.end method
