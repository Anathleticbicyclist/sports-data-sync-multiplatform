.class final Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebBridge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/util/WebBridge;->convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.util.WebBridge$convertGpxToFit$b64Len$1"
    f = "WebBridge.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x96,
        0x98,
        0x9b
    }
    m = "invokeSuspend"
    n = {
        "waited",
        "len",
        "err",
        "waited",
        "len",
        "err",
        "s",
        "waited",
        "len"
    }
    s = {
        "J$0",
        "I$0",
        "L$0",
        "J$0",
        "I$0",
        "L$0",
        "L$1",
        "J$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/util/WebBridge;


# direct methods
.method constructor <init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/util/WebBridge;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;

    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-direct {p1, v0, p2}, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;-><init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 146
    iget v1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->label:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->I$0:I

    iget-wide v6, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->J$0:J

    iget-object v8, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v8, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v6, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->J$0:J

    iget-object v1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget v1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->I$0:I

    iget-wide v6, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    move v1, v2

    :goto_0
    const-wide/32 v8, 0x1d4c0

    cmp-long p1, v6, v8

    if-gez p1, :cond_b

    .line 150
    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->L$1:Ljava/lang/Object;

    iput-wide v6, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->J$0:J

    iput v1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->I$0:I

    iput v5, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->label:I

    const-string/jumbo v9, "window.__convertError"

    invoke-static {p1, v9, v8}, Lcom/jichi/ob/util/WebBridge;->access$evalLocal(Lcom/jichi/ob/util/WebBridge;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto/16 :goto_5

    .line 146
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 151
    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GPX\u2192FIT\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->L$0:Ljava/lang/Object;

    iput-wide v6, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->J$0:J

    iput v1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->I$0:I

    iput v4, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->label:I

    const-string/jumbo v1, "window.__resultB64 ? window.__resultB64.length : -1"

    invoke-static {v8, v1, v9}, Lcom/jichi/ob/util/WebBridge;->access$evalLocal(Lcom/jichi/ob/util/WebBridge;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    goto :goto_5

    :cond_7
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    .line 146
    :goto_3
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 153
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_4

    :cond_8
    move v8, v2

    :goto_4
    if-gtz v8, :cond_a

    .line 155
    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->L$1:Ljava/lang/Object;

    iput-wide v6, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->J$0:J

    iput v8, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->I$0:I

    iput v3, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$b64Len$1;->label:I

    const-wide/16 v10, 0xc8

    invoke-static {v10, v11, v9}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    :goto_5
    return-object v0

    :cond_9
    move v1, v8

    :goto_6
    const/16 p1, 0xc8

    int-to-long v8, p1

    add-long/2addr v6, v8

    goto/16 :goto_0

    :cond_a
    move v1, v8

    :cond_b
    if-lez v1, :cond_c

    .line 159
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 158
    :cond_c
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "GPX\u2192FIT \u8f6c\u6362\u8d85\u65f6"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
