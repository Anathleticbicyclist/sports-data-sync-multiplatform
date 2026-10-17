.class final Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalFolderApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/LocalFolderApi;->downloadActivity(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nLocalFolderApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalFolderApi.kt\ncom/jichi/ob/api/LocalFolderApi$downloadActivity$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
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
    c = "com.jichi.ob.api.LocalFolderApi$downloadActivity$2"
    f = "LocalFolderApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fileUriStr:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/LocalFolderApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/api/LocalFolderApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/LocalFolderApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->$fileUriStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/LocalFolderApi;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;

    iget-object v0, p0, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->$fileUriStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/LocalFolderApi;

    invoke-direct {p1, v0, v1, p2}, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/LocalFolderApi;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 86
    iget v0, p0, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->$fileUriStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/LocalFolderApi;

    invoke-static {v1}, Lcom/jichi/ob/api/LocalFolderApi;->access$getContext$p(Lcom/jichi/ob/api/LocalFolderApi;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v2, p0, Lcom/jichi/ob/api/LocalFolderApi$downloadActivity$2;->this$0:Lcom/jichi/ob/api/LocalFolderApi;

    invoke-static {v2}, Lcom/jichi/ob/api/LocalFolderApi;->access$getContext$p(Lcom/jichi/ob/api/LocalFolderApi;)Landroid/content/Context;

    move-result-object v2

    new-instance v0, Lcom/jichi/ob/util/PrefsManager;

    invoke-direct {v0, v2}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->isGcj02LocalFolder()Z

    move-result v0

    if-eqz v0, :skip_gcj_fix

    sget-object v0, Lcom/jichi/ob/util/FitGcj02Fixer;->INSTANCE:Lcom/jichi/ob/util/FitGcj02Fixer;

    invoke-virtual {v0, v1}, Lcom/jichi/ob/util/FitGcj02Fixer;->fix([B)[B

    move-result-object v1

    :skip_gcj_fix
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
