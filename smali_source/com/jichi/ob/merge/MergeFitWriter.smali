.class public Lcom/jichi/ob/merge/MergeFitWriter;
.super Ljava/lang/Object;
.source "MergeFitWriter.java"


# static fields
.field private static final FIT_EPOCH_OFFSET_SEC:J = 0x259d4c00L

.field private static final LOCAL_TZ_OFFSET_SEC:J = 0x7080L

.field private static final MS_THRESHOLD:J = 0x174876e800L

.field private static final SEMICIRCLE_PER_DEG:D = 1.1930464711111112E7


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/jichi/ob/merge/TrackMerger$MergedResult;Ljava/lang/String;Lcom/jichi/ob/merge/MergeMetrics;)[B
    .registers 7

    const/4 p1, 0x0

    .line 293
    :try_start_1
    const-string v0, "mfit"

    const-string v1, ".fit"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3c

    .line 294
    :try_start_9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/jichi/ob/merge/MergeFitWriter;->write(Lcom/jichi/ob/merge/TrackMerger$MergedResult;Ljava/lang/String;Lcom/jichi/ob/merge/MergeMetrics;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3d

    if-nez p0, :cond_19

    if-eqz v0, :cond_18

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18
    return-object p1

    .line 297
    :cond_19
    :try_start_19
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p2, v1

    new-array v1, p2, [B

    const/4 v2, 0x0

    :goto_26
    if-ge v2, p2, :cond_33

    sub-int v3, p2, v2

    .line 301
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_31

    goto :goto_33

    :cond_31
    add-int/2addr v2, v3

    goto :goto_26

    .line 307
    :cond_33
    :goto_33
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_3d

    if-eqz v0, :cond_3b

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3b
    return-object v1

    :catchall_3c
    move-object v0, p1

    :catchall_3d
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_42
    return-object p1
.end method

.method private static buildDays(Ljava/util/List;)[J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;)[J"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move v4, v3

    .line 322
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_36

    .line 323
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x1b77400

    add-long/2addr v5, v7

    const-wide/32 v9, 0x5265c00

    .line 324
    div-long/2addr v5, v9

    cmp-long v11, v5, v1

    if-eqz v11, :cond_33

    mul-long/2addr v9, v5

    sub-long/2addr v9, v7

    .line 326
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v1, v5

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 330
    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v1, p0, [J

    :goto_3c
    if-ge v3, p0, :cond_4d

    .line 332
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_4d
    return-object v1
.end method

.method private static buildLap(Ljava/util/List;IJJZLcom/jichi/ob/merge/MergeMetrics;)Lcom/garmin/fit/LapMesg;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/GpxToFitConverter$TrackPoint;",
            ">;IJJZ",
            "Lcom/jichi/ob/merge/MergeMetrics;",
            ")",
            "Lcom/garmin/fit/LapMesg;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    const/4 v2, -0x1

    move v5, v2

    move v6, v5

    const/4 v4, 0x0

    .line 349
    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2b

    .line 350
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v7}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v7

    cmp-long v9, v7, p2

    if-ltz v9, :cond_28

    cmp-long v7, v7, p4

    if-gez v7, :cond_28

    if-gez v5, :cond_27

    move v5, v4

    :cond_27
    move v6, v4

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_2b
    if-ltz v5, :cond_2fb

    if-gt v6, v5, :cond_31

    goto/16 :goto_2fb

    .line 362
    :cond_31
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v7}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v7

    .line 363
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v9}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v9

    sub-double/2addr v9, v7

    const-wide/16 v7, 0x0

    cmpg-double v11, v9, v7

    if-gez v11, :cond_4d

    move-wide v9, v7

    :cond_4d
    if-eqz v1, :cond_61

    .line 370
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/jichi/ob/merge/MergeMetrics;->segIndexOf(J)I

    move-result v2

    :cond_61
    const-wide/16 v13, -0x1

    if-eqz v1, :cond_81

    if-ltz v2, :cond_81

    .line 374
    invoke-virtual/range {p7 .. p7}, Lcom/jichi/ob/merge/MergeMetrics;->getSegDistM()[D

    move-result-object v15

    .line 375
    invoke-virtual/range {p7 .. p7}, Lcom/jichi/ob/merge/MergeMetrics;->getSegTimerSec()[J

    move-result-object v3

    if-eqz v15, :cond_77

    .line 376
    array-length v11, v15

    if-ge v2, v11, :cond_77

    .line 377
    aget-wide v11, v15, v2

    goto :goto_79

    :cond_77
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    :goto_79
    if-eqz v3, :cond_83

    .line 379
    array-length v15, v3

    if-ge v2, v15, :cond_83

    .line 380
    aget-wide v13, v3, v2

    goto :goto_83

    :cond_81
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 384
    :cond_83
    :goto_83
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v2}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v15}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v17

    sub-long v2, v2, v17

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    add-int/lit8 v15, v5, 0x1

    const-wide/16 v19, 0x0

    move/from16 v27, v5

    move-wide v4, v7

    move-wide/from16 v23, v4

    move-wide/from16 v25, v23

    move-wide/from16 v21, v19

    :goto_b2
    if-gt v15, v6, :cond_13d

    add-int/lit8 v7, v15, -0x1

    .line 394
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v28

    .line 395
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v30

    sub-long v30, v30, v28

    .line 396
    div-long v30, v30, v17

    cmp-long v8, v30, v19

    if-lez v8, :cond_e2

    const-wide/16 v28, 0x3c

    cmp-long v8, v30, v28

    if-gtz v8, :cond_e2

    add-long v21, v21, v30

    .line 400
    :cond_e2
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v7}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v7

    .line 401
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v28 .. v28}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v28

    sub-double v7, v28, v7

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpl-double v28, v7, v28

    if-lez v28, :cond_101

    add-double v23, v23, v7

    goto :goto_10a

    :cond_101
    const-wide/high16 v28, -0x4020000000000000L    # -0.5

    cmpg-double v28, v7, v28

    if-gez v28, :cond_10a

    neg-double v7, v7

    add-double v25, v25, v7

    :cond_10a
    :goto_10a
    if-eqz v1, :cond_11f

    .line 409
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v7}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/jichi/ob/merge/MergeMetrics;->speedAt(J)Ljava/lang/Float;

    move-result-object v7

    goto :goto_120

    :cond_11f
    const/4 v7, 0x0

    :goto_120
    if-eqz v7, :cond_133

    .line 410
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-wide/from16 v28, v9

    float-to-double v8, v8

    cmpl-double v8, v8, v4

    if-lez v8, :cond_135

    .line 411
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    goto :goto_135

    :cond_133
    move-wide/from16 v28, v9

    :cond_135
    :goto_135
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v9, v28

    const-wide/16 v7, 0x0

    goto/16 :goto_b2

    :cond_13d
    move-wide/from16 v28, v9

    move-wide/from16 v30, v4

    move/from16 v5, v27

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_14e
    if-gt v5, v6, :cond_1ae

    .line 416
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 417
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v32

    if-lez v32, :cond_173

    .line 418
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v32

    add-int v16, v16, v32

    add-int/lit8 v1, v1, 0x1

    move/from16 p2, v1

    .line 420
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v1

    if-le v1, v7, :cond_171

    .line 421
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v1

    move v7, v1

    :cond_171
    move/from16 v1, p2

    .line 424
    :cond_173
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v32

    if-lez v32, :cond_18f

    .line 425
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v32

    add-int v8, v8, v32

    add-int/lit8 v9, v9, 0x1

    move/from16 p2, v1

    .line 427
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v1

    if-le v1, v10, :cond_191

    .line 428
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v1

    move v10, v1

    goto :goto_191

    :cond_18f
    move/from16 p2, v1

    .line 431
    :cond_191
    :goto_191
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    if-lez v1, :cond_1a9

    .line 432
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    add-int/2addr v15, v1

    add-int/lit8 v17, v17, 0x1

    .line 434
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    if-le v1, v4, :cond_1a9

    .line 435
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    move v4, v1

    :cond_1a9
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p2

    goto :goto_14e

    :cond_1ae
    const-wide/16 v32, 0x0

    cmpl-double v5, v11, v32

    if-lez v5, :cond_1b5

    goto :goto_1b7

    :cond_1b5
    move-wide/from16 v11, v28

    :goto_1b7
    cmp-long v5, v13, v19

    if-lez v5, :cond_1bc

    goto :goto_1be

    :cond_1bc
    move-wide/from16 v13, v21

    .line 443
    :goto_1be
    new-instance v5, Lcom/garmin/fit/LapMesg;

    invoke-direct {v5}, Lcom/garmin/fit/LapMesg;-><init>()V

    move/from16 v18, v4

    .line 444
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/garmin/fit/LapMesg;->setMessageIndex(Ljava/lang/Integer;)V

    if-eqz p6, :cond_1d1

    .line 445
    sget-object v4, Lcom/garmin/fit/Sport;->RUNNING:Lcom/garmin/fit/Sport;

    goto :goto_1d3

    :cond_1d1
    sget-object v4, Lcom/garmin/fit/Sport;->CYCLING:Lcom/garmin/fit/Sport;

    :goto_1d3
    invoke-virtual {v5, v4}, Lcom/garmin/fit/LapMesg;->setSport(Lcom/garmin/fit/Sport;)V

    if-eqz p6, :cond_1db

    .line 446
    sget-object v4, Lcom/garmin/fit/SubSport;->GENERIC:Lcom/garmin/fit/SubSport;

    goto :goto_1dd

    :cond_1db
    sget-object v4, Lcom/garmin/fit/SubSport;->ROAD:Lcom/garmin/fit/SubSport;

    :goto_1dd
    invoke-virtual {v5, v4}, Lcom/garmin/fit/LapMesg;->setSubSport(Lcom/garmin/fit/SubSport;)V

    .line 447
    new-instance v4, Lcom/garmin/fit/DateTime;

    move/from16 p2, v15

    move/from16 v15, v27

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual/range {v21 .. v21}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v21

    move/from16 p3, v8

    move/from16 p4, v9

    invoke-static/range {v21 .. v22}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v5, v4}, Lcom/garmin/fit/LapMesg;->setStartTime(Lcom/garmin/fit/DateTime;)V

    .line 448
    new-instance v4, Lcom/garmin/fit/DateTime;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v8}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v5, v4}, Lcom/garmin/fit/LapMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    double-to-float v4, v11

    .line 449
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/garmin/fit/LapMesg;->setTotalDistance(Ljava/lang/Float;)V

    long-to-float v4, v13

    .line 450
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/garmin/fit/LapMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    long-to-float v2, v2

    .line 451
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/garmin/fit/LapMesg;->setTotalElapsedTime(Ljava/lang/Float;)V

    .line 452
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/garmin/fit/LapMesg;->setTotalAscent(Ljava/lang/Integer;)V

    .line 453
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/garmin/fit/LapMesg;->setTotalDescent(Ljava/lang/Integer;)V

    cmp-long v2, v13, v19

    if-lez v2, :cond_24c

    long-to-double v2, v13

    div-double/2addr v11, v2

    double-to-float v2, v11

    goto :goto_24d

    :cond_24c
    const/4 v2, 0x0

    .line 456
    :goto_24d
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/garmin/fit/LapMesg;->setAvgSpeed(Ljava/lang/Float;)V

    .line 457
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/garmin/fit/LapMesg;->setEnhancedAvgSpeed(Ljava/lang/Float;)V

    move-wide/from16 v2, v30

    double-to-float v2, v2

    .line 458
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/garmin/fit/LapMesg;->setMaxSpeed(Ljava/lang/Float;)V

    .line 459
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/garmin/fit/LapMesg;->setEnhancedMaxSpeed(Ljava/lang/Float;)V

    if-lez v1, :cond_280

    .line 462
    div-int v1, v16, v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setAvgHeartRate(Ljava/lang/Short;)V

    int-to-short v1, v7

    .line 463
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setMaxHeartRate(Ljava/lang/Short;)V

    :cond_280
    if-lez p4, :cond_294

    .line 466
    div-int v8, p3, p4

    int-to-short v1, v8

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setAvgCadence(Ljava/lang/Short;)V

    int-to-short v1, v10

    .line 467
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setMaxCadence(Ljava/lang/Short;)V

    :cond_294
    if-lez v17, :cond_2a6

    .line 470
    div-int v1, p2, v17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setAvgPower(Ljava/lang/Integer;)V

    .line 471
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setMaxPower(Ljava/lang/Integer;)V

    .line 473
    :cond_2a6
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setStartPositionLat(Ljava/lang/Integer;)V

    .line 474
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setStartPositionLong(Ljava/lang/Integer;)V

    .line 475
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/garmin/fit/LapMesg;->setEndPositionLat(Ljava/lang/Integer;)V

    .line 476
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/garmin/fit/LapMesg;->setEndPositionLong(Ljava/lang/Integer;)V

    return-object v5

    :cond_2fb
    :goto_2fb
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isRunning(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 341
    :cond_4
    const-string v1, "\u8dd1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1c

    const-string v1, "run"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1c

    const-string v1, "Run"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method private static semi(D)I
    .registers 4

    const-wide v0, 0x4166c16c16c16c17L    # 1.1930464711111112E7

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static toFitSec(J)J
    .registers 7

    const-wide v0, 0x174876e800L

    cmp-long v0, p0, v0

    const-wide/32 v1, 0x259d4c00

    if-lez v0, :cond_11

    const-wide/16 v3, 0x3e8

    .line 42
    div-long/2addr p0, v3

    sub-long/2addr p0, v1

    return-wide p0

    :cond_11
    sub-long/2addr p0, v1

    return-wide p0
.end method

.method private static toMs(J)J
    .registers 4

    const-wide v0, 0x174876e800L

    cmp-long v0, p0, v0

    if-lez v0, :cond_a

    return-wide p0

    :cond_a
    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static write(Lcom/jichi/ob/merge/TrackMerger$MergedResult;Ljava/lang/String;Lcom/jichi/ob/merge/MergeMetrics;)Z
    .registers 38

    move-object/from16 v8, p2

    const/4 v9, 0x0

    .line 60
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getPoints()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_4b3

    .line 61
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    goto/16 :goto_4b3

    .line 64
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v11

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getEndTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v0

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_3a

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getEndSec()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-lez v2, :cond_3a

    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getEndSec()J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-lez v2, :cond_3a

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getEndSec()J

    move-result-wide v0

    :cond_3a
    move-wide v15, v0

    cmp-long v0, v15, v11

    if-gtz v0, :cond_40

    return v9

    :cond_40
    if-eqz v8, :cond_47

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getDayStartTimes()[J

    move-result-object v1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    if-eqz v1, :cond_4d

    .line 78
    array-length v2, v1

    if-nez v2, :cond_51

    .line 79
    :cond_4d
    invoke-static {v10}, Lcom/jichi/ob/merge/MergeFitWriter;->buildDays(Ljava/util/List;)[J

    move-result-object v1

    :cond_51
    move-object v7, v1

    .line 82
    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 86
    :cond_62
    new-instance v6, Lcom/garmin/fit/FileEncoder;

    sget-object v2, Lcom/garmin/fit/Fit$ProtocolVersion;->V2_0:Lcom/garmin/fit/Fit$ProtocolVersion;

    invoke-direct {v6, v1, v2}, Lcom/garmin/fit/FileEncoder;-><init>(Ljava/io/File;Lcom/garmin/fit/Fit$ProtocolVersion;)V

    .line 89
    new-instance v1, Lcom/garmin/fit/FileIdMesg;

    invoke-direct {v1}, Lcom/garmin/fit/FileIdMesg;-><init>()V

    .line 90
    sget-object v2, Lcom/garmin/fit/File;->ACTIVITY:Lcom/garmin/fit/File;

    invoke-virtual {v1, v2}, Lcom/garmin/fit/FileIdMesg;->setType(Lcom/garmin/fit/File;)V

    const/16 v2, 0x73

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garmin/fit/FileIdMesg;->setManufacturer(Ljava/lang/Integer;)V

    const/16 v2, 0x322

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garmin/fit/FileIdMesg;->setProduct(Ljava/lang/Integer;)V

    const-wide/32 v2, 0x25b00528

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garmin/fit/FileIdMesg;->setSerialNumber(Ljava/lang/Long;)V

    .line 94
    new-instance v2, Lcom/garmin/fit/DateTime;

    invoke-static {v11, v12}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/garmin/fit/FileIdMesg;->setTimeCreated(Lcom/garmin/fit/DateTime;)V

    .line 95
    invoke-virtual {v6, v1}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getSportName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jichi/ob/merge/MergeFitWriter;->isRunning(Ljava/lang/String;)Z

    move-result v17

    .line 99
    new-instance v1, Lcom/garmin/fit/SportMesg;

    invoke-direct {v1}, Lcom/garmin/fit/SportMesg;-><init>()V

    if-eqz v17, :cond_b0

    .line 100
    sget-object v2, Lcom/garmin/fit/Sport;->RUNNING:Lcom/garmin/fit/Sport;

    goto :goto_b2

    :cond_b0
    sget-object v2, Lcom/garmin/fit/Sport;->CYCLING:Lcom/garmin/fit/Sport;

    :goto_b2
    invoke-virtual {v1, v2}, Lcom/garmin/fit/SportMesg;->setSport(Lcom/garmin/fit/Sport;)V

    if-eqz v17, :cond_ba

    .line 101
    sget-object v2, Lcom/garmin/fit/SubSport;->GENERIC:Lcom/garmin/fit/SubSport;

    goto :goto_bc

    :cond_ba
    sget-object v2, Lcom/garmin/fit/SubSport;->ROAD:Lcom/garmin/fit/SubSport;

    :goto_bc
    invoke-virtual {v1, v2}, Lcom/garmin/fit/SportMesg;->setSubSport(Lcom/garmin/fit/SubSport;)V

    .line 102
    invoke-virtual {v6, v1}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 105
    new-instance v1, Lcom/garmin/fit/EventMesg;

    invoke-direct {v1}, Lcom/garmin/fit/EventMesg;-><init>()V

    .line 106
    sget-object v2, Lcom/garmin/fit/Event;->TIMER:Lcom/garmin/fit/Event;

    invoke-virtual {v1, v2}, Lcom/garmin/fit/EventMesg;->setEvent(Lcom/garmin/fit/Event;)V

    .line 107
    sget-object v2, Lcom/garmin/fit/EventType;->START:Lcom/garmin/fit/EventType;

    invoke-virtual {v1, v2}, Lcom/garmin/fit/EventMesg;->setEventType(Lcom/garmin/fit/EventType;)V

    .line 108
    new-instance v2, Lcom/garmin/fit/DateTime;

    invoke-static {v11, v12}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/garmin/fit/EventMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 109
    invoke-virtual {v6, v1}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 114
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 115
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    if-eqz v8, :cond_f3

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getSegStartSec()[J

    move-result-object v3

    goto :goto_f4

    :cond_f3
    const/4 v3, 0x0

    :goto_f4
    if-eqz v3, :cond_f8

    .line 117
    array-length v4, v3

    goto :goto_f9

    :cond_f8
    move v4, v9

    :goto_f9
    move v5, v9

    .line 118
    :goto_fa
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_12d

    .line 119
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v19

    aput-wide v19, v1, v5

    if-eqz v8, :cond_125

    .line 120
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v0}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getTs()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lcom/jichi/ob/merge/MergeMetrics;->segIndexOf(J)I

    move-result v0

    goto :goto_126

    :cond_125
    const/4 v0, -0x1

    :goto_126
    aput v0, v2, v5

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v13, 0x0

    goto :goto_fa

    :cond_12d
    const/4 v13, 0x1

    move v0, v13

    .line 122
    :goto_12f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    const-wide v19, 0x408f400000000000L    # 1000.0

    const-wide/16 v23, 0x3e8

    if-ge v0, v5, :cond_183

    add-int/lit8 v5, v0, -0x1

    .line 123
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v14}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v25

    .line 124
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    invoke-virtual {v14}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v27

    .line 125
    aget-wide v29, v1, v0

    aget-wide v31, v1, v5

    sub-long v29, v29, v31

    div-long v29, v29, v23

    sub-double v25, v25, v19

    cmpg-double v14, v27, v25

    if-gez v14, :cond_180

    const-wide/16 v19, 0x258

    cmp-long v14, v29, v19

    if-gtz v14, :cond_180

    .line 127
    aget v5, v2, v5

    add-int/2addr v5, v13

    if-ltz v5, :cond_180

    if-ge v5, v4, :cond_180

    .line 128
    aget-wide v19, v3, v5

    const-wide/16 v21, 0x0

    cmp-long v14, v19, v21

    if-lez v14, :cond_180

    .line 129
    aput v5, v2, v0

    const-wide/32 v25, 0x259d4c00

    add-long v19, v19, v25

    mul-long v19, v19, v23

    .line 130
    aput-wide v19, v1, v0

    :cond_180
    add-int/lit8 v0, v0, 0x1

    goto :goto_12f

    .line 135
    :cond_183
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 136
    invoke-virtual {v14}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v3

    const-wide/16 v25, 0x0

    if-eqz v8, :cond_19b

    aget v0, v2, v9

    if-lez v0, :cond_19b

    invoke-virtual {v8, v0}, Lcom/jichi/ob/merge/MergeMetrics;->offsetBefore(I)D

    move-result-wide v27

    goto :goto_19d

    :cond_19b
    move-wide/from16 v27, v25

    :goto_19d
    add-double v3, v3, v27

    .line 137
    aget-wide v27, v1, v9

    move v0, v9

    move-wide/from16 v27, v25

    .line 139
    :goto_1a4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    const/16 v29, 0x0

    if-ge v0, v5, :cond_2a6

    .line 140
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 141
    aget-wide v30, v1, v0
    :try_end_1b4
    .catchall {:try_start_3 .. :try_end_1b4} :catchall_4b5

    .line 142
    :try_start_1b4
    new-instance v9, Lcom/garmin/fit/RecordMesg;

    invoke-direct {v9}, Lcom/garmin/fit/RecordMesg;-><init>()V

    .line 143
    new-instance v13, Lcom/garmin/fit/DateTime;

    move-wide/from16 v33, v3

    invoke-static/range {v30 .. v31}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v3

    invoke-direct {v13, v3, v4}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v9, v13}, Lcom/garmin/fit/RecordMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 144
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/garmin/fit/RecordMesg;->setPositionLat(Ljava/lang/Integer;)V

    .line 145
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/garmin/fit/RecordMesg;->setPositionLong(Ljava/lang/Integer;)V

    .line 147
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getEle()D

    move-result-wide v3

    .line 148
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-nez v13, :cond_204

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v13

    if-nez v13, :cond_204

    double-to-float v3, v3

    .line 149
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/garmin/fit/RecordMesg;->setAltitude(Ljava/lang/Float;)V

    .line 150
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/garmin/fit/RecordMesg;->setEnhancedAltitude(Ljava/lang/Float;)V

    .line 154
    :cond_204
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getDistM()D

    move-result-wide v3

    .line 155
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-nez v13, :cond_222

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v13

    if-eqz v13, :cond_215

    goto :goto_222

    :cond_215
    if-eqz v8, :cond_224

    .line 158
    aget v13, v2, v0

    if-lez v13, :cond_224

    .line 160
    invoke-virtual {v8, v13}, Lcom/jichi/ob/merge/MergeMetrics;->offsetBefore(I)D

    move-result-wide v33

    add-double v3, v3, v33

    goto :goto_224

    :cond_222
    :goto_222
    move-wide/from16 v3, v33

    :cond_224
    :goto_224
    double-to-float v13, v3

    .line 163
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/garmin/fit/RecordMesg;->setDistance(Ljava/lang/Float;)V

    if-eqz v8, :cond_23a

    move-object v13, v1

    move-object/from16 v33, v2

    .line 168
    invoke-static/range {v30 .. v31}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/jichi/ob/merge/MergeMetrics;->speedAt(J)Ljava/lang/Float;

    move-result-object v1

    goto :goto_23e

    :cond_23a
    move-object v13, v1

    move-object/from16 v33, v2

    const/4 v1, 0x0

    :goto_23e
    if-eqz v1, :cond_261

    .line 169
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v29

    if-lez v2, :cond_261

    .line 170
    invoke-virtual {v9, v1}, Lcom/garmin/fit/RecordMesg;->setSpeed(Ljava/lang/Float;)V

    .line 171
    invoke-virtual {v9, v1}, Lcom/garmin/fit/RecordMesg;->setEnhancedSpeed(Ljava/lang/Float;)V

    .line 172
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-wide/from16 v30, v3

    float-to-double v2, v2

    cmpl-double v2, v2, v27

    if-lez v2, :cond_263

    .line 173
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    move-wide/from16 v27, v1

    goto :goto_263

    :cond_261
    move-wide/from16 v30, v3

    .line 179
    :cond_263
    :goto_263
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v1

    if-lez v1, :cond_275

    .line 180
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getHr()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/garmin/fit/RecordMesg;->setHeartRate(Ljava/lang/Short;)V

    .line 182
    :cond_275
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v1

    if-lez v1, :cond_287

    .line 183
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getCad()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/garmin/fit/RecordMesg;->setCadence(Ljava/lang/Short;)V

    .line 185
    :cond_287
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    if-lez v1, :cond_298

    .line 186
    invoke-virtual {v5}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getPower()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/garmin/fit/RecordMesg;->setPower(Ljava/lang/Integer;)V

    .line 188
    :cond_298
    invoke-virtual {v6, v9}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    add-int/lit8 v0, v0, 0x1

    move-object v1, v13

    move-wide/from16 v3, v30

    move-object/from16 v2, v33

    const/4 v9, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1a4

    :cond_2a6
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 193
    :goto_2a8
    array-length v0, v7

    if-ge v1, v0, :cond_2db

    .line 194
    aget-wide v2, v7, v1

    invoke-static {v2, v3}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v2

    add-int/lit8 v13, v1, 0x1

    .line 195
    array-length v0, v7

    if-ge v13, v0, :cond_2bd

    aget-wide v4, v7, v13

    invoke-static {v4, v5}, Lcom/jichi/ob/merge/MergeFitWriter;->toMs(J)J

    move-result-wide v4

    goto :goto_2c0

    :cond_2bd
    const-wide/16 v4, 0x1

    add-long/2addr v4, v15

    :goto_2c0
    move-object v0, v10

    move/from16 v18, v13

    move-object v13, v6

    move/from16 v6, v17

    move-object/from16 v30, v7

    move-object/from16 v7, p2

    .line 196
    invoke-static/range {v0 .. v7}, Lcom/jichi/ob/merge/MergeFitWriter;->buildLap(Ljava/util/List;IJJZLcom/jichi/ob/merge/MergeMetrics;)Lcom/garmin/fit/LapMesg;

    move-result-object v0

    if-eqz v0, :cond_2d5

    .line 198
    invoke-virtual {v13, v0}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    add-int/lit8 v9, v9, 0x1

    :cond_2d5
    move-object v6, v13

    move/from16 v1, v18

    move-object/from16 v7, v30

    goto :goto_2a8

    :cond_2db
    move-object v13, v6

    .line 204
    new-instance v0, Lcom/garmin/fit/SessionMesg;

    invoke-direct {v0}, Lcom/garmin/fit/SessionMesg;-><init>()V

    if-lez v9, :cond_2e4

    goto :goto_2e5

    :cond_2e4
    const/4 v9, 0x1

    .line 206
    :goto_2e5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setNumLaps(Ljava/lang/Integer;)V

    if-eqz v17, :cond_2f1

    .line 207
    sget-object v1, Lcom/garmin/fit/Sport;->RUNNING:Lcom/garmin/fit/Sport;

    goto :goto_2f3

    :cond_2f1
    sget-object v1, Lcom/garmin/fit/Sport;->CYCLING:Lcom/garmin/fit/Sport;

    :goto_2f3
    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setSport(Lcom/garmin/fit/Sport;)V

    if-eqz v17, :cond_2fb

    .line 208
    sget-object v1, Lcom/garmin/fit/SubSport;->GENERIC:Lcom/garmin/fit/SubSport;

    goto :goto_2fd

    :cond_2fb
    sget-object v1, Lcom/garmin/fit/SubSport;->ROAD:Lcom/garmin/fit/SubSport;

    :goto_2fd
    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setSubSport(Lcom/garmin/fit/SubSport;)V

    .line 209
    new-instance v1, Lcom/garmin/fit/DateTime;

    invoke-static {v11, v12}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setStartTime(Lcom/garmin/fit/DateTime;)V

    .line 210
    new-instance v1, Lcom/garmin/fit/DateTime;

    invoke-static/range {v15 .. v16}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDistanceKm()D

    move-result-wide v1

    mul-double v1, v1, v19

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDurationSec()J

    move-result-wide v3

    if-eqz v8, :cond_351

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getTotalDistanceM()D

    move-result-wide v5

    cmpl-double v5, v5, v25

    if-lez v5, :cond_330

    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getTotalDistanceM()D

    move-result-wide v1

    .line 220
    :cond_330
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getTotalTimerSec()J

    move-result-wide v5

    const-wide/16 v17, 0x0

    cmp-long v5, v5, v17

    if-lez v5, :cond_33e

    .line 221
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getTotalTimerSec()J

    move-result-wide v3

    .line 223
    :cond_33e
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getCalories()I

    move-result v5

    .line 224
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getMaxSpeedMps()D

    move-result-wide v6

    cmpl-double v6, v6, v25

    if-lez v6, :cond_34e

    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/jichi/ob/merge/MergeMetrics;->getMaxSpeedMps()D

    move-result-wide v27

    :cond_34e
    move-wide/from16 v6, v27

    goto :goto_354

    :cond_351
    move-wide/from16 v6, v27

    const/4 v5, 0x0

    :goto_354
    double-to-float v8, v1

    .line 229
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/garmin/fit/SessionMesg;->setTotalDistance(Ljava/lang/Float;)V

    long-to-float v8, v3

    .line 230
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/garmin/fit/SessionMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    sub-long v11, v15, v11

    .line 231
    div-long v11, v11, v23

    long-to-float v9, v11

    .line 232
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/garmin/fit/SessionMesg;->setTotalElapsedTime(Ljava/lang/Float;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAscentM()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/garmin/fit/SessionMesg;->setTotalAscent(Ljava/lang/Integer;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getDescentM()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/garmin/fit/SessionMesg;->setTotalDescent(Ljava/lang/Integer;)V

    if-lez v5, :cond_399

    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/garmin/fit/SessionMesg;->setTotalCalories(Ljava/lang/Integer;)V

    :cond_399
    const-wide/16 v11, 0x0

    cmp-long v5, v3, v11

    if-lez v5, :cond_3a3

    long-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_3a5

    :cond_3a3
    move/from16 v1, v29

    .line 240
    :goto_3a5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setAvgSpeed(Ljava/lang/Float;)V

    .line 241
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setEnhancedAvgSpeed(Ljava/lang/Float;)V

    double-to-float v1, v6

    cmpl-float v2, v1, v29

    if-lez v2, :cond_3c6

    .line 244
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setMaxSpeed(Ljava/lang/Float;)V

    .line 245
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setEnhancedMaxSpeed(Ljava/lang/Float;)V

    .line 247
    :cond_3c6
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgHr()I

    move-result v1

    if-lez v1, :cond_3d8

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgHr()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setAvgHeartRate(Ljava/lang/Short;)V

    .line 250
    :cond_3d8
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getMaxHr()I

    move-result v1

    if-lez v1, :cond_3ea

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getMaxHr()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setMaxHeartRate(Ljava/lang/Short;)V

    .line 253
    :cond_3ea
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgCad()I

    move-result v1

    if-lez v1, :cond_3fc

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgCad()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setAvgCadence(Ljava/lang/Short;)V

    .line 256
    :cond_3fc
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgPower()I

    move-result v1

    if-lez v1, :cond_40d

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getAvgPower()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setAvgPower(Ljava/lang/Integer;)V

    .line 259
    :cond_40d
    invoke-virtual {v14}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setStartPositionLat(Ljava/lang/Integer;)V

    .line 260
    invoke-virtual {v14}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setStartPositionLong(Ljava/lang/Integer;)V

    .line 261
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;

    .line 262
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLat()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/SessionMesg;->setEndPositionLat(Ljava/lang/Integer;)V

    .line 263
    invoke-virtual {v1}, Lcom/jichi/ob/GpxToFitConverter$TrackPoint;->getLon()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jichi/ob/merge/MergeFitWriter;->semi(D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/SessionMesg;->setEndPositionLong(Ljava/lang/Integer;)V

    .line 264
    invoke-virtual {v13, v0}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 267
    new-instance v0, Lcom/garmin/fit/ActivityMesg;

    invoke-direct {v0}, Lcom/garmin/fit/ActivityMesg;-><init>()V

    .line 268
    sget-object v1, Lcom/garmin/fit/Activity;->MANUAL:Lcom/garmin/fit/Activity;

    invoke-virtual {v0, v1}, Lcom/garmin/fit/ActivityMesg;->setType(Lcom/garmin/fit/Activity;)V

    const/4 v1, 0x1

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/garmin/fit/ActivityMesg;->setNumSessions(Ljava/lang/Integer;)V

    .line 270
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/ActivityMesg;->setTotalTimerTime(Ljava/lang/Float;)V

    .line 271
    new-instance v1, Lcom/garmin/fit/DateTime;

    invoke-static/range {v15 .. v16}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/garmin/fit/ActivityMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 272
    invoke-static/range {v15 .. v16}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v1

    const-wide/16 v3, 0x7080

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garmin/fit/ActivityMesg;->setLocalTimestamp(Ljava/lang/Long;)V

    .line 273
    invoke-virtual {v13, v0}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 276
    new-instance v0, Lcom/garmin/fit/EventMesg;

    invoke-direct {v0}, Lcom/garmin/fit/EventMesg;-><init>()V

    .line 277
    sget-object v1, Lcom/garmin/fit/Event;->TIMER:Lcom/garmin/fit/Event;

    invoke-virtual {v0, v1}, Lcom/garmin/fit/EventMesg;->setEvent(Lcom/garmin/fit/Event;)V

    .line 278
    sget-object v1, Lcom/garmin/fit/EventType;->STOP_ALL:Lcom/garmin/fit/EventType;

    invoke-virtual {v0, v1}, Lcom/garmin/fit/EventMesg;->setEventType(Lcom/garmin/fit/EventType;)V

    .line 279
    new-instance v1, Lcom/garmin/fit/DateTime;

    invoke-static/range {v15 .. v16}, Lcom/jichi/ob/merge/MergeFitWriter;->toFitSec(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/garmin/fit/DateTime;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/garmin/fit/EventMesg;->setTimestamp(Lcom/garmin/fit/DateTime;)V

    .line 280
    invoke-virtual {v13, v0}, Lcom/garmin/fit/FileEncoder;->write(Lcom/garmin/fit/Mesg;)V

    .line 282
    invoke-virtual {v13}, Lcom/garmin/fit/FileEncoder;->close()V
    :try_end_4af
    .catchall {:try_start_1b4 .. :try_end_4af} :catchall_4b1

    const/4 v0, 0x1

    return v0

    :catchall_4b1
    const/4 v0, 0x0

    goto :goto_4b6

    :cond_4b3
    :goto_4b3
    move v0, v9

    return v0

    :catchall_4b5
    move v0, v9

    :goto_4b6
    return v0
.end method
