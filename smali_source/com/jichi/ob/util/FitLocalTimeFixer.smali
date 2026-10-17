.class public final Lcom/jichi/ob/util/FitLocalTimeFixer;
.super Ljava/lang/Object;
.source "FitLocalTimeFixer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;,
        Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFitLocalTimeFixer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FitLocalTimeFixer.kt\ncom/jichi/ob/util/FitLocalTimeFixer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,251:1\n295#2,2:252\n295#2,2:254\n295#2,2:256\n295#2,2:258\n*S KotlinDebug\n*F\n+ 1 FitLocalTimeFixer.kt\ncom/jichi/ob/util/FitLocalTimeFixer\n*L\n105#1:252,2\n108#1:254,2\n226#1:256,2\n232#1:258,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/jichi/ob/util/FitLocalTimeFixer;",
        "",
        "<init>",
        "()V",
        "CRC_TABLE",
        "",
        "MESG_ACTIVITY",
        "",
        "FIELD_TIMESTAMP",
        "FIELD_LOCAL_TIMESTAMP",
        "UTC_OFFSET_SECONDS",
        "fixIfNeeded",
        "",
        "fitData",
        "readTimestamp",
        "",
        "data",
        "dataPos",
        "def",
        "Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;",
        "readLocalTimestamp",
        "fitCrc",
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

.field private static final FIELD_LOCAL_TIMESTAMP:I = 0x5

.field private static final FIELD_TIMESTAMP:I = 0xfd

.field public static final INSTANCE:Lcom/jichi/ob/util/FitLocalTimeFixer;

.field private static final MESG_ACTIVITY:I = 0x22

