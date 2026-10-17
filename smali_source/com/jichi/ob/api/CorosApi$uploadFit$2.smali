.class final Lcom/jichi/ob/api/CorosApi$uploadFit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CorosApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/CorosApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCorosApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CorosApi.kt\ncom/jichi/ob/api/CorosApi$uploadFit$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,494:1\n216#2,2:495\n*S KotlinDebug\n*F\n+ 1 CorosApi.kt\ncom/jichi/ob/api/CorosApi$uploadFit$2\n*L\n353#1:495,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.CorosApi$uploadFit$2"
    f = "CorosApi.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x125
    }
    m = "invokeSuspend"
    n = {
        "token",
        "sts",
        "bucket",
        "zipData",
        "md5",
        "regionId",
        "size"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $activityId:Ljava/lang/String;

.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $fitData:[B

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/CorosApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/CorosApi;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/CorosApi$uploadFit$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    iput-object p2, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$cred:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$fitData:[B

    iput-object p4, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$activityId:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$fileName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;

    iget-object v1, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    iget-object v2, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$cred:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$fitData:[B

    iget-object v4, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$activityId:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$fileName:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/api/CorosApi$uploadFit$2;-><init>(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v1, p0

    const-string v0, "data"

    const-string v2, "code"

    const-string v3, "Origin"

    const-string v4, "Referer"

    const-string v5, ", key="

    const-string v6, ": "

    const-string v7, ".zip"

    const-string v8, "/"

    const-string/jumbo v9, "\u9ad8\u9a70OSS STS\u65e0\u51ed\u8bc1: "

    const-string/jumbo v10, "\u9ad8\u9a70OSS STS\u5931\u8d25: "

    const-string/jumbo v11, "\u9ad8\u9a70OSS STS\u83b7\u53d6\u5931\u8d25 HTTP "

    const-string v12, "STS HTTP "

    const-string v13, "CPL-coros-token="

    const-string/jumbo v14, "uploadFit: fit="

    const-string/jumbo v15, "\u9ad8\u9a70\u6587\u4ef6\u8fc7\u5c0f\u9700\u226520KB\uff08\u5f53\u524d"

    move-object/from16 v16, v9

    const-string v9, "fit_zip/"

    move-object/from16 v17, v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v10

    .line 278
    iget v10, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->label:I

    move-object/from16 v19, v2

    const/16 v20, 0x2

    const-string v2, "CorosApi"

    move-object/from16 v21, v11

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    if-ne v10, v11, :cond_0

    iget v0, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->I$1:I

    iget v10, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->I$0:I

    iget-object v15, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$4:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v11, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$3:Ljava/lang/Object;

    check-cast v11, [B

    move/from16 v22, v0

    iget-object v0, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/CorosApi$Sts;

    move-object/from16 v24, v0

    iget-object v0, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v25, v11

    move-object v11, v0

    move/from16 v0, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v25

    move-object/from16 v27, v2

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    move-object/from16 v26, v13

    move-object/from16 v2, p1

    :goto_0
    move/from16 v34, v10

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v10, v2

    goto/16 :goto_14

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 279
    iget-object v10, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    iget-object v11, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$cred:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/jichi/ob/api/CorosApi;->access$parseCredential(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 280
    move-object/from16 v22, v11

    check-cast v22, Ljava/lang/CharSequence;

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-nez v22, :cond_2

    const-string/jumbo v0, "\u9ad8\u9a70\u767b\u5f55\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    return-object v0

    :cond_2
    move-object/from16 v22, v6

    .line 282
    :try_start_1
    invoke-static {}, Lcom/jichi/ob/api/CorosApi;->access$getSTS_CONFIG$cp()Ljava/util/Map;

    move-result-object v6

    move-object/from16 v23, v12

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/api/CorosApi$Sts;

    if-nez v6, :cond_3

    invoke-static {}, Lcom/jichi/ob/api/CorosApi;->access$getSTS_CONFIG$cp()Ljava/util/Map;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/jichi/ob/api/CorosApi$Sts;

    .line 283
    :cond_3
    invoke-virtual {v6}, Lcom/jichi/ob/api/CorosApi$Sts;->getBucket()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v24, v3

    .line 285
    iget-object v3, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    move-object/from16 v25, v4

    iget-object v4, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$fitData:[B

    move-object/from16 v26, v13

    iget-object v13, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$activityId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v27, v2

    :try_start_2
    iget-object v2, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$fileName:Ljava/lang/String;

    invoke-static {v3, v4, v13, v2}, Lcom/jichi/ob/api/CorosApi;->access$zipFitData(Lcom/jichi/ob/api/CorosApi;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 286
    iget-object v3, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    invoke-static {v3, v2}, Lcom/jichi/ob/api/CorosApi;->access$md5Hex(Lcom/jichi/ob/api/CorosApi;[B)Ljava/lang/String;

    move-result-object v3

    .line 287
    array-length v4, v2

    const/16 v13, 0x5000

    if-ge v4, v13, :cond_4

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u5b57\u8282\uff0c\u7591\u4f3c\u7a7a\u8f68\u8ff9/0\u8ddd\u79bb\u8fd0\u52a8\uff09\uff0c\u5df2\u8df3\u8fc7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :cond_4
    iget-object v13, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    iget-object v15, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$cred:Ljava/lang/String;

    move-object/from16 v28, v5

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v11, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$2:Ljava/lang/Object;

    iput-object v2, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$3:Ljava/lang/Object;

    iput-object v3, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->L$4:Ljava/lang/Object;

    iput v10, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->I$0:I

    iput v4, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->I$1:I

    move-object/from16 p1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->label:I

    invoke-virtual {v13, v15, v5}, Lcom/jichi/ob/api/CorosApi;->getUserId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v15, v3

    move v0, v4

    move-object/from16 v3, p1

    goto/16 :goto_0

    .line 278
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    iget-object v5, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$activityId:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v9, 0x0

    if-lez v5, :cond_6

    iget-object v5, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$activityId:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 297
    :cond_6
    iget-object v5, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$fileName:Ljava/lang/String;

    const/16 v10, 0x2f

    move/from16 v13, v20

    invoke-static {v5, v10, v9, v13, v9}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x2e

    invoke-static {v5, v10, v9, v13, v9}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 298
    :goto_2
    iget-object v7, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->$fitData:[B

    array-length v7, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "B\u2192zip="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "B, md5="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", userId="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, v28

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", oriFileName="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v10, v27

    :try_start_3
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/jichi/ob/api/CorosApi;->access$getREGIONCONFIG$cp()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/api/CorosApi$Region;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v13, "https://trainingcn.coros.com"

    if-eqz v2, :cond_7

    :try_start_4
    invoke-virtual {v2}, Lcom/jichi/ob/api/CorosApi$Region;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    move-object v2, v13

    .line 304
    :cond_8
    invoke-virtual {v6}, Lcom/jichi/ob/api/CorosApi$Sts;->getService()Ljava/lang/String;

    move-result-object v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v27, v6

    const-string v6, "/api/proxy/oss/sts?bucket="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "&service="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "&v=2"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 305
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v9, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 306
    const-string v9, "User-Agent"

    const-string v14, "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v6, v9, v14}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 307
    const-string v9, "Cookie"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v28, v13

    move-object/from16 v13, v26

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v13, v25

    invoke-virtual {v6, v13, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    move-object/from16 v9, v24

    .line 309
    invoke-virtual {v6, v9, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 311
    iget-object v6, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    invoke-static {v6}, Lcom/jichi/ob/api/CorosApi;->access$getClient$p(Lcom/jichi/ob/api/CorosApi;)Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    move-object v14, v2

    check-cast v14, Lokhttp3/Response;

    .line 312
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v25, ""

    if-eqz v24, :cond_a

    :try_start_6
    invoke-virtual/range {v24 .. v24}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_9

    goto :goto_3

    :cond_9
    move-object/from16 v26, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v26

    goto :goto_4

    :cond_a
    :goto_3
    move-object/from16 v24, v14

    move-object/from16 v14, v25

    :goto_4
    move-object/from16 v26, v13

    .line 313
    invoke-virtual/range {v24 .. v24}, Lokhttp3/Response;->code()I

    move-result v13

    move-object/from16 v35, v8

    const/16 v8, 0x12c

    move-object/from16 v36, v9

    invoke-static {v14, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v37, v11

    move-object/from16 v11, v23

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v11, v22

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual/range {v24 .. v24}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_b

    invoke-virtual/range {v24 .. v24}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    return-object v0

    .line 315
    :cond_b
    :try_start_8
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v13, v19

    .line 316
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v22, v11

    const-string/jumbo v11, "status"

    move-object/from16 v23, v5

    const-string v5, "0000"

    move-object/from16 v24, v15

    const-string v15, "result"

    move/from16 v38, v0

    const/16 v0, 0xc8

    if-eq v9, v0, :cond_d

    :try_start_9
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "200"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 317
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "ok"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    const/16 v0, 0x96

    .line 318
    invoke-static {v14, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v3, 0x0

    :try_start_a
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    return-object v0

    :cond_d
    :goto_5
    move-object/from16 v0, v17

    .line 319
    :try_start_b
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 320
    const-string v13, "credentials"

    if-eqz v9, :cond_f

    :try_start_c
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_e

    goto :goto_6

    :cond_e
    move-object/from16 v39, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v39

    goto :goto_8

    :cond_f
    :goto_6
    if-eqz v9, :cond_10

    move-object/from16 v17, v5

    const-string v5, "credential"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_10
    move-object/from16 v17, v5

    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_11

    .line 321
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    const/16 v8, 0x96

    invoke-static {v14, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v3, 0x0

    :try_start_d
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    return-object v0

    .line 322
    :cond_11
    :goto_8
    :try_start_e
    invoke-static {v6, v5}, Lcom/jichi/ob/api/CorosApi;->access$decodeSts(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 326
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ","

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 327
    :cond_12
    const-string v8, "AccessKeyId"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "optString(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "STS\u51ed\u8bc1\u5b57\u6bb5: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " ak="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "..."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v6, 0x0

    .line 311
    :try_start_f
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 331
    invoke-virtual/range {v27 .. v27}, Lcom/jichi/ob/api/CorosApi$Sts;->getService()Ljava/lang/String;

    move-result-object v2

    .line 332
    const-string v6, "aliyun"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    invoke-static {v2, v12, v4, v3, v5}, Lcom/jichi/ob/api/CorosApi;->access$uploadAliyunOss(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;Ljava/lang/String;[BLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v4

    move/from16 v4, v34

    goto :goto_a

    .line 333
    :cond_13
    iget-object v2, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    move-object/from16 v29, v2

    move-object/from16 v32, v3

    move-object/from16 v31, v4

    move-object/from16 v33, v5

    move-object/from16 v30, v12

    invoke-static/range {v29 .. v34}, Lcom/jichi/ob/api/CorosApi;->access$uploadAwsS3(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;Ljava/lang/String;[BLorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, v30

    move-object/from16 v3, v31

    move/from16 v4, v34

    :goto_a
    if-eqz v2, :cond_14

    .line 336
    invoke-virtual/range {v27 .. v27}, Lcom/jichi/ob/api/CorosApi$Sts;->getService()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OSS\u4e0a\u4f20\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bucket="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_14
    move/from16 v5, v38

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OSS\u4e0a\u4f20\u6210\u529f: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " bytes)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 342
    const-string/jumbo v6, "source"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 343
    const-string/jumbo v6, "timezone"

    const/16 v7, 0x20

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 344
    const-string v6, "bucket"

    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 345
    const-string v6, "md5"

    move-object/from16 v7, v24

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 346
    const-string/jumbo v6, "size"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 347
    const-string v5, "object"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 348
    const-string v3, "serviceName"

    invoke-virtual/range {v27 .. v27}, Lcom/jichi/ob/api/CorosApi$Sts;->getService()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 349
    const-string v3, "oriFileName"

    move-object/from16 v5, v23

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 350
    new-instance v3, Lokhttp3/FormBody$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7, v6}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "jsonParameter"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "toString(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v2

    .line 351
    iget-object v3, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    invoke-static {v3, v4}, Lcom/jichi/ob/api/CorosApi;->access$teamApi(Lcom/jichi/ob/api/CorosApi;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/activity/fit/import"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    iget-object v5, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    move-object/from16 v6, v37

    .line 353
    invoke-static {v5, v6, v4}, Lcom/jichi/ob/api/CorosApi;->access$authHeaders(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v5

    .line 495
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 353
    invoke-virtual {v3, v7, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_b

    .line 354
    :cond_15
    invoke-static {}, Lcom/jichi/ob/api/CorosApi;->access$getREGIONCONFIG$cp()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/api/CorosApi$Region;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/jichi/ob/api/CorosApi$Region;->getHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    :cond_16
    move-object/from16 v5, v28

    :cond_17
    move-object/from16 v9, v36

    invoke-virtual {v3, v9, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 355
    invoke-static {}, Lcom/jichi/ob/api/CorosApi;->access$getREGIONCONFIG$cp()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/api/CorosApi$Region;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/jichi/ob/api/CorosApi$Region;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    goto :goto_c

    :cond_18
    move-object v13, v4

    goto :goto_d

    :cond_19
    :goto_c
    move-object/from16 v13, v28

    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v35

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v26

    invoke-virtual {v3, v13, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 356
    check-cast v2, Lokhttp3/RequestBody;

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 357
    iget-object v3, v1, Lcom/jichi/ob/api/CorosApi$uploadFit$2;->this$0:Lcom/jichi/ob/api/CorosApi;

    invoke-static {v3}, Lcom/jichi/ob/api/CorosApi;->access$getClient$p(Lcom/jichi/ob/api/CorosApi;)Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :try_start_10
    move-object v3, v2

    check-cast v3, Lokhttp3/Response;

    .line 358
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1b

    :cond_1a
    move-object/from16 v4, v25

    .line 359
    :cond_1b
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x1f4

    invoke-static {v4, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fit/import HTTP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v7, v22

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1c

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v3, 0x78

    invoke-static {v4, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u9ad8\u9a70fit/import HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v3, 0x0

    :try_start_11
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    return-object v0

    .line 361
    :cond_1c
    :try_start_12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_e

    :catch_1
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_1d

    .line 363
    :try_start_13
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1e

    :cond_1d
    move-object/from16 v5, v25

    :cond_1e
    if-eqz v3, :cond_1f

    .line 364
    const-string v6, "message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_20

    :cond_1f
    move-object/from16 v6, v25

    :cond_20
    if-eqz v3, :cond_21

    .line 365
    const-string v7, "apiCode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_22

    :cond_21
    move-object/from16 v7, v25

    :cond_22
    if-eqz v3, :cond_23

    .line 366
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_f

    :cond_23
    const/4 v0, 0x0

    :goto_f
    const/4 v3, 0x0

    if-eqz v0, :cond_24

    .line 367
    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_10

    :cond_24
    move v8, v3

    :goto_10
    if-eqz v0, :cond_25

    .line 368
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const/16 v9, 0x12c

    invoke-static {v0, v9}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    :cond_25
    move-object/from16 v0, v25

    :cond_26
    move-object/from16 v9, v17

    .line 369
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    const/4 v13, 0x2

    if-ne v8, v13, :cond_27

    const/4 v3, 0x1

    .line 370
    :cond_27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fit/import result="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", status="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", apiCode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", msg="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", data="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v0, "1019"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    const-string v9, "Access token is invalid"

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v11, 0x1

    invoke-static {v0, v9, v11}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2a

    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v9, "token"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v0, v9, v11}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    const-string v9, "invalid"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v0, v9, v11}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_13

    :cond_28
    if-eqz v3, :cond_29

    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    goto :goto_12

    :cond_29
    const/16 v0, 0xfa

    .line 375
    invoke-static {v4, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u9ad8\u9a70fit/import\u5931\u8d25(result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", apiCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_11

    .line 357
    :goto_12
    :try_start_14
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    goto :goto_15

    .line 373
    :cond_2a
    :goto_13
    :try_start_15
    const-string/jumbo v0, "\u9ad8\u9a70\u767b\u5f55\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u9ad8\u9a70"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const/4 v3, 0x0

    :try_start_16
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 357
    :try_start_17
    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_18
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 311
    :try_start_19
    throw v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_1a
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    :catch_2
    move-exception v0

    goto :goto_14

    :catch_3
    move-exception v0

    move-object/from16 v10, v27

    .line 378
    :goto_14
    const-string/jumbo v2, "uploadFit error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v10, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9ad8\u9a70\u4e0a\u4f20\u5f02\u5e38: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method
