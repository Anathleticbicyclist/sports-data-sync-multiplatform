.class final Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ZwiftApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/ZwiftApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "-[B>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZwiftApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZwiftApi.kt\ncom/jichi/ob/api/ZwiftApi$downloadFit$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,363:1\n1#2:364\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.api.ZwiftApi$downloadFit$2"
    f = "ZwiftApi.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x132,
        0x144,
        0x153
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "parts",
        "bucket",
        "s3Key",
        "actId",
        "key",
        "$this$invokeSuspend_u24lambda_u242",
        "$i$a$-runCatching-ZwiftApi$downloadFit$2$s3$1",
        "$this$withContext",
        "parts",
        "bucket",
        "s3Key",
        "actId",
        "base",
        "det",
        "fd",
        "status",
        "fullUrl",
        "$this$invokeSuspend_u24lambda_u246",
        "$i$a$-runCatching-ZwiftApi$downloadFit$2$r$1",
        "$this$withContext",
        "parts",
        "bucket",
        "s3Key",
        "actId",
        "base",
        "det",
        "fd",
        "u",
        "$this$invokeSuspend_u24lambda_u247",
        "$i$a$-runCatching-ZwiftApi$downloadFit$2$r$2"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$6",
        "L$7",
        "L$8",
        "L$10",
        "L$11",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $activityId:Ljava/lang/String;

