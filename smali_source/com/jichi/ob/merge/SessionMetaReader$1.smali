.class Lcom/jichi/ob/merge/SessionMetaReader$1;
.super Ljava/lang/Object;
.source "SessionMetaReader.java"

# interfaces
.implements Lcom/garmin/fit/MesgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/merge/SessionMetaReader;->summarize(Ljava/util/List;)Lcom/jichi/ob/merge/MergeMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$calories:[I

.field final synthetic val$curSeg:[I

.field final synthetic val$distance:[D

.field final synthetic val$endFitSec:[J

.field final synthetic val$maxSpeed:[D

.field final synthetic val$recCount:[I

.field final synthetic val$segDist:[D

.field final synthetic val$segStart:[J

.field final synthetic val$segTimer:[J

.field final synthetic val$sesCount:[I

.field final synthetic val$spdCount:[I

.field final synthetic val$speedMap:Ljava/util/HashMap;

.field final synthetic val$timer:[D


# direct methods
.method constructor <init>([I[D[J[I[I[D[D[D[J[J[ILjava/util/HashMap;[I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$sesCount:[I

    iput-object p2, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$timer:[D

    iput-object p3, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$segTimer:[J

    iput-object p4, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$curSeg:[I

    iput-object p5, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$calories:[I

    iput-object p6, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$distance:[D

    iput-object p7, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$segDist:[D

    iput-object p8, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$maxSpeed:[D

    iput-object p9, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$segStart:[J

    iput-object p10, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$endFitSec:[J

    iput-object p11, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$recCount:[I

    iput-object p12, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$speedMap:Ljava/util/HashMap;

    iput-object p13, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$spdCount:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMesg(Lcom/garmin/fit/Mesg;)V
    .registers 11

    .line 56
    invoke-virtual {p1}, Lcom/garmin/fit/Mesg;->getNum()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e6

    .line 58
    iget-object v0, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$sesCount:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 59
    new-instance v0, Lcom/garmin/fit/SessionMesg;

    invoke-direct {v0, p1}, Lcom/garmin/fit/SessionMesg;-><init>(Lcom/garmin/fit/Mesg;)V

    .line 60
    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getTotalTimerTime()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 61
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_43

    .line 62
    iget-object v1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$timer:[D

    aget-wide v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 63
    iget-object v1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$segTimer:[J

    iget-object v4, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$curSeg:[I

    aget v4, v4, v3

    aget-wide v5, v1, v4

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    add-long/2addr v5, v7

    aput-wide v5, v1, v4

    .line 65
    :cond_43
    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getTotalCalories()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_5a

    .line 67
    iget-object v1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$calories:[I

    aget v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v4, p1

    aput v4, v1, v3

    .line 69
    :cond_5a
    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getTotalDistance()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 70
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_82

    .line 71
    iget-object v1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$distance:[D

    aget-wide v4, v1, v3

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 72
    iget-object v1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$segDist:[D

    iget-object v2, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$curSeg:[I

    aget v2, v2, v3

    aget-wide v4, v1, v2

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    aput-wide v4, v1, v2

    .line 74
    :cond_82
    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getMaxSpeed()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_9b

    .line 75
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    iget-object v4, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$maxSpeed:[D

    aget-wide v5, v4, v3

    cmpl-double v1, v1, v5

    if-lez v1, :cond_9b

    .line 76
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v1

    aput-wide v1, v4, v3

    .line 78
    :cond_9b
    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getStartTime()Lcom/garmin/fit/DateTime;

    move-result-object p1

    if-eqz p1, :cond_bf

    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getStartTime()Lcom/garmin/fit/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 79
    iget-object p1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$segStart:[J

    iget-object v1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$curSeg:[I

    aget v1, v1, v3

    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getStartTime()Lcom/garmin/fit/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, p1, v1

    .line 81
    :cond_bf
    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getTimestamp()Lcom/garmin/fit/DateTime;

    move-result-object p1

    if-eqz p1, :cond_13b

    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getTimestamp()Lcom/garmin/fit/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_13b

    .line 82
    invoke-virtual {v0}, Lcom/garmin/fit/SessionMesg;->getTimestamp()Lcom/garmin/fit/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 83
    iget-object p1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$endFitSec:[J

    aget-wide v4, p1, v3

    cmp-long v2, v0, v4

    if-lez v2, :cond_13b

    .line 84
    aput-wide v0, p1, v3

    goto :goto_13b

    :cond_e6
    const/16 v1, 0x14

    if-ne v0, v1, :cond_13b

    .line 88
    iget-object v0, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$recCount:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 89
    new-instance v0, Lcom/garmin/fit/RecordMesg;

    invoke-direct {v0, p1}, Lcom/garmin/fit/RecordMesg;-><init>(Lcom/garmin/fit/Mesg;)V

    .line 90
    invoke-virtual {v0}, Lcom/garmin/fit/RecordMesg;->getTimestamp()Lcom/garmin/fit/DateTime;

    move-result-object p1

    if-eqz p1, :cond_13b

    invoke-virtual {v0}, Lcom/garmin/fit/RecordMesg;->getTimestamp()Lcom/garmin/fit/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_108

    goto :goto_13b

    .line 93
    :cond_108
    invoke-virtual {v0}, Lcom/garmin/fit/RecordMesg;->getEnhancedSpeed()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_116

    .line 94
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_11a

    .line 95
    :cond_116
    invoke-virtual {v0}, Lcom/garmin/fit/RecordMesg;->getSpeed()Ljava/lang/Float;

    move-result-object p1

    :cond_11a
    if-eqz p1, :cond_13b

    .line 97
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_125

    goto :goto_13b

    .line 100
    :cond_125
    iget-object v1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$speedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/garmin/fit/RecordMesg;->getTimestamp()Lcom/garmin/fit/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garmin/fit/DateTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Lcom/jichi/ob/merge/SessionMetaReader$1;->val$spdCount:[I

    aget v0, p1, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v3

    nop

    :cond_13b
    :goto_13b
    return-void
.end method
