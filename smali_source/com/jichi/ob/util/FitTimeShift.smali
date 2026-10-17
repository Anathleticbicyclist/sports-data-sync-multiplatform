.class public final Lcom/jichi/ob/util/FitTimeShift;
.super Ljava/lang/Object;
.source "FitTimeShift.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jichi/ob/util/FitTimeShift;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "SHIFT_SECONDS",
        "",
        "shiftForIgpsport",
        "",
        "fitData",
        "beijingMs",
        "fitCrc",
        "",
        "data",
        "CRC_TABLE",
        "",
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

.field public static final INSTANCE:Lcom/jichi/ob/util/FitTimeShift;

.field private static final SHIFT_SECONDS:J = 0x7080L

.field private static final TAG:Ljava/lang/String; = "FitTimeShift"


# instance fields
.field public lastReplacedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/util/FitTimeShift;

    invoke-direct {v0}, Lcom/jichi/ob/util/FitTimeShift;-><init>()V

    sput-object v0, Lcom/jichi/ob/util/FitTimeShift;->INSTANCE:Lcom/jichi/ob/util/FitTimeShift;

    const/16 v0, 0x10

    .line 87
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 85
    sput-object v0, Lcom/jichi/ob/util/FitTimeShift;->CRC_TABLE:[I

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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fitCrc([B)I
    .locals 7

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    and-int/lit16 v4, v3, 0xff

    .line 75
    sget-object v5, Lcom/jichi/ob/util/FitTimeShift;->CRC_TABLE:[I

    and-int/lit8 v6, v2, 0xf

    aget v6, v5, v6

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xfff

    xor-int/2addr v2, v6

    and-int/lit8 v3, v3, 0xf

    .line 77
    aget v3, v5, v3

    xor-int/2addr v2, v3

    and-int/lit8 v3, v2, 0xf

    .line 78
    aget v3, v5, v3

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xfff

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v4, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 80
    aget v3, v5, v3

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0xffff

    and-int/2addr p1, v2

    return p1
.end method


# virtual methods
.method public final shiftForIgpsport([BJ)[B
    .locals 10

    const-string v0, "fitData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jichi/ob/util/FitTimeShift;->lastReplacedCount:I

    .line 26
    array-length v0, p1

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    const/16 v0, 0x8

    .line 27
    aget-byte v1, p1, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 32
    div-long/2addr p2, v1

    const-wide/32 v1, 0x259d4c00

    sub-long/2addr p2, v1

    long-to-int p2, p2

    const p3, 0x15180

    add-int/2addr p3, p2

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u504f\u79fbFIT\u65f6\u95f4\u6233: \u8303\u56f4["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u6bcf\u4e2a+28800"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FitTimeShift"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    .line 42
    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x4

    if-ge v3, v5, :cond_2

    .line 43
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x1

    .line 44
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v0

    or-int/2addr v5, v7

    add-int/lit8 v7, v3, 0x2

    .line 45
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v3, 0x3

    .line 46
    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v5, v9

    if-gt p2, v5, :cond_1

    if-gt v5, p3, :cond_1

    add-int/lit16 v5, v5, 0x7080

    and-int/lit16 v9, v5, 0xff

    int-to-byte v9, v9

    .line 49
    aput-byte v9, p1, v3

    shr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 50
    aput-byte v9, p1, v6

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 51
    aput-byte v6, p1, v7

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 52
    aput-byte v5, p1, v8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_0

    .line 60
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u5171\u66ff\u6362 "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " \u5904\u65f6\u95f4\u6233"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/jichi/ob/util/FitTimeShift;->lastReplacedCount:I

    if-lez v4, :cond_3

    .line 64
    array-length p2, p1

    add-int/lit8 p2, p2, -0x2

    invoke-static {p1, v1, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/jichi/ob/util/FitTimeShift;->fitCrc([B)I

    move-result p2

    .line 65
    array-length p3, p1

    add-int/lit8 p3, p3, -0x2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p3

    .line 66
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    shr-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final shiftForIgpsportMinus([BJ)[B
    .locals 10

    const-string v0, "fitData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jichi/ob/util/FitTimeShift;->lastReplacedCount:I

    array-length v0, p1

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    const/16 v0, 0x8

    aget-byte v1, p1, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    const-wide/32 v1, 0x259d4c00

    sub-long/2addr p2, v1

    long-to-int p2, p2

    const p3, 0x15180

    add-int/2addr p3, p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u504f\u79fbFIT\u65f6\u95f4\u6233: \u8303\u56f4["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u6bcf\u4e2a-28800"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FitTimeShift"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x4

    if-ge v3, v5, :cond_2

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v0

    or-int/2addr v5, v7

    add-int/lit8 v7, v3, 0x2

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v3, 0x3

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v5, v9

    if-gt p2, v5, :cond_1

    if-gt v5, p3, :cond_1

    add-int/lit16 v5, v5, -0x7080

    and-int/lit16 v9, v5, 0xff

    int-to-byte v9, v9

    aput-byte v9, p1, v3

    shr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, p1, v6

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, v7

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u5171\u66ff\u6362 "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " \u5904\u65f6\u95f4\u6233"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/jichi/ob/util/FitTimeShift;->lastReplacedCount:I

    if-lez v4, :cond_3

    array-length p2, p1

    add-int/lit8 p2, p2, -0x2

    invoke-static {p1, v1, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/jichi/ob/util/FitTimeShift;->fitCrc([B)I

    move-result p2

    array-length p3, p1

    add-int/lit8 p3, p3, -0x2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p3

    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    shr-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    :cond_3
    :goto_1
    return-object p1
.end method
