.class public final Lcom/jichi/ob/util/XingzheFitNormalizer;
.super Ljava/lang/Object;
.source "XingzheFitNormalizer.java"


# static fields
.field private static final FIELD_LOCAL_TIMESTAMP:I = 0x5

.field private static final FIELD_TIMESTAMP:I = 0xfd

.field private static final MESG_ACTIVITY:I = 0x22

.field private static final SHIFT_8H:I = 0x7080


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findActivity([B)[I
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 51
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    new-array v4, v3, [I

    new-array v5, v3, [I

    new-array v6, v3, [[I

    new-array v7, v3, [Z

    new-array v3, v3, [I

    .line 60
    :goto_13
    array-length v8, v0

    const/4 v9, 0x0

    if-ge v2, v8, :cond_11e

    .line 61
    aget-byte v8, v0, v2

    and-int/lit16 v10, v8, 0xff

    and-int/lit8 v11, v8, 0xf

    and-int/lit16 v12, v8, 0x80

    const/4 v13, 0x1

    if-eqz v12, :cond_24

    move v12, v13

    goto :goto_25

    :cond_24
    move v12, v1

    :goto_25
    if-eqz v12, :cond_41

    shr-int/lit8 v8, v10, 0x1

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v2, v2, 0x1

    .line 69
    aget-boolean v10, v7, v11

    if-nez v10, :cond_32

    return-object v9

    .line 72
    :cond_32
    aget v10, v3, v11

    and-int/lit8 v12, v10, -0x20

    add-int/2addr v12, v8

    and-int/lit8 v10, v10, 0x1f

    if-ge v8, v10, :cond_3d

    add-int/lit8 v12, v12, 0x20

    .line 77
    :cond_3d
    aput v12, v3, v11

    goto/16 :goto_ae

    :cond_41
    add-int/lit8 v10, v2, 0x1

    .line 81
    aget-boolean v12, v7, v11

    if-nez v12, :cond_ac

    add-int/lit8 v10, v2, 0x6

    .line 83
    array-length v12, v0

    if-le v10, v12, :cond_4d

    return-object v9

    :cond_4d
    add-int/lit8 v9, v2, 0x2

    .line 86
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v12, v2, 0x3

    if-nez v9, :cond_5c

    .line 87
    invoke-static {v0, v12}, Lcom/jichi/ob/util/XingzheFitNormalizer;->u16le([BI)I

    move-result v12

    goto :goto_60

    :cond_5c
    invoke-static {v0, v12}, Lcom/jichi/ob/util/XingzheFitNormalizer;->u16be([BI)I

    move-result v12

    :goto_60
    add-int/lit8 v2, v2, 0x5

    .line 88
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v14, v2, 0x3

    .line 90
    new-array v14, v14, [I

    move v15, v1

    :goto_6b
    if-ge v15, v2, :cond_90

    mul-int/lit8 v16, v15, 0x3

    .line 92
    aget-byte v1, v0, v10

    and-int/lit16 v1, v1, 0xff

    aput v1, v14, v16

    add-int/lit8 v1, v16, 0x1

    add-int/lit8 v17, v10, 0x1

    .line 93
    aget-byte v13, v0, v17

    and-int/lit16 v13, v13, 0xff

    aput v13, v14, v1

    add-int/lit8 v16, v16, 0x2

    add-int/lit8 v1, v10, 0x2

    .line 94
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v14, v16

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    const/4 v13, 0x1

    goto :goto_6b

    :cond_90
    and-int/lit8 v1, v8, 0x20

    if-eqz v1, :cond_a0

    .line 99
    array-length v1, v0

    if-ge v10, v1, :cond_a0

    .line 100
    aget-byte v1, v0, v10

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v10, v1

    :cond_a0
    move v2, v10

    .line 104
    aput v12, v4, v11

    .line 105
    aput v9, v5, v11

    .line 106
    aput-object v14, v6, v11

    const/4 v1, 0x1

    .line 107
    aput-boolean v1, v7, v11

    goto/16 :goto_11b

    :cond_ac
    const/4 v12, -0x1

    move v2, v10

    .line 113
    :goto_ae
    aget-object v1, v6, v11

    .line 114
    aget v8, v4, v11

    .line 115
    aget v10, v5, v11

    move-object v14, v9

    move-object v15, v14

    const/4 v13, 0x0

    .line 119
    :goto_b7
    array-length v9, v1

    move-object/from16 v17, v4

    if-ge v13, v9, :cond_f6

    .line 120
    aget v9, v1, v13

    add-int/lit8 v18, v13, 0x1

    .line 121
    aget v4, v1, v18

    move-object/from16 v18, v1

    add-int v1, v2, v4

    move-object/from16 v19, v5

    .line 122
    array-length v5, v0

    if-le v1, v5, :cond_cd

    const/4 v5, 0x0

    return-object v5

    :cond_cd
    const/16 v5, 0x22

    if-ne v8, v5, :cond_ec

    const/4 v5, 0x4

    if-ne v4, v5, :cond_ec

    const/16 v4, 0xfd

    if-ne v9, v4, :cond_e1

    .line 127
    invoke-static {v0, v2, v10}, Lcom/jichi/ob/util/XingzheFitNormalizer;->readU32([BII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_ec

    :cond_e1
    const/4 v4, 0x5

    if-ne v9, v4, :cond_ec

    .line 129
    invoke-static {v0, v2, v10}, Lcom/jichi/ob/util/XingzheFitNormalizer;->readU32([BII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :cond_ec
    :goto_ec
    add-int/lit8 v13, v13, 0x3

    move v2, v1

    move-object/from16 v4, v17

    move-object/from16 v1, v18

    move-object/from16 v5, v19

    goto :goto_b7

    :cond_f6
    move-object/from16 v19, v5

    const/16 v1, 0x22

    if-ne v8, v1, :cond_117

    if-eqz v14, :cond_104

    .line 137
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v3, v11

    :cond_104
    if-eqz v14, :cond_10a

    .line 139
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_10a
    if-ltz v12, :cond_117

    if-eqz v15, :cond_117

    .line 141
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    filled-new-array {v12, v0}, [I

    move-result-object v0

    return-object v0

    :cond_117
    move-object/from16 v4, v17

    move-object/from16 v5, v19

    :goto_11b
    const/4 v1, 0x0

    goto/16 :goto_13

    :cond_11e
    move-object v1, v9

    return-object v1
.end method

.method public static normalize([B)[B
    .registers 4

    if-eqz p0, :cond_21

    .line 28
    :try_start_2
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    goto :goto_21

    .line 31
    :cond_8
    invoke-static {p0}, Lcom/jichi/ob/util/XingzheFitNormalizer;->findActivity([B)[I

    move-result-object v0

    if-nez v0, :cond_f

    return-object p0

    :cond_f
    const/4 v1, 0x0

    .line 35
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 36
    aget v0, v0, v2

    sub-int/2addr v0, v1

    if-nez v0, :cond_21

    const/16 v0, 0x7080

    .line 38
    invoke-static {p0, v0}, Lcom/jichi/ob/util/FitUtcShift;->shift([BI)[B

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_21

    if-eqz v0, :cond_21

    move-object p0, v0

    :catchall_21
    :cond_21
    :goto_21
    return-object p0
.end method

.method private static readU32([BII)I
    .registers 4

    if-nez p2, :cond_20

    .line 158
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    :goto_1c
    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p2

    return p0

    :cond_20
    add-int/lit8 p2, p1, 0x3

    .line 163
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    aget-byte p0, p0, p1

    goto :goto_1c
.end method

.method private static u16be([BI)I
    .registers 3

    .line 153
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static u16le([BI)I
    .registers 3

    .line 149
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method
