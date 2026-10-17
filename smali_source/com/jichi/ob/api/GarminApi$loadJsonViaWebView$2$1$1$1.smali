.class public final Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;
.super Landroid/webkit/WebViewClient;
.source "GarminApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "pageUrl",
        "",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "app_devRelease"
    }
    k = 0x1
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $done:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/webkit/WebView;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroid/webkit/WebView;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$wv:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 990
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 992
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_0

    return-void

    .line 993
    :cond_0
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$wv:Landroid/webkit/WebView;

    new-instance p2, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1$onPageFinished$1;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p2, v0, v1}, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1$onPageFinished$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast p2, Landroid/webkit/ValueCallback;

    const-string v0, "(function(){ try { return document.body ? document.body.innerText : \'\'; } catch(e) { return \'\'; } })()"

    invoke-virtual {p1, v0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1003
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_0

    return-void

    .line 1004
    :cond_0
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1005
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$loadJsonViaWebView$2$1$1$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 p2, 0x0

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
