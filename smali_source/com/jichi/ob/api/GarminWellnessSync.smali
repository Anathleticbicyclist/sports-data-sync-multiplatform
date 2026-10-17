.class public final Lcom/jichi/ob/api/GarminWellnessSync;
.super Ljava/lang/Object;
.source "GarminWellnessSync.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/GarminWellnessSync$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGarminWellnessSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminWellnessSync.kt\ncom/jichi/ob/api/GarminWellnessSync\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JT\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00052\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00150\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0016J\"\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u001a0\u00190\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/jichi/ob/api/GarminWellnessSync;",
        "",
        "<init>",
        "()V",
        "DEFAULT_DAYS",
        "",
        "UPLOAD_INTERVAL_MS",
        "",
        "sync",
        "Lcom/jichi/ob/api/GarminWellnessSync$Result;",
        "garminApi",
        "Lcom/jichi/ob/api/GarminApi;",
        "source",
        "Lcom/jichi/ob/model/DataSource;",
        "sourceCred",
        "",
        "target",
        "targetCred",
        "days",
        "onLog",
        "Lkotlin/Function1;",
        "",
        "(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unzipAllFit",
        "",
        "Lkotlin/Pair;",
        "",
        "zipBytes",
        "Result",
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
.field public static final DEFAULT_DAYS:I = 0x7

.field public static final INSTANCE:Lcom/jichi/ob/api/GarminWellnessSync;

