.class public final Lcom/jichi/ob/api/FitDeviceFixer;
.super Ljava/lang/Object;
.source "FitDeviceFixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/FitDeviceFixer$Def;
    }
.end annotation


# static fields
.field private static final CRC_TABLE:[I

.field private static final GARMIN_EDGE_830:I = 0xc32

.field private static final GARMIN_FORERUNNER_945:I = 0xb97

.field private static final GARMIN_MANUFACTURER:I = 0x1

.field public static final INSTANCE:Lcom/jichi/ob/api/FitDeviceFixer;

.field private static final MSG_DEVICE_INFO:I = 0x17

.field private static final MSG_FILE_ID:I = 0x0

.field private static final MSG_SPORT:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/jichi/ob/api/FitDeviceFixer;

    invoke-direct {v0}, Lcom/jichi/ob/api/FitDeviceFixer;-><init>()V

    sput-object v0, Lcom/jichi/ob/api/FitDeviceFixer;->INSTANCE:Lcom/jichi/ob/api/FitDeviceFixer;

    const/16 v0, 0x10

    .line 30
    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/jichi/ob/api/FitDeviceFixer;->CRC_TABLE:[I

    return-void

    nop

    :array_12
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
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dataEnd([B)I
    .registers 3

    .line 76
    invoke-static {p0}, Lcom/jichi/ob/api/FitDeviceFixer;->headerSize([B)I

    move-result v0

    const/4 v1, 0x4

    .line 77
    invoke-static {p0, v1}, Lcom/jichi/ob/api/FitDeviceFixer;->readU32([BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    array-length p0, p0

    add-int/lit8 p0, p0, -0x2

    if-lez v1, :cond_11

    if-le v0, p0, :cond_12

    :cond_11
    move v0, p0

    :cond_12
    return v0
.end method

.method private static findOff(Lcom/jichi/ob/api/FitDeviceFixer$Def;I)I
    .registers 4

    const/4 v0, 0x0

    .line 170
    :goto_1
    iget-object v1, p0, Lcom/jichi/ob/api/FitDeviceFixer$Def;->nums:[I

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 171
    iget-object v1, p0, Lcom/jichi/ob/api/FitDeviceFixer$Def;->nums:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method private static fitCrc([BII)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge p1, p2, :cond_2a

    .line 295
    aget-byte v1, p0, p1

    and-int/lit16 v2, v1, 0xff

    .line 296
    sget-object v3, Lcom/jichi/ob/api/FitDeviceFixer;->CRC_TABLE:[I

    and-int/lit8 v4, v0, 0xf

    aget v4, v3, v4

    shr-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xfff

    xor-int/2addr v0, v4

    and-int/lit8 v1, v1, 0xf

    .line 298
    aget v1, v3, v1

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0xf

    .line 299
    aget v1, v3, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xfff

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v2, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 301
    aget v1, v3, v1

    xor-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2a
    const p0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static headerSize([B)I
    .registers 3

    const/4 v0, 0x0

    .line 68
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xc

    if-eq p0, v0, :cond_e

    const/16 v1, 0xe

    if-eq p0, v1, :cond_e

    return v0

    :cond_e
    return p0
.end method

.method private static parseDef([BII[I)Lcom/jichi/ob/api/FitDeviceFixer$Def;
    .registers 15

    add-int/lit8 v0, p1, 0x2

    .line 90
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 93
    :goto_e
    new-instance v3, Lcom/jichi/ob/api/FitDeviceFixer$Def;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/jichi/ob/api/FitDeviceFixer$Def;-><init>(Lcom/jichi/ob/api/FitDeviceFixer$Def-IA;)V

    .line 94
    iput-boolean v0, v3, Lcom/jichi/ob/api/FitDeviceFixer$Def;->big:Z

    const/4 v4, 0x2

    .line 95
    invoke-static {p0, v1, v4, v0}, Lcom/jichi/ob/api/FitDeviceFixer;->readNum([BIIZ)I

    move-result v0

    iput v0, v3, Lcom/jichi/ob/api/FitDeviceFixer$Def;->globalNum:I

    add-int/lit8 v0, p1, 0x5

    .line 97
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x6

    .line 99
    new-array v1, v0, [I

    .line 100
    new-array v4, v0, [I

    .line 101
    new-array v5, v0, [I

    move v6, v2

    move v7, v6

    :goto_2d
    if-ge v6, v0, :cond_4b

    .line 104
    aget-byte v8, p0, p1

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, p1, 0x1

    .line 105
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    .line 106
    aput v8, v1, v6

    .line 107
    aput v7, v4, v6

    .line 108
    aput v9, v5, v6

    const/16 v10, 0xfd

    if-ne v8, v10, :cond_45

    .line 110
    iput v9, v3, Lcom/jichi/ob/api/FitDeviceFixer$Def;->tsSize:I

    :cond_45
    add-int/2addr v7, v9

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 115
    :cond_4b
    iput-object v1, v3, Lcom/jichi/ob/api/FitDeviceFixer$Def;->nums:[I

    .line 116
    iput-object v4, v3, Lcom/jichi/ob/api/FitDeviceFixer$Def;->offs:[I

    .line 117
    iput-object v5, v3, Lcom/jichi/ob/api/FitDeviceFixer$Def;->sizes:[I

    .line 118
    iput v7, v3, Lcom/jichi/ob/api/FitDeviceFixer$Def;->totalSize:I

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_60

    .line 120
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p0, p0, 0x3

    add-int/2addr p1, p0

    .line 124
    :cond_60
    aput p1, p3, v2

    return-object v3
.end method

.method private static patch([BI)[B
    .registers 13

    .line 179
    array-length v0, p0

    new-array v1, v0, [B

    .line 180
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    invoke-static {v1}, Lcom/jichi/ob/api/FitDeviceFixer;->headerSize([B)I

    move-result p0

    .line 183
    invoke-static {v1}, Lcom/jichi/ob/api/FitDeviceFixer;->dataEnd([B)I

    move-result v2

    const/16 v4, 0xc32

    if-lez p1, :cond_16

    move v5, p1

    goto :goto_17

    :cond_16
    move v5, v4

    .line 186
    :goto_17
    invoke-static {v1}, Lcom/jichi/ob/api/FitDeviceFixer;->readSport([B)I

    move-result v6

    const/4 v7, 0x1

    if-gtz p1, :cond_23

    if-ne v6, v7, :cond_22

    const/16 v4, 0xb97

    :cond_22
    move v5, v4

    :cond_23
    const/16 p1, 0x10

    .line 191
    new-array p1, p1, [Lcom/jichi/ob/api/FitDeviceFixer$Def;

    .line 193
    new-array v4, v7, [I

    :goto_29
    if-ge p0, v2, :cond_78

    .line 195
    aget-byte v6, v1, p0

    and-int/lit16 v8, v6, 0xff

    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_44

    shr-int/lit8 v6, v8, 0x5

    and-int/lit8 v6, v6, 0x3

    .line 198
    aget-object v6, p1, v6

    if-nez v6, :cond_3c

    goto :goto_78

    .line 202
    :cond_3c
    iget v8, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->totalSize:I

    iget v6, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->tsSize:I

    sub-int/2addr v8, v6

    add-int/2addr v8, v7

    add-int/2addr p0, v8

    goto :goto_29

    :cond_44
    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_53

    and-int/lit8 v6, v6, 0xf

    .line 207
    invoke-static {v1, p0, v8, v4}, Lcom/jichi/ob/api/FitDeviceFixer;->parseDef([BII[I)Lcom/jichi/ob/api/FitDeviceFixer$Def;

    move-result-object p0

    .line 208
    aput-object p0, p1, v6

    .line 209
    aget p0, v4, v3

    goto :goto_29

    :cond_53
    and-int/lit8 v6, v6, 0xf

    .line 213
    aget-object v6, p1, v6

    if-nez v6, :cond_5a

    goto :goto_78

    .line 217
    :cond_5a
    iget v8, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->globalNum:I

    const/4 v9, 0x2

    if-nez v8, :cond_66

    .line 218
    invoke-static {v1, p0, v6, v7, v7}, Lcom/jichi/ob/api/FitDeviceFixer;->patchField([BILcom/jichi/ob/api/FitDeviceFixer$Def;II)V

    .line 219
    invoke-static {v1, p0, v6, v9, v5}, Lcom/jichi/ob/api/FitDeviceFixer;->patchField([BILcom/jichi/ob/api/FitDeviceFixer$Def;II)V

    goto :goto_73

    .line 220
    :cond_66
    iget v8, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->globalNum:I

    const/16 v10, 0x17

    if-ne v8, v10, :cond_73

    .line 221
    invoke-static {v1, p0, v6, v9, v7}, Lcom/jichi/ob/api/FitDeviceFixer;->patchField([BILcom/jichi/ob/api/FitDeviceFixer$Def;II)V

    const/4 v8, 0x4

    .line 222
    invoke-static {v1, p0, v6, v8, v5}, Lcom/jichi/ob/api/FitDeviceFixer;->patchField([BILcom/jichi/ob/api/FitDeviceFixer$Def;II)V

    .line 224
    :cond_73
    :goto_73
    iget v6, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->totalSize:I

    add-int/2addr v6, v7

    add-int/2addr p0, v6

    goto :goto_29

    .line 227
    :cond_78
    :goto_78
    invoke-static {v1, v3, v2}, Lcom/jichi/ob/api/FitDeviceFixer;->fitCrc([BII)I

    move-result p0

    add-int/lit8 p1, v2, 0x2

    if-lt v0, p1, :cond_8d

    and-int/lit16 p1, p0, 0xff

    int-to-byte p1, p1

    .line 229
    aput-byte p1, v1, v2

    add-int/2addr v2, v7

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 230
    aput-byte p0, v1, v2

    :cond_8d
    return-object v1
.end method

.method private static patchField([BILcom/jichi/ob/api/FitDeviceFixer$Def;II)V
    .registers 8

    .line 236
    invoke-static {p2, p3}, Lcom/jichi/ob/api/FitDeviceFixer;->findOff(Lcom/jichi/ob/api/FitDeviceFixer$Def;I)I

    move-result p3

    if-gez p3, :cond_7

    return-void

    .line 240
    :cond_7
    iget-object v0, p2, Lcom/jichi/ob/api/FitDeviceFixer$Def;->sizes:[I

    aget v0, v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/16 v2, 0xff

    if-le p4, v2, :cond_13

    return-void

    :cond_13
    const/4 v2, 0x4

    if-le v0, v2, :cond_17

    return-void

    :cond_17
    add-int/2addr p1, v1

    .line 248
    iget-object v1, p2, Lcom/jichi/ob/api/FitDeviceFixer$Def;->offs:[I

    aget p3, v1, p3

    add-int/2addr p1, p3

    iget-boolean p2, p2, Lcom/jichi/ob/api/FitDeviceFixer$Def;->big:Z

    invoke-static {p0, p1, v0, p4, p2}, Lcom/jichi/ob/api/FitDeviceFixer;->writeNum([BIIIZ)V

    return-void
.end method

.method private static readManufacturer([B)I
    .registers 10

    .line 129
    invoke-static {p0}, Lcom/jichi/ob/api/FitDeviceFixer;->headerSize([B)I

    move-result v0

    .line 130
    invoke-static {p0}, Lcom/jichi/ob/api/FitDeviceFixer;->dataEnd([B)I

    move-result v1

    const/16 v2, 0x10

    .line 131
    new-array v2, v2, [Lcom/jichi/ob/api/FitDeviceFixer$Def;

    const/4 v3, 0x1

    .line 133
    new-array v4, v3, [I

    :goto_f
    const/4 v5, -0x1

    if-ge v0, v1, :cond_61

    .line 135
    aget-byte v6, p0, v0

    and-int/lit16 v7, v6, 0xff

    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_2b

    shr-int/lit8 v6, v7, 0x5

    and-int/lit8 v6, v6, 0x3

    .line 138
    aget-object v6, v2, v6

    if-nez v6, :cond_23

    return v5

    .line 142
    :cond_23
    iget v5, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->totalSize:I

    iget v6, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->tsSize:I

    sub-int/2addr v5, v6

    :goto_28
    add-int/2addr v5, v3

    add-int/2addr v0, v5

    goto :goto_f

    :cond_2b
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_3b

    and-int/lit8 v5, v6, 0xf

    .line 147
    invoke-static {p0, v0, v7, v4}, Lcom/jichi/ob/api/FitDeviceFixer;->parseDef([BII[I)Lcom/jichi/ob/api/FitDeviceFixer$Def;

    move-result-object v0

    .line 148
    aput-object v0, v2, v5

    const/4 v0, 0x0

    .line 149
    aget v0, v4, v0

    goto :goto_f

    :cond_3b
    and-int/lit8 v6, v6, 0xf

    .line 153
    aget-object v6, v2, v6

    if-nez v6, :cond_42

    return v5

    .line 157
    :cond_42
    iget v7, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->globalNum:I

    if-nez v7, :cond_5e

    .line 158
    invoke-static {v6, v3}, Lcom/jichi/ob/api/FitDeviceFixer;->findOff(Lcom/jichi/ob/api/FitDeviceFixer$Def;I)I

    move-result v1

    if-gez v1, :cond_4d

    return v5

    :cond_4d
    add-int/2addr v0, v3

    .line 162
    iget-object v2, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->offs:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    iget-object v2, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->sizes:[I

    aget v1, v2, v1

    iget-boolean v2, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->big:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jichi/ob/api/FitDeviceFixer;->readNum([BIIZ)I

    move-result p0

    return p0

    .line 164
    :cond_5e
    iget v5, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->totalSize:I

    goto :goto_28

    :cond_61
    return v5
.end method

.method private static readNum([BIIZ)I
    .registers 6

    const/4 v0, 0x0

    if-lez p2, :cond_2a

    const/4 v1, 0x4

    if-le p2, v1, :cond_7

    goto :goto_2a

    :cond_7
    if-eqz p3, :cond_18

    move p3, v0

    :goto_a
    if-ge v0, p2, :cond_29

    shl-int/lit8 p3, p3, 0x8

    add-int v1, p1, v0

    .line 321
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    add-int/lit8 p2, p2, -0x1

    :goto_1a
    if-ltz p2, :cond_28

    shl-int/lit8 p3, v0, 0x8

    add-int v0, p1, p2

    .line 325
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p3

    add-int/lit8 p2, p2, -0x1

    goto :goto_1a

    :cond_28
    move p3, v0

    :cond_29
    return p3

    :cond_2a
    :goto_2a
    return v0
.end method

.method private static readSport([B)I
    .registers 11

    .line 252
    invoke-static {p0}, Lcom/jichi/ob/api/FitDeviceFixer;->headerSize([B)I

    move-result v0

    .line 253
    invoke-static {p0}, Lcom/jichi/ob/api/FitDeviceFixer;->dataEnd([B)I

    move-result v1

    const/16 v2, 0x10

    .line 254
    new-array v2, v2, [Lcom/jichi/ob/api/FitDeviceFixer$Def;

    const/4 v3, 0x1

    .line 256
    new-array v4, v3, [I

    :goto_f
    const/4 v5, -0x1

    if-ge v0, v1, :cond_63

    .line 258
    aget-byte v6, p0, v0

    and-int/lit16 v7, v6, 0xff

    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_2b

    shr-int/lit8 v6, v7, 0x5

    and-int/lit8 v6, v6, 0x3

    .line 261
    aget-object v6, v2, v6

    if-nez v6, :cond_23

    return v5

    .line 265
    :cond_23
    iget v5, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->totalSize:I

    iget v6, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->tsSize:I

    sub-int/2addr v5, v6

    :goto_28
    add-int/2addr v5, v3

    add-int/2addr v0, v5

    goto :goto_f

    :cond_2b
    and-int/lit8 v8, v6, 0x40

    const/4 v9, 0x0

    if-eqz v8, :cond_3b

    and-int/lit8 v5, v6, 0xf

    .line 270
    invoke-static {p0, v0, v7, v4}, Lcom/jichi/ob/api/FitDeviceFixer;->parseDef([BII[I)Lcom/jichi/ob/api/FitDeviceFixer$Def;

    move-result-object v0

    .line 271
    aput-object v0, v2, v5

    .line 272
    aget v0, v4, v9

    goto :goto_f

    :cond_3b
    and-int/lit8 v6, v6, 0xf

    .line 276
    aget-object v6, v2, v6

    if-nez v6, :cond_42

    return v5

    .line 280
    :cond_42
    iget v7, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->globalNum:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_60

    .line 281
    invoke-static {v6, v9}, Lcom/jichi/ob/api/FitDeviceFixer;->findOff(Lcom/jichi/ob/api/FitDeviceFixer$Def;I)I

    move-result v1

    if-gez v1, :cond_4f

    return v5

    :cond_4f
    add-int/2addr v0, v3

    .line 285
    iget-object v2, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->offs:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    iget-object v2, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->sizes:[I

    aget v1, v2, v1

    iget-boolean v2, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->big:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jichi/ob/api/FitDeviceFixer;->readNum([BIIZ)I

    move-result p0

    return p0

    .line 287
    :cond_60
    iget v5, v6, Lcom/jichi/ob/api/FitDeviceFixer$Def;->totalSize:I

    goto :goto_28

    :cond_63
    return v5
.end method

.method private static readU16([BI)I
    .registers 3

    .line 307
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static readU32([BI)I
    .registers 4

    .line 311
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

.method private static writeNum([BIIIZ)V
    .registers 7

    if-lez p2, :cond_27

    const/4 v0, 0x4

    if-le p2, v0, :cond_6

    goto :goto_27

    :cond_6
    if-eqz p4, :cond_18

    add-int/lit8 p2, p2, -0x1

    :goto_a
    if-ltz p2, :cond_27

    add-int p4, p1, p2

    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    .line 337
    aput-byte v0, p0, p4

    shr-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_18
    const/4 p4, 0x0

    :goto_19
    if-ge p4, p2, :cond_27

    add-int v0, p1, p4

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    .line 342
    aput-byte v1, p0, v0

    shr-int/lit8 p3, p3, 0x8

    add-int/lit8 p4, p4, 0x1

    goto :goto_19

    :cond_27
    :goto_27
    return-void
.end method


# virtual methods
.method public fake([BZI)[B
    .registers 6

    if-eqz p1, :cond_e

    .line 57
    array-length v0, p1

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    if-nez p2, :cond_a

    goto :goto_e

    .line 61
    :cond_a
    :try_start_a
    invoke-static {p1, p3}, Lcom/jichi/ob/api/FitDeviceFixer;->patch([BI)[B

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_e

    :catchall_e
    :cond_e
    :goto_e
    return-object p1
.end method

.method public isAlreadyGarmin([B)Z
    .registers 4

    const/4 v0, 0x0

    .line 50
    :try_start_1
    invoke-static {p1}, Lcom/jichi/ob/api/FitDeviceFixer;->readManufacturer([B)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    move v0, v1

    :catchall_9
    :cond_9
    return v0
.end method
