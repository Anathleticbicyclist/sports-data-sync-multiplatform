.class public final Lcom/jichi/ob/merge/StickerCore$SummaryItem;
.super Ljava/lang/Object;
.source "StickerCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/StickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SummaryItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/jichi/ob/merge/StickerCore$SummaryItem;",
        "",
        "count",
        "",
        "km",
        "",
        "sec",
        "",
        "ascentM",
        "<init>",
        "(IDJD)V",
        "getCount",
        "()I",
        "getKm",
        "()D",
        "getSec",
        "()J",
        "getAscentM",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
.field private final ascentM:D

.field private final count:I

.field private final km:D

.field private final sec:J


# direct methods
.method public constructor <init>(IDJD)V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->count:I

    iput-wide p2, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->km:D

    iput-wide p4, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->sec:J

    iput-wide p6, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->ascentM:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/merge/StickerCore$SummaryItem;IDJDILjava/lang/Object;)Lcom/jichi/ob/merge/StickerCore$SummaryItem;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->count:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-wide p2, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->km:D

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-wide p4, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->sec:J

    :cond_2
    and-int/lit8 p8, p8, 0x8

    if-eqz p8, :cond_3

    iget-wide p6, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->ascentM:D

    :cond_3
    move-wide p8, p6

    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->copy(IDJD)Lcom/jichi/ob/merge/StickerCore$SummaryItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->count:I

    return v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->km:D

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->sec:J

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->ascentM:D

    return-wide v0
.end method

.method public final copy(IDJD)Lcom/jichi/ob/merge/StickerCore$SummaryItem;
    .locals 8

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/merge/StickerCore$SummaryItem;-><init>(IDJD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/merge/StickerCore$SummaryItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/merge/StickerCore$SummaryItem;

    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->count:I

    iget v3, p1, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->count:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->km:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->km:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->sec:J

    iget-wide v5, p1, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->sec:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->ascentM:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->ascentM:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAscentM()D
    .locals 2

    .line 459
    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->ascentM:D

    return-wide v0
.end method

.method public final getCount()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->count:I

    return v0
.end method

.method public final getKm()D
    .locals 2

    .line 459
    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->km:D

    return-wide v0
.end method

.method public final getSec()J
    .locals 2

    .line 459
    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->sec:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->km:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->sec:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->ascentM:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->count:I

    iget-wide v1, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->km:D

    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->sec:J

    iget-wide v5, p0, Lcom/jichi/ob/merge/StickerCore$SummaryItem;->ascentM:D

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SummaryItem(count="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", km="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ascentM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