.field private static final UPLOAD_INTERVAL_MS:J = 0x1f4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/api/GarminWellnessSync;

    invoke-direct {v0}, Lcom/jichi/ob/api/GarminWellnessSync;-><init>()V

    sput-object v0, Lcom/jichi/ob/api/GarminWellnessSync;->INSTANCE:Lcom/jichi/ob/api/GarminWellnessSync;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic sync$default(Lcom/jichi/ob/api/GarminWellnessSync;Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    move v7, v0

    goto :goto_0

    :cond_0
    move/from16 v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 35
    invoke-virtual/range {v1 .. v9}, Lcom/jichi/ob/api/GarminWellnessSync;->sync(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final unzipAllFit([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation

    .line 102
    const-string v0, "getName(...)"

    .line 103
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object p1, v1

    check-cast p1, Ljava/util/zip/ZipInputStream;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 105
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, ".fit"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v6, 0x10000

    .line 109
    new-array v6, v6, [B

    .line 111
    :goto_1
    invoke-virtual {p1, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x2f

    const/4 v7, 0x2

    invoke-static {v3, v6, v4, v7, v4}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 115
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :cond_2
    :try_start_2
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 120
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final sync(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminWellnessSync$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p8

    instance-of v2, v0, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;

    iget v3, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;

    invoke-direct {v2, v1, v0}, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;-><init>(Lcom/jichi/ob/api/GarminWellnessSync;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 35
    iget v4, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I

    const/4 v5, 0x3

    const-string/jumbo v6, "\u274c [\u5065\u5eb7] "

    const-string/jumbo v7, "\u23ed\ufe0f [\u5065\u5eb7] "

    const/4 v8, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v5, :cond_1

    iget v4, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$9:I

    iget v12, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$8:I

    iget v13, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$7:I

    iget v14, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$6:I

    iget v15, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$5:I

    iget v11, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$4:I

    iget v5, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$3:I

    iget v8, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$2:I

    iget v10, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$1:I

    iget v9, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$0:I

    move-object/from16 v19, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$14:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$13:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$12:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$11:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/Iterator;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$10:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/List;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$9:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [B

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$8:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$7:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/Calendar;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$6:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/text/SimpleDateFormat;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$5:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lkotlin/jvm/functions/Function1;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$4:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$3:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$2:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$1:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$0:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/jichi/ob/api/GarminApi;

    :try_start_0
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v19, v6

    move/from16 v25, v13

    move v13, v9

    move-object v9, v2

    move-object v2, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v7

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v1, v25

    move/from16 v25, v13

    move v13, v9

    move-object v9, v2

    move-object v2, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v7

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v19, v0

    iget v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$9:I

    iget v4, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$8:I

    iget v5, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$7:I

    iget v8, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$6:I

    iget v9, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$5:I

    iget v10, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$4:I

    iget v11, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$3:I

    iget v12, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$2:I

    iget v13, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$1:I

    iget v14, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$0:I

    iget-object v15, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$13:Ljava/lang/Object;

    check-cast v15, [B

    move/from16 v20, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$12:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 p1, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$11:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    move-object/from16 p2, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$10:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 p3, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$9:Ljava/lang/Object;

    check-cast v0, [B

    move-object/from16 p4, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$8:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 p5, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    move-object/from16 p6, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/text/SimpleDateFormat;

    move-object/from16 p7, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v23, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v25, v0

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/GarminApi;

    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v7

    move-object/from16 v7, p7

    move/from16 p7, v10

    move v10, v13

    move v13, v14

    move-object/from16 v14, v21

    move/from16 v21, v20

    move-object/from16 v20, v1

    move-object/from16 v1, p2

    move-object/from16 v26, v3

    move-object/from16 v19, v6

    move/from16 v27, v8

    move/from16 v28, v9

    move v8, v12

    move-object/from16 v3, v23

    move-object/from16 v6, v25

    move-object/from16 v23, p4

    move-object/from16 v12, p6

    move-object v9, v2

    move/from16 v25, v5

    move-object/from16 p4, v15

    move-object/from16 v15, v24

    move-object/from16 v5, p5

    move-object v2, v0

    move/from16 v24, v4

    move-object/from16 v4, v22

    move-object/from16 v0, p1

    move-object/from16 v22, p3

    goto/16 :goto_4

    :cond_3
    move-object/from16 v19, v0

    iget v4, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$6:I

    iget v5, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$5:I

    iget v8, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$4:I

    iget v9, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$3:I

    iget v10, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$2:I

    iget v11, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$1:I

    iget v12, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$0:I

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$8:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$7:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/util/Calendar;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$6:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/text/SimpleDateFormat;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$5:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lkotlin/jvm/functions/Function1;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$4:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$3:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$2:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$1:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v2, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$0:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/jichi/ob/api/GarminApi;

    :try_start_1
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v8

    move-object v8, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v15

    move-object v15, v14

    move v14, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v26, v3

    move/from16 v19, v12

    move-object/from16 v1, v20

    move-object/from16 v3, v24

    const/16 v16, 0x2

    const/16 v18, 0x0

    move-object v12, v2

    move-object v2, v6

    move-object/from16 v24, v15

    move-object v15, v14

    move v14, v8

    move-object v8, v7

    move v7, v10

    const/4 v10, 0x0

    goto/16 :goto_1a

    :cond_4
    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object v12, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 p1, v4

    move-object/from16 v4, p2

    :goto_1
    if-ge v13, v10, :cond_15

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    move/from16 v22, v13

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x5

    move/from16 v23, v14

    const/4 v14, -0x1

    move/from16 v24, v15

    move-object/from16 v15, p1

    .line 51
    invoke-virtual {v15, v0, v14}, Ljava/util/Calendar;->add(II)V

    .line 52
    invoke-virtual {v4}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v25, v6

    const-string/jumbo v6, "\ud83d\udce5 [\u5065\u5eb7] "

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " \u4e0b\u8f7d "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u5065\u5eb7\u6570\u636e..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :try_start_2
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v2, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$0:Ljava/lang/Object;

    iput-object v4, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$1:Ljava/lang/Object;

    iput-object v5, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$2:Ljava/lang/Object;

    iput-object v8, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$3:Ljava/lang/Object;

    iput-object v9, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$4:Ljava/lang/Object;

    iput-object v11, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$5:Ljava/lang/Object;

    iput-object v3, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$6:Ljava/lang/Object;

    iput-object v15, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$7:Ljava/lang/Object;

    iput-object v13, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$8:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16

    const/4 v6, 0x0

    :try_start_3
    iput-object v6, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$9:Ljava/lang/Object;

    iput-object v6, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$10:Ljava/lang/Object;

    iput-object v6, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$11:Ljava/lang/Object;

    iput-object v6, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$12:Ljava/lang/Object;

    iput-object v6, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$13:Ljava/lang/Object;

    iput-object v6, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$14:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    :try_start_4
    iput v10, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$0:I

    iput v1, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$1:I

    iput v7, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$2:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16

    move/from16 v6, v25

    :try_start_5
    iput v6, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$3:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_14

    move/from16 v14, v24

    :try_start_6
    iput v14, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$4:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_13

    move-object/from16 v24, v3

    move/from16 v3, v23

    :try_start_7
    iput v3, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$5:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    move-object/from16 v23, v8

    move/from16 v8, v22

    :try_start_8
    iput v8, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$6:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11

    move/from16 v22, v8

    const/4 v8, 0x1

    :try_start_9
    iput v8, v12, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I

    invoke-virtual {v2, v4, v5, v13, v12}, Lcom/jichi/ob/api/GarminApi;->downloadWellnessZip(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10

    move-object/from16 v8, v21

    if-ne v0, v8, :cond_5

    move-object v2, v8

    goto/16 :goto_6

    :cond_5
    move-object/from16 v21, v11

    move v11, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v5

    move v5, v3

    move-object v3, v4

    move/from16 v4, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v21

    move-object/from16 v25, v2

    move-object/from16 v21, v9

    move-object v2, v12

    move v9, v6

    move v12, v10

    move v10, v7

    :goto_2
    :try_start_a
    check-cast v0, [B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    if-eqz v0, :cond_14

    .line 60
    array-length v6, v0

    const/4 v7, 0x4

    if-ge v6, v7, :cond_6

    goto/16 :goto_13

    :cond_6
    move-object/from16 v6, p0

    .line 64
    invoke-direct {v6, v0}, Lcom/jichi/ob/api/GarminWellnessSync;->unzipAllFit([B)Ljava/util/List;

    move-result-object v7

    .line 65
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " \u538b\u7f29\u5305\u5185\u65e0 FIT \u6587\u4ef6\uff08\u8df3\u8fc7\uff09"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p1, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 v26, v8

    move-object/from16 v2, v19

    const/16 v16, 0x2

    const/16 v18, 0x0

    move-object v8, v7

    move v7, v10

    const/4 v10, 0x0

    goto/16 :goto_14

    :cond_7
    move-object/from16 p2, v0

    move-object/from16 p1, v2

    move-object/from16 v2, v20

    .line 69
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 p3, v3

    invoke-virtual/range {v22 .. v22}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    move/from16 p4, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move/from16 p5, v5

    const-string/jumbo v5, "\ud83d\udce6 [\u5065\u5eb7] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u89e3\u538b\u51fa "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u4e2a FIT\uff0c\u5f00\u59cb\u4e0a\u4f20 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v26, v8

    move v5, v10

    move v6, v11

    move-object v2, v13

    move-object v8, v15

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    move-object/from16 v11, v23

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v10, p3

    move/from16 v21, p4

    move/from16 v22, p5

    move v15, v9

    move v13, v12

    move-object/from16 v12, v24

    move-object/from16 v9, p1

    move-object/from16 p1, p2

    move-object/from16 p2, v7

    move-object v7, v1

    move-object/from16 v1, v25

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lkotlin/Pair;

    invoke-virtual/range {v23 .. v23}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v24

    move/from16 v25, v14

    move-object/from16 v14, v24

    check-cast v14, Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v15

    move-object/from16 v15, v23

    check-cast v15, [B

    .line 72
    iput-object v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$0:Ljava/lang/Object;

    iput-object v10, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$1:Ljava/lang/Object;

    iput-object v11, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$2:Ljava/lang/Object;

    iput-object v3, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$3:Ljava/lang/Object;

    iput-object v4, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$4:Ljava/lang/Object;

    iput-object v7, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$5:Ljava/lang/Object;

    iput-object v12, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$6:Ljava/lang/Object;

    iput-object v8, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$7:Ljava/lang/Object;

    iput-object v2, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$8:Ljava/lang/Object;

    move-object/from16 v23, v1

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$9:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$10:Ljava/lang/Object;

    iput-object v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$11:Ljava/lang/Object;

    iput-object v14, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$12:Ljava/lang/Object;

    iput-object v15, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$13:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$14:Ljava/lang/Object;

    iput v13, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$0:I

    iput v6, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$1:I

    iput v5, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$2:I

    move/from16 v1, v24

    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$3:I

    move-object/from16 p3, v0

    move/from16 v0, v25

    iput v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$4:I

    move/from16 v0, v22

    iput v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$5:I

    move/from16 v0, v21

    iput v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$6:I

    move/from16 v0, v33

    iput v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$7:I

    move/from16 v24, v0

    move/from16 v0, v34

    iput v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$8:I

    move/from16 v27, v0

    move/from16 v0, v35

    iput v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$9:I

    move/from16 v28, v1

    const/4 v1, 0x2

    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I

    move/from16 v29, v0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1, v9}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    move-object v2, v1

    goto/16 :goto_6

    :cond_8
    move-object/from16 p4, v10

    move v10, v6

    move-object/from16 v6, p4

    move-object/from16 v26, v1

    move-object v0, v14

    move-object/from16 p4, v15

    move/from16 p7, v25

    move-object/from16 v1, p3

    move-object v14, v7

    move-object v15, v11

    move-object v7, v12

    move/from16 v25, v24

    move/from16 v24, v27

    move/from16 v11, v28

    move-object v12, v8

    move/from16 v27, v21

    move/from16 v28, v22

    move/from16 v21, v29

    move-object/from16 v22, p2

    move v8, v5

    move-object v5, v2

    move-object/from16 v2, v23

    move-object/from16 v23, p1

    :goto_4
    if-nez p7, :cond_10

    move/from16 v29, v11

    .line 75
    const-string v11, ".fit"

    move/from16 v30, v8

    const/4 v8, 0x1

    invoke-static {v0, v11, v8}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_9

    move-object v8, v0

    move-object/from16 v31, v8

    move/from16 v32, v10

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    move-object/from16 v31, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v32, v10

    const-string v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 77
    :goto_5
    :try_start_b
    iput-object v2, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$1:Ljava/lang/Object;

    iput-object v15, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$2:Ljava/lang/Object;

    iput-object v3, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$3:Ljava/lang/Object;

    iput-object v4, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$4:Ljava/lang/Object;

    iput-object v14, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$5:Ljava/lang/Object;

    iput-object v7, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$6:Ljava/lang/Object;

    iput-object v12, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$7:Ljava/lang/Object;

    iput-object v5, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$8:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$9:Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$10:Ljava/lang/Object;

    iput-object v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$11:Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$12:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$13:Ljava/lang/Object;

    iput-object v8, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->L$14:Ljava/lang/Object;

    iput v13, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$0:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    move/from16 v10, v32

    :try_start_c
    iput v10, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$1:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    move/from16 v11, v30

    :try_start_d
    iput v11, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$2:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    move-object/from16 v30, v1

    move/from16 v1, v29

    :try_start_e
    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$3:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    move/from16 v29, v1

    move/from16 v1, p7

    :try_start_f
    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$4:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    move/from16 v31, v1

    move/from16 v1, v28

    :try_start_10
    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$5:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    move/from16 v28, v1

    move/from16 v1, v27

    :try_start_11
    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$6:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    move/from16 v27, v1

    move/from16 v1, v25

    :try_start_12
    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$7:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    move/from16 v25, v1

    move/from16 v1, v24

    :try_start_13
    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$8:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    move/from16 v24, v1

    move/from16 v1, v21

    :try_start_14
    iput v1, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->I$9:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    move-object/from16 p1, v2

    const/4 v2, 0x3

    :try_start_15
    iput v2, v9, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    :try_start_16
    invoke-virtual/range {p1 .. p6}, Lcom/jichi/ob/api/GarminApi;->uploadWellnessFit(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    move-object/from16 v32, p1

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    move-object/from16 v9, p6

    move-object/from16 v2, v26

    if-ne v0, v2, :cond_a

    :goto_6
    return-object v2

    :cond_a
    move/from16 v21, v27

    move-object/from16 v27, v14

    move/from16 v14, v21

    move-object/from16 v26, v7

    move-object/from16 v21, v30

    move-object/from16 v30, v15

    move/from16 v15, v28

    move-object/from16 v28, v4

    move v4, v1

    move-object v1, v12

    move/from16 v12, v24

    move-object/from16 v24, v5

    move/from16 v5, v29

    move-object/from16 v29, v8

    move v8, v11

    move/from16 v11, v31

    move-object/from16 v31, v6

    :goto_7
    :try_start_17
    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_d

    :catch_2
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v32, p1

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    move-object/from16 v9, p6

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move-object v2, v8

    move-object v8, v3

    move-object v3, v2

    move-object/from16 v32, p1

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v32, v8

    move-object v8, v3

    move-object/from16 v3, v32

    move-object/from16 v32, v2

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v24, v8

    move-object v8, v3

    move-object/from16 v3, v24

    move/from16 v24, v1

    goto/16 :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v25, v8

    move-object v8, v3

    move-object/from16 v3, v25

    move/from16 v25, v1

    goto/16 :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v27, v8

    move-object v8, v3

    move-object/from16 v3, v27

    move/from16 v27, v1

    goto :goto_9

    :catch_9
    move-exception v0

    move-object/from16 v28, v8

    move-object v8, v3

    move-object/from16 v3, v28

    move/from16 v28, v1

    goto :goto_9

    :catch_a
    move-exception v0

    move-object/from16 v31, v8

    move-object v8, v3

    move-object/from16 v3, v31

    move/from16 v31, v1

    goto :goto_9

    :catch_b
    move-exception v0

    move-object/from16 v29, v8

    move-object v8, v3

    move-object/from16 v3, v29

    move/from16 v31, p7

    move/from16 v29, v1

    goto :goto_9

    :catch_c
    move-exception v0

    move-object/from16 v30, v8

    move-object v8, v3

    move-object/from16 v3, v30

    move/from16 v31, p7

    goto :goto_8

    :catch_d
    move-exception v0

    move-object v11, v8

    move-object v8, v3

    move-object v3, v11

    move/from16 v31, p7

    move-object/from16 v32, v2

    move-object/from16 v2, v26

    move/from16 v11, v30

    move-object/from16 v30, v1

    move/from16 v1, v21

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v10, v8

    move-object v8, v3

    move-object v3, v10

    move/from16 v31, p7

    move/from16 v11, v30

    move/from16 v10, v32

    :goto_8
    move-object/from16 v30, v1

    :goto_9
    move-object/from16 v32, v2

    move/from16 v1, v21

    :goto_a
    move-object/from16 v2, v26

    :goto_b
    move/from16 v21, v27

    move-object/from16 v27, v14

    move/from16 v14, v21

    move-object/from16 v26, v7

    move-object/from16 v21, v30

    move-object/from16 v30, v15

    move/from16 v15, v28

    move-object/from16 v28, v4

    move v4, v1

    move-object v1, v12

    move/from16 v12, v24

    move-object/from16 v24, v5

    move/from16 v5, v29

    move-object/from16 v29, v8

    move v8, v11

    move/from16 v11, v31

    move-object/from16 v31, v6

    .line 79
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u4e0a\u4f20\u5f02\u5e38: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    move/from16 v35, v4

    move v6, v10

    move/from16 v34, v12

    move/from16 v33, v25

    move-object/from16 v12, v26

    move-object/from16 v7, v27

    move-object/from16 v10, v31

    move-object/from16 p1, v32

    move-object v4, v3

    move/from16 v25, v15

    move-object/from16 v3, v24

    move v15, v5

    move v5, v8

    move/from16 v24, v14

    move-object v8, v1

    move v14, v11

    move-object/from16 v11, v30

    .line 82
    const-string v1, " "

    if-nez v0, :cond_b

    add-int/lit8 v33, v33, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v26, v2

    const-string/jumbo v2, "\u2705 [\u5065\u5eb7] "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0a\u4f20\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v0, v21

    move-object/from16 p2, v22

    move-object/from16 p1, v23

    move/from16 v21, v24

    move/from16 v22, v25

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    goto/16 :goto_3

    :cond_b
    move-object/from16 v26, v2

    .line 83
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v27, "\u91cd\u590d"

    move/from16 p2, v5

    move-object/from16 v5, v27

    check-cast v5, Ljava/lang/CharSequence;

    move/from16 p3, v6

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v5, v9, v6, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    add-int/lit8 v34, v34, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5df2\u5b58\u5728\uff0c\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object v2, v3

    :goto_e
    move-object/from16 v0, v21

    move-object/from16 p1, v23

    move/from16 v21, v24

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    :goto_f
    move/from16 v5, p2

    move-object/from16 p2, v22

    move/from16 v22, v25

    goto/16 :goto_3

    :cond_c
    move-object/from16 v5, v20

    .line 84
    const-string v6, "409"

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 p6, v10

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v6, v10, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "\u51b2\u7a81"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v2, v6, v10, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto/16 :goto_10

    .line 85
    :cond_d
    const-string/jumbo v6, "\u7ed1\u5b9a\u5065\u5eb7\u8bbe\u5907"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v2, v6, v10, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v35, v35, 0x1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0a\u4f20\u5931\u8d25: \u76ee\u6807\u8d26\u53f7\u672a\u7ed1\u5b9a\u5065\u5eb7\u8bbe\u5907\uff08419\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object v2, v3

    move-object/from16 v20, v5

    move-object/from16 v0, v21

    move-object/from16 p1, v23

    move/from16 v21, v24

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    const/4 v14, 0x1

    goto :goto_f

    :cond_e
    move-object/from16 v2, v19

    add-int/lit8 v35, v35, 0x1

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u4e0a\u4f20\u5931\u8d25: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    goto :goto_11

    :cond_f
    :goto_10
    move-object/from16 v2, v19

    add-int/lit8 v34, v34, 0x1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4f73\u660e\u5904\u7406\u4e2d/\u5df2\u5b58\u5728\uff0c\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p1

    move/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v19, v2

    :goto_11
    move-object v2, v3

    move-object/from16 v20, v5

    goto/16 :goto_e

    :cond_10
    move/from16 v31, p7

    move-object/from16 v32, v2

    move/from16 v29, v11

    move/from16 v1, v21

    move v11, v8

    move-object v8, v3

    move v3, v10

    move v0, v13

    move-object v13, v7

    move-object v7, v14

    move v14, v0

    move/from16 v35, v1

    move-object v0, v6

    move v5, v11

    move-object v11, v15

    move/from16 v34, v24

    move/from16 v33, v25

    move/from16 v15, v29

    move/from16 v25, v31

    move-object/from16 v1, v32

    move v6, v3

    move-object v3, v8

    move-object v8, v12

    move/from16 v12, v28

    move-object/from16 v2, v19

    const/16 v16, 0x2

    const/16 v18, 0x0

    const/4 v10, 0x0

    goto :goto_12

    :cond_11
    move-object/from16 v23, v1

    move-object v0, v10

    move/from16 v25, v14

    move/from16 v28, v15

    move/from16 v24, v33

    move/from16 v27, v34

    move/from16 v29, v35

    move v14, v13

    move-object v13, v12

    move/from16 v27, v21

    move/from16 v12, v22

    move-object/from16 v2, v19

    const/4 v10, 0x0

    const/16 v16, 0x2

    const/16 v18, 0x0

    :goto_12
    add-int v6, v6, v33

    add-int v5, v5, v34

    add-int v15, v15, v35

    if-gtz v33, :cond_12

    if-lez v34, :cond_13

    :cond_12
    add-int/lit8 v12, v12, 0x1

    :cond_13
    move-object/from16 v17, v7

    move v7, v5

    move-object v5, v11

    move-object/from16 v11, v17

    move-object/from16 v22, v3

    move-object v3, v13

    move/from16 v19, v25

    const/16 v17, 0x1

    move-object/from16 v25, v1

    move v1, v6

    move v13, v12

    move v6, v15

    move-object v15, v8

    move-object v12, v9

    move-object/from16 v8, v20

    move-object v9, v4

    move/from16 v4, v27

    goto/16 :goto_1b

    :cond_14
    :goto_13
    move-object/from16 p1, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 v26, v8

    move v7, v10

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    const/4 v10, 0x0

    const/16 v16, 0x2

    const/16 v18, 0x0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u65e0\u5065\u5eb7\u6570\u636e\uff08\u8df3\u8fc7\uff09"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    move v0, v11

    move-object v11, v1

    move v1, v0

    move-object/from16 v0, p3

    move/from16 v4, p4

    move/from16 v13, p5

    move v6, v9

    move/from16 v19, v14

    move-object/from16 v9, v21

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    const/16 v17, 0x1

    move v14, v12

    move-object/from16 v12, p1

    goto/16 :goto_1b

    :catch_f
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 v26, v8

    move v7, v10

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    const/4 v10, 0x0

    const/16 v16, 0x2

    const/16 v18, 0x0

    move/from16 v19, v12

    move-object/from16 v12, p1

    goto/16 :goto_1a

    :catch_10
    move-exception v0

    goto :goto_15

    :catch_11
    move-exception v0

    move/from16 v22, v8

    goto :goto_15

    :catch_12
    move-exception v0

    move-object/from16 v23, v8

    :goto_15
    move-object/from16 v8, v20

    move-object/from16 v26, v21

    const/16 v16, 0x2

    const/16 v18, 0x0

    goto :goto_19

    :catch_13
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v26, v21

    move/from16 v3, v23

    const/16 v16, 0x2

    const/16 v18, 0x0

    goto :goto_18

    :catch_14
    move-exception v0

    move-object/from16 v26, v21

    move/from16 v14, v24

    goto :goto_16

    :catch_15
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v26, v21

    move/from16 v14, v24

    move/from16 v6, v25

    const/16 v16, 0x2

    goto :goto_17

    :catch_16
    move-exception v0

    move-object/from16 v26, v21

    move/from16 v14, v24

    move/from16 v6, v25

    :goto_16
    const/16 v16, 0x2

    const/16 v18, 0x0

    :goto_17
    move-object/from16 v24, v3

    move/from16 v3, v23

    :goto_18
    move-object/from16 v23, v8

    move-object/from16 v8, v20

    :goto_19
    move-object/from16 v20, v2

    move-object/from16 v2, v19

    move/from16 v19, v10

    const/4 v10, 0x0

    move-object/from16 v21, v11

    move v11, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v5

    move v5, v3

    move-object v3, v4

    move/from16 v4, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v21

    move-object/from16 v21, v9

    move-object/from16 v25, v20

    move v9, v6

    .line 56
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " \u4e0b\u8f7d\u5f02\u5e38: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    move v0, v11

    move-object v11, v1

    move v1, v0

    move/from16 v0, v19

    move/from16 v19, v14

    move v14, v0

    move-object v0, v3

    move v13, v5

    move v6, v9

    move-object/from16 v9, v21

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    :goto_1b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v20, v8

    move v10, v14

    move-object/from16 p1, v15

    move/from16 v15, v19

    move-object/from16 v8, v22

    move-object/from16 v21, v26

    move-object/from16 v19, v2

    move v14, v13

    move-object/from16 v2, v25

    move v13, v4

    move-object v4, v0

    goto/16 :goto_1

    :cond_15
    move v3, v14

    move v14, v15

    if-eqz v14, :cond_16

    .line 96
    const-string/jumbo v0, "\u90e8\u5206"

    goto :goto_1c

    :cond_16
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\ud83d\udcca [\u5065\u5eb7] \u5065\u5eb7\u6570\u636e\u540c\u6b65\u5b8c\u6210: \u6210\u529f"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / \u91cd\u590d"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / \u5931\u8d25"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\uff08\u8986\u76d6 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u5929\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/jichi/ob/api/GarminWellnessSync$Result;

    invoke-direct {v0, v1, v7, v6, v3}, Lcom/jichi/ob/api/GarminWellnessSync$Result;-><init>(IIII)V

    return-object v0
.end method
