.class final Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebBridge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/util/WebBridge;->uploadViaOutbasePage(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebBridge.kt\ncom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,291:1\n314#2,11:292\n*S KotlinDebug\n*F\n+ 1 WebBridge.kt\ncom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2\n*L\n227#1:292,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
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
    c = "com.jichi.ob.util.WebBridge$uploadViaOutbasePage$2"
    f = "WebBridge.kt"
    i = {
        0x0
    }
    l = {
        0x124
    }
    m = "invokeSuspend"
    n = {
        "$i$f$suspendCancellableCoroutine"
    }
    s = {
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $cdnUrl:Ljava/lang/String;

.field final synthetic $count:I

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $sid:Ljava/lang/String;

.field final synthetic $withSid:Z

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/util/WebBridge;


# direct methods
.method constructor <init>(Lcom/jichi/ob/util/WebBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/util/WebBridge;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->this$0:Lcom/jichi/ob/util/WebBridge;

    iput-object p2, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$cdnUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$sid:Ljava/lang/String;

    iput p5, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$count:I

    iput-boolean p6, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$withSid:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;

    iget-object v1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->this$0:Lcom/jichi/ob/util/WebBridge;

    iget-object v2, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$cdnUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$sid:Ljava/lang/String;

    iget v5, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$count:I

    iget-boolean v6, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$withSid:Z

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;-><init>(Lcom/jichi/ob/util/WebBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 226
    iget v2, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/util/WebBridge;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 227
    iget-object v7, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->this$0:Lcom/jichi/ob/util/WebBridge;

    iget-object v4, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$cdnUrl:Ljava/lang/String;

    iget-object v5, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$fileName:Ljava/lang/String;

    iget-object v6, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$sid:Ljava/lang/String;

    iget v8, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$count:I

    iget-boolean v9, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->$withSid:Z

    .line 292
    iput-object v7, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->L$3:Ljava/lang/Object;

    iput v8, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->I$0:I

    iput-boolean v9, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->Z$0:Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->I$1:I

    iput v3, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->label:I

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 293
    new-instance v11, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v10

    invoke-direct {v11, v10, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 299
    invoke-virtual {v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 300
    move-object v3, v11

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    .line 228
    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v7, v3}, Lcom/jichi/ob/util/WebBridge;->access$setUploadCont$p(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    .line 229
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v12, v3

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/util/WebBridge;IZLkotlin/coroutines/Continuation;)V

    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 241
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v12, v3

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$2;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x3

    const/4 v13, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 301
    invoke-virtual {v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 292
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne v3, v1, :cond_3

    return-object v1

    :cond_3
    return-object v3
.end method
