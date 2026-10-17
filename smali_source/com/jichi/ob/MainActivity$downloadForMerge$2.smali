.class final Lcom/jichi/ob/MainActivity$downloadForMerge$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->downloadForMerge(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.jichi.ob.MainActivity$downloadForMerge$2"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xe9b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $record:Lcom/jichi/ob/model/ActivityRecord;

.field final synthetic $source:Lcom/jichi/ob/model/DataSource;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$downloadForMerge$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->this$0:Lcom/jichi/ob/MainActivity;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->$source:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

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

    new-instance p1, Lcom/jichi/ob/MainActivity$downloadForMerge$2;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->this$0:Lcom/jichi/ob/MainActivity;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->$source:Lcom/jichi/ob/model/DataSource;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/MainActivity$downloadForMerge$2;-><init>(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$downloadForMerge$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 3737
    iget v1, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3739
    :try_start_1
    iget-object v1, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->this$0:Lcom/jichi/ob/MainActivity;

    move p1, v2

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->$source:Lcom/jichi/ob/model/DataSource;

    sget-object v3, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/jichi/ob/MainActivity$downloadForMerge$2;->label:I

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jichi/ob/MainActivity;->downloadActivity$default(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
