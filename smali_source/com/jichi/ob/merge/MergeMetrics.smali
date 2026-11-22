.class public final Lcom/jichi/ob/merge/MergeMetrics;
.super Ljava/lang/Object;
.source "MergeMetrics.java"


# instance fields
.field private final calories:I

.field private final dayLapCount:I

.field private final dayStartTimes:[J

.field private final endSec:J

.field private final maxSpeedMps:D

.field private final segDistM:[D

.field private final segStartSec:[J

.field private final segTimerSec:[J

.field private final speedByTs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final totalDistanceM:D

.field private final totalElapsedSec:J

.field private final totalTimerSec:J


# direct methods
.method public constructor <init>(JJIDDJI[JLjava/util/HashMap;[J[D[J)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIDDJI[J",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;[J[D[J)V"
        }
    .end annotation

    move-object v0, p0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 38
    iput-wide v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->totalElapsedSec:J

    move-wide v1, p3

    .line 39
    iput-wide v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->totalTimerSec:J

    move v1, p5

    .line 40
    iput v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->calories:I

    move-wide v1, p6

    .line 41
    iput-wide v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->maxSpeedMps:D

    move-wide v1, p8

    .line 42
    iput-wide v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->totalDistanceM:D

    move-wide v1, p10

    .line 43
    iput-wide v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->endSec:J

    move v1, p12

    .line 44
    iput v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->dayLapCount:I

    move-object/from16 v1, p13

    .line 45
    iput-object v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->dayStartTimes:[J

    move-object/from16 v1, p14

    .line 46
    iput-object v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->speedByTs:Ljava/util/HashMap;

    move-object/from16 v1, p15

    .line 47
    iput-object v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->segStartSec:[J

    move-object/from16 v1, p16

    .line 48
    iput-object v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->segDistM:[D

    move-object/from16 v1, p17

    .line 49
    iput-object v1, v0, Lcom/jichi/ob/merge/MergeMetrics;->segTimerSec:[J

    return-void
.end method


# virtual methods
.method public getCalories()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->calories:I

    return v0
.end method

.method public getDayLapCount()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->dayLapCount:I

    return v0
.end method

.method public getDayStartTimes()[J
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->dayStartTimes:[J

    return-object v0
.end method

.method public getEndSec()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->endSec:J

    return-wide v0
.end method

.method public getMaxSpeedMps()D
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->maxSpeedMps:D

    return-wide v0
.end method

.method public getSegDistM()[D
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->segDistM:[D

    return-object v0
.end method

.method public getSegStartSec()[J
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->segStartSec:[J

    return-object v0
.end method

.method public getSegTimerSec()[J
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->segTimerSec:[J

    return-object v0
.end method

.method public getSpeedByTs()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->speedByTs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTotalDistanceM()D
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->totalDistanceM:D

    return-wide v0
.end method

.method public getTotalElapsedSec()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->totalElapsedSec:J

    return-wide v0
.end method

.method public getTotalTimerSec()J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->totalTimerSec:J

    return-wide v0
.end method

.method public offsetBefore(I)D
    .registers 8

    .line 102
    iget-object v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->segDistM:[D

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_17

    if-gtz p1, :cond_9

    goto :goto_17

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_17

    .line 106
    iget-object v3, p0, Lcom/jichi/ob/merge/MergeMetrics;->segDistM:[D

    array-length v4, v3

    if-ge v0, v4, :cond_17

    .line 107
    aget-wide v4, v3, v0

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    :goto_17
    return-wide v1
.end method

.method public segIndexOf(J)I
    .registers 11

    .line 114
    iget-object v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->segStartSec:[J

    const/4 v1, -0x1

    if-eqz v0, :cond_25

    array-length v0, v0

    if-nez v0, :cond_9

    goto :goto_25

    :cond_9
    const/4 v0, 0x0

    move v2, v0

    .line 118
    :goto_b
    iget-object v3, p0, Lcom/jichi/ob/merge/MergeMetrics;->segStartSec:[J

    array-length v4, v3

    if-ge v2, v4, :cond_20

    .line 119
    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1d

    cmp-long v3, v4, p1

    if-gtz v3, :cond_1d

    move v1, v2

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_20
    if-gez v1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public speedAt(J)Ljava/lang/Float;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/jichi/ob/merge/MergeMetrics;->speedByTs:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 135
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method
