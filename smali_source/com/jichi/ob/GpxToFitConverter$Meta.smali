.class public final Lcom/jichi/ob/GpxToFitConverter$Meta;
.super Ljava/lang/Object;
.source "GpxToFitConverter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/GpxToFitConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Meta"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00c6\u0003JE\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010!\u001a\u00020\u00172\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0007H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lcom/jichi/ob/GpxToFitConverter$Meta;",
        "",
        "dist",
        "",
        "dur",
        "",
        "cal",
        "",
        "avgHr",
        "maxHr",
        "avgCadence",
        "<init>",
        "(DJIIII)V",
        "getDist",
        "()D",
        "getDur",
        "()J",
        "getCal",
        "()I",
        "getAvgHr",
        "getMaxHr",
        "getAvgCadence",
        "valid",
        "",
        "getValid",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final avgCadence:I

.field private final avgHr:I

.field private final cal:I

.field private final dist:D

.field private final dur:J

.field private final maxHr:I


# direct methods
.method public constructor <init>()V
    .locals 11

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/jichi/ob/GpxToFitConverter$Meta;-><init>(DJIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DJIIII)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    iput-wide p3, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    iput p5, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->cal:I

    iput p6, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgHr:I

    iput p7, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->maxHr:I

    iput p8, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgCadence:I

    return-void
.end method

.method public synthetic constructor <init>(DJIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p9, 0x2

    if-eqz p1, :cond_1

    const-wide/16 p3, 0x0

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p9, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    move v5, p2

    goto :goto_0

    :cond_2
    move v5, p5

    :goto_0
    and-int/lit8 p1, p9, 0x8

    if-eqz p1, :cond_3

    move v6, p2

    goto :goto_1

    :cond_3
    move v6, p6

    :goto_1
    and-int/lit8 p1, p9, 0x10

    if-eqz p1, :cond_4

    move v7, p2

    goto :goto_2

    :cond_4
    move/from16 v7, p7

    :goto_2
    and-int/lit8 p1, p9, 0x20

    if-eqz p1, :cond_5

    move v8, p2

    goto :goto_3

    :cond_5
    move/from16 v8, p8

    :goto_3
    move-object v0, p0

    .line 49
    invoke-direct/range {v0 .. v8}, Lcom/jichi/ob/GpxToFitConverter$Meta;-><init>(DJIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/GpxToFitConverter$Meta;DJIIIIILjava/lang/Object;)Lcom/jichi/ob/GpxToFitConverter$Meta;
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p9, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p9, 0x4

    if-eqz p1, :cond_2

    iget p5, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->cal:I

    :cond_2
    move v5, p5

    and-int/lit8 p1, p9, 0x8

    if-eqz p1, :cond_3

    iget p6, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgHr:I

    :cond_3
    move v6, p6

    and-int/lit8 p1, p9, 0x10

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->maxHr:I

    move v7, p1

    goto :goto_0

    :cond_4
    move/from16 v7, p7

    :goto_0
    and-int/lit8 p1, p9, 0x20

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgCadence:I

    move v8, p1

    goto :goto_1

    :cond_5
    move/from16 v8, p8

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/jichi/ob/GpxToFitConverter$Meta;->copy(DJIIII)Lcom/jichi/ob/GpxToFitConverter$Meta;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->cal:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgHr:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->maxHr:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgCadence:I

    return v0
.end method

.method public final copy(DJIIII)Lcom/jichi/ob/GpxToFitConverter$Meta;
    .locals 9

    new-instance v0, Lcom/jichi/ob/GpxToFitConverter$Meta;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/jichi/ob/GpxToFitConverter$Meta;-><init>(DJIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/GpxToFitConverter$Meta;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/GpxToFitConverter$Meta;

    iget-wide v3, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    iget-wide v5, p1, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    iget-wide v5, p1, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->cal:I

    iget v3, p1, Lcom/jichi/ob/GpxToFitConverter$Meta;->cal:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgHr:I

    iget v3, p1, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgHr:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->maxHr:I

    iget v3, p1, Lcom/jichi/ob/GpxToFitConverter$Meta;->maxHr:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgCadence:I

    iget p1, p1, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgCadence:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAvgCadence()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgCadence:I

    return v0
.end method

.method public final getAvgHr()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgHr:I

    return v0
.end method

.method public final getCal()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->cal:I

    return v0
.end method

.method public final getDist()D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    return-wide v0
.end method

.method public final getDur()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    return-wide v0
.end method

.method public final getMaxHr()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->maxHr:I

    return v0
.end method

.method public final getValid()Z
    .locals 4

    .line 50
    iget-wide v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->cal:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgHr:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->maxHr:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgCadence:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dist:D

    iget-wide v2, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->dur:J

    iget v4, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->cal:I

    iget v5, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgHr:I

    iget v6, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->maxHr:I

    iget v7, p0, Lcom/jichi/ob/GpxToFitConverter$Meta;->avgCadence:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Meta(dist="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgCadence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
