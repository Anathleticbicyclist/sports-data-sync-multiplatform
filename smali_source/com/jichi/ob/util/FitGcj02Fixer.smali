.class public final Lcom/jichi/ob/util/FitGcj02Fixer;
.super Ljava/lang/Object;
.source "FitGcj02Fixer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/util/FitGcj02Fixer$Definition;,
        Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFitGcj02Fixer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FitGcj02Fixer.kt\ncom/jichi/ob/util/FitGcj02Fixer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,244:1\n1#2:245\n1208#3,2:246\n1236#3,4:248\n*S KotlinDebug\n*F\n+ 1 FitGcj02Fixer.kt\ncom/jichi/ob/util/FitGcj02Fixer\n*L\n219#1:246,2\n219#1:248,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002)*B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u0007J\"\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J \u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J \u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J(\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000bH\u0002J\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002J\u0018\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u0018\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J$\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002J$\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002J,\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u000f0\n2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u0014H\u0002J \u0010&\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020#H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/jichi/ob/util/FitGcj02Fixer;",
        "",
        "<init>",
        "()V",
        "CRC_TABLE",
        "",
        "fix",
        "",
        "inputData",
        "gcj02ToWgs84",
        "Lkotlin/Pair;",
        "",
        "lat",
        "lon",
        "fitCRC",
        "",
        "data",
        "readU16",
        "offset",
        "littleEndian",
        "",
        "readI32",
        "writeI32",
        "",
        "value",
        "semicirclesToDegrees",
        "degreesToSemicircles",
        "isInChina",
        "transformLat",
        "x",
        "y",
        "transformLon",
        "wgs84ToGcj02",
        "gcj02ToWgs84Exact",
        "parseDefinition",
        "Lcom/jichi/ob/util/FitGcj02Fixer$Definition;",
        "startOffset",
        "hasDeveloperData",
        "patchRecord",
        "dataOffset",
        "definition",
        "FieldDef",
        "Definition",
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
.field private static final CRC_TABLE:[I

.field public static final INSTANCE:Lcom/jichi/ob/util/FitGcj02Fixer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/util/FitGcj02Fixer;

    invoke-direct {v0}, Lcom/jichi/ob/util/FitGcj02Fixer;-><init>()V

    sput-object v0, Lcom/jichi/ob/util/FitGcj02Fixer;->INSTANCE:Lcom/jichi/ob/util/FitGcj02Fixer;

    const/16 v0, 0x10

    .line 16
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 14
    sput-object v0, Lcom/jichi/ob/util/FitGcj02Fixer;->CRC_TABLE:[I

    return-void

    nop

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final degreesToSemicircles(D)I
    .locals 2

    const-wide/high16 v0, 0x41e0000000000000L    # 2.147483648E9

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    .line 136
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method private final fitCRC([B)I
    .locals 7

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 92
    aget-byte v3, p1, v1

    and-int/lit16 v4, v3, 0xff

    .line 93
    sget-object v5, Lcom/jichi/ob/util/FitGcj02Fixer;->CRC_TABLE:[I

    and-int/lit8 v6, v2, 0xf

    aget v6, v5, v6

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xfff

    xor-int/2addr v2, v6

    and-int/lit8 v3, v3, 0xf

    .line 95
    aget v3, v5, v3

    xor-int/2addr v2, v3

    and-int/lit8 v3, v2, 0xf

    .line 96
    aget v3, v5, v3

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xfff

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v4, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 98
    aget v3, v5, v3

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0xffff

    and-int/2addr p1, v2

    return p1
.end method

.method private final gcj02ToWgs84Exact(DD)Lkotlin/Pair;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lkotlin/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    sub-double v2, p1, v0

    add-double v4, p1, v0

    sub-double v6, p3, v0

    add-double v0, p3, v0

    const/4 v8, 0x0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    :goto_0
    const/16 v13, 0x1e

    if-ge v8, v13, :cond_3

    add-double v9, v2, v4

    const/4 v11, 0x2

    int-to-double v11, v11

    div-double/2addr v9, v11

    add-double v13, v6, v0

    div-double v11, v13, v11

    move-object/from16 v13, p0

    .line 181
    invoke-direct {v13, v9, v10, v11, v12}, Lcom/jichi/ob/util/FitGcj02Fixer;->wgs84ToGcj02(DD)Lkotlin/Pair;

    move-result-object v14

    invoke-virtual {v14}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    invoke-virtual {v14}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    sub-double v15, v15, p1

    sub-double v17, v17, p3

    .line 184
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    const-wide v21, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v14, v19, v21

    if-gez v14, :cond_0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpg-double v14, v19, v21

    if-ltz v14, :cond_4

    :cond_0
    const-wide/16 v19, 0x0

    cmpl-double v14, v15, v19

    if-lez v14, :cond_1

    move-wide v4, v9

    goto :goto_1

    :cond_1
    move-wide v2, v9

    :goto_1
    cmpl-double v14, v17, v19

    if-lez v14, :cond_2

    move-wide v0, v11

    goto :goto_2

    :cond_2
    move-wide v6, v11

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v13, p0

    .line 188
    :cond_4
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final isInChina(DD)Z
    .locals 2

    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpg-double v0, v0, p3

    if-gtz v0, :cond_0

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpg-double p3, p3, v0

    if-gtz p3, :cond_0

    const-wide p3, 0x3fea89a027525461L    # 0.8293

    cmpg-double p3, p3, p1

    if-gtz p3, :cond_0

    const-wide p3, 0x404be9de69ad42c4L    # 55.8271

    cmpg-double p1, p1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final parseDefinition([BIZ)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIZ)",
            "Lkotlin/Pair<",
            "Lcom/jichi/ob/util/FitGcj02Fixer$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 193
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/lit8 v2, p2, 0x4

    .line 197
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p2, p2, 0x5

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_1

    .line 202
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, p2, 0x1

    .line 203
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, p2, 0x2

    .line 204
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 p2, p2, 0x3

    .line 206
    new-instance v9, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;

    invoke-direct {v9, v6, v7, v8, v5}, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;-><init>(IIII)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 210
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p2, p2, 0x1

    :goto_2
    if-ge v1, p1, :cond_2

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 214
    :cond_2
    new-instance p1, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;

    invoke-direct {p1, v0, v3, v5}, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;-><init>(ZLjava/util/List;I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final patchRecord([BILcom/jichi/ob/util/FitGcj02Fixer$Definition;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 219
    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->getFields()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const/16 v3, 0xa

    .line 246
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 247
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .line 248
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 249
    move-object v5, v3

    check-cast v5, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;

    .line 219
    invoke-virtual {v5}, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->getNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 249
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;

    if-nez v3, :cond_1

    return v2

    :cond_1
    const/4 v5, 0x1

    .line 221
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;

    if-nez v4, :cond_2

    return v2

    .line 222
    :cond_2
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->getSize()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    invoke-virtual {v4}, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->getSize()I

    move-result v6

    if-eq v6, v7, :cond_3

    goto/16 :goto_2

    .line 224
    :cond_3
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->getOffset()I

    move-result v6

    add-int v6, p2, v6

    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->getLittleEndian()Z

    move-result v7

    invoke-direct {v0, v1, v6, v7}, Lcom/jichi/ob/util/FitGcj02Fixer;->readI32([BIZ)I

    move-result v6

    .line 225
    invoke-virtual {v4}, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->getOffset()I

    move-result v7

    add-int v7, p2, v7

    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->getLittleEndian()Z

    move-result v8

    invoke-direct {v0, v1, v7, v8}, Lcom/jichi/ob/util/FitGcj02Fixer;->readI32([BIZ)I

    move-result v7

    const v8, 0x7fffffff

    if-eq v6, v8, :cond_8

    const/high16 v9, -0x80000000

    if-eq v6, v9, :cond_8

    if-eq v7, v8, :cond_8

    if-ne v7, v9, :cond_4

    goto :goto_2

    .line 228
    :cond_4
    invoke-direct {v0, v6}, Lcom/jichi/ob/util/FitGcj02Fixer;->semicirclesToDegrees(I)D

    move-result-wide v8

    .line 229
    invoke-direct {v0, v7}, Lcom/jichi/ob/util/FitGcj02Fixer;->semicirclesToDegrees(I)D

    move-result-wide v10

    .line 230
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_8

    .line 231
    invoke-direct {v0, v8, v9, v10, v11}, Lcom/jichi/ob/util/FitGcj02Fixer;->isInChina(DD)Z

    move-result v12

    if-nez v12, :cond_5

    return v2

    .line 233
    :cond_5
    invoke-direct {v0, v8, v9, v10, v11}, Lcom/jichi/ob/util/FitGcj02Fixer;->gcj02ToWgs84Exact(DD)Lkotlin/Pair;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    .line 234
    invoke-direct {v0, v9, v10}, Lcom/jichi/ob/util/FitGcj02Fixer;->degreesToSemicircles(D)I

    move-result v8

    .line 235
    invoke-direct {v0, v11, v12}, Lcom/jichi/ob/util/FitGcj02Fixer;->degreesToSemicircles(D)I

    move-result v9

    if-ne v8, v6, :cond_7

    if-eq v9, v7, :cond_6

    goto :goto_1

    :cond_6
    return v2

    .line 237
    :cond_7
    :goto_1
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->getOffset()I

    move-result v2

    add-int v2, p2, v2

    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->getLittleEndian()Z

    move-result v3

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/jichi/ob/util/FitGcj02Fixer;->writeI32([BIIZ)V

    .line 238
    invoke-virtual {v4}, Lcom/jichi/ob/util/FitGcj02Fixer$FieldDef;->getOffset()I

    move-result v2

    add-int v2, p2, v2

    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->getLittleEndian()Z

    move-result v3

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/jichi/ob/util/FitGcj02Fixer;->writeI32([BIIZ)V

    return v5

    :cond_8
    :goto_2
    return v2
.end method

.method private final readI32([BIZ)I
    .locals 1

    if-eqz p3, :cond_0

    .line 113
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x2

    .line 114
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    :goto_0
    or-int/2addr p1, p3

    return p1

    .line 116
    :cond_0
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x2

    .line 117
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    goto :goto_0
.end method

.method private final readU16([BIZ)I
    .locals 0

    if-eqz p3, :cond_0

    .line 105
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    :goto_0
    or-int/2addr p1, p3

    return p1

    .line 107
    :cond_0
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    goto :goto_0
.end method

.method private final semicirclesToDegrees(I)D
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3e76800000000000L    # 8.381903171539307E-8

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private final transformLat(DD)D
    .locals 16

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p1, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p3, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p3, v8

    mul-double v10, v10, p3

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p1

    mul-double v10, v10, p3

    add-double/2addr v4, v10

    .line 143
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double v8, v8, p1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    .line 144
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double/2addr v8, v12

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    add-double/2addr v8, v2

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    mul-double v2, p3, v10

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    div-double v12, p3, v6

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    div-double v8, p3, v8

    mul-double/2addr v8, v10

    .line 146
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x4074000000000000L    # 320.0

    mul-double/2addr v2, v10

    add-double/2addr v8, v2

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    return-wide v4
.end method

.method private final transformLon(DD)D
    .locals 16

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p3, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p1, v6

    mul-double v10, v8, p1

    add-double/2addr v2, v10

    mul-double v8, v8, p3

    add-double/2addr v2, v8

    .line 152
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double v6, v6, p1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    .line 153
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double/2addr v6, v10

    mul-double v12, p1, v4

    mul-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    add-double/2addr v6, v12

    mul-double/2addr v6, v4

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    mul-double v6, p1, v8

    .line 154
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    div-double v10, p1, v12

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double/2addr v10, v14

    add-double/2addr v6, v10

    mul-double/2addr v6, v4

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v6, p1, v6

    mul-double/2addr v6, v8

    .line 155
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x4062c00000000000L    # 150.0

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double v10, p1, v10

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    return-wide v2
.end method

.method private final wgs84ToGcj02(DD)Lkotlin/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lkotlin/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide v1, 0x405a400000000000L    # 105.0

    sub-double v1, p3, v1

    const-wide v3, 0x4041800000000000L    # 35.0

    sub-double v3, p1, v3

    .line 162
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jichi/ob/util/FitGcj02Fixer;->transformLat(DD)D

    move-result-wide v5

    .line 163
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jichi/ob/util/FitGcj02Fixer;->transformLon(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double v7, p1, v3

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    .line 165
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const/4 v13, 0x1

    int-to-double v13, v13

    const-wide v15, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double v17, v11, v15

    mul-double v17, v17, v11

    sub-double v11, v13, v17

    .line 167
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    mul-double/2addr v5, v3

    sub-double/2addr v13, v15

    const-wide v15, 0x415854c140000000L    # 6378245.0

    mul-double/2addr v13, v15

    mul-double v11, v11, v17

    div-double/2addr v13, v11

    mul-double/2addr v13, v9

    div-double/2addr v5, v13

    mul-double/2addr v1, v3

    div-double v15, v15, v17

    .line 169
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v15, v3

    mul-double/2addr v15, v9

    div-double/2addr v1, v15

    add-double v3, p1, v5

    .line 170
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    add-double v1, p3, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1
.end method

.method private final writeI32([BIIZ)V
    .locals 1

    if-eqz p4, :cond_0

    and-int/lit16 p4, p3, 0xff

    int-to-byte p4, p4

    .line 123
    aput-byte p4, p1, p2

    add-int/lit8 p4, p2, 0x1

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 124
    aput-byte v0, p1, p4

    add-int/lit8 p4, p2, 0x2

    shr-int/lit8 v0, p3, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 125
    aput-byte v0, p1, p4

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p3, p3, 0x18

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 126
    aput-byte p3, p1, p2

    return-void

    :cond_0
    shr-int/lit8 p4, p3, 0x18

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    .line 128
    aput-byte p4, p1, p2

    add-int/lit8 p4, p2, 0x1

    shr-int/lit8 v0, p3, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 129
    aput-byte v0, p1, p4

    add-int/lit8 p4, p2, 0x2

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 130
    aput-byte v0, p1, p4

    add-int/lit8 p2, p2, 0x3

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 131
    aput-byte p3, p1, p2

    return-void
.end method


# virtual methods
.method public final fix([B)[B
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "inputData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 22
    :try_start_0
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string v4, "copyOf(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    array-length v4, v3

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    return-object v2

    :cond_0
    const/4 v4, 0x0

    .line 24
    aget-byte v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xc

    if-eq v6, v7, :cond_1

    if-eq v6, v5, :cond_1

    return-object v2

    :cond_1
    const/16 v5, 0x8

    .line 26
    aget-byte v7, v3, v5

    const/16 v8, 0x9

    aget-byte v8, v3, v8

    const/16 v9, 0xa

    aget-byte v9, v3, v9

    const/16 v10, 0xb

    aget-byte v10, v3, v10

    const/4 v11, 0x4

    new-array v12, v11, [B

    aput-byte v7, v12, v4

    const/4 v7, 0x1

    aput-byte v8, v12, v7

    const/4 v8, 0x2

    aput-byte v9, v12, v8

    const/4 v9, 0x3

    aput-byte v10, v12, v9

    sget-object v10, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 27
    const-string v10, ".FIT"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    return-object v2

    .line 29
    :cond_2
    aget-byte v10, v3, v11

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x5

    aget-byte v12, v3, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v5

    or-int/2addr v10, v12

    const/4 v12, 0x6

    .line 30
    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v10, v12

    const/4 v12, 0x7

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v10, v12

    add-int/2addr v10, v6

    add-int/lit8 v12, v10, 0x2

    .line 32
    array-length v13, v3

    if-ge v12, v13, :cond_3

    invoke-static {v3, v4, v12}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    .line 34
    :cond_3
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move v13, v4

    :goto_0
    if-ge v6, v10, :cond_c

    .line 40
    aget-byte v14, v3, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v15, v14, 0xff

    move-object/from16 v16, v2

    add-int/lit8 v2, v6, 0x1

    move/from16 v17, v5

    and-int/lit16 v5, v14, 0x80

    if-eqz v5, :cond_6

    shr-int/lit8 v5, v15, 0x5

    and-int/2addr v5, v9

    .line 46
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;

    if-nez v5, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/jichi/ob/util/FitGcj02Fixer;

    add-int/lit8 v6, v6, 0x4

    :goto_1
    move-object/from16 v2, v16

    move/from16 v5, v17

    goto :goto_0

    .line 47
    :cond_4
    invoke-direct {v0, v3, v2, v5}, Lcom/jichi/ob/util/FitGcj02Fixer;->patchRecord([BILcom/jichi/ob/util/FitGcj02Fixer$Definition;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v13, v7

    .line 48
    :cond_5
    invoke-virtual {v5}, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->getSize()I

    move-result v5

    :goto_2
    add-int v6, v2, v5

    goto :goto_1

    :cond_6
    and-int/lit8 v5, v14, 0xf

    and-int/lit8 v6, v14, 0x40

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_3

    :cond_7
    move v6, v4

    :goto_3
    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_8

    move v14, v7

    goto :goto_4

    :cond_8
    move v14, v4

    :goto_4
    if-eqz v6, :cond_9

    .line 55
    invoke-direct {v0, v3, v2, v14}, Lcom/jichi/ob/util/FitGcj02Fixer;->parseDefinition([BIZ)Lkotlin/Pair;

    move-result-object v2

    .line 56
    move-object v6, v12

    check-cast v6, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v6, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_1

    .line 59
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;

    if-nez v5, :cond_a

    move v6, v2

    goto :goto_1

    .line 60
    :cond_a
    invoke-direct {v0, v3, v2, v5}, Lcom/jichi/ob/util/FitGcj02Fixer;->patchRecord([BILcom/jichi/ob/util/FitGcj02Fixer$Definition;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v13, v7

    .line 61
    :cond_b
    invoke-virtual {v5}, Lcom/jichi/ob/util/FitGcj02Fixer$Definition;->getSize()I

    move-result v5

    goto :goto_2

    :cond_c
    move-object/from16 v16, v2

    move/from16 v17, v5

    if-nez v13, :cond_d

    return-object v1

    .line 69
    :cond_d
    array-length v1, v3

    sub-int/2addr v1, v8

    invoke-static {v3, v4, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jichi/ob/util/FitGcj02Fixer;->fitCRC([B)I

    move-result v1

    .line 70
    array-length v2, v3

    sub-int/2addr v2, v8

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 71
    array-length v2, v3

    sub-int/2addr v2, v7

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_0
    move-object/from16 v16, v2

    :catch_1
    return-object v16
.end method

.method public final gcj02ToWgs84(DD)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lkotlin/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/util/FitGcj02Fixer;->isInChina(DD)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 83
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/util/FitGcj02Fixer;->gcj02ToWgs84Exact(DD)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 81
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
