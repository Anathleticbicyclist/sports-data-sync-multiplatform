.class final Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebBridge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.jichi.ob.util.WebBridge$uploadViaOutbasePage$2$1$1"
    f = "WebBridge.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xe9
    }
    m = "invokeSuspend"
    n = {
        "safeUrl",
        "safeName",
        "safeSid"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $cdnUrl:Ljava/lang/String;

.field final synthetic $count:I

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $sid:Ljava/lang/String;

.field final synthetic $withSid:Z

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/util/WebBridge;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/util/WebBridge;IZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/util/WebBridge;",
            "IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$cdnUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$sid:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    iput p5, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$count:I

    iput-boolean p6, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$withSid:Z

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

    new-instance v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;

    iget-object v1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$cdnUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$sid:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    iget v5, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$count:I

    iget-boolean v6, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$withSid:Z

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/util/WebBridge;IZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 229
    iget v2, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 230
    iget-object v4, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$cdnUrl:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "\\"

    const-string v6, "\\\\"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "\'"

    const-string v12, "\\\'"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    iget-object v4, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$fileName:Ljava/lang/String;

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\'"

    const-string v12, "\\\'"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 232
    iget-object v5, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$sid:Ljava/lang/String;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "\'"

    const-string v7, "\\\'"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 233
    iget-object v6, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {v6}, Lcom/jichi/ob/util/WebBridge;->access$getOutbaseWv$p(Lcom/jichi/ob/util/WebBridge;)Landroid/webkit/WebView;

    move-result-object v7

    iget v8, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$count:I

    iget-boolean v9, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->$withSid:Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "window.__upRun(\'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->label:I

    invoke-static {v6, v7, v8, v9}, Lcom/jichi/ob/util/WebBridge;->access$evalOn(Lcom/jichi/ob/util/WebBridge;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 229
    :cond_2
    :goto_0
    check-cast v2, Ljava/lang/String;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "upRun trigger: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WebBridge"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 235
    const-string v5, "err:"

    const/4 v6, 0x0

    invoke-static {v2, v5, v1, v4, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 236
    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {v1}, Lcom/jichi/ob/util/WebBridge;->access$getUploadCont$p(Lcom/jichi/ob/util/WebBridge;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Pair;

    const/4 v4, -0x1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 237
    :cond_3
    iget-object v1, v0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$2$1$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-static {v1, v6}, Lcom/jichi/ob/util/WebBridge;->access$setUploadCont$p(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    .line 239
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
