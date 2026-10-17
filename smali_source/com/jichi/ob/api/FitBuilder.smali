.class public final Lcom/jichi/ob/api/FitBuilder;
.super Ljava/lang/Object;
.source "FitBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/FitBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0006\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J.\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u001e\u0010\u000f\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00110\u0010J\u0006\u0010\u0012\u001a\u00020\rJ\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u001dJ\u000e\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020 J\u0016\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007J\u0006\u0010%\u001a\u00020&J \u0010\'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006,"
    }
    d2 = {
        "Lcom/jichi/ob/api/FitBuilder;",
        "",
        "<init>",
        "()V",
        "buffer",
        "Ljava/io/ByteArrayOutputStream;",
        "localMsgNum",
        "",
        "getLocalMsgNum",
        "()I",
        "setLocalMsgNum",
        "(I)V",
        "writeDefinition",
        "",
        "globalMsgNum",
        "fields",
        "",
        "Lkotlin/Triple;",
        "writeDataHeader",
        "writeEnum",
        "v",
        "writeSint8",
        "writeUint8",
        "writeUint8z",
        "writeSint16",
        "writeUint16",
        "writeUint16z",
        "writeSint32",
        "writeUint32",
        "",
        "writeUint32z",
        "writeFloat32",
        "",
        "writeString",
        "s",
        "",
        "maxLen",
        "build",
        "",
        "crc16",
        "data",
        "offset",
        "length",
        "Companion",
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
.field public static final Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

.field public static final FIT_EPOCH:J = 0x259d4c00L

.field public static final MSG_ACTIVITY:I = 0x22

.field public static final MSG_FILE_ID:I = 0x0

.field public static final MSG_LAP:I = 0x13

.field public static final MSG_RECORD:I = 0x14

.field public static final MSG_SESSION:I = 0x12

.field public static final SEMICIRCLE_FACTOR:D = 1.1930464711111112E7

.field public static final TYPE_BYTE:I = 0xd

.field public static final TYPE_ENUM:I = 0x0

.field public static final TYPE_FLOAT32:I = 0x88

.field public static final TYPE_SINT16:I = 0x83

.field public static final TYPE_SINT32:I = 0x85

.field public static final TYPE_SINT8:I = 0x1

.field public static final TYPE_STRING:I = 0x7

.field public static final TYPE_UINT16:I = 0x84

.field public static final TYPE_UINT16Z:I = 0x8b

.field public static final TYPE_UINT32:I = 0x86

.field public static final TYPE_UINT32Z:I = 0x8c

.field public static final TYPE_UINT8:I = 0x2

.field public static final TYPE_UINT8Z:I = 0xa


# instance fields
.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private localMsgNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/FitBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/FitBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/FitBuilder;->Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private final crc16([BII)I
    .locals 4

    add-int/2addr p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 145
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    move v2, v0

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    and-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    if-eqz v3, :cond_0

    const v3, 0xa001

    xor-int/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const p1, 0xffff

    and-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public final build()[B
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0xe

    .line 119
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    .line 121
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x87c

    .line 122
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    const-string v3, ".FIT"

    sget-object v4, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "array(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v4}, Lcom/jichi/ob/api/FitBuilder;->crc16([BII)I

    move-result v3

    int-to-short v3, v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 129
    array-length v3, v0

    add-int/2addr v3, v1

    new-array v4, v3, [B

    .line 130
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v6, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    array-length v6, v0

    invoke-static {v0, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    invoke-direct {p0, v4, v5, v3}, Lcom/jichi/ob/api/FitBuilder;->crc16([BII)I

    move-result v3

    .line 133
    array-length v4, v0

    add-int/lit8 v4, v4, 0x10

    new-array v4, v4, [B

    .line 134
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v2, v0

    invoke-static {v0, v5, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    .line 136
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    int-to-short v3, v3

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v0, v0

    add-int/2addr v0, v1

    invoke-static {v3, v5, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method public final getLocalMsgNum()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/jichi/ob/api/FitBuilder;->localMsgNum:I

    return v0
.end method

.method public final setLocalMsgNum(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/jichi/ob/api/FitBuilder;->localMsgNum:I

    return-void
.end method

.method public final writeDataHeader()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lcom/jichi/ob/api/FitBuilder;->localMsgNum:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public final writeDefinition(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/jichi/ob/api/FitBuilder;->localMsgNum:I

    and-int/lit8 v1, v1, 0xf

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short p1, p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 63
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Triple;

    invoke-virtual {p2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-byte v1, v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, v2

    .line 66
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    .line 67
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public final writeEnum(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public final writeFloat32(F)V
    .locals 2

    const/4 v0, 0x4

    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public final writeSint16(I)V
    .locals 2

    const/4 v0, 0x2

    .line 82
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public final writeSint32(I)V
    .locals 2

    const/4 v0, 0x4

    .line 94
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public final writeSint8(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public final writeString(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    array-length v0, p1

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    if-ge v0, p2, :cond_0

    .line 113
    iget-object p1, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeUint16(I)V
    .locals 2

    const/4 v0, 0x2

    .line 86
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p1, v1

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public final writeUint16z(I)V
    .locals 2

    const/4 v0, 0x2

    .line 90
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p1, v1

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public final writeUint32(J)V
    .locals 3

    const/4 v0, 0x4

    .line 98
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public final writeUint32z(J)V
    .locals 3

    const/4 v0, 0x4

    .line 102
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public final writeUint8(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public final writeUint8z(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/jichi/ob/api/FitBuilder;->buffer:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