.field final synthetic $extra:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/ZwiftApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/ZwiftApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$extra:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$activityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;

    iget-object v1, p0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$extra:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$activityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$token:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/ZwiftApi;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v1, p0

    const-string v2, "/fit"

    const-string v0, "https://"

    iget-object v3, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 284
    iget v5, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->label:I

    const-string v7, "/api/activities/"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v10, :cond_2

    if-eq v5, v9, :cond_1

    if-ne v5, v8, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$11:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$10:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$9:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/Iterator;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$8:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$7:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$6:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$5:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/Iterator;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$4:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$3:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$2:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    move v12, v8

    move/from16 v22, v10

    move-object/from16 v6, v16

    move-object/from16 v8, v17

    move/from16 v16, v9

    goto/16 :goto_10

    :catchall_0
    move-exception v0

    move v12, v8

    move/from16 v22, v10

    move-object/from16 v6, v16

    move-object/from16 v8, v17

    move/from16 v16, v9

    goto/16 :goto_12

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$11:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$10:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$9:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$8:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$7:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$6:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$5:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/Iterator;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$4:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$3:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$2:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p1

    move-object/from16 v6, v16

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_b

    :cond_2
    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$6:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$4:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$3:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$2:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/util/List;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v0, p1

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_4

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    :try_start_3
    iget-object v5, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$extra:Ljava/lang/String;

    move-object v13, v5

    check-cast v13, Ljava/lang/CharSequence;

    new-array v14, v10, [Ljava/lang/String;

    const-string/jumbo v5, "|"

    aput-object v5, v14, v11

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 288
    invoke-static {v15, v11}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object v13, v5

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object v14, v5

    goto :goto_0

    :cond_4
    move-object v14, v12

    .line 289
    :goto_0
    invoke-static {v15, v10}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    move-object v13, v5

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v12

    .line 291
    :goto_1
    iget-object v13, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$activityId:Ljava/lang/String;

    if-nez v13, :cond_6

    move-object v13, v5

    :cond_6
    if-eqz v14, :cond_a

    if-eqz v5, :cond_a

    .line 294
    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v6, Lkotlin/text/Regex;

    const-string v10, "^\\d+$"

    invoke-direct {v6, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 295
    const-string v6, "http"

    invoke-static {v5, v6, v11, v9, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v16, v5

    goto :goto_2

    .line 297
    :cond_7
    const-string v17, " "

    const-string v18, "%20"

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 298
    const-string v24, "+"

    const-string v25, "%2B"

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 299
    const-string v30, "#"

    const-string v31, "%23"

    const/16 v33, 0x4

    const/16 v34, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v34}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 300
    const-string v24, "?"

    const-string v25, "%3F"

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 301
    const-string v30, "&"

    const-string v31, "%26"

    const/16 v33, 0x4

    const/16 v34, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v34}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 302
    const-string v24, "="

    const-string v25, "%3D"

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 303
    const-string v30, "%"

    const-string v31, "%25"

    const/16 v33, 0x4

    const/16 v34, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v34}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".s3.amazonaws.com/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    :goto_2
    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iput-object v3, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$0:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$1:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$3:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$4:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$5:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$6:Ljava/lang/Object;

    iput v11, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->I$0:I

    const/4 v6, 0x1

    iput v6, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->label:I

    invoke-static {v0, v5, v12, v1}, Lcom/jichi/ob/api/ZwiftApi;->access$getBytes(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v0, v4, :cond_8

    goto/16 :goto_f

    :cond_8
    move-object v5, v13

    move-object/from16 v13, v16

    :goto_3
    :try_start_5
    check-cast v0, [B

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v13

    move-object/from16 v13, v16

    :goto_4
    :try_start_6
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    move-object/from16 v35, v13

    move-object v13, v5

    move-object/from16 v5, v35

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v0, v12

    :cond_9
    check-cast v0, [B

    if-eqz v0, :cond_b

    return-object v0

    :cond_a
    move-object/from16 v16, v5

    move-object/from16 v5, v16

    .line 310
    :cond_b
    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$token:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    move-object v0, v13

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 311
    invoke-static {}, Lcom/jichi/ob/api/ZwiftApi;->access$getBASE_HOSTS$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v18, v5

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object v5, v0

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 312
    iget-object v0, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    iget-object v6, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$token:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 313
    invoke-static {v0}, Lcom/jichi/ob/api/ZwiftApi;->access$getClient$p(Lcom/jichi/ob/api/ZwiftApi;)Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 314
    const-string v10, "Accept"

    const-string v14, "application/json"

    invoke-virtual {v8, v10, v14}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 315
    const-string v10, "Authorization"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bearer "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v10, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 316
    const-string v8, "User-Agent"

    const-string v9, "Zwift/115 CFNetwork/758.0.2 Darwin/15.0.0"

    invoke-virtual {v6, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 313
    invoke-virtual {v0, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/io/Closeable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    move-object v0, v6

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_c

    move-object v8, v12

    goto :goto_7

    :cond_c
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    const-string v0, ""

    :cond_e
    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_7
    :try_start_9
    invoke-static {v6, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 312
    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v8, v0

    .line 317
    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-static {v6, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    .line 312
    :try_start_c
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v0, v12

    :cond_f
    move-object v14, v0

    check-cast v14, Lorg/json/JSONObject;

    if-nez v14, :cond_10

    const/4 v9, 0x2

    goto/16 :goto_6

    .line 319
    :cond_10
    const-string v0, "fitnessData"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 321
    const-string/jumbo v0, "status"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    const-string v0, "fullDataUrl"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_9

    :cond_11
    move-object v0, v12

    :goto_9
    if-eqz v0, :cond_15

    .line 324
    iget-object v9, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iput-object v3, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$3:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$5:Ljava/lang/Object;

    iput-object v15, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$6:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$7:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$8:Ljava/lang/Object;

    iput-object v8, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$9:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$10:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$11:Ljava/lang/Object;

    iput v11, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->I$0:I

    const/4 v10, 0x2

    iput v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->label:I

    invoke-static {v9, v0, v12, v1}, Lcom/jichi/ob/api/ZwiftApi;->access$getBytes(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-ne v0, v4, :cond_12

    goto/16 :goto_f

    :cond_12
    move-object/from16 v17, v13

    move-object v13, v6

    move-object v6, v5

    move-object v5, v8

    :goto_a
    :try_start_e
    check-cast v0, [B

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v17, v13

    move-object v13, v6

    move-object v6, v5

    move-object v5, v8

    :goto_b
    :try_start_f
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    move-object v8, v5

    move-object v5, v6

    move-object v6, v13

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    move-object v0, v12

    :cond_13
    check-cast v0, [B

    if-eqz v0, :cond_14

    .line 325
    array-length v9, v0

    const/16 v10, 0x64

    if-le v9, v10, :cond_14

    return-object v0

    :cond_14
    move-object/from16 v13, v17

    .line 327
    :cond_15
    const-string v0, "NOT_AVAILABLE"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    const/4 v8, 0x3

    goto :goto_d

    .line 328
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 329
    const-string v2, "Zwift \u8d26\u53f7\uff08\u8bd5\u7528\u8ba2\u9605\uff09\u6682\u65e0 FIT \u4e0b\u8f7d\u6743\u9650\uff08fitnessData=NOT_AVAILABLE\uff09\uff0c\u8bf7\u5347\u7ea7 Zwift \u4f1a\u5458\u540e\u91cd\u8bd5"

    .line 328
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :goto_d
    new-array v0, v8, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v11

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/api/rides/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v22, 0x1

    aput-object v8, v0, v22

    .line 337
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/download?format=fit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x2

    aput-object v8, v0, v16

    .line 334
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v8, v6

    move-object v6, v5

    move-object v5, v0

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    iget-object v9, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->this$0:Lcom/jichi/ob/api/ZwiftApi;

    iget-object v10, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->$token:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :try_start_10
    sget-object v17, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iput-object v3, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$0:Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$1:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$2:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$3:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$4:Ljava/lang/Object;

    iput-object v6, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$5:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$6:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$7:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$8:Ljava/lang/Object;

    iput-object v5, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$9:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$10:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->L$11:Ljava/lang/Object;

    iput v11, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->I$0:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    const/4 v12, 0x3

    :try_start_11
    iput v12, v1, Lcom/jichi/ob/api/ZwiftApi$downloadFit$2;->label:I

    invoke-static {v9, v0, v10, v1}, Lcom/jichi/ob/api/ZwiftApi;->access$getBytes(Lcom/jichi/ob/api/ZwiftApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-ne v0, v4, :cond_18

    :goto_f
    return-object v4

    :cond_18
    move-object/from16 v35, v13

    move-object v13, v8

    move-object/from16 v8, v35

    :goto_10
    :try_start_12
    check-cast v0, [B

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    goto :goto_12

    :catchall_a
    move-exception v0

    goto :goto_11

    :catchall_b
    move-exception v0

    const/4 v12, 0x3

    :goto_11
    move-object/from16 v35, v13

    move-object v13, v8

    move-object/from16 v8, v35

    :goto_12
    :try_start_13
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_13
    move-object/from16 v35, v13

    move-object v13, v8

    move-object/from16 v8, v35

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v0, 0x0

    :cond_19
    check-cast v0, [B

    if-eqz v0, :cond_1a

    .line 340
    array-length v9, v0

    const/16 v10, 0x64

    if-le v9, v10, :cond_1b

    return-object v0

    :cond_1a
    const/16 v10, 0x64

    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_e

    :cond_1c
    move-object v5, v6

    move/from16 v9, v16

    const/4 v12, 0x0

    goto/16 :goto_6

    .line 344
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Zwift \u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25\uff08S3 \u76f4\u94fe\u4e0e API \u5747\u4e0d\u53ef\u7528\uff09"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :catch_0
    move-exception v0

    .line 346
    const-string v2, "Zwift downloadFit error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "ZwiftApi"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    throw v0
.end method
