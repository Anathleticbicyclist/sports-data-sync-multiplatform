.class public final Lcom/jichi/ob/api/BrytonFitEncoder;
.super Ljava/lang/Object;
.source "BrytonFitEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;,
        Lcom/jichi/ob/api/BrytonFitEncoder$Step;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrytonFitEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrytonFitEncoder.kt\ncom/jichi/ob/api/BrytonFitEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,279:1\n1#2:280\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002=>B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ(\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0002J(\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u00052\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0002J.\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u00052\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-H\u0002J,\u0010/\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00052\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\'01H\u0002J\u0018\u00103\u001a\u00020\'2\u0006\u00104\u001a\u0002022\u0006\u00105\u001a\u00020\u0005H\u0002J\u0018\u00106\u001a\u00020\'2\u0006\u00104\u001a\u0002022\u0006\u00105\u001a\u00020\u0005H\u0002J\u0018\u00107\u001a\u00020\'2\u0006\u00104\u001a\u0002022\u0006\u00105\u001a\u00020\u0005H\u0002J\u0018\u00108\u001a\u00020\'2\u0006\u00104\u001a\u0002022\u0006\u00105\u001a\u00020\u0005H\u0002J\u0018\u00109\u001a\u00020\'2\u0006\u00104\u001a\u0002022\u0006\u0010:\u001a\u00020\u0018H\u0002J\u0010\u0010;\u001a\u00020\u00162\u0006\u0010<\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/jichi/ob/api/BrytonFitEncoder;",
        "",
        "<init>",
        "()V",
        "MESG_FILE_ID",
        "",
        "MESG_WORKOUT",
        "MESG_WORKOUT_STEP",
        "FILE_TYPE_WORKOUT",
        "MANUFACTURER_BRYTON",
        "SPORT_CYCLING",
        "TARGET_OPEN",
        "TARGET_SPEED",
        "TARGET_HEART_RATE",
        "TARGET_POWER",
        "TARGET_FTP_CUSTOM",
        "TARGET_MHR_CUSTOM",
        "BRYTON_OFFSET",
        "DURATION_TIME",
        "DURATION_OPEN",
        "DURATION_UNTIL_REPEAT",
        "encode",
        "",
        "name",
        "",
        "doc",
        "Lorg/json/JSONObject;",
        "flattenSteps",
        "",
        "Lcom/jichi/ob/api/BrytonFitEncoder$Step;",
        "raw",
        "Lorg/json/JSONArray;",
        "ftp",
        "",
        "maxHr",
        "mapStep",
        "step",
        "idx",
        "writeDef",
        "",
        "bos",
        "Ljava/io/ByteArrayOutputStream;",
        "localType",
        "mesgNum",
        "fields",
        "",
        "Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;",
        "writeRecord",
        "body",
        "Lkotlin/Function1;",
        "Ljava/nio/ByteBuffer;",
        "writeU8",
        "b",
        "v",
        "writeS8",
        "writeU16",
        "writeU32",
        "writeString",
        "s",
        "buildFitHeader",
        "dataSize",
        "Step",
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
.field private static final BRYTON_OFFSET:I = 0x186a0

.field private static final DURATION_OPEN:I = 0x1

.field private static final DURATION_TIME:I = 0x0

.field private static final DURATION_UNTIL_REPEAT:I = 0x1c

.field private static final FILE_TYPE_WORKOUT:I = 0x5

.field public static final INSTANCE:Lcom/jichi/ob/api/BrytonFitEncoder;

.field private static final MANUFACTURER_BRYTON:I = 0x37f

.field private static final MESG_FILE_ID:I = 0x0

.field private static final MESG_WORKOUT:I = 0x1a

.field private static final MESG_WORKOUT_STEP:I = 0x1b

.field private static final SPORT_CYCLING:I = 0x2

.field private static final TARGET_FTP_CUSTOM:I = 0xf5

.field private static final TARGET_HEART_RATE:I = 0x2

.field private static final TARGET_MHR_CUSTOM:I = 0xf9

.field private static final TARGET_OPEN:I = 0x0

.field private static final TARGET_POWER:I = 0xa

.field private static final TARGET_SPEED:I = 0x1


