.class final Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UploadEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/UploadEngine;->uploadToSuunto(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
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
    c = "com.jichi.ob.api.UploadEngine$uploadToSuunto$2"
    f = "UploadEngine.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xf4
    }
    m = "invokeSuspend"
    n = {
        "subKey",
        "fitData"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $credential:Ljava/lang/String;

.field final synthetic $data:[B

.field final synthetic $record:Lcom/jichi/ob/model/ActivityRecord;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/UploadEngine;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/UploadEngine;[BLjava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/UploadEngine;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->this$0:Lcom/jichi/ob/api/UploadEngine;

    iput-object p2, p0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$data:[B

    iput-object p3, p0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$credential:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

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

    new-instance v0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;

    iget-object v1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->this$0:Lcom/jichi/ob/api/UploadEngine;

    iget-object v2, p0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$data:[B

    iget-object v3, p0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$credential:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;-><init>(Lcom/jichi/ob/api/UploadEngine;[BLjava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    const-string/jumbo v2, "\u677e\u62d3GPX\u8f6cFIT\u5931\u8d25: "

    const-string/jumbo v0, "\u677e\u62d3: GPX\u8f6cFIT("

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 227
    iget v4, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->label:I

    const/4 v5, 0x1

    const-string v6, "UploadEngine"

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    iget-object v0, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->L$1:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v0, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 229
    :try_start_1
    iget-object v4, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->this$0:Lcom/jichi/ob/api/UploadEngine;

    invoke-static {v4}, Lcom/jichi/ob/api/UploadEngine;->access$getContext$p(Lcom/jichi/ob/api/UploadEngine;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 230
    new-instance v7, Lcom/jichi/ob/util/PrefsManager;

    invoke-direct {v7, v4}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/jichi/ob/util/PrefsManager;->getSuuntoSubscriptionKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 231
    :cond_2
    const-string v4, ""

    :cond_3
    move-object v9, v4

    .line 232
    move-object v4, v9

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 233
    new-instance v10, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v13, "\u677e\u62d3\u4e0a\u4f20\u5931\u8d25: \u672a\u914d\u7f6eSubscription Key"

    const/16 v16, 0x1a

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    .line 235
    :cond_4
    sget-object v4, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    iget-object v7, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$data:[B

    invoke-virtual {v4, v7}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$data:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v10, v0

    goto :goto_1

    .line 237
    :cond_5
    :try_start_2
    iget-object v4, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$data:[B

    array-length v4, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " bytes)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    iget-object v4, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$data:[B

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v4, v10, v7, v8}, Lcom/jichi/ob/GpxToFitConverter;->convert$default(Lcom/jichi/ob/GpxToFitConverter;[BIILjava/lang/Object;)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$data:[B

    goto :goto_0

    .line 244
    :goto_1
    new-instance v7, Lcom/jichi/ob/api/SuuntoApi;

    invoke-direct {v7}, Lcom/jichi/ob/api/SuuntoApi;-><init>()V

    iget-object v8, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$credential:Ljava/lang/String;

    iget-object v11, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    move-object v12, v1

    check-cast v12, Lkotlin/coroutines/Continuation;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->L$0:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;->label:I

    invoke-virtual/range {v7 .. v12}, Lcom/jichi/ob/api/SuuntoApi;->upload(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    :goto_2
    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 245
    new-instance v7, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 247
    const-string/jumbo v2, "uploadToSuunto error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v6, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    new-instance v7, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u677e\u62d3\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    return-object v7
.end method
