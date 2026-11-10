.class public final Lcom/jichi/ob/util/FitUtcShift;
.super Ljava/lang/Object;
.source "FitUtcShift.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/util/FitUtcShift$DefMsg;,
        Lcom/jichi/ob/util/FitUtcShift$FieldDef;
    }
.end annotation


# static fields
.field private static final CRC_TABLE:[I

.field public static final SHIFT_8H:I = 0x7080

.field private static final WHITELIST:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/16 v2, 0x22

    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/jichi/ob/util/FitUtcShift;->WHITELIST:[[I

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jichi/ob/util/FitUtcShift;->CRC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xcc01
        0xd801
        0x1400
        0xf001
        0x3c00
        0x2800
        0xe401
        0xa001
        0x6c00
        0x7800
        0xb401
        0x5000
        0x9c01
        0x8801
        0x4400
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static doShift([BI)[B
    .locals 21

    .line 53
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 54
    const/16 v3, 0xc

    if-lt v2, v3, :cond_15

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-le v2, v3, :cond_0

    goto/16 :goto_c

    .line 59
    :cond_0
    const/16 v3, 0x10

    new-array v4, v3, [Lcom/jichi/ob/util/FitUtcShift$DefMsg;

    .line 60
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    .line 61
    nop

    .line 64
    new-array v6, v3, [I

    .line 65
    new-array v3, v3, [I

    .line 66
    move v7, v1

    .line 68
    :goto_0
    if-ge v2, v5, :cond_13

    .line 69
    aget-byte v8, v0, v2

    and-int/lit16 v8, v8, 0xff

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 72
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_4

    .line 74
    and-int/lit8 v8, v8, 0xf

    .line 75
    aget-object v8, v4, v8

    .line 76
    if-nez v8, :cond_1

    .line 77
    return-object v0

    .line 80
    :cond_1
    move v9, v1

    :goto_1
    iget v10, v8, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->fieldCount:I

    if-ge v9, v10, :cond_3

    .line 81
    iget v10, v8, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->globalMsg:I

    iget-object v11, v8, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->fieldDefs:[Lcom/jichi/ob/util/FitUtcShift$FieldDef;

    aget-object v11, v11, v9

    iget v11, v11, Lcom/jichi/ob/util/FitUtcShift$FieldDef;->fieldNo:I

    invoke-static {v10, v11}, Lcom/jichi/ob/util/FitUtcShift;->isWhitelisted(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 82
    return-object v0

    .line 80
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 85
    :cond_3
    iget v8, v8, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->recordSize:I

    add-int/2addr v2, v8

    .line 86
    goto :goto_0

    .line 89
    :cond_4
    and-int/lit8 v9, v8, 0xf

    .line 90
    and-int/lit8 v10, v8, 0x20

    const/4 v11, 0x1

    if-eqz v10, :cond_5

    move v10, v11

    goto :goto_2

    :cond_5
    move v10, v1

    .line 91
    :goto_2
    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_6

    move v8, v11

    goto :goto_3

    :cond_6
    move v8, v1

    .line 93
    :goto_3
    if-eqz v8, :cond_b

    .line 94
    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v14, v8, 0xff

    .line 95
    if-eqz v14, :cond_7

    if-eq v14, v11, :cond_7

    .line 96
    return-object v0

    .line 98
    :cond_7
    add-int/lit8 v8, v2, 0x2

    invoke-static {v0, v8, v14}, Lcom/jichi/ob/util/FitUtcShift;->readU16([BII)I

    move-result v13

    .line 99
    add-int/lit8 v8, v2, 0x4

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    .line 100
    add-int/lit8 v2, v2, 0x5

    .line 102
    add-int/lit8 v11, v8, 0x10

    new-array v15, v11, [Lcom/jichi/ob/util/FitUtcShift$FieldDef;

    .line 103
    nop

    .line 104
    nop

    .line 106
    move v11, v1

    move v12, v11

    move/from16 v16, v12

    :goto_4
    if-ge v11, v8, :cond_8

    .line 107
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    .line 108
    add-int/lit8 v17, v2, 0x1

    move/from16 v18, v8

    aget-byte v8, v0, v17

    and-int/lit16 v8, v8, 0xff

    .line 109
    add-int/lit8 v17, v2, 0x2

    move-object/from16 v19, v3

    aget-byte v3, v0, v17

    and-int/lit16 v3, v3, 0xff

    .line 110
    add-int/lit8 v2, v2, 0x3

    .line 111
    add-int/lit8 v17, v12, 0x1

    move/from16 v20, v2

    new-instance v2, Lcom/jichi/ob/util/FitUtcShift$FieldDef;

    invoke-direct {v2, v1, v8, v3}, Lcom/jichi/ob/util/FitUtcShift$FieldDef;-><init>(III)V

    aput-object v2, v15, v12

    .line 112
    add-int v16, v16, v8

    .line 106
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v17

    move/from16 v8, v18

    move-object/from16 v3, v19

    move/from16 v2, v20

    const/4 v1, 0x0

    goto :goto_4

    .line 114
    :cond_8
    move-object/from16 v19, v3

    if-eqz v10, :cond_a

    .line 115
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_9

    .line 118
    aget-byte v8, v0, v2

    and-int/lit16 v8, v8, 0xff

    .line 119
    add-int/lit8 v10, v2, 0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    .line 120
    add-int/lit8 v11, v2, 0x2

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    .line 121
    add-int/lit8 v2, v2, 0x3

    .line 122
    add-int/lit8 v17, v12, 0x1

    move/from16 v18, v1

    new-instance v1, Lcom/jichi/ob/util/FitUtcShift$FieldDef;

    invoke-direct {v1, v8, v10, v11}, Lcom/jichi/ob/util/FitUtcShift$FieldDef;-><init>(III)V

    aput-object v1, v15, v12

    .line 123
    add-int v16, v16, v10

    .line 117
    add-int/lit8 v3, v3, 0x1

    move/from16 v12, v17

    move/from16 v1, v18

    goto :goto_5

    :cond_9
    move/from16 v17, v16

    move/from16 v16, v12

    goto :goto_6

    .line 114
    :cond_a
    move/from16 v17, v16

    move/from16 v16, v12

    .line 126
    :goto_6
    new-instance v1, Lcom/jichi/ob/util/FitUtcShift$DefMsg;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/jichi/ob/util/FitUtcShift$DefMsg;-><init>(II[Lcom/jichi/ob/util/FitUtcShift$FieldDef;II)V

    aput-object v1, v4, v9

    .line 127
    nop

    .line 128
    move-object/from16 v3, v19

    goto :goto_a

    .line 129
    :cond_b
    move-object/from16 v19, v3

    aget-object v1, v4, v9

    .line 130
    if-nez v1, :cond_c

    .line 131
    return-object v0

    .line 133
    :cond_c
    nop

    .line 134
    iget v3, v1, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->recordSize:I

    add-int/2addr v3, v2

    if-le v3, v5, :cond_d

    .line 135
    return-object v0

    .line 137
    :cond_d
    nop

    .line 138
    move-object/from16 v3, v19

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    iget v10, v1, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->fieldCount:I

    if-ge v8, v10, :cond_12

    .line 139
    iget-object v10, v1, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->fieldDefs:[Lcom/jichi/ob/util/FitUtcShift$FieldDef;

    aget-object v10, v10, v8

    .line 140
    iget v11, v1, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->globalMsg:I

    iget v12, v10, Lcom/jichi/ob/util/FitUtcShift$FieldDef;->fieldNo:I

    invoke-static {v11, v12}, Lcom/jichi/ob/util/FitUtcShift;->isWhitelisted(II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 141
    iget v11, v10, Lcom/jichi/ob/util/FitUtcShift$FieldDef;->size:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_10

    iget v11, v10, Lcom/jichi/ob/util/FitUtcShift$FieldDef;->baseType:I

    and-int/lit8 v11, v11, 0x1f

    const/4 v12, 0x6

    if-eq v11, v12, :cond_e

    goto :goto_8

    .line 144
    :cond_e
    array-length v11, v6

    if-lt v7, v11, :cond_f

    .line 145
    mul-int/lit8 v11, v7, 0x2

    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 146
    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 148
    :cond_f
    add-int v11, v2, v9

    aput v11, v6, v7

    .line 149
    iget v11, v1, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->arch:I

    aput v11, v3, v7

    .line 150
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 142
    :cond_10
    :goto_8
    return-object v0

    .line 152
    :cond_11
    :goto_9
    iget v10, v10, Lcom/jichi/ob/util/FitUtcShift$FieldDef;->size:I

    add-int/2addr v9, v10

    .line 138
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 154
    :cond_12
    iget v1, v1, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->recordSize:I

    add-int/2addr v2, v1

    .line 156
    :goto_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 158
    :cond_13
    move-object/from16 v19, v3

    array-length v1, v0

    new-array v2, v1, [B

    .line 159
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    nop

    :goto_b
    if-ge v4, v7, :cond_14

    .line 162
    aget v0, v6, v4

    .line 163
    aget v3, v19, v4

    .line 164
    invoke-static {v2, v0, v3}, Lcom/jichi/ob/util/FitUtcShift;->readU32([BII)I

    move-result v5

    .line 165
    add-int v5, v5, p1

    and-int/lit8 v5, v5, -0x1

    .line 166
    invoke-static {v2, v0, v5, v3}, Lcom/jichi/ob/util/FitUtcShift;->writeU32([BIII)V

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 169
    :cond_14
    add-int/lit8 v1, v1, -0x2

    invoke-static {v2, v1}, Lcom/jichi/ob/util/FitUtcShift;->fitCrc([BI)I

    move-result v0

    .line 170
    invoke-static {v2, v1, v0}, Lcom/jichi/ob/util/FitUtcShift;->writeU16([BII)V

    .line 171
    return-object v2

    .line 55
    :cond_15
    :goto_c
    return-object v0
.end method

.method private static fitCrc([BI)I
    .locals 5

    .line 223
    nop

    .line 224
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 225
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 226
    sget-object v3, Lcom/jichi/ob/util/FitUtcShift;->CRC_TABLE:[I

    and-int/lit8 v4, v1, 0xf

    aget v4, v3, v4

    .line 227
    ushr-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0xfff

    .line 228
    xor-int/2addr v1, v4

    .line 229
    and-int/lit8 v4, v2, 0xf

    aget v4, v3, v4

    xor-int/2addr v1, v4

    .line 230
    and-int/lit8 v4, v1, 0xf

    aget v4, v3, v4

    .line 231
    ushr-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0xfff

    .line 232
    xor-int/2addr v1, v4

    .line 233
    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget v2, v3, v2

    xor-int/2addr v1, v2

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    const p0, 0xffff

    and-int/2addr p0, v1

    return p0
.end method

.method private static isWhitelisted(II)Z
    .locals 6

    .line 175
    sget-object v0, Lcom/jichi/ob/util/FitUtcShift;->WHITELIST:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 176
    aget v5, v4, v2

    if-ne v5, p0, :cond_0

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_0

    .line 177
    return v5

    .line 175
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_1
    return v2
.end method

.method private static readU16([BII)I
    .locals 0

    .line 184
    if-nez p2, :cond_0

    .line 185
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p2

    return p0

    .line 187
    :cond_0
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    return p0
.end method

.method private static readU32([BII)I
    .locals 1

    .line 191
    if-nez p2, :cond_0

    .line 192
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

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p2

    return p0

    .line 197
    :cond_0
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
.end method

.method public static shift([BI)[B
    .locals 2

    .line 42
    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/jichi/ob/util/FitUtcShift;->doShift([BI)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    return-object p0

    .line 43
    :cond_1
    :goto_0
    return-object p0
.end method

.method private static writeU16([BII)V
    .locals 1

    .line 204
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 205
    add-int/lit8 p1, p1, 0x1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    .line 206
    return-void
.end method

.method private static writeU32([BIII)V
    .locals 1

    .line 209
    if-nez p3, :cond_0

    .line 210
    and-int/lit16 p3, p2, 0xff

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    .line 211
    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    .line 212
    add-int/lit8 p3, p1, 0x2

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    .line 213
    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    goto :goto_0

    .line 215
    :cond_0
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

    .line 220
    :goto_0
    return-void
.end method
