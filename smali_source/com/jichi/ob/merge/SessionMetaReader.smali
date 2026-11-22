.class public final Lcom/jichi/ob/merge/SessionMetaReader;
.super Ljava/lang/Object;
.source "SessionMetaReader.java"


# static fields
.field private static final FIT_EPOCH_OFFSET_SEC:J = 0x259d4c00L

.field private static final NUM_RECORD:I = 0x14

.field private static final NUM_SESSION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "OBMERGE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static summarize(Ljava/util/List;)Lcom/jichi/ob/merge/MergeMetrics;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/jichi/ob/merge/MergeMetrics;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 33
    const-string v2, "OBMERGE"

    if-eqz v1, :cond_1cb

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_1cb

    .line 37
    :cond_e
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "summarize: segs="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    .line 39
    new-array v15, v3, [J

    .line 40
    new-array v14, v3, [D

    .line 41
    new-array v13, v3, [J

    const/4 v0, 0x1

    .line 42
    new-array v12, v0, [I

    const/16 v18, 0x0

    aput v18, v12, v18

    .line 44
    new-array v11, v0, [D

    const-wide/16 v4, 0x0

    aput-wide v4, v11, v18

    .line 45
    filled-new-array/range {v18 .. v18}, [I

    move-result-object v19

    .line 46
    new-array v10, v0, [D

    aput-wide v4, v10, v18

    .line 47
    new-array v9, v0, [D

    aput-wide v4, v9, v18

    .line 48
    new-array v8, v0, [J

    const-wide/16 v20, 0x0

    aput-wide v20, v8, v18

    .line 49
    new-array v7, v0, [I

    aput v18, v7, v18

    .line 50
    new-array v6, v0, [I

    aput v18, v6, v18

    .line 51
    new-array v5, v0, [I

    aput v18, v5, v18

    .line 52
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 54
    new-instance v4, Lcom/jichi/ob/merge/SessionMetaReader$1;

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v5, v7

    move-object/from16 v25, v6

    move-object v6, v11

    move-object/from16 v26, v7

    move-object v7, v13

    move-object/from16 v27, v8

    move-object v8, v12

    move-object/from16 v28, v9

    move-object/from16 v9, v19

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object v11, v14

    move-object/from16 v31, v12

    move-object/from16 v12, v28

    move-object/from16 v32, v13

    move-object v13, v15

    move-object/from16 v33, v14

    move-object/from16 v14, v27

    move-object/from16 v34, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v22

    move-object/from16 v17, v24

    invoke-direct/range {v4 .. v17}, Lcom/jichi/ob/merge/SessionMetaReader$1;-><init>([I[D[J[I[I[D[D[D[J[J[ILjava/util/HashMap;[I)V

    move/from16 v4, v18

    .line 106
    :goto_8e
    const-string v5, " dist="

    if-ge v4, v3, :cond_158

    .line 107
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [B

    .line 108
    aput v4, v31, v18

    .line 109
    const-string v7, "seg "

    if-eqz v6, :cond_134

    array-length v0, v6

    if-nez v0, :cond_a4

    goto/16 :goto_134

    .line 113
    :cond_a4
    aput v18, v26, v18

    .line 114
    aput v18, v25, v18

    .line 115
    aput v18, v24, v18

    .line 117
    :try_start_aa
    new-instance v0, Lcom/garmin/fit/Decode;

    invoke-direct {v0}, Lcom/garmin/fit/Decode;-><init>()V
    :try_end_af
    .catchall {:try_start_aa .. :try_end_af} :catchall_bf

    move-object/from16 v8, v23

    .line 118
    :try_start_b1
    invoke-virtual {v0, v8}, Lcom/garmin/fit/Decode;->addListener(Lcom/garmin/fit/MesgListener;)V

    .line 119
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    invoke-virtual {v0, v9}, Lcom/garmin/fit/Decode;->read(Ljava/io/InputStream;)Z
    :try_end_bc
    .catchall {:try_start_b1 .. :try_end_bc} :catchall_bd

    goto :goto_dd

    :catchall_bd
    move-exception v0

    goto :goto_c2

    :catchall_bf
    move-exception v0

    move-object/from16 v8, v23

    .line 123
    :goto_c2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " decode end: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_dd
    array-length v0, v6

    aget v6, v26, v18

    aget v9, v25, v18

    aget v10, v24, v18

    aget-wide v11, v33, v4

    aget-wide v13, v32, v4

    move-object v15, v2

    aget-wide v1, v34, v4

    move/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " len="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ses="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rec="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " spd="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " timer="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " start="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v15

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    :cond_134
    :goto_134
    move-object v1, v2

    move/from16 v16, v3

    move-object/from16 v8, v23

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " null/empty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14d
    add-int/lit8 v4, v4, 0x1

    move-object v2, v1

    move-object/from16 v23, v8

    move/from16 v3, v16

    move-object/from16 v1, p0

    goto/16 :goto_8e

    :cond_158
    move-object v1, v2

    .line 132
    aget-wide v2, v27, v18

    cmp-long v0, v2, v20

    if-lez v0, :cond_168

    const-wide/32 v6, 0x259d4c00

    add-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    move-wide v14, v2

    goto :goto_16a

    :cond_168
    move-wide/from16 v14, v20

    .line 135
    :goto_16a
    aget-wide v2, v30, v18

    aget v0, v19, v18

    aget-wide v6, v29, v18

    aget-wide v8, v28, v18

    .line 137
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "metrics timer="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " cal="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " max="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " endMs="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " map="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Lcom/jichi/ob/merge/MergeMetrics;

    move-object v4, v0

    aget-wide v1, v30, v18

    double-to-long v7, v1

    aget v9, v19, v18

    aget-wide v10, v28, v18

    aget-wide v12, v29, v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v18, v22

    move-object/from16 v19, v34

    move-object/from16 v20, v33

    move-object/from16 v21, v32

    invoke-direct/range {v4 .. v21}, Lcom/jichi/ob/merge/MergeMetrics;-><init>(JJIDDJI[JLjava/util/HashMap;[J[D[J)V

    return-object v0

    :cond_1cb
    :goto_1cb
    move-object v1, v2

    .line 34
    const-string v0, "summarize: segs empty, return null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
