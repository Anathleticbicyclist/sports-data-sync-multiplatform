.class public final Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;
.super Landroid/webkit/WebViewClient;
.source "LoginWebActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/jichi/ob/ui/LoginWebActivity$onCreate$7",
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
        "shouldOverrideUrlLoading",
        "",
        "request",
        "Landroid/webkit/WebResourceRequest;",
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
.method constructor <init>(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    .line 454
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2bulu"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$twoBuluInjectKmlClick(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    .line 460
    :cond_0
    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getProgressBar$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p2, "progressBar"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 461
    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p2

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-static {v1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;I)V

    .line 462
    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getCheckCount$p(Lcom/jichi/ob/ui/LoginWebActivity;)I

    move-result p2

    if-ne p2, v2, :cond_3

    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getWebView$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/webkit/WebView;

    move-result-object p2

    if-nez p2, :cond_2

    const-string/jumbo p2, "webView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getCheckRunnable$p(Lcom/jichi/ob/ui/LoginWebActivity;)Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 463
    :cond_3
    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$injectGarminListener(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 456
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getProgressBar$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "progressBar"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 466
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 467
    :goto_0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginWeb"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 468
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getUrlHistory$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shouldOverride: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$isOAuth2CallbackType(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "localhost:8080"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, p1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "wahoo/callback"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v2, v4, p1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v3}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 471
    iget-object v3, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v3, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$extractWahooCode(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 473
    :cond_3
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    .line 474
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2705 Wahoo \u6388\u6743\u7801\u6355\u83b7(shouldOverrideUrlLoading) len="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 476
    const-string v1, "***"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 477
    const-string v1, "login_type"

    const-string/jumbo v2, "wahoo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 475
    invoke-virtual {p1, v1, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 478
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$7;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-virtual {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->finish()V

    return p2

    .line 482
    :cond_4
    :goto_1
    const-string v3, "error="

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v2, v4, p1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 483
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u274c Wahoo\u6388\u6743\u9519\u8bef: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2
.end method
