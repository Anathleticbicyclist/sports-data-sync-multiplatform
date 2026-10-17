.class public final Lcom/jichi/ob/api/FitDeviceFaker;
.super Ljava/lang/Object;
.source "FitDeviceFaker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/FitDeviceFaker$Def;,
        Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\"#B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\"\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0007J\u0016\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0007J\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0018\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J(\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J \u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J \u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/jichi/ob/api/FitDeviceFaker;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "GARMIN_MANUFACTURER",
        "",
        "GARMIN_EDGE_830",
        "GARMIN_FORERUNNER_945",
        "isAlreadyGarmin",
        "",
        "fitData",
        "",
        "scanFileId",
        "Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;",
        "data",
        "fake",
        "isCycling",
        "productIdOverride",
        "setSport",
        "sport",
        "readU16",
        "d",
        "off",
        "readU32",
        "writeU16",
        "",
        "v",
        "arch",
        "writeU16le",
        "fitCrc",
        "start",
        "end",
        "FileIdInfo",
        "Def",
        "app_devRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final GARMIN_EDGE_830:I = 0xc32

.field public static final GARMIN_FORERUNNER_945:I = 0xb97

.field public static final GARMIN_MANUFACTURER:I = 0x1

.field public static final INSTANCE:Lcom/jichi/ob/api/FitDeviceFaker;

