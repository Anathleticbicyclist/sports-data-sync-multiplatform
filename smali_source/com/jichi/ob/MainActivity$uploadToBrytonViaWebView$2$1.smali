.class final Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->uploadToBrytonViaWebView(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $uploader:Lcom/jichi/ob/BrytonWebUploader;


# direct methods
.method constructor <init>(Lcom/jichi/ob/BrytonWebUploader;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/BrytonWebUploader;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$1;->$uploader:Lcom/jichi/ob/BrytonWebUploader;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2934
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$1;->invoke(ZLjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLjava/lang/String;)V
    .locals 9

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2935
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$1;->$uploader:Lcom/jichi/ob/BrytonWebUploader;

    invoke-virtual {v0}, Lcom/jichi/ob/BrytonWebUploader;->destroy()V

    if-eqz p1, :cond_0

    .line 2937
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v3, p2

    .line 2939
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v6, 0x1a

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
