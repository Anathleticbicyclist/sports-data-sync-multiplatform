.class public final Lcom/jichi/ob/util/FitTimeFixer;
.super Ljava/lang/Object;
.source "FitTimeFixer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/util/FitTimeFixer$FieldDef;,
        Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFitTimeFixer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FitTimeFixer.kt\ncom/jichi/ob/util/FitTimeFixer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1#2:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\"\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/jichi/ob/util/FitTimeFixer;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "TIMESTAMP_FIELD_NUM",
        "",
        "OFFSET_SECONDS",
        "",
        "fixXingzheFitTime",
        "",
        "fitBytes",
        "isFitFile",
        "",
        "data",
        "calculateFitCrc",
        "TIME_FIELDS_BY_MSG",
        "",
        "",
        "FieldInfo",
        "FieldDef",
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
.field public static final INSTANCE:Lcom/jichi/ob/util/FitTimeFixer;

.field private static final OFFSET_SECONDS:J = 0x7080L

.field private static final TAG:Ljava/lang/String; = "FitTimeFixer"

.field private static final TIMESTAMP_FIELD_NUM:I = 0xfd

.field private static final TIME_FIELDS_BY_MSG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/jichi/ob/util/FitTimeFixer;

    invoke-direct {v0}, Lcom/jichi/ob/util/FitTimeFixer;-><init>()V

    sput-object v0, Lcom/jichi/ob/util/FitTimeFixer;->INSTANCE:Lcom/jichi/ob/util/FitTimeFixer;

    const/4 v0, 0x3

    .line 197
    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/16 v1, 0x13

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 196
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/util/FitTimeFixer;->TIME_FIELDS_BY_MSG:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateFitCrc([B)I
    .locals 6

    .line 181
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    move v4, v1

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    shr-int/lit8 v3, v3, 0x1

    const v5, 0x8408

    xor-int/2addr v3, v5

    goto :goto_2

    :cond_0
    shr-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const p1, 0xffff

    and-int/2addr p1, v3

    return p1
.end method

.method private final isFitFile([B)Z
    .locals 3

    .line 169
    array-length v0, p1

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x8

    .line 170
    aget-byte v0, p1, v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    const/16 v0, 0x9

    .line 171
    aget-byte v0, p1, v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    .line 172
    aget-byte v0, p1, v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    const/16 v0, 0xb

    .line 173
    aget-byte p1, p1, v0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method


# virtual methods
.method public final fixXingzheFitTime([B)[B
    .locals 21

    move-object/from16 v1, p1

    const-string v0, ", dataEnd="

    const-string v2, "FitTimeFixer"

    const-string v3, "FIT\u5934: headerSize="

    const-string v4, "fitBytes"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/jichi/ob/util/FitTimeFixer;->isFitFile([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    const-string/jumbo v0, "\u4e0d\u662fFIT\u6587\u4ef6\uff0c\u8df3\u8fc7\u65f6\u95f4\u4fee\u6b63"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 41
    :cond_0
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string v5, "copyOf(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 43
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x4

    .line 44
    invoke-static {v4, v7, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 48
    array-length v9, v4

    sub-int/2addr v9, v6

    .line 49
    array-length v10, v4

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    .line 51
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", dataSize\u5b57\u6bb5="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", \u5b9e\u9645\u6570\u636e\u533a="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    move v8, v5

    move v9, v8

    :goto_0
    if-ge v6, v10, :cond_11

    .line 61
    aget-byte v12, v4, v6

    add-int/lit8 v13, v6, 0x1

    and-int/lit8 v14, v12, 0x40

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v5

    :goto_1
    and-int/lit8 v12, v12, 0xf

    if-eqz v14, :cond_7

    add-int/lit8 v13, v6, 0x2

    .line 70
    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v6, 0x3

    if-nez v13, :cond_2

    .line 73
    invoke-static {v4, v14, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    const v16, 0xffff

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    goto :goto_2

    :cond_2
    const v16, 0xffff

    .line 75
    invoke-static {v4, v14, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    :goto_2
    and-int v14, v14, v16

    add-int/lit8 v15, v6, 0x5

    .line 78
    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v6, v6, 0x6

    .line 81
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, v16

    check-cast v11, Ljava/util/List;

    .line 82
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v16

    check-cast v5, Ljava/util/List;

    .line 85
    sget-object v7, Lcom/jichi/ob/util/FitTimeFixer;->TIME_FIELDS_BY_MSG:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_3

    const/16 v17, 0xfd

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_3
    const/16 v17, 0xfd

    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v15, :cond_6

    move/from16 v17, v6

    .line 88
    aget-byte v6, v4, v17

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v18, v17, 0x1

    move/from16 v19, v7

    .line 89
    aget-byte v7, v4, v18

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v18, v17, 0x2

    move/from16 v20, v15

    .line 90
    aget-byte v15, v4, v18

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v17, v17, 0x3

    move/from16 v18, v9

    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x4

    if-ne v7, v9, :cond_5

    .line 94
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_5
    new-instance v9, Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;

    invoke-direct {v9, v6, v7, v15}, Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;-><init>(III)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v19, 0x1

    move/from16 v6, v17

    move/from16 v9, v18

    move/from16 v15, v20

    goto :goto_4

    :cond_6
    move/from16 v17, v6

    move/from16 v18, v9

    .line 99
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;

    invoke-direct {v6, v14, v13, v11, v5}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;-><init>(IILjava/util/List;Ljava/util/List;)V

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move/from16 v6, v17

    move/from16 v9, v18

    const/4 v5, 0x0

    const/4 v7, 0x4

    goto/16 :goto_a

    :cond_7
    move/from16 v18, v9

    .line 102
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;

    if-nez v1, :cond_8

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u6d88\u606f\u6ca1\u6709\u5bf9\u5e94\u7684\u5b9a\u4e49: local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 109
    :cond_8
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->getFields()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;

    invoke-virtual {v7}, Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;->getSize()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_5

    :cond_9
    add-int v5, v13, v6

    if-le v5, v10, :cond_a

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6570\u636e\u6d88\u606f\u8d85\u51fa\u6570\u636e\u533a\uff0c\u505c\u6b62\u904d\u5386: msgStart="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", msgSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 118
    :cond_a
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->getTimeFieldOffsets()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 119
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->getTimeFieldOffsets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v8, v6

    .line 121
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->getTimeFieldOffsets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v9, v18

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v11, v7, :cond_c

    .line 125
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->getFields()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;

    invoke-virtual {v14}, Lcom/jichi/ob/util/FitTimeFixer$FieldInfo;->getSize()I

    move-result v14

    add-int/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_c
    add-int/2addr v12, v13

    .line 129
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->getArchitecture()I

    move-result v7

    if-nez v7, :cond_d

    const/4 v7, 0x4

    .line 130
    invoke-static {v4, v12, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    const-wide v17, 0xffffffffL

    goto :goto_8

    :cond_d
    const/4 v7, 0x4

    const-wide v17, 0xffffffffL

    .line 132
    invoke-static {v4, v12, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    :goto_8
    int-to-long v14, v7

    and-long v14, v14, v17

    const-wide/16 v17, 0x7080

    sub-long v14, v14, v17

    const-wide/16 v17, 0x0

    cmp-long v7, v14, v17

    if-lez v7, :cond_b

    .line 138
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitTimeFixer$FieldDef;->getArchitecture()I

    move-result v7

    if-nez v7, :cond_e

    const/16 v16, 0x4

    .line 139
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    long-to-int v11, v14

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    goto :goto_9

    :cond_e
    const/16 v16, 0x4

    .line 141
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    long-to-int v11, v14

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    :goto_9
    const/4 v11, 0x4

    const/4 v14, 0x0

    .line 143
    invoke-static {v7, v14, v4, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    :cond_f
    move/from16 v9, v18

    :cond_10
    const/4 v11, 0x4

    const/4 v14, 0x0

    move-object/from16 v1, p1

    move v6, v5

    move v7, v11

    move v5, v14

    :goto_a
    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_11
    move/from16 v18, v9

    .line 153
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u65f6\u95f4\u6233\u7edf\u8ba1: \u5171\u627e\u5230 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e2a\uff0c\u4fee\u6b63 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u884c\u8005FIT\u65f6\u95f4\u4fee\u6b63\u5931\u8d25: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
