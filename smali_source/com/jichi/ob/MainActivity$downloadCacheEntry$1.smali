.class final Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->downloadCacheEntry$app_devRelease(Lcom/jichi/ob/util/ActivityCache$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$downloadCacheEntry$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,4073:1\n1#2:4074\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.jichi.ob.MainActivity$downloadCacheEntry$1"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2
    }
    l = {
        0xf3c,
        0xf54,
        0xf5a
    }
    m = "invokeSuspend"
    n = {
        "act",
        "act",
        "data",
        "ext",
        "name",
        "path",
        "e"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $entry:Lcom/jichi/ob/util/ActivityCache$Entry;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/util/ActivityCache$Entry;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;-><init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/util/ActivityCache$Entry;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v1, p0

    const-string/jumbo v0, "\u2705 iGPSPORT \u65f6\u95f4\u5df2\u4ece FIT \u56de\u586b: "

    const-string/jumbo v2, "\u6d3b\u52a8 "

    const-string/jumbo v3, "\u2705 \u5355\u70b9\u4e0b\u8f7d\u5b8c\u6210: "

    const-string/jumbo v4, "\ud83d\udcbe \u5df2\u5b58: "

    const-string/jumbo v5, "\u2b07\ufe0f \u5355\u70b9\u4e0b\u8f7d: ["

    const-string/jumbo v6, "\u4e0b\u8f7d\u6570\u636e\u65e0\u6548 ("

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 3887
    iget v8, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->label:I

    const-string v9, " ("

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v8, :cond_3

    if-eq v8, v12, :cond_2

    if-eq v8, v11, :cond_1

    if-ne v8, v10, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$1:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_5

    :cond_2
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/ActivityRecord;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3889
    :try_start_2
    iget-object v8, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v14, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v14}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v15}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object v15

    const/16 v10, 0x14

    invoke-static {v15, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v15, "%.1f"

    iget-object v11, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v11}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v15, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "format(...)"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "] "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "km)"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3891
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v5}, Lcom/jichi/ob/util/ActivityCache$Entry;->getId()Ljava/lang/String;

    move-result-object v17

    .line 3892
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v5}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v8, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v8}, Lcom/jichi/ob/util/ActivityCache$Entry;->getId()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x8

    invoke-static {v5, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    .line 3893
    const-string v19, ""

    .line 3894
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v2}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v20

    .line 3895
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v2}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v22

    .line 3896
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    .line 3897
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v5}, Lcom/jichi/ob/util/ActivityCache$Entry;->getExtra()Ljava/lang/String;

    move-result-object v24

    .line 3898
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v5}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v25

    .line 3890
    new-instance v30, Lcom/jichi/ob/model/ActivityRecord;

    const/16 v27, 0x0

    const/16 v28, 0x100

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v16, v30

    invoke-direct/range {v16 .. v29}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v16

    .line 3900
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v8, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    move-object/from16 v32, v1

    check-cast v32, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$0:Ljava/lang/Object;

    iput v12, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->label:I

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v33, 0xa

    const/16 v34, 0x0

    move-object/from16 v30, v2

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    invoke-static/range {v27 .. v34}, Lcom/jichi/ob/MainActivity;->downloadActivity$default(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object/from16 v5, v30

    :goto_0
    check-cast v2, [B

    if-eqz v2, :cond_c

    .line 3901
    array-length v8, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v10, 0x64

    const-string/jumbo v11, "\u5b57\u8282)"

    if-lt v8, v10, :cond_b

    .line 3902
    :try_start_3
    iget-object v6, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v6, v2}, Lcom/jichi/ob/MainActivity;->access$isFit(Lcom/jichi/ob/MainActivity;[B)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "fit"

    goto :goto_1

    :cond_6
    const-string v6, "gpx"

    .line 3903
    :goto_1
    sget-object v8, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    iget-object v10, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v8, v10, v5, v6}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3904
    sget-object v10, Lcom/jichi/ob/util/FileSaver;->INSTANCE:Lcom/jichi/ob/util/FileSaver;

    iget-object v12, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    check-cast v12, Landroid/content/Context;

    invoke-virtual {v10, v12, v8, v2}, Lcom/jichi/ob/util/FileSaver;->saveToDownloads(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3906
    :try_start_4
    sget-object v12, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v14, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    check-cast v14, Landroid/content/Context;

    invoke-virtual {v12, v14}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v12

    .line 3907
    iget-object v14, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v14}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v15}, Lcom/jichi/ob/util/ActivityCache$Entry;->getId()Ljava/lang/String;

    move-result-object v15

    if-nez v10, :cond_7

    const-string v16, ""

    move-object/from16 v13, v16

    goto :goto_2

    :cond_7
    move-object v13, v10

    :goto_2
    invoke-virtual {v12, v14, v15, v13}, Lcom/jichi/ob/util/ActivityCache;->setFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3910
    :catch_0
    :try_start_5
    iget-object v12, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v13, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    if-ne v12, v13, :cond_a

    iget-object v12, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v12}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_a

    iget-object v12, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v12, v2}, Lcom/jichi/ob/MainActivity;->access$isFit(Lcom/jichi/ob/MainActivity;[B)Z

    move-result v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v12, :cond_a

    .line 3912
    :try_start_6
    iget-object v12, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v12}, Lcom/jichi/ob/MainActivity;->access$getIgpsportApi$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/api/IgpsportApi;

    move-result-object v12

    if-nez v12, :cond_8

    const-string v12, "igpsportApi"

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v12, 0x0

    :cond_8
    invoke-virtual {v12, v2}, Lcom/jichi/ob/api/IgpsportApi;->parseFitStartTimeMs([B)J

    move-result-wide v12

    cmp-long v14, v12, v14

    if-lez v14, :cond_9

    .line 3914
    sget-object v14, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v15, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    check-cast v15, Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v14

    .line 3915
    iget-object v15, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v15}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v17, v5

    :try_start_7
    iget-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->$entry:Lcom/jichi/ob/util/ActivityCache$Entry;

    invoke-virtual {v5}, Lcom/jichi/ob/util/ActivityCache$Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v15, v5, v12, v13}, Lcom/jichi/ob/util/ActivityCache;->setStartTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3916
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v5, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3917
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 3918
    iget-object v12, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object/from16 v17, v5

    .line 3919
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v5, "\u26a0\ufe0f iGPSPORT FIT \u672a\u89e3\u6790\u5230\u65f6\u95f4\u5b57\u6bb5"

    invoke-static {v0, v5}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_1
    :cond_a
    move-object/from16 v17, v5

    .line 3922
    :catch_2
    :goto_3
    :try_start_8
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    array-length v5, v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3923
    iget-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3924
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1$3;

    iget-object v4, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v8, v5}, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1$3;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$3:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$4:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->label:I

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_d

    goto :goto_4

    .line 3901
    :cond_b
    new-instance v0, Ljava/lang/Exception;

    array-length v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3900
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "\u4e0b\u8f7d\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    .line 3929
    iget-object v2, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u26a0\ufe0f \u5355\u70b9\u4e0b\u8f7d\u5931\u8d25: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3930
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1$4;

    iget-object v4, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1$4;-><init>(Lcom/jichi/ob/MainActivity;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->L$4:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v1, Lcom/jichi/ob/MainActivity$downloadCacheEntry$1;->label:I

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_d

    :goto_4
    return-object v7

    .line 3934
    :cond_d
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
