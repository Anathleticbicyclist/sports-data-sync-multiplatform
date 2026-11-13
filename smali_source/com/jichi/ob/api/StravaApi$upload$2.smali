.class final Lcom/jichi/ob/api/StravaApi$upload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StravaApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/StravaApi;->upload(Ljava/lang/String;[BLjava/lang/String;JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/api/StravaApi$Result;",
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
        "Lcom/jichi/ob/api/StravaApi$Result;",
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
    c = "com.jichi.ob.api.StravaApi$upload$2"
    f = "StravaApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cookie:Ljava/lang/String;

.field final synthetic $data:[B

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $intervalMs:J

.field final synthetic $maxTimes:I

.field final synthetic $onStep:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/StravaApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/api/StravaApi;Ljava/lang/String;[BJILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/jichi/ob/api/StravaApi;",
            "Ljava/lang/String;",
            "[BJI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/StravaApi$upload$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$cookie:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->this$0:Lcom/jichi/ob/api/StravaApi;

    iput-object p4, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$data:[B

    iput-wide p6, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$intervalMs:J

    iput p8, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$maxTimes:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v0, Lcom/jichi/ob/api/StravaApi$upload$2;

    iget-object v1, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$cookie:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->this$0:Lcom/jichi/ob/api/StravaApi;

    iget-object v4, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$data:[B

    iget-wide v6, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$intervalMs:J

    iget v8, p0, Lcom/jichi/ob/api/StravaApi$upload$2;->$maxTimes:I

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/api/StravaApi$upload$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/jichi/ob/api/StravaApi;Ljava/lang/String;[BJILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/StravaApi$upload$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/api/StravaApi$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/StravaApi$upload$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/StravaApi$upload$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/StravaApi$upload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    const-string/jumbo v2, "upload: "

    const-string v3, "StravaApi"

    const-string/jumbo v0, "\u2462 \u23ed \u8df3\u8fc7\uff1a"

    const-string/jumbo v4, "\u2462 \u274c \u5931\u8d25\uff1a"

    const-string/jumbo v5, "\u2462 \u23f3 \u5f85\u786e\u8ba4\uff08\u5df2\u4e0a\u4f20\u672a\u5165\u5e93\uff0c\u7a0d\u540e\u5230 Strava \u7f51\u9875\u7aef\u6838\u5bf9\uff0c\u4e0d\u8981\u91cd\u4f20\uff09\uff1a"

    const-string/jumbo v6, "\u2462 \u2705 \u5904\u7406\u5b8c\u6210\uff1a"

    const-string/jumbo v7, "\u2462 GET /upload/progress.json \u8f6e\u8be2\uff08\u95f4\u9694 "

    const-string/jumbo v8, "\u2461 \u2705 \u4e0a\u4f20\u53d7\u7406\uff0cupload id="

    const-string/jumbo v9, "\u2461 POST /upload/files \u4e0a\u4f20 "

    const-string/jumbo v10, "\u2460 \u2705 \u53d6\u5230 CSRF\uff1a"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 279
    iget v11, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->label:I

    if-nez v11, :cond_10

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 280
    iget-object v11, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$cookie:Ljava/lang/String;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 281
    iget-object v0, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "\u2717 \u672a\u767b\u5f55\uff1a\u672c\u5730\u6ca1\u6709 Strava Cookie"

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    new-instance v3, Lcom/jichi/ob/api/StravaApi$Result;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "Strava \u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55"

    invoke-direct/range {v3 .. v9}, Lcom/jichi/ob/api/StravaApi$Result;-><init>(ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 285
    :cond_1
    :try_start_0
    iget-object v11, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v11, :cond_2

    const-string/jumbo v12, "\u2460 GET /upload/select \u53d6 CSRF token \u2026"

    invoke-interface {v11, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_2
    iget-object v11, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->this$0:Lcom/jichi/ob/api/StravaApi;

    iget-object v12, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$cookie:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/jichi/ob/api/StravaApi;->access$fetchCsrf(Lcom/jichi/ob/api/StravaApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 287
    iget-object v12, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v12, :cond_3

    const/16 v13, 0xc

    invoke-static {v11, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, "\u2026\uff08"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " \u5b57\u7b26\uff09"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_3
    iget-object v10, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v10, :cond_4

    iget-object v12, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$fileName:Ljava/lang/String;

    iget-object v13, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$data:[B

    array-length v13, v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "\uff08"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " \u5b57\u8282\uff09\u2026"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_4
    iget-object v9, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->this$0:Lcom/jichi/ob/api/StravaApi;

    iget-object v10, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$cookie:Ljava/lang/String;

    iget-object v12, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$data:[B

    iget-object v13, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$fileName:Ljava/lang/String;

    invoke-static {v9, v10, v11, v12, v13}, Lcom/jichi/ob/api/StravaApi;->access$postFiles(Lcom/jichi/ob/api/StravaApi;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 290
    iget-object v10, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v10, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_5
    iget-object v8, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x1e

    const/4 v11, 0x1

    const-wide/16 v12, 0x1f4

    if-eqz v8, :cond_6

    iget-wide v14, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$intervalMs:J

    invoke-static {v14, v15, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v14

    iget v12, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$maxTimes:I

    invoke-static {v12, v11, v10}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "ms\uff0c\u6700\u591a "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " \u6b21\uff09\u2026"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_6
    iget-object v14, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->this$0:Lcom/jichi/ob/api/StravaApi;

    iget-object v15, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$cookie:Ljava/lang/String;

    iget-wide v7, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$intervalMs:J

    const-wide/16 v12, 0x1f4

    invoke-static {v7, v8, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v17

    iget v7, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$maxTimes:I

    invoke-static {v7, v11, v10}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v19

    move-object/from16 v16, v9

    invoke-static/range {v14 .. v19}, Lcom/jichi/ob/api/StravaApi;->access$poll(Lcom/jichi/ob/api/StravaApi;Ljava/lang/String;Ljava/lang/String;JI)Lcom/jichi/ob/api/StravaApi$Result;

    move-result-object v7

    .line 293
    iget-object v8, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_a

    .line 295
    invoke-virtual {v7}, Lcom/jichi/ob/api/StravaApi$Result;->getSuccess()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Lcom/jichi/ob/api/StravaApi$Result;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_7
    invoke-virtual {v7}, Lcom/jichi/ob/api/StravaApi$Result;->getPending()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v7}, Lcom/jichi/ob/api/StravaApi$Result;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_8
    invoke-virtual {v7}, Lcom/jichi/ob/api/StravaApi$Result;->getSkipped()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v7}, Lcom/jichi/ob/api/StravaApi$Result;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_9
    invoke-virtual {v7}, Lcom/jichi/ob/api/StravaApi$Result;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/jichi/ob/api/StravaApi$NotLoggedInException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/jichi/ob/api/StravaApi$RateLimitedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-object v7

    :catch_0
    move-exception v0

    .line 311
    const-string/jumbo v2, "upload error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    iget-object v2, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2717 \u5f02\u5e38\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_b
    new-instance v4, Lcom/jichi/ob/api/StravaApi$Result;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Strava \u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/jichi/ob/api/StravaApi$Result;-><init>(ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 307
    invoke-virtual {v0}, Lcom/jichi/ob/api/StravaApi$RateLimitedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/jichi/ob/api/StravaApi$RateLimitedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2717 \u88ab\u9650\u6d41\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_c
    new-instance v4, Lcom/jichi/ob/api/StravaApi$Result;

    invoke-virtual {v0}, Lcom/jichi/ob/api/StravaApi$RateLimitedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "Strava \u8bf7\u6c42\u8fc7\u4e8e\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    :cond_d
    move-object v8, v0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/jichi/ob/api/StravaApi$Result;-><init>(ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 303
    invoke-virtual {v0}, Lcom/jichi/ob/api/StravaApi$NotLoggedInException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, v1, Lcom/jichi/ob/api/StravaApi$upload$2;->$onStep:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/jichi/ob/api/StravaApi$NotLoggedInException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2717 \u4f1a\u8bdd\u5931\u6548\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_e
    new-instance v4, Lcom/jichi/ob/api/StravaApi$Result;

    invoke-virtual {v0}, Lcom/jichi/ob/api/StravaApi$NotLoggedInException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "Strava \u767b\u5f55\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    :cond_f
    move-object v8, v0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/jichi/ob/api/StravaApi$Result;-><init>(ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    return-object v4

    .line 279
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
