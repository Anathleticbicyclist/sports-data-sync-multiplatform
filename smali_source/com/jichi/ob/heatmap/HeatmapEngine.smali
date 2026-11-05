.class public Lcom/jichi/ob/heatmap/HeatmapEngine;
.super Ljava/lang/Object;
.source "HeatmapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blur3([[FII)V
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x2

    .line 152
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    add-int/lit8 v5, v4, -0x1

    .line 154
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v0, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_2

    add-int/lit8 v9, v8, -0x1

    .line 156
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v11, v1, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    move v13, v5

    const/4 v14, 0x0

    :goto_2
    if-gt v13, v7, :cond_1

    .line 160
    aget-object v15, p0, v13

    move v3, v9

    :goto_3
    if-gt v3, v11, :cond_0

    .line 162
    aget v16, v15, v3

    add-float v12, v12, v16

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 166
    :cond_1
    aget-object v3, v2, v4

    int-to-float v9, v14

    div-float/2addr v12, v9

    aput v12, v3, v8

    move v8, v10

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_4

    .line 169
    aget-object v4, v2, v3

    aget-object v5, p0, v3

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public static deg2x(DI)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p0, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    mul-double p0, p0, v0

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    long-to-double v0, v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static deg2y(DI)D
    .locals 4

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v2, p0, v0

    sub-double p0, v0, p0

    div-double/2addr v2, p0

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p0, v2

    sub-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4070000000000000L    # 256.0

    mul-double v0, v0, p0

    const-wide/16 p0, 0x1

    shl-long/2addr p0, p2

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    return-wide v0
.end method

