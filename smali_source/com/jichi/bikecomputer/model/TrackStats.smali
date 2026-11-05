.class public Lcom/jichi/bikecomputer/model/TrackStats;
.super Ljava/lang/Object;
.source "TrackStats.java"


# instance fields
.field public ascentM:D

.field public descentM:D

.field public distanceM:D

.field public durationMs:J

.field public elapsedMs:J

.field public maxSpeedMs:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    .line 8
    iput-wide v0, p0, Lcom/jichi/bikecomputer/model/TrackStats;->ascentM:D

    .line 9
    iput-wide v0, p0, Lcom/jichi/bikecomputer/model/TrackStats;->descentM:D

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/jichi/bikecomputer/model/TrackStats;->durationMs:J

    .line 12
    iput-wide v0, p0, Lcom/jichi/bikecomputer/model/TrackStats;->elapsedMs:J

    return-void
.end method

.method public static fromPoints(Ljava/util/List;)Lcom/jichi/bikecomputer/model/TrackStats;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/bikecomputer/model/TrackPoint;",
            ">;)",
            "Lcom/jichi/bikecomputer/model/TrackStats;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/jichi/bikecomputer/model/TrackStats;

    invoke-direct {v0}, Lcom/jichi/bikecomputer/model/TrackStats;-><init>()V

    if-eqz p0, :cond_4

    .line 47
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 48
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/bikecomputer/model/TrackPoint;

    const/4 v3, 0x1

    move v4, v3

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 50
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/bikecomputer/model/TrackPoint;

    .line 51
    invoke-virtual {v0, v2, v5}, Lcom/jichi/bikecomputer/model/TrackStats;->update(Lcom/jichi/bikecomputer/model/TrackPoint;Lcom/jichi/bikecomputer/model/TrackPoint;)V

    add-int/lit8 v4, v4, 0x1

    move-object v2, v5

    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    .line 55
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v2, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v4, v1, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/jichi/bikecomputer/model/TrackStats;->durationMs:J

    .line 56
    iput-wide v2, v0, Lcom/jichi/bikecomputer/model/TrackStats;->elapsedMs:J

    .line 58
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/bikecomputer/model/TrackPoint;

    .line 59
    iget v2, v1, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    iget v3, v0, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v1, v1, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    iput v1, v0, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static haversineM(DDDD)D
    .locals 4

    sub-double v0, p4, p0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p6, p2

    .line 21
    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p6

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double/2addr p0, p4

    div-double/2addr p2, p6

    .line 24
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double/2addr p0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    add-double/2addr v2, p0

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    const-wide p2, 0x41684dae00000000L    # 1.2742E7

    mul-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public avgSpeedMs()D
    .locals 6

    .line 15
    iget-wide v0, p0, Lcom/jichi/bikecomputer/model/TrackStats;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    long-to-double v0, v0

    div-double/2addr v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method public update(Lcom/jichi/bikecomputer/model/TrackPoint;Lcom/jichi/bikecomputer/model/TrackPoint;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-wide v0, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    iget-wide v2, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    iget-wide v4, p2, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    iget-wide v6, p2, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    invoke-static/range {v0 .. v7}, Lcom/jichi/bikecomputer/model/TrackStats;->haversineM(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    return-void

    .line 34
    :cond_1
    iget-wide v2, p0, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    .line 35
    iget v0, p2, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    move v0, v1

    .line 37
    :cond_2
    iget v1, p0, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iput v0, p0, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    .line 38
    :cond_3
    iget-wide v0, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p2, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    .line 39
    iget-wide v0, p2, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    iget-wide p1, p1, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    sub-double/2addr v0, p1

    const-wide p1, 0x3fd3333333333333L    # 0.3

    cmpl-double p1, v0, p1

    if-lez p1, :cond_4

    .line 40
    iget-wide p1, p0, Lcom/jichi/bikecomputer/model/TrackStats;->ascentM:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/jichi/bikecomputer/model/TrackStats;->ascentM:D

    goto :goto_0

    :cond_4
    const-wide p1, -0x402ccccccccccccdL    # -0.3

    cmpg-double p1, v0, p1

    if-gez p1, :cond_5

    .line 41
    iget-wide p1, p0, Lcom/jichi/bikecomputer/model/TrackStats;->descentM:D

    neg-double v0, v0

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/jichi/bikecomputer/model/TrackStats;->descentM:D

    :cond_5
    :goto_0
    return-void
.end method
