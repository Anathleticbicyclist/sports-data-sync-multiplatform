.class final Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->convertFitCoordinates([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
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
    c = "com.jichi.ob.MainActivity$convertFitCoordinates$2"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xeba
    }
    m = "invokeSuspend"
    n = {
        "base64",
        "deferred"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $fitData:[B

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$itqxIQYmMElIjHoLq32wXWUSI2Y(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->invokeSuspend$lambda$0(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/MainActivity;[BLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/String;)V
    .locals 0

    .line 3768
    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B

    invoke-direct {p1, v0, v1, p2}, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;-><init>(Lcom/jichi/ob/MainActivity;[BLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string/jumbo v0, "\ud83d\udd04 \u5750\u6807\u8f6c\u6362\u5b8c\u6210: "

    const-string/jumbo v1, "\u274c \u5750\u6807\u8f6c\u6362\u5931\u8d25: "

    const-string/jumbo v2, "\u274c \u5750\u6807\u8f6c\u6362\u54cd\u5e94\u89e3\u6790\u5931\u8d25: "

    const-string v3, "__fixFit(\'"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 3759
    iget v5, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    if-ne v5, v7, :cond_0

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3760
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {p1}, Lcom/jichi/ob/MainActivity;->access$getFixJsReady$p(Lcom/jichi/ob/MainActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3761
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v0, "\u26a0\ufe0f \u5750\u6807\u8f6c\u6362\u5f15\u64ce\u672a\u5c31\u7eea\uff0c\u8df3\u8fc7\u8f6c\u6362"

    invoke-static {p1, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3762
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B

    return-object p1

    .line 3765
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B

    invoke-static {p1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    .line 3766
    invoke-static {v5, v7, v5}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v8

    .line 3767
    iget-object v9, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v9}, Lcom/jichi/ob/MainActivity;->access$getFixWebView$p(Lcom/jichi/ob/MainActivity;)Landroid/webkit/WebView;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v9, "fixWebView"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, v9

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\')"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8}, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {v5, v3, v9}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3770
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->L$1:Ljava/lang/Object;

    iput v7, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->label:I

    invoke-interface {v8, v3}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_4

    return-object v4

    .line 3759
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 3771
    const-string v3, "null"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_5

    goto/16 :goto_3

    .line 3779
    :cond_5
    :try_start_2
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 3781
    instance-of v3, p1, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_2

    .line 3782
    :cond_6
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_b

    new-instance v3, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p1, v3

    .line 3789
    :goto_2
    :try_start_3
    const-string v2, "ok"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3790
    const-string v1, "base64"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3791
    const-string/jumbo v2, "summary"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 3792
    const-string v3, "changedRecords"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_7
    const-wide/16 v3, 0x0

    if-eqz p1, :cond_8

    .line 3793
    const-string v5, "averageShiftM"

    invoke-virtual {p1, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 3794
    :cond_8
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u4e2a\u5750\u6807\u70b9\u4fee\u6b63\uff0c\u5e73\u5747\u504f\u79fb "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3795
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v0, "\u26a0\ufe0f \u5750\u6807\u8f6c\u6362\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B

    return-object p1

    .line 3796
    :cond_9
    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    .line 3798
    :cond_a
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3799
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    .line 3783
    :cond_b
    :try_start_4
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v0, "\u26a0\ufe0f \u5750\u6807\u8f6c\u6362\u8fd4\u56de\u683c\u5f0f\u5f02\u5e38"

    invoke-static {p1, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3786
    :try_start_5
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3787
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B

    return-object p1

    .line 3772
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo v0, "\u26a0\ufe0f \u5750\u6807\u8f6c\u6362\u8fd4\u56de\u7a7a\u7ed3\u679c"

    invoke-static {p1, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3773
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 3802
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u274c \u5750\u6807\u8f6c\u6362\u5f02\u5e38: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 3803
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$convertFitCoordinates$2;->$fitData:[B

    return-object p1
.end method