.field private static final UTC_OFFSET_SECONDS:I = 0x7080


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/util/FitLocalTimeFixer;

    invoke-direct {v0}, Lcom/jichi/ob/util/FitLocalTimeFixer;-><init>()V

    sput-object v0, Lcom/jichi/ob/util/FitLocalTimeFixer;->INSTANCE:Lcom/jichi/ob/util/FitLocalTimeFixer;

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 21
    sput-object v0, Lcom/jichi/ob/util/FitLocalTimeFixer;->CRC_TABLE:[I

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fitCrc([B)I
    .locals 7

    .line 239
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    and-int/lit16 v4, v3, 0xff

    .line 241
    sget-object v5, Lcom/jichi/ob/util/FitLocalTimeFixer;->CRC_TABLE:[I

    and-int/lit8 v6, v2, 0xf

    aget v6, v5, v6

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xfff

    xor-int/2addr v2, v6

    and-int/lit8 v3, v3, 0xf

    .line 243
    aget v3, v5, v3

    xor-int/2addr v2, v3

    and-int/lit8 v3, v2, 0xf

    .line 244
    aget v3, v5, v3

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xfff

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v4, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 246
    aget v3, v5, v3

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0xffff

    and-int/2addr p1, v2

    return p1
.end method

.method private final readLocalTimestamp([BILcom/jichi/ob/util/FitLocalTimeFixer$Definition;)J
    .locals 5

    .line 232
    invoke-virtual {p3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getFields()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 258
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;

    .line 232
    invoke-virtual {v2}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getNumber()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getSize()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getType()I

    move-result v2

    const/16 v3, 0x86

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;

    if-nez v1, :cond_2

    const-wide/16 p1, 0x0

    return-wide p1

    .line 233
    :cond_2
    invoke-virtual {p3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getLittleEndian()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_3
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 234
    :goto_1
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getOffset()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {v1}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getSize()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    return-wide p1
.end method

.method private final readTimestamp([BILcom/jichi/ob/util/FitLocalTimeFixer$Definition;)J
    .locals 4

    .line 226
    invoke-virtual {p3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getFields()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;

    .line 226
    invoke-virtual {v2}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getNumber()I

    move-result v2

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;

    if-nez v1, :cond_2

    const-wide/16 p1, 0x0

    return-wide p1

    .line 227
    :cond_2
    invoke-virtual {p3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getLittleEndian()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_3
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 228
    :goto_1
    invoke-virtual {v1}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getOffset()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {v1}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getSize()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public final fixIfNeeded([B)[B
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fitData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    array-length v2, v1

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    goto/16 :goto_a

    :cond_0
    const/16 v2, 0x8

    .line 47
    aget-byte v4, v1, v2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1a

    const/16 v4, 0x9

    aget-byte v4, v1, v4

    const/16 v5, 0x46

    if-eq v4, v5, :cond_1

    goto/16 :goto_a

    :cond_1
    const/4 v4, 0x0

    .line 49
    aget-byte v5, v1, v4

    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    if-eq v5, v3, :cond_2

    goto/16 :goto_a

    :cond_2
    const/4 v3, 0x4

    .line 52
    invoke-static {v1, v3, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    add-int v7, v5, v6

    .line 55
    array-length v8, v1

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_3

    goto/16 :goto_a

    .line 58
    :cond_3
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v8, Ljava/util/Map;

    move v10, v5

    :goto_0
    const/4 v11, 0x5

    if-ge v10, v7, :cond_b

    .line 62
    aget-byte v13, v1, v10

    and-int/lit16 v14, v13, 0xff

    add-int/lit8 v15, v10, 0x1

    move/from16 v16, v2

    and-int/lit16 v2, v13, 0x80

    if-eqz v2, :cond_5

    shr-int/lit8 v2, v14, 0x5

    and-int/lit8 v2, v2, 0x3

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {v2}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getDataSize()I

    move-result v2

    add-int/2addr v15, v2

    :cond_4
    move v10, v15

    move/from16 v2, v16

    goto :goto_0

    :cond_5
    and-int/lit8 v2, v13, 0xf

    and-int/lit8 v11, v13, 0x40

    if-eqz v11, :cond_9

    add-int/lit8 v11, v10, 0x2

    .line 78
    aget-byte v11, v1, v11

    add-int/lit8 v13, v10, 0x3

    if-nez v11, :cond_6

    const/16 v19, 0x1

    goto :goto_1

    :cond_6
    move/from16 v19, v4

    :goto_1
    if-eqz v19, :cond_7

    .line 81
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2

    :cond_7
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 82
    :goto_2
    invoke-static {v1, v13, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    const v12, 0xffff

    and-int v18, v11, v12

    add-int/lit8 v22, v10, 0x5

    .line 85
    aget-byte v11, v1, v22

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v10, v10, 0x6

    .line 87
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/List;

    move v13, v4

    move v14, v13

    :goto_3
    if-ge v13, v11, :cond_8

    .line 90
    aget-byte v15, v1, v10

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v17, v10, 0x1

    move/from16 v23, v9

    .line 91
    aget-byte v9, v1, v17

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v17, v10, 0x2

    .line 92
    aget-byte v4, v1, v17

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v10, v10, 0x3

    .line 94
    new-instance v3, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;

    invoke-direct {v3, v15, v9, v4, v14}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;-><init>(IIII)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v14, v9

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v23

    const/4 v3, 0x4

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    move/from16 v23, v9

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v17, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    move-object/from16 v20, v12

    move/from16 v21, v14

    invoke-direct/range {v17 .. v22}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;-><init>(IZLjava/util/List;II)V

    move-object/from16 v3, v17

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v2, v16

    goto :goto_5

    :cond_9
    move/from16 v23, v9

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    if-eqz v2, :cond_a

    .line 100
    invoke-virtual {v2}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getDataSize()I

    move-result v2

    add-int v10, v15, v2

    goto :goto_4

    :cond_a
    move v10, v15

    :goto_4
    move/from16 v2, v16

    move/from16 v9, v23

    :goto_5
    const/4 v3, 0x4

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    move/from16 v16, v2

    move/from16 v23, v9

    .line 105
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 252
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v9, 0x22

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    .line 105
    invoke-virtual {v10}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getGlobalMesg()I

    move-result v10

    if-ne v10, v9, :cond_c

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    check-cast v3, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    if-nez v3, :cond_e

    goto/16 :goto_a

    .line 108
    :cond_e
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getFields()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 254
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v13, 0x86

    if-eqz v10, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;

    .line 108
    invoke-virtual {v14}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getNumber()I

    move-result v15

    if-ne v15, v11, :cond_f

    invoke-virtual {v14}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getSize()I

    move-result v15

    const/4 v4, 0x4

    if-ne v15, v4, :cond_f

    invoke-virtual {v14}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getType()I

    move-result v4

    if-ne v4, v13, :cond_f

    move-object v4, v10

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    :goto_7
    check-cast v4, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;

    const/4 v2, -0x1

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_8
    if-ge v5, v7, :cond_16

    .line 117
    aget-byte v10, v1, v5

    const/16 v21, 0x1

    and-int/lit16 v12, v10, 0xff

    const-wide/16 v24, 0x0

    add-int/lit8 v14, v5, 0x1

    and-int/lit16 v15, v10, 0x80

    if-eqz v15, :cond_12

    shr-int/lit8 v5, v12, 0x5

    and-int/lit8 v5, v5, 0x3

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    if-eqz v5, :cond_15

    .line 124
    invoke-virtual {v5}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getGlobalMesg()I

    move-result v10

    if-ne v10, v9, :cond_11

    if-gez v2, :cond_11

    .line 126
    invoke-direct {v0, v1, v14, v5}, Lcom/jichi/ob/util/FitLocalTimeFixer;->readTimestamp([BILcom/jichi/ob/util/FitLocalTimeFixer$Definition;)J

    move-result-wide v17

    .line 127
    invoke-direct {v0, v1, v14, v5}, Lcom/jichi/ob/util/FitLocalTimeFixer;->readLocalTimestamp([BILcom/jichi/ob/util/FitLocalTimeFixer$Definition;)J

    move-result-wide v19

    move v2, v14

    .line 129
    :cond_11
    invoke-virtual {v5}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getDataSize()I

    move-result v5

    add-int/2addr v14, v5

    goto :goto_9

    :cond_12
    and-int/lit8 v12, v10, 0xf

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_13

    add-int/lit8 v5, v5, 0x5

    .line 139
    aget-byte v10, v1, v5

    and-int/lit16 v10, v10, 0xff

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v5, v10

    goto :goto_8

    .line 142
    :cond_13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;

    if-eqz v5, :cond_15

    .line 144
    invoke-virtual {v5}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getGlobalMesg()I

    move-result v10

    if-ne v10, v9, :cond_14

    if-gez v2, :cond_14

    .line 146
    invoke-direct {v0, v1, v14, v5}, Lcom/jichi/ob/util/FitLocalTimeFixer;->readTimestamp([BILcom/jichi/ob/util/FitLocalTimeFixer$Definition;)J

    move-result-wide v17

    .line 147
    invoke-direct {v0, v1, v14, v5}, Lcom/jichi/ob/util/FitLocalTimeFixer;->readLocalTimestamp([BILcom/jichi/ob/util/FitLocalTimeFixer$Definition;)J

    move-result-wide v19

    move v2, v14

    .line 149
    :cond_14
    invoke-virtual {v5}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getDataSize()I

    move-result v5

    add-int/2addr v5, v14

    goto :goto_8

    :cond_15
    :goto_9
    move v5, v14

    goto :goto_8

    :cond_16
    const/16 v21, 0x1

    const-wide/16 v24, 0x0

    if-ltz v2, :cond_1a

    cmp-long v5, v17, v24

    if-gtz v5, :cond_17

    goto/16 :goto_a

    :cond_17
    const/16 v5, 0x7080

    if-eqz v4, :cond_18

    cmp-long v7, v19, v24

    if-lez v7, :cond_18

    sub-long v19, v19, v17

    int-to-long v7, v5

    sub-long v19, v19, v7

    .line 158
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x12c

    cmp-long v7, v7, v9

    if-gez v7, :cond_18

    goto/16 :goto_a

    :cond_18
    int-to-long v7, v5

    add-long v7, v17, v7

    if-eqz v4, :cond_19

    .line 167
    invoke-virtual {v4}, Lcom/jichi/ob/util/FitLocalTimeFixer$FieldDef;->getOffset()I

    move-result v3

    add-int/2addr v2, v3

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v4, 0x4

    .line 169
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int v5, v7

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v5, 0x0

    .line 170
    invoke-static {v3, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v5, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jichi/ob/util/FitLocalTimeFixer;->fitCrc([B)I

    move-result v2

    .line 173
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 174
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    return-object v1

    .line 185
    :cond_19
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v5, v1

    add-int/lit8 v5, v5, 0x7

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 188
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getFieldCountPos()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x0

    .line 189
    invoke-virtual {v4, v1, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 191
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getFields()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getFields()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    invoke-virtual {v4, v1, v5, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 195
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getFields()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v5, v10

    .line 201
    invoke-virtual {v3}, Lcom/jichi/ob/util/FitLocalTimeFixer$Definition;->getDataSize()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v3, v2, v5

    .line 204
    invoke-virtual {v4, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 206
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int v5, v7

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 207
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    sub-int/2addr v3, v2

    invoke-virtual {v4, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 211
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    add-int/lit8 v6, v6, 0x7

    const/4 v4, 0x4

    .line 215
    invoke-static {v1, v4, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 218
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    const/4 v5, 0x0

    invoke-static {v1, v5, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jichi/ob/util/FitLocalTimeFixer;->fitCrc([B)I

    move-result v2

    .line 219
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 220
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 222
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_1a
    :goto_a
    return-object v1
.end method
