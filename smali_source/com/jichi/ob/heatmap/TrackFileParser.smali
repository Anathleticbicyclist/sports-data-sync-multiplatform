.class public Lcom/jichi/ob/heatmap/TrackFileParser;
.super Ljava/lang/Object;
.source "TrackFileParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attr(Ljava/lang/String;Ljava/lang/String;)D
    .locals 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-wide v1, 0x547d42aea2879f2eL    # 1.0E99

    if-gez v0, :cond_0

    return-wide v1

    .line 199
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x22

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_1

    return-wide v1

    .line 201
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide v1
.end method

.method public static parseFile(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, ".fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/jichi/ob/heatmap/TrackFileParser;->parseFit(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    const-string v1, ".gpx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/jichi/ob/heatmap/TrackFileParser;->parseGpx(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    const-string v1, ".tcx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/jichi/ob/heatmap/TrackFileParser;->parseTcx(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 39
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static parseFit(Ljava/io/File;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static/range {p0 .. p0}, Lcom/jichi/ob/heatmap/TrackFileParser;->readAll(Ljava/io/File;)[B

    move-result-object v8

    if-eqz v8, :cond_12

    .line 46
    array-length v0, v8

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v9, 0x0

    .line 47
    aget-byte v0, v8, v9

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc

    if-lt v0, v1, :cond_12

    .line 48
    array-length v1, v8

    if-lt v0, v1, :cond_1

    goto/16 :goto_a

    .line 51
    :cond_1
    array-length v1, v8

    add-int/lit8 v10, v1, -0x2

    const/16 v11, 0x10

    .line 53
    new-array v12, v11, [I

    .line 54
    new-array v13, v11, [[I

    .line 55
    new-array v14, v11, [[I

    .line 56
    new-array v15, v11, [[B

    const/4 v1, 0x0

    :goto_0
    const/16 v16, -0x1

    if-ge v1, v11, :cond_2

    .line 57
    aput v16, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v0, v10, :cond_12

    add-int/lit8 v6, v0, 0x1

    .line 60
    aget-byte v1, v8, v0

    and-int/lit16 v2, v1, 0xff

    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x14

    if-eqz v3, :cond_6

    shr-int/lit8 v0, v2, 0x5

    and-int/lit8 v5, v0, 0x3

    if-ge v5, v11, :cond_3

    .line 64
    aget v0, v12, v5

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    if-ne v0, v4, :cond_4

    if-ge v5, v11, :cond_4

    .line 65
    aget-object v2, v13, v5

    if-eqz v2, :cond_4

    .line 66
    aget-object v3, v14, v5

    aget-object v4, v15, v5

    const/16 v17, 0x1

    move-object v0, v8

    move v1, v6

    move v9, v5

    move-object v5, v7

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lcom/jichi/ob/heatmap/TrackFileParser;->readDataRecord([BI[I[I[BLjava/util/List;I)V

    goto :goto_3

    :cond_4
    move v9, v5

    move/from16 v18, v6

    :goto_3
    if-ge v9, v11, :cond_5

    .line 68
    aget-object v0, v14, v9

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move/from16 v9, v18

    invoke-static {v8, v9, v0}, Lcom/jichi/ob/heatmap/TrackFileParser;->skipCompressed([BI[I)I

    move-result v0

    add-int/2addr v0, v9

    goto/16 :goto_9

    :cond_6
    move v9, v6

    and-int/lit8 v2, v1, 0xf

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_d

    add-int/lit8 v1, v0, 0x6

    if-le v1, v10, :cond_7

    goto/16 :goto_a

    :cond_7
    add-int/lit8 v1, v0, 0x2

    .line 76
    aget-byte v3, v8, v9

    add-int/lit8 v3, v0, 0x3

    .line 77
    aget-byte v1, v8, v1

    .line 78
    aget-byte v1, v8, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v0, 0x4

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v0, 0x5

    add-int/lit8 v0, v0, 0x6

    .line 80
    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-le v3, v4, :cond_8

    const/16 v3, 0x20

    :cond_8
    if-ge v2, v11, :cond_b

    .line 83
    aput v1, v12, v2

    .line 84
    new-array v1, v3, [I

    aput-object v1, v13, v2

    .line 85
    new-array v1, v3, [I

    aput-object v1, v14, v2

    .line 86
    new-array v1, v3, [B

    aput-object v1, v15, v2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_a

    add-int/lit8 v4, v0, 0x3

    if-le v4, v10, :cond_9

    .line 88
    aget-object v3, v13, v2

    aput v16, v3, v1

    aget-object v3, v14, v2

    const/16 v17, 0x0

    aput v17, v3, v1

    aget-object v2, v15, v2

    aput-byte v17, v2, v1

    goto/16 :goto_9

    :cond_9
    const/16 v17, 0x0

    .line 89
    aget-object v4, v13, v2

    add-int/lit8 v5, v0, 0x1

    aget-byte v6, v8, v0

    and-int/lit16 v6, v6, 0xff

    aput v6, v4, v1

    .line 90
    aget-object v4, v14, v2

    add-int/lit8 v6, v0, 0x2

    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v1

    .line 91
    aget-object v4, v15, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte v5, v8, v6

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    goto :goto_9

    :cond_b
    const/16 v17, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_11

    add-int/lit8 v2, v0, 0x3

    if-le v2, v10, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_6

    :cond_d
    const/16 v17, 0x0

    if-ge v2, v11, :cond_f

    .line 103
    aget-object v0, v14, v2

    if-eqz v0, :cond_f

    .line 105
    array-length v1, v0

    const/4 v3, 0x0

    const/16 v18, 0x0

    :goto_7
    if-ge v3, v1, :cond_e

    aget v5, v0, v3

    add-int v18, v18, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 106
    :cond_e
    aget v0, v12, v2

    if-ne v0, v4, :cond_10

    aget-object v3, v13, v2

    if-eqz v3, :cond_10

    .line 107
    aget-object v4, v14, v2

    aget-object v5, v15, v2

    const/4 v6, 0x0

    move-object v0, v8

    move v1, v9

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcom/jichi/ob/heatmap/TrackFileParser;->readDataRecord([BI[I[I[BLjava/util/List;I)V

    goto :goto_8

    :cond_f
    const/16 v18, 0x0

    :cond_10
    :goto_8
    add-int v6, v9, v18

    move v0, v6

    :cond_11
    :goto_9
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_12
    :goto_a
    return-object v7
.end method

.method public static parseGpx(Ljava/io/File;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {p0}, Lcom/jichi/ob/heatmap/TrackFileParser;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 154
    :goto_0
    const-string v3, "<trkpt"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x3e

    .line 156
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_2

    :goto_1
    return-object v0

    .line 158
    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string v4, "lat"

    invoke-static {v2, v4}, Lcom/jichi/ob/heatmap/TrackFileParser;->attr(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    .line 160
    const-string v6, "lon"

    invoke-static {v2, v6}, Lcom/jichi/ob/heatmap/TrackFileParser;->attr(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x547d42aea2879f2eL    # 1.0E99

    cmpl-double v2, v4, v8

    if-eqz v2, :cond_3

    cmpl-double v2, v6, v8

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 161
    new-array v2, v2, [D

    aput-wide v4, v2, v1

    const/4 v4, 0x1

    aput-wide v6, v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v3, 0x1

    goto :goto_0
.end method

.method public static parseTcx(Ljava/io/File;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-static {p0}, Lcom/jichi/ob/heatmap/TrackFileParser;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-wide v2, 0x547d42aea2879f2eL    # 1.0E99

    move-wide v5, v2

    move-wide v7, v5

    const/4 v4, 0x0

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 175
    const-string v9, "<LatitudeDegrees>"

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 176
    const-string v10, "<LongitudeDegrees>"

    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v9, :cond_2

    if-gez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ltz v9, :cond_5

    if-ltz v4, :cond_3

    if-ge v9, v4, :cond_5

    .line 179
    :cond_3
    const-string v4, "</LatitudeDegrees>"

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x12

    .line 181
    :try_start_0
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    move-wide v5, v2

    :goto_1
    add-int/lit8 v4, v4, 0x12

    cmpl-double v9, v5, v2

    if-eqz v9, :cond_1

    cmpl-double v9, v7, v2

    if-eqz v9, :cond_1

    .line 183
    new-array v9, v11, [D

    aput-wide v5, v9, v1

    aput-wide v7, v9, v10

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v5, v2

    :goto_2
    move-wide v7, v5

    goto :goto_0

    .line 185
    :cond_5
    const-string v7, "</LongitudeDegrees>"

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-gez v7, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x13

    .line 187
    :try_start_1
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    move-wide v8, v2

    :goto_3
    add-int/lit8 v7, v7, 0x13

    cmpl-double v4, v5, v2

    if-eqz v4, :cond_7

    cmpl-double v4, v8, v2

    if-eqz v4, :cond_7

    .line 189
    new-array v4, v11, [D

    aput-wide v5, v4, v1

    aput-wide v8, v4, v10

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v5, v2

    move v4, v7

    goto :goto_2

    :cond_7
    move v4, v7

    move-wide v7, v8

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-object v0
.end method

.method private static readAll(Ljava/io/File;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 205
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x4000000

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_2

    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    .line 207
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_2

    sub-int v3, v1, p0

    .line 211
    :try_start_0
    invoke-virtual {v2, v0, p0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p0, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 216
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 217
    throw p0

    .line 216
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readDataRecord([BI[I[I[BLjava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[I[I[B",
            "Ljava/util/List<",
            "[D>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    move/from16 v4, p1

    move/from16 v5, p6

    move-wide v6, v2

    move-wide v8, v6

    .line 127
    :goto_0
    array-length v10, v1

    const/4 v11, 0x1

    if-ge v5, v10, :cond_2

    .line 128
    aget v10, v1, v5

    .line 129
    aget v12, p3, v5

    const-wide v13, 0x3e76800000000000L    # 8.381903171539307E-8

    const/4 v15, 0x4

    if-nez v10, :cond_0

    if-ne v12, v15, :cond_0

    .line 131
    invoke-static {v0, v4}, Lcom/jichi/ob/heatmap/TrackFileParser;->readSint32([BI)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v13

    goto :goto_1

    :cond_0
    if-ne v10, v11, :cond_1

    if-ne v12, v15, :cond_1

    .line 133
    invoke-static {v0, v4}, Lcom/jichi/ob/heatmap/TrackFileParser;->readSint32([BI)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v13

    :cond_1
    :goto_1
    add-int/2addr v4, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    cmpl-double v0, v6, v2

    if-nez v0, :cond_3

    cmpl-double v0, v8, v2

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v6, v0, v1

    aput-wide v8, v0, v11

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private static readSint32([BI)I
    .locals 2

    .line 143
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x4000000

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/jichi/ob/heatmap/TrackFileParser;->readAll(Ljava/io/File;)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static scanFiles(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 22
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 23
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 24
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 25
    const-string v5, ".fit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".gpx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".tcx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static skipCompressed([BI[I)I
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 118
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v2, p2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    aget p0, p2, p0

    sub-int/2addr v1, p0

    return v1

    :cond_2
    :goto_1
    return p0
.end method