.field private static final TAG:Ljava/lang/String; = "FitDeviceFaker"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/api/FitDeviceFaker;

    invoke-direct {v0}, Lcom/jichi/ob/api/FitDeviceFaker;-><init>()V

    sput-object v0, Lcom/jichi/ob/api/FitDeviceFaker;->INSTANCE:Lcom/jichi/ob/api/FitDeviceFaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic fake$default(Lcom/jichi/ob/api/FitDeviceFaker;[BZIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 99
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/FitDeviceFaker;->fake([BZI)[B

    move-result-object p0

    return-object p0
.end method

.method private final fitCrc([BII)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 326
    aget-byte v1, p1, p2

    invoke-static {v0, v1}, Lcom/garmin/fit/CRC;->get16(IB)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final readU16([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 298
    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 299
    :cond_0
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    return p1
.end method

.method private final readU32([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x3

    .line 303
    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 304
    :cond_0
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x2

    .line 305
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method private final scanFileId([B)Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 33
    array-length v2, v1

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    .line 36
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_1
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 37
    array-length v6, v1

    const/4 v7, 0x0

    if-gt v5, v6, :cond_d

    .line 38
    aget-byte v6, v1, v2

    and-int/lit16 v8, v6, 0xff

    and-int/lit16 v9, v6, 0x80

    const/4 v10, 0x2

    if-eqz v9, :cond_3

    shr-int/lit8 v5, v8, 0x5

    and-int/lit8 v5, v5, 0x3

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Triple;

    if-nez v5, :cond_2

    goto/16 :goto_6

    .line 42
    :cond_2
    invoke-virtual {v5}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/2addr v5, v10

    add-int/2addr v2, v5

    .line 43
    array-length v5, v1

    if-le v2, v5, :cond_1

    goto/16 :goto_6

    :cond_3
    and-int/lit8 v8, v6, 0x40

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    add-int/lit8 v5, v2, 0x6

    .line 45
    array-length v8, v1

    if-gt v5, v8, :cond_d

    add-int/lit8 v8, v2, 0x2

    .line 46
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_4

    add-int/lit8 v8, v2, 0x3

    .line 48
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v2, 0x3

    .line 50
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    :goto_2
    or-int/2addr v8, v10

    add-int/lit8 v2, v2, 0x5

    .line 52
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 54
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move v11, v4

    move v12, v11

    :goto_3
    if-ge v11, v2, :cond_6

    add-int/lit8 v13, v5, 0x3

    .line 58
    array-length v14, v1

    if-le v13, v14, :cond_5

    goto/16 :goto_6

    .line 59
    :cond_5
    aget-byte v14, v1, v5

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v5, v5, 0x1

    .line 60
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    .line 61
    move-object v15, v10

    check-cast v15, Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v12, v5

    add-int/lit8 v11, v11, 0x1

    move v5, v13

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    and-int/lit8 v2, v6, 0x20

    if-eqz v2, :cond_7

    .line 68
    array-length v2, v1

    if-ge v5, v2, :cond_d

    .line 69
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v9

    add-int/2addr v5, v2

    :cond_7
    move v2, v5

    and-int/lit8 v4, v6, 0xf

    .line 73
    move-object v5, v3

    check-cast v5, Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lkotlin/Triple;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v10, v8}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_8
    and-int/lit8 v4, v6, 0xf

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Triple;

    if-nez v4, :cond_9

    goto/16 :goto_6

    .line 78
    :cond_9
    invoke-virtual {v4}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v4}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    if-nez v6, :cond_c

    .line 80
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 81
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    .line 82
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v9

    array-length v11, v1

    if-ge v10, v11, :cond_a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v1, v6}, Lcom/jichi/ob/api/FitDeviceFaker;->readU16([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_a
    move-object v6, v7

    :goto_4
    if-eqz v8, :cond_b

    .line 83
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v9

    array-length v11, v1

    if-ge v10, v11, :cond_b

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v5, v7

    invoke-direct {v0, v1, v5}, Lcom/jichi/ob/api/FitDeviceFaker;->readU16([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b
    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    .line 84
    new-instance v1, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;-><init>(II)V

    return-object v1

    .line 86
    :cond_c
    invoke-virtual {v4}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v9

    add-int/2addr v2, v4

    :goto_5
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_d
    :goto_6
    return-object v7
.end method

.method private final writeU16([BIII)V
    .locals 0

    if-nez p4, :cond_0

    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/FitDeviceFaker;->writeU16le([BII)V

    return-void

    :cond_0
    shr-int/lit8 p4, p3, 0x8

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    .line 310
    aput-byte p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 311
    aput-byte p3, p1, p2

    return-void
.end method

.method private final writeU16le([BII)V
    .locals 1

    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    .line 316
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 p3, p3, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 317
    aput-byte p3, p1, p2

    return-void
.end method


# virtual methods
.method public final fake([BZI)[B
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "FitDeviceFaker"

    const-string v0, "fitData"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_0

    move/from16 v0, p3

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, 0xc32

    goto :goto_0

    :cond_1
    const/16 v0, 0xb97

    :goto_0
    if-lez p3, :cond_2

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Garmin "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 103
    const-string v4, "Edge 830"

    goto :goto_1

    :cond_3
    const-string v4, "Forerunner 945"

    .line 105
    :goto_1
    :try_start_0
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string v6, "copyOf(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    array-length v6, v5

    const/16 v7, 0xc

    const/4 v8, 0x0

    if-lt v6, v7, :cond_4

    aget-byte v6, v5, v8

    and-int/lit16 v6, v6, 0xff

    goto :goto_2

    :cond_4
    const/16 v6, 0xe

    .line 108
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v9, v6

    move v10, v8

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 111
    array-length v12, v5

    if-gt v11, v12, :cond_12

    .line 112
    aget-byte v12, v5, v9

    and-int/lit16 v14, v12, 0xff

    and-int/lit16 v15, v12, 0x80

    const/16 v16, 0x2

    if-eqz v15, :cond_5

    shr-int/lit8 v11, v14, 0x5

    and-int/lit8 v11, v11, 0x3

    .line 116
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jichi/ob/api/FitDeviceFaker$Def;

    if-eqz v11, :cond_12

    .line 118
    invoke-virtual {v11}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getTotalSize()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    .line 119
    array-length v11, v5

    if-gt v9, v11, :cond_12

    goto :goto_3

    :cond_5
    and-int/lit8 v14, v12, 0x40

    if-eqz v14, :cond_a

    add-int/lit8 v11, v9, 0x6

    .line 122
    array-length v14, v5

    if-gt v11, v14, :cond_12

    add-int/lit8 v14, v9, 0x2

    .line 123
    aget-byte v14, v5, v14

    and-int/lit16 v14, v14, 0xff

    if-nez v14, :cond_6

    add-int/lit8 v16, v9, 0x3

    .line 125
    aget-byte v8, v5, v16

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v16, v9, 0x4

    aget-byte v13, v5, v16

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v9, 0x3

    .line 127
    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v13, v9, 0x4

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    :goto_4
    or-int/2addr v8, v13

    add-int/lit8 v9, v9, 0x5

    .line 129
    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    .line 131
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    :goto_5
    if-ge v15, v9, :cond_8

    move/from16 v18, v6

    add-int/lit8 v6, v11, 0x3

    move/from16 v19, v9

    .line 135
    array-length v9, v5

    if-le v6, v9, :cond_7

    goto/16 :goto_c

    .line 136
    :cond_7
    aget-byte v9, v5, v11

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v11, v11, 0x1

    .line 137
    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    move/from16 v20, v6

    .line 138
    move-object v6, v13

    check-cast v6, Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v21, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v16, v16, v11

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v18

    move/from16 v9, v19

    move/from16 v11, v20

    move/from16 v10, v21

    goto :goto_5

    :cond_8
    move/from16 v18, v6

    move/from16 v21, v10

    and-int/lit8 v6, v12, 0x20

    if-eqz v6, :cond_9

    .line 145
    array-length v6, v5

    if-ge v11, v6, :cond_13

    .line 146
    aget-byte v6, v5, v11

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v11, v6

    .line 148
    array-length v6, v5

    if-gt v11, v6, :cond_13

    :cond_9
    move v9, v11

    and-int/lit8 v6, v12, 0xf

    .line 151
    move-object v10, v7

    check-cast v10, Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v11, Lcom/jichi/ob/api/FitDeviceFaker$Def;

    move/from16 v12, v16

    invoke-direct {v11, v8, v14, v13, v12}, Lcom/jichi/ob/api/FitDeviceFaker$Def;-><init>(IILjava/util/HashMap;I)V

    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v6, v18

    move/from16 v10, v21

    goto/16 :goto_b

    :cond_a
    move/from16 v18, v6

    move/from16 v21, v10

    const/16 v17, 0x1

    and-int/lit8 v6, v12, 0xf

    .line 155
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/api/FitDeviceFaker$Def;

    if-nez v6, :cond_b

    goto/16 :goto_d

    .line 156
    :cond_b
    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getTotalSize()I

    move-result v8

    add-int/2addr v8, v11

    array-length v10, v5

    if-gt v8, v10, :cond_13

    .line 157
    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getGlobalNum()I

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getGlobalNum()I

    move-result v8

    const/16 v10, 0x17

    if-ne v8, v10, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v10, v21

    goto :goto_a

    .line 159
    :cond_d
    :goto_6
    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getGlobalNum()I

    move-result v8

    if-nez v8, :cond_e

    move/from16 v8, v17

    goto :goto_7

    :cond_e
    move/from16 v8, v16

    .line 160
    :goto_7
    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getGlobalNum()I

    move-result v10

    if-nez v10, :cond_f

    move/from16 v13, v16

    goto :goto_8

    :cond_f
    const/4 v13, 0x4

    .line 161
    :goto_8
    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getFields()Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_10

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 162
    sget-object v10, Lcom/jichi/ob/api/FitDeviceFaker;->INSTANCE:Lcom/jichi/ob/api/FitDeviceFaker;

    add-int/2addr v8, v11

    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getArch()I

    move-result v12

    move/from16 v14, v17

    invoke-direct {v10, v5, v8, v14, v12}, Lcom/jichi/ob/api/FitDeviceFaker;->writeU16([BIII)V

    const/4 v10, 0x1

    goto :goto_9

    :cond_10
    move/from16 v10, v21

    .line 165
    :goto_9
    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getFields()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_11

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 166
    sget-object v10, Lcom/jichi/ob/api/FitDeviceFaker;->INSTANCE:Lcom/jichi/ob/api/FitDeviceFaker;

    add-int/2addr v11, v8

    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getArch()I

    move-result v8

    invoke-direct {v10, v5, v11, v0, v8}, Lcom/jichi/ob/api/FitDeviceFaker;->writeU16([BIII)V

    const/4 v10, 0x1

    .line 170
    :cond_11
    :goto_a
    invoke-virtual {v6}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getTotalSize()I

    move-result v6

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v9, v6

    move/from16 v6, v18

    :goto_b
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_12
    move/from16 v18, v6

    :goto_c
    move/from16 v21, v10

    :cond_13
    :goto_d
    if-nez v21, :cond_14

    .line 175
    const-string v0, "FIT \u672a\u627e\u5230\u53ef\u6539\u5199\u5b57\u6bb5\uff0c\u539f\u6837\u8fd4\u56de"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_14
    const/4 v0, 0x4

    .line 180
    invoke-direct {v1, v5, v0}, Lcom/jichi/ob/api/FitDeviceFaker;->readU32([BI)I

    move-result v0

    add-int v6, v18, v0

    .line 181
    array-length v0, v5

    if-gt v6, v0, :cond_15

    const/4 v0, 0x0

    .line 182
    invoke-direct {v1, v5, v0, v6}, Lcom/jichi/ob/api/FitDeviceFaker;->fitCrc([BII)I

    move-result v0

    add-int/lit8 v7, v6, 0x2

    .line 183
    array-length v8, v5

    if-gt v7, v8, :cond_15

    .line 184
    invoke-direct {v1, v5, v6, v0}, Lcom/jichi/ob/api/FitDeviceFaker;->writeU16le([BII)V

    .line 187
    :cond_15
    array-length v0, v2

    array-length v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FIT \u5df2\u4f2a\u88c5\u4e3a Garmin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " bytes)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 190
    const-string v4, "fake error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final isAlreadyGarmin([B)Z
    .locals 2

    const-string v0, "fitData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/FitDeviceFaker;->scanFileId([B)Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/api/FitDeviceFaker$FileIdInfo;->getManufacturer()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return v1

    :catch_0
    :cond_1
    return v0
.end method

.method public final setSport([BI)[B
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string v3, "FitDeviceFaker"

    const-string v4, "fitData"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :try_start_0
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string v5, "copyOf(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    array-length v5, v4

    const/16 v6, 0xc

    const/4 v7, 0x0

    if-lt v5, v6, :cond_0

    aget-byte v5, v4, v7

    and-int/lit16 v5, v5, 0xff

    goto :goto_0

    :cond_0
    const/16 v5, 0xe

    .line 205
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v8, v5

    move v9, v7

    :goto_1
    add-int/lit8 v10, v8, 0x1

    .line 208
    array-length v11, v4

    if-gt v10, v11, :cond_b

    .line 209
    aget-byte v11, v4, v8

    and-int/lit16 v12, v11, 0xff

    and-int/lit16 v13, v11, 0x80

    const/4 v14, 0x5

    if-eqz v13, :cond_1

    shr-int/lit8 v10, v12, 0x5

    and-int/lit8 v10, v10, 0x3

    .line 212
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jichi/ob/api/FitDeviceFaker$Def;

    if-eqz v10, :cond_b

    .line 214
    invoke-virtual {v10}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getTotalSize()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    .line 215
    array-length v10, v4

    if-gt v8, v10, :cond_b

    goto :goto_1

    :cond_1
    and-int/lit8 v12, v11, 0x40

    if-eqz v12, :cond_6

    add-int/lit8 v10, v8, 0x6

    .line 218
    array-length v12, v4

    if-gt v10, v12, :cond_b

    add-int/lit8 v12, v8, 0x2

    .line 219
    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    if-nez v12, :cond_2

    add-int/lit8 v14, v8, 0x3

    .line 221
    aget-byte v14, v4, v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v8, 0x4

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v8, 0x3

    .line 223
    aget-byte v14, v4, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v15, v8, 0x4

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    :goto_2
    or-int/2addr v14, v15

    add-int/lit8 v8, v8, 0x5

    .line 225
    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    .line 227
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move v13, v7

    move/from16 v17, v13

    const/16 v16, 0x1

    :goto_3
    if-ge v13, v8, :cond_4

    add-int/lit8 v7, v10, 0x3

    move/from16 v18, v5

    .line 231
    array-length v5, v4

    if-le v7, v5, :cond_3

    goto/16 :goto_6

    .line 232
    :cond_3
    aget-byte v5, v4, v10

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v10, v10, 0x1

    .line 233
    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    move/from16 v19, v5

    .line 234
    move-object v5, v15

    check-cast v5, Ljava/util/Map;

    move/from16 v20, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v19, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v17, v17, v10

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v18

    move/from16 v8, v19

    move/from16 v10, v20

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    move/from16 v18, v5

    and-int/lit8 v5, v11, 0x20

    if-eqz v5, :cond_5

    .line 240
    array-length v5, v4

    if-ge v10, v5, :cond_c

    .line 241
    aget-byte v5, v4, v10

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v10, v5

    .line 243
    array-length v5, v4

    if-gt v10, v5, :cond_c

    :cond_5
    move v8, v10

    and-int/lit8 v5, v11, 0xf

    .line 246
    move-object v7, v6

    check-cast v7, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v10, Lcom/jichi/ob/api/FitDeviceFaker$Def;

    move/from16 v11, v17

    invoke-direct {v10, v14, v12, v15, v11}, Lcom/jichi/ob/api/FitDeviceFaker$Def;-><init>(IILjava/util/HashMap;I)V

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move/from16 v18, v5

    const/16 v16, 0x1

    and-int/lit8 v5, v11, 0xf

    .line 250
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/api/FitDeviceFaker$Def;

    if-nez v5, :cond_7

    goto :goto_6

    .line 251
    :cond_7
    invoke-virtual {v5}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getTotalSize()I

    move-result v7

    add-int/2addr v7, v10

    array-length v11, v4

    if-gt v7, v11, :cond_c

    .line 254
    invoke-virtual {v5}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getGlobalNum()I

    move-result v7

    const/16 v11, 0x12

    if-eq v7, v11, :cond_9

    const/16 v11, 0x13

    if-eq v7, v11, :cond_8

    const/4 v14, -0x1

    goto :goto_4

    :cond_8
    move/from16 v14, v16

    :cond_9
    :goto_4
    if-lez v14, :cond_a

    .line 260
    invoke-virtual {v5}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getFields()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_a

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v10, v7

    int-to-byte v7, v0

    .line 261
    aput-byte v7, v4, v10

    move/from16 v9, v16

    .line 265
    :cond_a
    invoke-virtual {v5}, Lcom/jichi/ob/api/FitDeviceFaker$Def;->getTotalSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v8, v5

    :goto_5
    move/from16 v5, v18

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    move/from16 v18, v5

    :cond_c
    :goto_6
    if-nez v9, :cond_d

    .line 270
    const-string/jumbo v0, "setSport: \u672a\u627e\u5230sport\u5b57\u6bb5\uff0c\u539f\u6837\u8fd4\u56de"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_d
    const/4 v5, 0x4

    .line 275
    invoke-direct {v1, v4, v5}, Lcom/jichi/ob/api/FitDeviceFaker;->readU32([BI)I

    move-result v5

    add-int v5, v18, v5

    .line 276
    array-length v6, v4

    if-gt v5, v6, :cond_e

    const/4 v6, 0x0

    .line 277
    invoke-direct {v1, v4, v6, v5}, Lcom/jichi/ob/api/FitDeviceFaker;->fitCrc([BII)I

    move-result v6

    add-int/lit8 v7, v5, 0x2

    .line 278
    array-length v8, v4

    if-gt v7, v8, :cond_e

    .line 279
    invoke-direct {v1, v4, v5, v6}, Lcom/jichi/ob/api/FitDeviceFaker;->writeU16le([BII)V

    .line 282
    :cond_e
    array-length v5, v2

    array-length v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSport: \u5df2\u4fee\u6539sport="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " -> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " bytes)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 285
    const-string/jumbo v4, "setSport error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method
