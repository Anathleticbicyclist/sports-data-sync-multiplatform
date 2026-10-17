.class public final Lcom/jichi/ob/merge/FitParser$FitResult;
.super Ljava/lang/Object;
.source "FitParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/FitParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FitResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003JA\u0010\u001a\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0008H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/jichi/ob/merge/FitParser$FitResult;",
        "",
        "points",
        "",
        "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
        "sport",
        "",
        "title",
        "",
        "ascentM",
        "descentM",
        "<init>",
        "(Ljava/util/List;ILjava/lang/String;II)V",
        "getPoints",
        "()Ljava/util/List;",
        "getSport",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
        "getAscentM",
        "getDescentM",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_devRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ascentM:I

.field private final descentM:I

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final sport:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->points:Ljava/util/List;

    .line 30
    iput p2, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->sport:I

    .line 31
    iput-object p3, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->title:Ljava/lang/String;

    .line 32
    iput p4, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->ascentM:I

    .line 33
    iput p5, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->descentM:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move p6, v0

    goto :goto_0

    :cond_1
    move p6, p5

    :goto_0
    move p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 28
    invoke-direct/range {p1 .. p6}, Lcom/jichi/ob/merge/FitParser$FitResult;-><init>(Ljava/util/List;ILjava/lang/String;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/merge/FitParser$FitResult;Ljava/util/List;ILjava/lang/String;IIILjava/lang/Object;)Lcom/jichi/ob/merge/FitParser$FitResult;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->points:Ljava/util/List;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->sport:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->ascentM:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->descentM:I

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/jichi/ob/merge/FitParser$FitResult;->copy(Ljava/util/List;ILjava/lang/String;II)Lcom/jichi/ob/merge/FitParser$FitResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->points:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->sport:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->ascentM:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->descentM:I

    return v0
.end method

.method public final copy(Ljava/util/List;ILjava/lang/String;II)Lcom/jichi/ob/merge/FitParser$FitResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;I",
            "Ljava/lang/String;",
            "II)",
            "Lcom/jichi/ob/merge/FitParser$FitResult;"
        }
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/merge/FitParser$FitResult;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/merge/FitParser$FitResult;-><init>(Ljava/util/List;ILjava/lang/String;II)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/merge/FitParser$FitResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/merge/FitParser$FitResult;

    iget-object v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->points:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/merge/FitParser$FitResult;->points:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->sport:I

    iget v3, p1, Lcom/jichi/ob/merge/FitParser$FitResult;->sport:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/merge/FitParser$FitResult;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->ascentM:I

    iget v3, p1, Lcom/jichi/ob/merge/FitParser$FitResult;->ascentM:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->descentM:I

    iget p1, p1, Lcom/jichi/ob/merge/FitParser$FitResult;->descentM:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAscentM()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->ascentM:I

    return v0
.end method

.method public final getDescentM()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->descentM:I

    return v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->points:Ljava/util/List;

    return-object v0
.end method

.method public final getSport()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->sport:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->points:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->sport:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->ascentM:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->descentM:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->points:Ljava/util/List;

    iget v1, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->sport:I

    iget-object v2, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->title:Ljava/lang/String;

    iget v3, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->ascentM:I

    iget v4, p0, Lcom/jichi/ob/merge/FitParser$FitResult;->descentM:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FitResult(points="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", sport="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ascentM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descentM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
