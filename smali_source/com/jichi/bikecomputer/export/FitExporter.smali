.class public Lcom/jichi/bikecomputer/export/FitExporter;
.super Ljava/lang/Object;
.source "FitExporter.java"


# static fields
.field public static final MANUFACTURER_DEV:I = 0x1

.field public static final PRODUCT_DEV:I = 0xc32


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static export(Ljava/util/List;Lcom/jichi/bikecomputer/model/SportType;JLcom/jichi/bikecomputer/model/TrackStats;Ljava/lang/String;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/bikecomputer/model/TrackPoint;",
            ">;",
            "Lcom/jichi/bikecomputer/model/SportType;",
            "J",
            "Lcom/jichi/bikecomputer/model/TrackStats;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 38
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 41
    :try_start_0
    new-instance v5, Lcom/garmin/fit/FileEncoder;

    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p5

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/garmin/fit/FileEncoder;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :try_start_1
    new-instance v4, Lcom/garmin/fit/FileIdMesg;

    invoke-direct {v4}, Lcom/garmin/fit/FileIdMesg;-><init>()V

    .line 45
    sget-object v6, Lcom/garmin/fit/File;->ACTIVITY:Lcom/garmin/fit/File;

    invoke-virtual {v4, v6}, Lcom/garmin/fit/FileIdMesg;->setType(Lcom/garmin/fit/File;)V

    const/4 v6, 0x1

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/FileIdMesg;->setManufacturer(Ljava/lang/Integer;)V

    const/16 v7, 0xc32

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/FileIdMesg;->setProduct(Ljava/lang/Integer;)V

    .line 48
    new-instance v7, Lcom/garmin/fit/DateTime;

    const-wide/16 v8, 0x3e8

    div-long v10, p2, v8

    invoke-direct {v7, v10, v11}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v4, v7}, Lcom/garmin/fit/FileIdMesg;->setTimeCreated(Lcom/garmin/fit/DateTime;)V

    .line 49
    invoke-virtual {v5, v4}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 52
    new-instance v4, Lcom/garmin/fit/ActivityMesg;

    invoke-direct {v4}, Lcom/garmin/fit/ActivityMesg;-><init>()V

    .line 53
    new-instance v7, Lcom/garmin/fit/DateTime;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v10, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    div-long/2addr v10, v8

    invoke-direct {v7, v10, v11}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v4, v7}, Lcom/garmin/fit/ActivityMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 54
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->durationMs:J

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/ActivityMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/ActivityMesg;->setNumSessions(Ljava/lang/Integer;)V

    .line 56
    sget-object v7, Lcom/garmin/fit/Activity;->MANUAL:Lcom/garmin/fit/Activity;

    invoke-virtual {v4, v7}, Lcom/garmin/fit/ActivityMesg;->setType(Lcom/garmin/fit/Activity;)V

    .line 57
    sget-object v7, Lcom/garmin/fit/Event;->ACTIVITY:Lcom/garmin/fit/Event;

    invoke-virtual {v4, v7}, Lcom/garmin/fit/ActivityMesg;->setEvent(Lcom/garmin/fit/Event;)V

    .line 58
    sget-object v7, Lcom/garmin/fit/EventType;->STOP_ALL:Lcom/garmin/fit/EventType;

    invoke-virtual {v4, v7}, Lcom/garmin/fit/ActivityMesg;->setEventType(Lcom/garmin/fit/EventType;)V

    .line 59
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    div-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/ActivityMesg;->setLocalTimestamp(Ljava/lang/Long;)V

    .line 60
    invoke-virtual {v5, v4}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 63
    new-instance v4, Lcom/garmin/fit/SessionMesg;

    invoke-direct {v4}, Lcom/garmin/fit/SessionMesg;-><init>()V

    .line 64
    new-instance v7, Lcom/garmin/fit/DateTime;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v10, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    div-long/2addr v10, v8

    invoke-direct {v7, v10, v11}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 65
    new-instance v7, Lcom/garmin/fit/DateTime;

    div-long v10, p2, v8

    invoke-direct {v7, v10, v11}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setStartTime(Lcom/garmin/fit/DateTime;)V

    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    invoke-static {v10, v11}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setStartPositionLat(Ljava/lang/Integer;)V

    .line 67
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    invoke-static {v10, v11}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setStartPositionLong(Ljava/lang/Integer;)V

    .line 68
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    invoke-static {v10, v11}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setEndPositionLat(Ljava/lang/Integer;)V

    .line 69
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    invoke-static {v10, v11}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setEndPositionLong(Ljava/lang/Integer;)V

    .line 70
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->elapsedMs:J

    long-to-double v10, v10

    div-double/2addr v10, v12

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setTotalElapsedTime(Ljava/lang/Float;)V

    .line 71
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->durationMs:J

    long-to-double v10, v10

    div-double/2addr v10, v12

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    .line 72
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setTotalDistance(Ljava/lang/Float;)V

    .line 73
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->ascentM:D

    double-to-int v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setTotalAscent(Ljava/lang/Integer;)V

    .line 74
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->descentM:D

    double-to-int v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setTotalDescent(Ljava/lang/Integer;)V

    .line 75
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/bikecomputer/model/TrackStats;->avgSpeedMs()D

    move-result-wide v10

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setAvgSpeed(Ljava/lang/Float;)V

    .line 76
    iget v7, v2, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setMaxSpeed(Ljava/lang/Float;)V

    .line 77
    iget v7, v1, Lcom/jichi/bikecomputer/model/SportType;->fitSport:I

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-static {v7}, Lcom/garmin/fit/Sport;->getByValue(Ljava/lang/Short;)Lcom/garmin/fit/Sport;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/SessionMesg;->setSport(Lcom/garmin/fit/Sport;)V

    .line 78
    invoke-virtual {v5, v4}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 81
    new-instance v4, Lcom/garmin/fit/LapMesg;

    invoke-direct {v4}, Lcom/garmin/fit/LapMesg;-><init>()V

    .line 82
    new-instance v7, Lcom/garmin/fit/DateTime;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v10, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    div-long/2addr v10, v8

    invoke-direct {v7, v10, v11}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 83
    new-instance v7, Lcom/garmin/fit/DateTime;

    div-long v10, p2, v8

    invoke-direct {v7, v10, v11}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setStartTime(Lcom/garmin/fit/DateTime;)V

    .line 84
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    invoke-static {v10, v11}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setStartPositionLat(Ljava/lang/Integer;)V

    .line 85
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    invoke-static {v10, v11}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setStartPositionLong(Ljava/lang/Integer;)V

    .line 86
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    invoke-static {v10, v11}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setEndPositionLat(Ljava/lang/Integer;)V

    .line 87
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v7, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    invoke-static {v10, v11}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setEndPositionLong(Ljava/lang/Integer;)V

    .line 88
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->elapsedMs:J

    long-to-double v10, v10

    div-double/2addr v10, v12

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setTotalElapsedTime(Ljava/lang/Float;)V

    .line 89
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->durationMs:J

    long-to-double v10, v10

    div-double/2addr v10, v12

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    .line 90
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->distanceM:D

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setTotalDistance(Ljava/lang/Float;)V

    .line 91
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->ascentM:D

    double-to-int v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setTotalAscent(Ljava/lang/Integer;)V

    .line 92
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackStats;->descentM:D

    double-to-int v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setTotalDescent(Ljava/lang/Integer;)V

    .line 93
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/bikecomputer/model/TrackStats;->avgSpeedMs()D

    move-result-wide v10

    double-to-float v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/garmin/fit/LapMesg;->setAvgSpeed(Ljava/lang/Float;)V

    .line 94
    iget v2, v2, Lcom/jichi/bikecomputer/model/TrackStats;->maxSpeedMs:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/garmin/fit/LapMesg;->setMaxSpeed(Ljava/lang/Float;)V

    .line 95
    iget v1, v1, Lcom/jichi/bikecomputer/model/SportType;->fitSport:I

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Lcom/garmin/fit/Sport;->getByValue(Ljava/lang/Short;)Lcom/garmin/fit/Sport;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/garmin/fit/LapMesg;->setSport(Lcom/garmin/fit/Sport;)V

    .line 96
    sget-object v1, Lcom/garmin/fit/Event;->LAP:Lcom/garmin/fit/Event;

    invoke-virtual {v4, v1}, Lcom/garmin/fit/LapMesg;->setEvent(Lcom/garmin/fit/Event;)V

    .line 97
    sget-object v1, Lcom/garmin/fit/EventType;->STOP:Lcom/garmin/fit/EventType;

    invoke-virtual {v4, v1}, Lcom/garmin/fit/LapMesg;->setEventType(Lcom/garmin/fit/EventType;)V

    .line 98
    invoke-virtual {v5, v4}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v1, v1, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v4, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    .line 103
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v12, v1

    move-wide v14, v10

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/bikecomputer/model/TrackPoint;

    .line 104
    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-gtz v10, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v10, v1

    move-object/from16 p1, v4

    .line 105
    iget-wide v3, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    iget-wide v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    move-wide/from16 v16, v3

    move-wide/from16 v18, v6

    invoke-static/range {v12 .. v19}, Lcom/jichi/bikecomputer/model/TrackStats;->haversineM(DDDD)D

    move-result-wide v3

    add-double/2addr v10, v3

    double-to-float v3, v10

    .line 106
    iget-wide v12, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    .line 107
    iget-wide v14, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    .line 109
    new-instance v4, Lcom/garmin/fit/RecordMesg;

    invoke-direct {v4}, Lcom/garmin/fit/RecordMesg;-><init>()V

    .line 110
    new-instance v6, Lcom/garmin/fit/DateTime;

    iget-wide v10, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    div-long/2addr v10, v8

    invoke-direct {v6, v10, v11}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 111
    iget-wide v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->lat:D

    invoke-static {v6, v7}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setPositionLat(Ljava/lang/Integer;)V

    .line 112
    iget-wide v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->lon:D

    invoke-static {v6, v7}, Lcom/jichi/bikecomputer/export/FitExporter;->semicircle(D)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setPositionLong(Ljava/lang/Integer;)V

    .line 113
    iget-wide v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    iget-wide v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setAltitude(Ljava/lang/Float;)V

    .line 115
    iget-wide v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->alt:D

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setEnhancedAltitude(Ljava/lang/Float;)V

    .line 117
    :cond_2
    iget v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 118
    iget v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setSpeed(Ljava/lang/Float;)V

    .line 119
    iget v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->speed:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setEnhancedSpeed(Ljava/lang/Float;)V

    .line 121
    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setDistance(Ljava/lang/Float;)V

    .line 122
    iget v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->heartRate:I

    if-lez v6, :cond_4

    iget v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->heartRate:I

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setHeartRate(Ljava/lang/Short;)V

    .line 123
    :cond_4
    iget v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->cadence:I

    if-lez v6, :cond_5

    iget v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->cadence:I

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/garmin/fit/RecordMesg;->setCadence(Ljava/lang/Short;)V

    .line 124
    :cond_5
    iget v6, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->power:I

    if-lez v6, :cond_6

    .line 125
    iget v2, v2, Lcom/jichi/bikecomputer/model/TrackPoint;->power:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/garmin/fit/RecordMesg;->setPower(Ljava/lang/Integer;)V

    .line 127
    :cond_6
    invoke-virtual {v5, v4}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    move-object/from16 v4, p1

    move v1, v3

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 131
    :cond_7
    new-instance v2, Lcom/garmin/fit/EventMesg;

    invoke-direct {v2}, Lcom/garmin/fit/EventMesg;-><init>()V

    .line 132
    new-instance v3, Lcom/garmin/fit/DateTime;

    div-long v6, p2, v8

    invoke-direct {v3, v6, v7}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/garmin/fit/EventMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 133
    sget-object v3, Lcom/garmin/fit/Event;->TIMER:Lcom/garmin/fit/Event;

    invoke-virtual {v2, v3}, Lcom/garmin/fit/EventMesg;->setEvent(Lcom/garmin/fit/Event;)V

    .line 134
    sget-object v3, Lcom/garmin/fit/EventType;->START:Lcom/garmin/fit/EventType;

    invoke-virtual {v2, v3}, Lcom/garmin/fit/EventMesg;->setEventType(Lcom/garmin/fit/EventType;)V

    .line 135
    invoke-virtual {v5, v2}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 137
    new-instance v2, Lcom/garmin/fit/EventMesg;

    invoke-direct {v2}, Lcom/garmin/fit/EventMesg;-><init>()V

    .line 138
    new-instance v3, Lcom/garmin/fit/DateTime;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v6, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    div-long/2addr v6, v8

    invoke-direct {v3, v6, v7}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/garmin/fit/EventMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 139
    sget-object v0, Lcom/garmin/fit/Event;->TIMER:Lcom/garmin/fit/Event;

    invoke-virtual {v2, v0}, Lcom/garmin/fit/EventMesg;->setEvent(Lcom/garmin/fit/Event;)V

    .line 140
    sget-object v0, Lcom/garmin/fit/EventType;->STOP_ALL:Lcom/garmin/fit/EventType;

    invoke-virtual {v2, v0}, Lcom/garmin/fit/EventMesg;->setEventType(Lcom/garmin/fit/EventType;)V

    .line 141
    invoke-virtual {v5, v2}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 143
    invoke-virtual {v5}, Lcom/garmin/fit/FileEncoder;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception v0

    .line 146
    :goto_1
    const-string v2, "FitExporter"

    const-string v3, "\u5bfc\u51fa\u5931\u8d25"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_8

    .line 148
    :try_start_2
    invoke-virtual {v4}, Lcom/garmin/fit/FileEncoder;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_8
    const/4 v1, 0x0

    return v1

    :cond_9
    :goto_2
    move v1, v3

    return v1
.end method

.method private static semicircle(D)I
    .locals 2

    const-wide/high16 v0, 0x41e0000000000000L    # 2.147483648E9

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    .line 157
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