# direct methods
.method public static synthetic $r8$lambda$-opn_IJbM4kAZrzAtrDNC4I8AQ0(Ljava/util/List;Ljava/lang/String;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/api/BrytonFitEncoder;->encode$lambda$1(Ljava/util/List;Ljava/lang/String;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4nsOX7hP02-b07wcMCsr8CUhQZE(Lcom/jichi/ob/api/BrytonFitEncoder$Step;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/api/BrytonFitEncoder;->encode$lambda$2(Lcom/jichi/ob/api/BrytonFitEncoder$Step;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$91MvD_WQvvJnBszlLVbBjaXhVPo(Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/api/BrytonFitEncoder;->encode$lambda$0(Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/api/BrytonFitEncoder;

    invoke-direct {v0}, Lcom/jichi/ob/api/BrytonFitEncoder;-><init>()V

    sput-object v0, Lcom/jichi/ob/api/BrytonFitEncoder;->INSTANCE:Lcom/jichi/ob/api/BrytonFitEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildFitHeader(I)[B
    .locals 3

    const/16 v0, 0xe

    .line 269
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    .line 271
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x64

    .line 272
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 274
    const-string p1, ".FIT"

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 275
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string v0, "array(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final encode$lambda$0(Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .locals 5

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/jichi/ob/api/BrytonFitEncoder;->INSTANCE:Lcom/jichi/ob/api/BrytonFitEncoder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU8(Ljava/nio/ByteBuffer;I)V

    const/16 v1, 0x37f

    .line 60
    invoke-direct {v0, p0, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU16(Ljava/nio/ByteBuffer;I)V

    const/16 v1, 0xff

    .line 61
    invoke-direct {v0, p0, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU32(Ljava/nio/ByteBuffer;I)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU32(Ljava/nio/ByteBuffer;I)V

    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final encode$lambda$1(Ljava/util/List;Ljava/lang/String;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/jichi/ob/api/BrytonFitEncoder;->INSTANCE:Lcom/jichi/ob/api/BrytonFitEncoder;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU8(Ljava/nio/ByteBuffer;I)V

    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p2, p0}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU16(Ljava/nio/ByteBuffer;I)V

    const/16 p0, 0x10

    .line 74
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final encode$lambda$2(Lcom/jichi/ob/api/BrytonFitEncoder$Step;Ljava/nio/ByteBuffer;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/jichi/ob/api/BrytonFitEncoder;->INSTANCE:Lcom/jichi/ob/api/BrytonFitEncoder;

    invoke-virtual {p0}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;->getIndex()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU8(Ljava/nio/ByteBuffer;I)V

    .line 92
    invoke-virtual {p0}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;->getDurationType()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU8(Ljava/nio/ByteBuffer;I)V

    .line 94
    invoke-virtual {p0}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;->getDurationValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU32(Ljava/nio/ByteBuffer;I)V

    .line 95
    invoke-virtual {p0}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;->getTargetType()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeS8(Ljava/nio/ByteBuffer;I)V

    .line 96
    invoke-virtual {p0}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;->getTargetValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU16(Ljava/nio/ByteBuffer;I)V

    .line 97
    invoke-virtual {p0}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;->getCustomLow()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU16(Ljava/nio/ByteBuffer;I)V

    .line 98
    invoke-virtual {p0}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;->getCustomHigh()I

    move-result p0

    invoke-direct {v0, p1, p0}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeU16(Ljava/nio/ByteBuffer;I)V

    .line 99
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final flattenSteps(Lorg/json/JSONArray;DD)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "DD)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/api/BrytonFitEncoder$Step;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 143
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v0, :cond_1

    .line 144
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_0

    move-wide v2, p2

    move-wide v4, p4

    goto :goto_1

    :cond_0
    move-wide v2, p2

    move-wide v4, p4

    .line 145
    invoke-static/range {v1 .. v6}, Lcom/jichi/ob/api/BrytonFitEncoder;->flattenSteps$processStep(Ljava/util/List;DDLorg/json/JSONObject;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-wide p2, v2

    move-wide p4, v4

    goto :goto_0

    .line 147
    :cond_1
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static final flattenSteps$processStep(Ljava/util/List;DDLorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/api/BrytonFitEncoder$Step;",
            ">;DD",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p5

    .line 120
    const-string v0, "reps"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 121
    const-string/jumbo v0, "steps"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-lez v9, :cond_3

    if-eqz v6, :cond_3

    .line 122
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    .line 124
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v10, v2

    :goto_0
    if-ge v10, v8, :cond_1

    .line 125
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 126
    invoke-static/range {v0 .. v5}, Lcom/jichi/ob/api/BrytonFitEncoder;->flattenSteps$processStep(Ljava/util/List;DDLorg/json/JSONObject;)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_2

    return-void

    .line 130
    :cond_2
    new-instance v3, Lcom/jichi/ob/api/BrytonFitEncoder$Step;

    .line 131
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 130
    const-string v5, "Repeat"

    const/16 v6, 0x1c

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 141
    :cond_3
    sget-object v0, Lcom/jichi/ob/api/BrytonFitEncoder;->INSTANCE:Lcom/jichi/ob/api/BrytonFitEncoder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/BrytonFitEncoder;->mapStep(Lorg/json/JSONObject;IDD)Lcom/jichi/ob/api/BrytonFitEncoder$Step;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final mapStep(Lorg/json/JSONObject;IDD)Lcom/jichi/ob/api/BrytonFitEncoder$Step;
    .locals 21

    move-object/from16 v0, p1

    .line 151
    const-string/jumbo v1, "text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string/jumbo v4, "toLowerCase(...)"

    const-string v5, "optString(...)"

    if-nez v3, :cond_3

    .line 152
    const-string v1, "intensity"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "rest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v3, "cooldown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    const-string v1, "Cool Down"

    goto :goto_1

    .line 152
    :sswitch_2
    const-string/jumbo v3, "warmup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    const-string v1, "Warm Up"

    goto :goto_1

    .line 152
    :sswitch_3
    const-string v3, "recovery"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    const-string v1, "Recovery"

    goto :goto_1

    .line 156
    :cond_2
    :goto_0
    const-string v1, "Work"

    .line 151
    :cond_3
    :goto_1
    const-string v3, "ifEmpty(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x10

    .line 158
    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 160
    const-string/jumbo v1, "until_lap_press"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 161
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 170
    const-string v6, "power"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 171
    const-string v7, "_power"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 172
    const-string v12, "end"

    const-string/jumbo v13, "start"

    const v14, 0x186a0

    const-string/jumbo v15, "value"

    const-wide/16 v10, 0x0

    if-eqz v6, :cond_5

    cmpl-double v17, p3, v10

    if-lez v17, :cond_5

    .line 173
    const-string/jumbo v7, "units"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    const-string v4, "%ftp"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    invoke-virtual {v6, v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 176
    invoke-virtual {v6, v15, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-le v2, v4, :cond_4

    move/from16 v20, v4

    move v4, v2

    move/from16 v2, v20

    :cond_4
    add-int/2addr v2, v14

    add-int/2addr v4, v14

    :goto_2
    const/16 v16, 0xf5

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    cmpl-double v2, p3, v10

    if-lez v2, :cond_6

    .line 183
    invoke-virtual {v7, v15, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v7, v13, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move-wide/from16 v17, v4

    .line 184
    invoke-virtual {v7, v15, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v7, v12, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v5, v17, v10

    if-lez v5, :cond_6

    cmpl-double v5, v3, v10

    if-lez v5, :cond_6

    div-double v5, v17, p3

    move-wide/from16 v18, v3

    const/16 v7, 0x64

    int-to-double v2, v7

    mul-double/2addr v5, v2

    .line 186
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    div-double v5, v18, p3

    mul-double/2addr v5, v2

    .line 187
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int v3, v4, v14

    add-int v4, v2, v14

    move v2, v3

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_3
    if-nez v16, :cond_7

    cmpl-double v3, p5, v10

    if-lez v3, :cond_7

    .line 196
    const-string v3, "_hr"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 198
    invoke-virtual {v0, v15, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-virtual {v0, v13, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    move v3, v14

    .line 199
    invoke-virtual {v0, v15, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    invoke-virtual {v0, v12, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    cmpl-double v0, v5, v10

    if-lez v0, :cond_7

    cmpl-double v0, v12, v10

    if-lez v0, :cond_7

    div-double v5, v5, p5

    const/16 v7, 0x64

    int-to-double v10, v7

    mul-double/2addr v5, v10

    .line 201
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    div-double v12, v12, p5

    mul-double/2addr v12, v10

    .line 202
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    add-int/2addr v0, v3

    add-int v4, v2, v3

    const/16 v16, 0xf9

    move v13, v0

    goto :goto_4

    :cond_7
    move v13, v2

    :goto_4
    move v14, v4

    move/from16 v11, v16

    .line 210
    new-instance v6, Lcom/jichi/ob/api/BrytonFitEncoder$Step;

    if-eqz v9, :cond_8

    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    mul-int/lit16 v3, v1, 0x3e8

    move v10, v3

    :goto_5
    const/4 v12, 0x0

    move/from16 v7, p2

    invoke-direct/range {v6 .. v14}, Lcom/jichi/ob/api/BrytonFitEncoder$Step;-><init>(ILjava/lang/String;IIIIII)V

    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x2fa1806b -> :sswitch_3
        -0x2f62ec20 -> :sswitch_2
        -0x208cf895 -> :sswitch_1
        0x355bd4 -> :sswitch_0
    .end sparse-switch
.end method

.method private final writeDef(Ljava/io/ByteArrayOutputStream;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayOutputStream;",
            "II",
            "Ljava/util/List<",
            "Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;",
            ">;)V"
        }
    .end annotation

    or-int/lit8 p2, p2, 0x40

    .line 232
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x0

    .line 234
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 236
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 p2, p3, 0xff

    .line 238
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    .line 239
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 241
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    .line 243
    invoke-virtual {p3}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;->getDefNum()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 244
    invoke-virtual {p3}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;->getSize()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 245
    invoke-virtual {p3}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;->getBaseType()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final writeRecord(Ljava/io/ByteArrayOutputStream;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayOutputStream;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 251
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p2, 0x40

    .line 252
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 253
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    .line 255
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private final writeS8(Ljava/nio/ByteBuffer;I)V
    .locals 0

    int-to-byte p2, p2

    .line 259
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    .line 263
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "getBytes(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    .line 265
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final writeU16(Ljava/nio/ByteBuffer;I)V
    .locals 0

    int-to-short p2, p2

    .line 260
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final writeU32(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 261
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final writeU8(Ljava/nio/ByteBuffer;I)V
    .locals 0

    int-to-byte p2, p2

    .line 258
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lorg/json/JSONObject;)[B
    .locals 15

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    const-string v1, "name"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "doc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v1, "steps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return-object v7

    .line 41
    :cond_0
    const-string v2, "ftp"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 42
    const-string v2, "max_hr"

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move-object v0, p0

    move-wide v2, v8

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/BrytonFitEncoder;->flattenSteps(Lorg/json/JSONArray;DD)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v7

    .line 46
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v7

    .line 48
    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x4

    .line 53
    new-array v4, v3, [Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8, v7}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v7

    .line 54
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    const/4 v9, 0x2

    const/16 v10, 0x84

    invoke-direct {v5, v8, v9, v10}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v8

    .line 55
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    const/4 v11, 0x3

    const/16 v12, 0x86

    invoke-direct {v5, v11, v3, v12}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v9

    .line 56
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v5, v3, v3, v12}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v11

    .line 52
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v2, v7, v7, v4}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeDef(Ljava/io/ByteArrayOutputStream;IILjava/util/List;)V

    .line 58
    new-instance v4, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v2, v7, v4}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeRecord(Ljava/io/ByteArrayOutputStream;ILkotlin/jvm/functions/Function1;)V

    .line 67
    new-array v4, v11, [Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v5, v3, v8, v7}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v7

    .line 68
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    const/4 v13, 0x5

    invoke-direct {v5, v13, v9, v10}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v8

    .line 69
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    const/4 v14, 0x6

    invoke-direct {v5, v14, v8, v8}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v9

    .line 66
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-direct {p0, v2, v8, v5, v4}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeDef(Ljava/io/ByteArrayOutputStream;IILjava/util/List;)V

    .line 71
    new-instance v4, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v6}, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v2, v8, v4}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeRecord(Ljava/io/ByteArrayOutputStream;ILkotlin/jvm/functions/Function1;)V

    const/16 v4, 0x8

    .line 79
    new-array v4, v4, [Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    const/16 v6, 0xfe

    invoke-direct {v5, v6, v8, v7}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v7

    .line 80
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v5, v7, v8, v8}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v8

    .line 81
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v5, v8, v8, v7}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v9

    .line 82
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v5, v9, v3, v12}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v11

    .line 83
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v5, v11, v8, v7}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v3

    .line 84
    new-instance v5, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v5, v3, v9, v10}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v5, v4, v13

    .line 85
    new-instance v3, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v3, v13, v9, v10}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    aput-object v3, v4, v14

    .line 86
    new-instance v3, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;

    invoke-direct {v3, v14, v9, v10}, Lcom/jichi/ob/api/BrytonFitEncoder$FieldDef;-><init>(III)V

    const/4 v5, 0x7

    aput-object v3, v4, v5

    .line 78
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-direct {p0, v2, v9, v4, v3}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeDef(Ljava/io/ByteArrayOutputStream;IILjava/util/List;)V

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jichi/ob/api/BrytonFitEncoder$Step;

    .line 90
    new-instance v4, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/jichi/ob/api/BrytonFitEncoder$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/api/BrytonFitEncoder$Step;)V

    invoke-direct {p0, v2, v9, v4}, Lcom/jichi/ob/api/BrytonFitEncoder;->writeRecord(Ljava/io/ByteArrayOutputStream;ILkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 103
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/jichi/ob/api/BrytonFitEncoder;->buildFitHeader(I)[B

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v1

    return-object v1
.end method