.method public static generate(Ljava/util/List;[IFIZ)Landroid/graphics/Bitmap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;[IFIZ)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v6, p1, v6

    const/4 v7, 0x4

    aget v7, p1, v7

    sub-int/2addr v5, v3

    add-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x100

    sub-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit16 v7, v7, 0x100

    if-lez v5, :cond_18

    if-lez v7, :cond_18

    mul-int v9, v5, v7

    const/high16 v10, 0x1800000

    if-le v9, v10, :cond_0

    goto/16 :goto_10

    :cond_0
    move/from16 v10, p2

    float-to-int v11, v10

    .line 63
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 64
    new-array v12, v4, [I

    aput v5, v12, v2

    aput v7, v12, v0

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[S

    int-to-double v13, v3

    const-wide/high16 v15, 0x4070000000000000L    # 256.0

    .line 65
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    move v3, v9

    int-to-double v8, v6

    .line 66
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v15

    .line 67
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    move/from16 v17, v5

    .line 68
    aget-wide v4, v15, v2

    invoke-static {v4, v5, v1}, Lcom/jichi/ob/heatmap/HeatmapEngine;->deg2x(DI)D

    move-result-wide v4

    sub-double/2addr v4, v13

    move/from16 v18, v3

    .line 69
    aget-wide v2, v15, v0

    invoke-static {v2, v3, v1}, Lcom/jichi/ob/heatmap/HeatmapEngine;->deg2y(DI)D

    move-result-wide v2

    sub-double/2addr v2, v8

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    if-ltz v3, :cond_3

    if-ge v3, v7, :cond_3

    if-ltz v5, :cond_3

    move/from16 v2, v17

    if-ge v5, v2, :cond_4

    sub-int v4, v3, v11

    .line 73
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v11

    add-int/lit8 v15, v7, -0x1

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v15, v5, v11

    .line 74
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/2addr v5, v11

    add-int/lit8 v0, v2, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-gt v4, v3, :cond_4

    move v5, v15

    :goto_2
    if-gt v5, v0, :cond_2

    .line 77
    aget-object v19, v12, v4

    move/from16 v20, v0

    aget-short v0, v19, v5

    move/from16 v21, v3

    const/16 v3, 0x7530

    if-ge v0, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 78
    aput-short v0, v19, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v20

    move/from16 v3, v21

    goto :goto_2

    :cond_2
    move/from16 v20, v0

    move/from16 v21, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move/from16 v2, v17

    :cond_4
    move v5, v2

    move/from16 v3, v18

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x2

    goto :goto_0

    :cond_5
    move/from16 v18, v3

    move v2, v5

    .line 85
    invoke-static/range {p0 .. p0}, Lcom/jichi/ob/heatmap/HeatmapEngine;->midLat(Ljava/util/List;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide v5, 0x41031bf83d70a3d7L    # 156543.03

    mul-double v3, v3, v5

    const-wide/16 v5, 0x1

    shl-long v0, v5, v1

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    div-double/2addr v3, v0

    move/from16 v0, p3

    int-to-double v0, v0

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 89
    new-array v3, v0, [J

    int-to-long v8, v2

    int-to-long v13, v7

    mul-long v8, v8, v13

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_8

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v2, :cond_7

    .line 93
    aget-object v13, v12, v4

    aget-short v13, v13, v11

    if-le v13, v1, :cond_6

    move v13, v1

    .line 95
    :cond_6
    aget-wide v14, v3, v13

    add-long/2addr v14, v5

    aput-wide v14, v3, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 99
    :cond_8
    new-array v0, v0, [F

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    :goto_5
    if-gt v6, v1, :cond_9

    .line 102
    aget-wide v13, v3, v6

    add-long/2addr v4, v13

    int-to-double v13, v1

    long-to-double v10, v4

    move-object v15, v3

    move-wide/from16 v19, v4

    long-to-double v3, v8

    .line 103
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v10

    double-to-float v3, v13

    aput v3, v0, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, p2

    move-object v3, v15

    move-wide/from16 v4, v19

    goto :goto_5

    :cond_9
    const/4 v3, 0x2

    .line 105
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x0

    aput v7, v3, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    const/4 v5, 0x0

    :goto_6
    const/4 v6, 0x0

    if-ge v5, v7, :cond_d

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v2, :cond_c

    .line 108
    aget-object v9, v12, v5

    aget-short v9, v9, v8

    if-le v9, v1, :cond_a

    move v9, v1

    .line 110
    :cond_a
    aget-object v10, v3, v5

    if-lez v9, :cond_b

    aget v9, v0, v9

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    :goto_8
    aput v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 116
    :cond_d
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_e

    .line 118
    invoke-static {v3, v7, v2}, Lcom/jichi/ob/heatmap/HeatmapEngine;->blur3([[FII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v7, :cond_12

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v2, :cond_11

    .line 125
    aget-object v9, v3, v5

    aget v9, v9, v8

    cmpg-float v10, v9, v0

    if-gez v10, :cond_f

    move v0, v9

    :cond_f
    cmpl-float v10, v9, v1

    if-lez v10, :cond_10

    move v1, v9

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_12
    sub-float/2addr v1, v0

    cmpg-float v5, v1, v6

    if-gtz v5, :cond_13

    const/4 v5, 0x0

    return-object v5

    :cond_13
    if-eqz p4, :cond_14

    const v5, -0xf3f1ee

    goto :goto_c

    :cond_14
    const v5, -0xd0b09

    :goto_c
    move/from16 v8, v18

    .line 133
    new-array v8, v8, [I

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v7, :cond_17

    mul-int v10, v9, v2

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v2, :cond_16

    .line 137
    aget-object v12, v3, v9

    aget v12, v12, v11

    sub-float/2addr v12, v0

    div-float/2addr v12, v1

    const v13, 0x3cf5c28f    # 0.03f

    cmpg-float v13, v12, v13

    if-gez v13, :cond_15

    add-int v12, v10, v11

    .line 139
    aput v5, v8, v12

    goto :goto_f

    :cond_15
    const/high16 v13, 0x40400000    # 3.0f

    mul-float v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    .line 141
    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v14

    sub-float v15, v12, v13

    .line 142
    invoke-static {v6, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    sub-float v12, v12, v16

    .line 143
    invoke-static {v6, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    add-int v13, v10, v11

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v14, v14, v16

    float-to-int v14, v14

    shl-int/lit8 v14, v14, 0x10

    const/high16 v17, -0x1000000

    or-int v14, v14, v17

    mul-float v15, v15, v16

    float-to-int v15, v15

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    mul-float v12, v12, v16

    float-to-int v12, v12

    or-int/2addr v12, v14

    .line 144
    aput v12, v8, v13

    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 148
    :cond_17
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v2, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static midLat(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)D"
        }
    .end annotation

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aget-wide v5, v4, v2

    add-double/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    int-to-double v2, v3

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_1

    :cond_1
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_1
    return-wide v0
.end method

.method public static tileBounds(Ljava/util/List;I)[I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;I)[I"
        }
    .end annotation

    .line 26
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x4056800000000000L    # 90.0

    const-wide v3, -0x3fa9800000000000L    # -90.0

    const-wide v5, 0x4066800000000000L    # 180.0

    const-wide v7, -0x3f99800000000000L    # -180.0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 27
    aget-wide v11, v9, v11

    cmpg-double v13, v11, v1

    if-gez v13, :cond_1

    move-wide v1, v11

    :cond_1
    cmpl-double v13, v11, v3

    if-lez v13, :cond_2

    move-wide v3, v11

    .line 29
    :cond_2
    aget-wide v10, v9, v10

    cmpg-double v9, v10, v5

    if-gez v9, :cond_3

    move-wide v5, v10

    :cond_3
    cmpl-double v9, v10, v7

    if-lez v9, :cond_0

    move-wide v7, v10

    goto :goto_0

    :cond_4
    cmpl-double v0, v1, v3

    if-lez v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/16 v0, 0x13

    :goto_1
    if-lez v0, :cond_7

    .line 35
    invoke-static {v5, v6, v0}, Lcom/jichi/ob/heatmap/HeatmapEngine;->deg2x(DI)D

    move-result-wide v12

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v9, v12

    .line 36
    invoke-static {v7, v8, v0}, Lcom/jichi/ob/heatmap/HeatmapEngine;->deg2x(DI)D

    move-result-wide v12

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 37
    invoke-static {v3, v4, v0}, Lcom/jichi/ob/heatmap/HeatmapEngine;->deg2y(DI)D

    move-result-wide v16

    div-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 38
    invoke-static {v1, v2, v0}, Lcom/jichi/ob/heatmap/HeatmapEngine;->deg2y(DI)D

    move-result-wide v16

    div-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v11, v14

    sub-int v14, v12, v9

    const/4 v13, 0x1

    add-int/2addr v14, v13

    sub-int v15, v11, v10

    add-int/2addr v15, v13

    mul-int v14, v14, v15

    move/from16 v15, p1

    if-gt v14, v15, :cond_6

    .line 41
    filled-new-array {v0, v9, v12, v10, v11}, [I

    move-result-object v0

    return-object v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 45
    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v0

    return-object v0
.end method
