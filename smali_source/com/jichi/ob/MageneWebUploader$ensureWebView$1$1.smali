.class public final Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;
.super Landroid/webkit/WebViewClient;
.source "MageneWebUploader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MageneWebUploader;->ensureWebView()V
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
        "com/jichi/ob/MageneWebUploader$ensureWebView$1$1",
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
.field final synthetic this$0:Lcom/jichi/ob/MageneWebUploader;


# direct methods
.method constructor <init>(Lcom/jichi/ob/MageneWebUploader;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;->this$0:Lcom/jichi/ob/MageneWebUploader;

    .line 76
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;->this$0:Lcom/jichi/ob/MageneWebUploader;

    invoke-static {v0}, Lcom/jichi/ob/MageneWebUploader;->access$getDone$p(Lcom/jichi/ob/MageneWebUploader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 79
    const-string p2, ""

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;->this$0:Lcom/jichi/ob/MageneWebUploader;

    invoke-static {v0}, Lcom/jichi/ob/MageneWebUploader;->access$getTAG$p(Lcom/jichi/ob/MageneWebUploader;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page finished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "otm.onelap.cn"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    iget-object p2, p0, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;->this$0:Lcom/jichi/ob/MageneWebUploader;

    invoke-static {p2}, Lcom/jichi/ob/MageneWebUploader;->access$getFirstInject$p(Lcom/jichi/ob/MageneWebUploader;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_0
    return-void

    .line 83
    :cond_3
    iget-object p2, p0, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;->this$0:Lcom/jichi/ob/MageneWebUploader;

    invoke-static {p2, v3}, Lcom/jichi/ob/MageneWebUploader;->access$setFirstInject$p(Lcom/jichi/ob/MageneWebUploader;Z)V

    .line 84
    iget-object p2, p0, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;->this$0:Lcom/jichi/ob/MageneWebUploader;

    invoke-static {p2, p1}, Lcom/jichi/ob/MageneWebUploader;->access$injectAndTriggerUpload(Lcom/jichi/ob/MageneWebUploader;Landroid/webkit/WebView;)V

    return-void
.end method
