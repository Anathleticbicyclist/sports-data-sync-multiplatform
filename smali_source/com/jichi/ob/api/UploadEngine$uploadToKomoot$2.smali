.class final Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UploadEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/UploadEngine;->uploadToKomoot(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.UploadEngine$uploadToKomoot$2"
    f = "UploadEngine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xd5
    }
    m = "invokeSuspend"
    n = {
        "email",
        "api",
        "sport",
        "isFit"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "Z$0"
    }
.end annotation


# instance fields
.field final synthetic $credential:Ljava/lang/String;

.field final synthetic $data:[B

.field final synthetic $record:Lcom/jichi/ob/model/ActivityRecord;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/UploadEngine;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/UploadEngine;[BLcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/UploadEngine;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->this$0:Lcom/jichi/ob/api/UploadEngine;

    iput-object p2, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$data:[B

    iput-object p3, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    iput-object p4, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$credential:Ljava/lang/String;

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

    new-instance v0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;

    iget-object v1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->this$0:Lcom/jichi/ob/api/UploadEngine;

    iget-object v2, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$data:[B

    iget-object v3, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    iget-object v4, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$credential:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;-><init>(Lcom/jichi/ob/api/UploadEngine;[BLcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 202
    iget v1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/KomootApi;

    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

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

    .line 204
    :try_start_1
    iget-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->this$0:Lcom/jichi/ob/api/UploadEngine;

    invoke-static {p1}, Lcom/jichi/ob/api/UploadEngine;->access$getContext$p(Lcom/jichi/ob/api/UploadEngine;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 205
    new-instance v1, Lcom/jichi/ob/util/PrefsManager;

    invoke-direct {v1, p1}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/jichi/ob/util/PrefsManager;->getKomootAccount()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 206
    :cond_2
    const-string p1, ""

    :cond_3
    move-object v4, p1

    .line 207
    move-object p1, v4

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 208
    new-instance v5, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string v8, "Komoot\u4e0a\u4f20\u5931\u8d25: \u672a\u83b7\u53d6\u5230\u8d26\u53f7\u90ae\u7bb1"

    const/16 v11, 0x1a

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 210
    :cond_4
    new-instance v3, Lcom/jichi/ob/api/KomootApi;

    invoke-direct {v3}, Lcom/jichi/ob/api/KomootApi;-><init>()V

    .line 211
    sget-object p1, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    iget-object v1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$data:[B

    invoke-virtual {p1, v1}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v8

    .line 212
    iget-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    invoke-virtual {v3, p1}, Lcom/jichi/ob/api/KomootApi;->mapToKomootSport(Lcom/jichi/ob/model/ActivityRecord;)Ljava/lang/String;

    move-result-object v9

    .line 213
    iget-object v5, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$credential:Ljava/lang/String;

    iget-object v6, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$data:[B

    iget-object v7, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->$record:Lcom/jichi/ob/model/ActivityRecord;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->L$1:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->L$2:Ljava/lang/Object;

    iput-boolean v8, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->Z$0:Z

    iput v2, p0, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;->label:I

    invoke-virtual/range {v3 .. v10}, Lcom/jichi/ob/api/KomootApi;->upload(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 214
    new-instance v1, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 216
    const-string/jumbo v0, "uploadToKomoot error"

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "UploadEngine"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    new-instance v3, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Komoot\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x1a

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method
