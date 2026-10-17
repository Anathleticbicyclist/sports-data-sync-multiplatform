.class public final Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;
.super Landroid/webkit/WebViewClient;
.source "LoginWebActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity;->setupIgpWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginWebActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginWebActivity.kt\ncom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1887:1\n1#2:1888\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "com/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2",
        "Landroid/webkit/WebViewClient;",
        "onPageStarted",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onPageFinished",
        "onReceivedHttpError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "errorResponse",
        "Landroid/webkit/WebResourceResponse;",
        "onRenderProcessGone",
        "",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
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
.field final synthetic this$0:Lcom/jichi/ob/ui/LoginWebActivity;


# direct methods
.method public static synthetic $r8$lambda$-KTzVMiiM1wmE2Wm5hvG0uTy1zE(Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->onReceivedHttpError$lambda$1$lambda$0(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H_oW5TPCxkbOzyEUZ1THTAJ1WgI(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->onReceivedHttpError$lambda$1(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/webkit/WebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fIqVNPF2NcMzWEHZa7mbyKkvXJc(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->onRenderProcessGone$lambda$3(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/webkit/WebView;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    .line 870
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private static final onReceivedHttpError$lambda$1(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/webkit/WebView;)V
    .locals 1

    .line 887
    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p0, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onReceivedHttpError$lambda$1$lambda$0(Landroid/webkit/WebView;)V
    .locals 0

    .line 887
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final onRenderProcessGone$lambda$3(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/webkit/WebView;)V
    .locals 2

    .line 893
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u9875\u9762\u6e32\u67d3\u5f02\u5e38\uff0c\u6b63\u5728\u91cd\u8bd5..."

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_0

    .line 894
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 876
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getProgressBar$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "progressBar"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 877
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p1

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {v1, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;I)V

    .line 878
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[igp] PageFinished #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoginWeb"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getWebView$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "webView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getCheckRunnable$p(Lcom/jichi/ob/ui/LoginWebActivity;)Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 872
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getProgressBar$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "progressBar"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 873
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[igp] PageStarted: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoginWeb"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 883
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p2

    .line 884
    :goto_0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getIgpHttpErrorCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v2, 0x193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p2

    const/16 p2, 0x194

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/16 p2, 0x1f4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/16 p2, 0x1f6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v0, v2

    const/16 p2, 0x1f7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x4

    aput-object p2, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 885
    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getIgpHttpErrorCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p2

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    add-int/2addr p2, v1

    invoke-static {v0, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setIgpHttpErrorCount$p(Lcom/jichi/ob/ui/LoginWebActivity;I)V

    .line 886
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[igp] HTTP "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p3, "\uff0c\u81ea\u52a8\u91cd\u8f7d\u767b\u5f55\u9875"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LoginWeb"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 887
    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    new-instance p3, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p1}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/webkit/WebView;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p3, v0, v1}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 891
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[igp] WebView\u6e32\u67d3\u8fdb\u7a0b\u5d29\u6e83: reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LoginWeb"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    new-instance v0, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1}, Lcom/jichi/ob/ui/LoginWebActivity$setupIgpWebView$2$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Landroid/webkit/WebView;)V

    invoke-virtual {p2, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
