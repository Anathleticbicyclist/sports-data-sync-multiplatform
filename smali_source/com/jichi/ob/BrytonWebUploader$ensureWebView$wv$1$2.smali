.class public final Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;
.super Landroid/webkit/WebChromeClient;
.source "BrytonWebUploader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/BrytonWebUploader;->ensureWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0014\u0010\u0006\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2",
        "Landroid/webkit/WebChromeClient;",
        "onShowFileChooser",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "filePathCallback",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
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
.field final synthetic this$0:Lcom/jichi/ob/BrytonWebUploader;


# direct methods
.method constructor <init>(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    .line 102
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string p1, "onShowFileChooser -> "

    .line 108
    iget-object p3, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {p3}, Lcom/jichi/ob/BrytonWebUploader;->access$getFitFile$p(Lcom/jichi/ob/BrytonWebUploader;)Ljava/io/File;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 109
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {v2}, Lcom/jichi/ob/BrytonWebUploader;->access$getActivity$p(Lcom/jichi/ob/BrytonWebUploader;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 116
    iget-object v3, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {v3}, Lcom/jichi/ob/BrytonWebUploader;->access$getActivity$p(Lcom/jichi/ob/BrytonWebUploader;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v2, v3, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 119
    new-array v2, v1, [Landroid/net/Uri;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {v2}, Lcom/jichi/ob/BrytonWebUploader;->access$getTAG$p(Lcom/jichi/ob/BrytonWebUploader;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {p1}, Lcom/jichi/ob/BrytonWebUploader;->access$pollResult(Lcom/jichi/ob/BrytonWebUploader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    iget-object p3, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {p3}, Lcom/jichi/ob/BrytonWebUploader;->access$getTAG$p(Lcom/jichi/ob/BrytonWebUploader;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "FileProvider error"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_2

    .line 124
    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 110
    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_4
    return v1
.end method
