.class public final Lcom/jichi/ob/util/MageneFitTz;
.super Ljava/lang/Object;
.source "MageneFitTz.java"


# static fields
.field private static final BASE_UINT32:I = 0x6

.field private static final DAY:I = 0x15180

.field private static final FIT_EPOCH:I = 0x259d4c00

.field public static final SHIFT_8H:I = 0x7080

.field private static final TBL:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 235
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/jichi/ob/util/MageneFitTz;->TBL:[I

    .line 238
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 239
    nop

    .line 240
    move v3, v1

    move v4, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    .line 241
    and-int/lit8 v5, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_0

    const v5, 0xa001

    xor-int/2addr v4, v5

    .line 240
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 243
    :cond_1
    sget-object v3, Lcom/jichi/ob/util/MageneFitTz;->TBL:[I

    aput v4, v3, v2

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static fitCrc([BI)I
    .locals 5

    .line 228
    nop

    .line 229
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 230
    shr-int/lit8 v2, v1, 0x8

    sget-object v3, Lcom/jichi/ob/util/MageneFitTz;->TBL:[I

    aget-byte v4, p0, v0

    xor-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    aget v1, v3, v1

    xor-int/2addr v1, v2

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    const p0, 0xffff

    and-int/2addr p0, v1

    return p0
.end method

.method public static isFit([B)Z
    .locals 2

    .line 27
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8

    aget-byte v0, p0, v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    aget-byte v0, p0, v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    aget-byte v0, p0, v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    aget-byte p0, p0, v0

    const/16 v0, 0x54

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static meta([B)[J
    .locals 29

    .line 33
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/jichi/ob/util/MageneFitTz;->isFit([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 34
    return-object v2

    .line 36
    :cond_0
    const/4 v1, 0x0

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    .line 37
    array-length v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    .line 38
    const/16 v6, 0x10

    new-array v7, v6, [[I

    .line 39
    new-array v8, v6, [[I

    .line 40
    new-array v6, v6, [[[I

    .line 41
    nop

    .line 42
    nop

    .line 44
    const/4 v11, -0x1

    move/from16 v18, v1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 45
    :goto_0
    const/4 v10, 0x3

    const/4 v9, 0x1

    if-ge v3, v4, :cond_d

    .line 46
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    .line 48
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_1

    .line 49
    shr-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v10

    .line 50
    add-int/lit8 v3, v3, 0x1

    move/from16 v26, v4

    goto/16 :goto_4

    .line 51
    :cond_1
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_5

    .line 52
    and-int/lit8 v2, v2, 0xf

    .line 53
    add-int/lit8 v3, v3, 0x2

    .line 54
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    .line 55
    add-int/2addr v3, v9

    .line 56
    if-ne v5, v9, :cond_2

    move v5, v9

    goto :goto_1

    :cond_2
    move v5, v1

    .line 57
    :goto_1
    if-ne v5, v9, :cond_3

    .line 58
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v21, v3, 0x1

    aget-byte v10, v0, v21

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v1, v10

    goto :goto_2

    .line 59
    :cond_3
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v1, v10

    .line 60
    :goto_2
    add-int/lit8 v3, v3, 0x2

    .line 61
    aget-byte v10, v0, v3

    and-int/lit16 v10, v10, 0xff

    .line 62
    add-int/2addr v3, v9

    .line 63
    const/4 v9, 0x3

    filled-new-array {v10, v9}, [I

    move-result-object v9

    move/from16 v21, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 64
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_4

    .line 65
    aget-object v22, v3, v9

    move/from16 v26, v4

    aget-byte v4, v0, v21

    and-int/lit16 v4, v4, 0xff

    const/16 v24, 0x0

    aput v4, v22, v24

    .line 66
    add-int/lit8 v4, v21, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v25, 0x1

    aput v4, v22, v25

    .line 67
    add-int/lit8 v4, v21, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v23, 0x2

    aput v4, v22, v23

    .line 68
    add-int/lit8 v21, v21, 0x3

    .line 64
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v26

    goto :goto_3

    .line 70
    :cond_4
    move/from16 v26, v4

    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v7, v2

    .line 71
    filled-new-array {v5}, [I

    move-result-object v1

    aput-object v1, v8, v2

    .line 72
    aput-object v3, v6, v2

    .line 73
    move/from16 v3, v21

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 75
    :cond_5
    move/from16 v26, v4

    and-int/lit8 v2, v2, 0xf

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 78
    :goto_4
    aget-object v1, v6, v2

    if-nez v1, :cond_6

    .line 79
    const/4 v4, 0x0

    return-object v4

    .line 81
    :cond_6
    const/4 v4, 0x0

    aget-object v5, v7, v2

    const/16 v24, 0x0

    aget v5, v5, v24

    .line 82
    aget-object v2, v8, v2

    aget v2, v2, v24

    .line 83
    nop

    .line 84
    move/from16 v9, v24

    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_c

    .line 85
    aget-object v10, v1, v9

    aget v4, v10, v24

    .line 86
    move-object/from16 v27, v1

    const/16 v25, 0x1

    aget v1, v10, v25

    .line 87
    const/16 v23, 0x2

    aget v10, v10, v23

    .line 88
    move-object/from16 v28, v6

    const/4 v6, 0x4

    if-ne v1, v6, :cond_a

    and-int/lit8 v6, v10, 0x1f

    const/4 v10, 0x6

    if-ne v6, v10, :cond_a

    .line 89
    invoke-static {v0, v3, v2}, Lcom/jichi/ob/util/MageneFitTz;->readU32([BII)I

    move-result v6

    .line 90
    const/16 v10, 0x14

    if-ne v5, v10, :cond_7

    const/16 v10, 0xfd

    if-ne v4, v10, :cond_7

    const-wide/16 v19, 0x0

    cmp-long v10, v12, v19

    if-nez v10, :cond_7

    .line 91
    int-to-long v12, v6

    const-wide/16 v19, 0x0

    goto :goto_6

    .line 92
    :cond_7
    const/16 v10, 0x13

    if-ne v5, v10, :cond_8

    const/4 v10, 0x2

    if-ne v4, v10, :cond_8

    const-wide/16 v19, 0x0

    cmp-long v10, v14, v19

    if-nez v10, :cond_8

    .line 93
    int-to-long v14, v6

    const-wide/16 v19, 0x0

    goto :goto_6

    .line 94
    :cond_8
    const/16 v10, 0x22

    if-ne v5, v10, :cond_9

    const/4 v10, 0x5

    if-ne v4, v10, :cond_9

    const-wide/16 v19, 0x0

    cmp-long v4, v16, v19

    if-nez v4, :cond_b

    .line 95
    int-to-long v10, v6

    .line 96
    nop

    .line 97
    move/from16 v18, v2

    move-wide/from16 v16, v10

    move v11, v3

    goto :goto_6

    .line 94
    :cond_9
    const-wide/16 v19, 0x0

    goto :goto_6

    .line 88
    :cond_a
    const-wide/16 v19, 0x0

    .line 100
    :cond_b
    :goto_6
    add-int/2addr v3, v1

    .line 84
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v27

    move-object/from16 v6, v28

    const/4 v4, 0x0

    const/16 v24, 0x0

    goto :goto_5

    .line 102
    :cond_c
    move-object/from16 v28, v6

    const-wide/16 v19, 0x0

    move/from16 v4, v26

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 103
    :cond_d
    const/4 v0, 0x5

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v12, v0, v1

    const/4 v1, 0x1

    aput-wide v14, v0, v1

    const/4 v1, 0x2

    aput-wide v16, v0, v1

    int-to-long v1, v11

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    move/from16 v1, v18

    int-to-long v1, v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public static normalizeAuto([B)[B
    .locals 16

    .line 162
    invoke-static/range {p0 .. p0}, Lcom/jichi/ob/util/MageneFitTz;->meta([B)[J

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    return-object p0

    .line 166
    :cond_0
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    const/4 v7, 0x2

    aget-wide v8, v0, v7

    .line 167
    const/4 v10, 0x3

    aget-wide v10, v0, v10

    long-to-int v10, v10

    const/4 v11, 0x4

    aget-wide v11, v0, v11

    long-to-int v0, v11

    .line 168
    const-wide/16 v11, 0x0

    cmp-long v13, v2, v11

    if-lez v13, :cond_7

    cmp-long v13, v5, v11

    if-gtz v13, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    cmp-long v11, v8, v11

    const-wide/16 v12, 0x7080

    if-nez v11, :cond_2

    .line 173
    goto :goto_0

    .line 174
    :cond_2
    cmp-long v1, v8, v2

    if-nez v1, :cond_3

    .line 175
    move v1, v4

    goto :goto_0

    .line 176
    :cond_3
    add-long v14, v2, v12

    cmp-long v1, v8, v14

    if-nez v1, :cond_6

    .line 177
    move v1, v7

    .line 181
    :goto_0
    if-eqz v1, :cond_4

    .line 182
    return-object p0

    .line 184
    :cond_4
    invoke-virtual/range {p0 .. p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 185
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 186
    const-wide/32 v8, 0x15180

    sub-long v14, v2, v8

    long-to-int v11, v14

    .line 187
    add-long/2addr v2, v8

    long-to-int v2, v2

    .line 188
    invoke-static {v1, v11, v2}, Lcom/jichi/ob/util/MageneFitTz;->shiftPass([BII)V

    .line 189
    if-lez v10, :cond_5

    .line 190
    add-long/2addr v5, v12

    long-to-int v2, v5

    invoke-static {v1, v10, v2, v0}, Lcom/jichi/ob/util/MageneFitTz;->writeU32([BIII)V

    .line 192
    :cond_5
    array-length v0, v1

    sub-int/2addr v0, v7

    invoke-static {v1, v0}, Lcom/jichi/ob/util/MageneFitTz;->fitCrc([BI)I

    move-result v0

    .line 193
    array-length v2, v1

    sub-int/2addr v2, v7

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 194
    array-length v2, v1

    sub-int/2addr v2, v4

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 195
    return-object v1

    .line 179
    :cond_6
    return-object p0

    .line 169
    :cond_7
    :goto_1
    return-object p0
.end method

.method private static readU32([BII)I
    .locals 2

    .line 199
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 200
    const/4 p0, 0x0

    return p0

    .line 202
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 203
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    return p0

    .line 206
    :cond_1
    add-int/lit8 p2, p1, 0x3

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    return p0
.end method

.method private static shiftPass([BII)V
    .locals 15

    .line 108
    move-object v0, p0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 109
    array-length v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    .line 110
    const/16 v5, 0x10

    new-array v6, v5, [[I

    .line 111
    new-array v5, v5, [[[I

    .line 112
    nop

    .line 113
    :goto_0
    if-ge v2, v3, :cond_9

    .line 114
    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    .line 116
    and-int/lit16 v8, v7, 0x80

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    .line 117
    shr-int/lit8 v7, v7, 0x5

    and-int/2addr v7, v9

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 119
    :cond_0
    and-int/lit8 v8, v7, 0x40

    if-eqz v8, :cond_3

    .line 120
    and-int/lit8 v7, v7, 0xf

    .line 121
    add-int/lit8 v2, v2, 0x2

    .line 122
    aget-byte v8, v0, v2

    and-int/lit16 v8, v8, 0xff

    .line 123
    add-int/2addr v2, v10

    .line 124
    if-ne v8, v10, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v1

    .line 125
    :goto_1
    add-int/2addr v2, v4

    .line 126
    aget-byte v11, v0, v2

    and-int/lit16 v11, v11, 0xff

    .line 127
    add-int/2addr v2, v10

    .line 128
    filled-new-array {v11, v9}, [I

    move-result-object v9

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    .line 129
    move v12, v1

    :goto_2
    if-ge v12, v11, :cond_2

    .line 130
    aget-object v13, v9, v12

    add-int/lit8 v14, v2, 0x1

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v13, v10

    .line 131
    add-int/lit8 v14, v2, 0x2

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v13, v4

    .line 132
    add-int/lit8 v2, v2, 0x3

    .line 129
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 134
    :cond_2
    filled-new-array {v8}, [I

    move-result-object v8

    aput-object v8, v6, v7

    .line 135
    aput-object v9, v5, v7

    .line 136
    goto :goto_0

    .line 138
    :cond_3
    and-int/lit8 v7, v7, 0xf

    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 141
    :goto_3
    aget-object v8, v5, v7

    if-nez v8, :cond_4

    .line 142
    return-void

    .line 144
    :cond_4
    aget-object v7, v6, v7

    aget v7, v7, v1

    .line 145
    nop

    .line 146
    move v9, v1

    :goto_4
    array-length v11, v8

    if-ge v9, v11, :cond_8

    .line 147
    aget-object v11, v8, v9

    aget v12, v11, v10

    .line 148
    aget v11, v11, v4

    .line 149
    const/4 v13, 0x4

    if-ne v12, v13, :cond_6

    and-int/lit8 v11, v11, 0x1f

    const/4 v13, 0x6

    if-ne v11, v13, :cond_6

    .line 150
    invoke-static {p0, v2, v7}, Lcom/jichi/ob/util/MageneFitTz;->readU32([BII)I

    move-result v11

    .line 151
    move/from16 v13, p1

    if-lt v11, v13, :cond_5

    move/from16 v14, p2

    if-gt v11, v14, :cond_7

    .line 152
    add-int/lit16 v11, v11, 0x7080

    invoke-static {p0, v2, v11, v7}, Lcom/jichi/ob/util/MageneFitTz;->writeU32([BIII)V

    goto :goto_5

    .line 151
    :cond_5
    move/from16 v14, p2

    goto :goto_5

    .line 149
    :cond_6
    move/from16 v13, p1

    move/from16 v14, p2

    .line 155
    :cond_7
    :goto_5
    add-int/2addr v2, v12

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 157
    :cond_8
    move/from16 v13, p1

    move/from16 v14, p2

    goto/16 :goto_0

    .line 158
    :cond_9
    return-void
.end method

.method private static writeU32([BIII)V
    .locals 2

    .line 211
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 215
    shr-int/lit8 p3, p2, 0x18

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    .line 216
    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    .line 217
    add-int/lit8 p3, p1, 0x2

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    .line 218
    add-int/lit8 p1, p1, 0x3

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    goto :goto_0

    .line 220
    :cond_1
    and-int/lit16 p3, p2, 0xff

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    .line 221
    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    .line 222
    add-int/lit8 p3, p1, 0x2

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    .line 223
    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    .line 225
    :goto_0
    return-void
.end method
