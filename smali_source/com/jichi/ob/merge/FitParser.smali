.class public final Lcom/jichi/ob/merge/FitParser;
.super Ljava/lang/Object;
.source "FitParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/merge/FitParser$FitResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/jichi/ob/merge/FitParser;",
        "",
        "<init>",
        "()V",
        "parse",
        "Lcom/jichi/ob/merge/FitParser$FitResult;",
        "bytes",
        "",
        "FitResult",
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
.field public static final INSTANCE:Lcom/jichi/ob/merge/FitParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/merge/FitParser;

    invoke-direct {v0}, Lcom/jichi/ob/merge/FitParser;-><init>()V

    sput-object v0, Lcom/jichi/ob/merge/FitParser;->INSTANCE:Lcom/jichi/ob/merge/FitParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([B)Lcom/jichi/ob/merge/FitParser$FitResult;
    .locals 12

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x8

    .line 41
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_5

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x46

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    .line 43
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v4, -0x1

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 45
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 46
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 47
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 48
    new-instance v7, Lcom/garmin/fit/Decode;

    invoke-direct {v7}, Lcom/garmin/fit/Decode;-><init>()V

    .line 49
    new-instance v8, Lcom/garmin/fit/MesgBroadcaster;

    invoke-direct {v8, v7}, Lcom/garmin/fit/MesgBroadcaster;-><init>(Lcom/garmin/fit/Decode;)V

    .line 50
    move-object v9, v8

    check-cast v9, Lcom/garmin/fit/MesgListener;

    invoke-virtual {v7, v9}, Lcom/garmin/fit/Decode;->addListener(Lcom/garmin/fit/MesgListener;)V

    .line 51
    new-instance v9, Lcom/jichi/ob/merge/FitParser$parse$1;

    invoke-direct {v9, v6, v1}, Lcom/jichi/ob/merge/FitParser$parse$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/ArrayList;)V

    check-cast v9, Lcom/garmin/fit/RecordMesgListener;

    invoke-virtual {v8, v9}, Lcom/garmin/fit/MesgBroadcaster;->addListener(Lcom/garmin/fit/RecordMesgListener;)V

    .line 74
    new-instance v6, Lcom/jichi/ob/merge/FitParser$parse$2;

    invoke-direct {v6, v3}, Lcom/jichi/ob/merge/FitParser$parse$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v6, Lcom/garmin/fit/SportMesgListener;

    invoke-virtual {v8, v6}, Lcom/garmin/fit/MesgBroadcaster;->addListener(Lcom/garmin/fit/SportMesgListener;)V

    .line 80
    new-instance v6, Lcom/jichi/ob/merge/FitParser$parse$3;

    invoke-direct {v6, v3, v4, v5}, Lcom/jichi/ob/merge/FitParser$parse$3;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v6, Lcom/garmin/fit/SessionMesgListener;

    invoke-virtual {v8, v6}, Lcom/garmin/fit/MesgBroadcaster;->addListener(Lcom/garmin/fit/SessionMesgListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v6, Ljava/io/InputStream;

    instance-of p1, v6, Ljava/io/BufferedInputStream;

    if-eqz p1, :cond_2

    check-cast v6, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v6, p1

    :goto_0
    check-cast v6, Ljava/io/InputStream;

    invoke-virtual {v7, v6}, Lcom/garmin/fit/Decode;->read(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    return-object v0

    .line 97
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 98
    :cond_4
    new-instance v6, Lcom/jichi/ob/merge/FitParser$FitResult;

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    iget v8, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-string v9, ""

    iget v10, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct/range {v6 .. v11}, Lcom/jichi/ob/merge/FitParser$FitResult;-><init>(Ljava/util/List;ILjava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v6

    nop

    :catch_1
    :cond_5
    :goto_2
    return-object v0
.end method
