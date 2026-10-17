.class final Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MergeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.jichi.ob.ui.MergeFragment$uploadMerge$1$r$1"
    f = "MergeFragment.kt"
    i = {}
    l = {
        0x69b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cred:Ljava/lang/String;

.field final synthetic $engine:Lcom/jichi/ob/api/UploadEngine;

.field final synthetic $file:Ljava/io/File;

.field final synthetic $record:Lcom/jichi/ob/model/ActivityRecord;

.field final synthetic $target:Lcom/jichi/ob/model/DataSource;

.field label:I


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/UploadEngine;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/io/File;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/UploadEngine;",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$engine:Lcom/jichi/ob/api/UploadEngine;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$target:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$cred:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$file:Ljava/io/File;

    iput-object p5, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$record:Lcom/jichi/ob/model/ActivityRecord;

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

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$engine:Lcom/jichi/ob/api/UploadEngine;

    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$target:Lcom/jichi/ob/model/DataSource;

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$cred:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$file:Ljava/io/File;

    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$record:Lcom/jichi/ob/model/ActivityRecord;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/io/File;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1691
    iget v1, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$engine:Lcom/jichi/ob/api/UploadEngine;

    move p1, v2

    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$target:Lcom/jichi/ob/model/DataSource;

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$cred:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$file:Ljava/io/File;

    invoke-static {v4}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->$record:Lcom/jichi/ob/model/ActivityRecord;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;->label:I

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/jichi/ob/api/UploadEngine;->upload$default(Lcom/jichi/ob/api/UploadEngine;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
