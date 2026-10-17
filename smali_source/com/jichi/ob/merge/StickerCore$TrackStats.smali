.class public final Lcom/jichi/ob/merge/StickerCore$TrackStats;
.super Ljava/lang/Object;
.source "StickerCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/StickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackStats"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u001f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\nH\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\t\u0010%\u001a\u00020\nH\u00c6\u0003J\t\u0010&\u001a\u00020\nH\u00c6\u0003J\t\u0010\'\u001a\u00020\nH\u00c6\u0003Jm\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\nH\u00c6\u0001J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010,\u001a\u00020\nH\u00d6\u0001J\t\u0010-\u001a\u00020.H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019R\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0011\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\u00a8\u0006/"
    }
    d2 = {
        "Lcom/jichi/ob/merge/StickerCore$TrackStats;",
        "",
        "distKm",
        "",
        "durationSec",
        "",
        "avgSpeedKmh",
        "maxSpeedKmh",
        "ascentM",
        "avgHr",
        "",
        "maxHr",
        "avgCad",
        "avgPower",
        "caloriesKcal",
        "<init>",
        "(DJDDDIIIII)V",
        "getDistKm",
        "()D",
        "getDurationSec",
        "()J",
        "getAvgSpeedKmh",
        "getMaxSpeedKmh",
        "getAscentM",
        "getAvgHr",
        "()I",
        "getMaxHr",
        "getAvgCad",
        "getAvgPower",
        "getCaloriesKcal",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
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

.field private final avgCad:I

.field private final avgHr:I

.field private final avgPower:I

.field private final avgSpeedKmh:D

.field private final caloriesKcal:I

.field private final distKm:D

.field private final durationSec:J

.field private final maxHr:I

.field private final maxSpeedKmh:D


# direct methods
.method public constructor <init>(DJDDDIIIII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->distKm:D

    .line 27
    iput-wide p3, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->durationSec:J

    .line 28
    iput-wide p5, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgSpeedKmh:D

    .line 29
    iput-wide p7, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxSpeedKmh:D

    .line 30
    iput-wide p9, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->ascentM:D

    .line 31
    iput p11, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgHr:I

    .line 32
    iput p12, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxHr:I

    .line 33
    iput p13, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgCad:I

    .line 34
    iput p14, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgPower:I

    .line 35
    iput p15, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->caloriesKcal:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/merge/StickerCore$TrackStats;DJDDDIIIIIILjava/lang/Object;)Lcom/jichi/ob/merge/StickerCore$TrackStats;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->distKm:D

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->durationSec:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgSpeedKmh:D

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxSpeedKmh:D

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->ascentM:D

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget v12, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgHr:I

    goto :goto_5

    :cond_5
    move/from16 v12, p11

    :goto_5
    and-int/lit8 v13, v1, 0x40

    if-eqz v13, :cond_6

    iget v13, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxHr:I

    goto :goto_6

    :cond_6
    move/from16 v13, p12

    :goto_6
    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_7

    iget v14, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgCad:I

    goto :goto_7

    :cond_7
    move/from16 v14, p13

    :goto_7
    and-int/lit16 v15, v1, 0x100

    if-eqz v15, :cond_8

    iget v15, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgPower:I

    goto :goto_8

    :cond_8
    move/from16 v15, p14

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->caloriesKcal:I

    move/from16 p16, v1

    goto :goto_9

    :cond_9
    move/from16 p16, p15

    :goto_9
    move-object/from16 p1, v0

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    invoke-virtual/range {p1 .. p16}, Lcom/jichi/ob/merge/StickerCore$TrackStats;->copy(DJDDDIIIII)Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->distKm:D

    return-wide v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->caloriesKcal:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->durationSec:J

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgSpeedKmh:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxSpeedKmh:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->ascentM:D

    return-wide v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgHr:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxHr:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgCad:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgPower:I

    return v0
.end method

.method public final copy(DJDDDIIIII)Lcom/jichi/ob/merge/StickerCore$TrackStats;
    .locals 16

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/jichi/ob/merge/StickerCore$TrackStats;-><init>(DJDDDIIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;

    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->distKm:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->distKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->durationSec:J

    iget-wide v5, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->durationSec:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgSpeedKmh:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxSpeedKmh:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->ascentM:D

    iget-wide v5, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->ascentM:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgHr:I

    iget v3, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgHr:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxHr:I

    iget v3, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxHr:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgCad:I

    iget v3, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgCad:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgPower:I

    iget v3, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgPower:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->caloriesKcal:I

    iget p1, p1, Lcom/jichi/ob/merge/StickerCore$TrackStats;->caloriesKcal:I

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAscentM()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->ascentM:D

    return-wide v0
.end method

.method public final getAvgCad()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgCad:I

    return v0
.end method

.method public final getAvgHr()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgHr:I

    return v0
.end method

.method public final getAvgPower()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgPower:I

    return v0
.end method

.method public final getAvgSpeedKmh()D
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgSpeedKmh:D

    return-wide v0
.end method

.method public final getCaloriesKcal()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->caloriesKcal:I

    return v0
.end method

.method public final getDistKm()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->distKm:D

    return-wide v0
.end method

.method public final getDurationSec()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->durationSec:J

    return-wide v0
.end method

.method public final getMaxHr()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxHr:I

    return v0
.end method

.method public final getMaxSpeedKmh()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxSpeedKmh:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->distKm:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->durationSec:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgSpeedKmh:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxSpeedKmh:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->ascentM:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgHr:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxHr:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgCad:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgPower:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->caloriesKcal:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->distKm:D

    iget-wide v3, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->durationSec:J

    iget-wide v5, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgSpeedKmh:D

    iget-wide v7, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxSpeedKmh:D

    iget-wide v9, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->ascentM:D

    iget v11, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgHr:I

    iget v12, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->maxHr:I

    iget v13, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgCad:I

    iget v14, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->avgPower:I

    iget v15, v0, Lcom/jichi/ob/merge/StickerCore$TrackStats;->caloriesKcal:I

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v16, v15

    const-string v15, "TrackStats(distKm="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgSpeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSpeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ascentM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgCad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caloriesKcal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
