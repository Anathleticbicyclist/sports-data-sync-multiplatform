.class public final Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;
.super Landroid/webkit/WebViewClient;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
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

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    .line 88
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {v0}, Lcom/jichi/ob/BrytonWebUploader;->access$getDone$p(Lcom/jichi/ob/BrytonWebUploader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 91
    const-string p2, ""

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {v0}, Lcom/jichi/ob/BrytonWebUploader;->access$getTAG$p(Lcom/jichi/ob/BrytonWebUploader;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {v1}, Lcom/jichi/ob/BrytonWebUploader;->access$getPageLoadCount$p(Lcom/jichi/ob/BrytonWebUploader;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "page finished #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "active.brytonsport.com"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v0, v4, v1, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {p2}, Lcom/jichi/ob/BrytonWebUploader;->access$getPageLoadCount$p(Lcom/jichi/ob/BrytonWebUploader;)I

    move-result p2

    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    add-int/2addr p2, v2

    invoke-static {v0, p2}, Lcom/jichi/ob/BrytonWebUploader;->access$setPageLoadCount$p(Lcom/jichi/ob/BrytonWebUploader;I)V

    .line 95
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {p2}, Lcom/jichi/ob/BrytonWebUploader;->access$getPageLoadCount$p(Lcom/jichi/ob/BrytonWebUploader;)I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 96
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {p2, p1}, Lcom/jichi/ob/BrytonWebUploader;->access$injectAndReload(Lcom/jichi/ob/BrytonWebUploader;Landroid/webkit/WebView;)V

    return-void

    .line 98
    :cond_3
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;->this$0:Lcom/jichi/ob/BrytonWebUploader;

    invoke-static {p2, p1}, Lcom/jichi/ob/BrytonWebUploader;->access$startUploadFlow(Lcom/jichi/ob/BrytonWebUploader;Landroid/webkit/WebView;)V

    return-void
.end method
