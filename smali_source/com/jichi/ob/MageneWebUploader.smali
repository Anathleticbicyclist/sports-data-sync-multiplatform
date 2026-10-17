.class public final Lcom/jichi/ob/MageneWebUploader;
.super Ljava/lang/Object;
.source "MageneWebUploader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMageneWebUploader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MageneWebUploader.kt\ncom/jichi/ob/MageneWebUploader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J(\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00052\u0018\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00120\u0010J\u0008\u0010\u001b\u001a\u00020\u0012H\u0002J\u0012\u0010\u001c\u001a\u00020\u00122\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000cH\u0002J\u0008\u0010\u001e\u001a\u00020\u0012H\u0002J\u0018\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0005H\u0002J\u0006\u0010\"\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/jichi/ob/MageneWebUploader;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "token",
        "",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;)V",
        "TAG",
        "mainHandler",
        "Landroid/os/Handler;",
        "webView",
        "Landroid/webkit/WebView;",
        "fitFile",
        "Ljava/io/File;",
        "resultCallback",
        "Lkotlin/Function2;",
        "",
        "",
        "done",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "timeoutTask",
        "Ljava/lang/Runnable;",
        "firstInject",
        "upload",
        "fitPath",
        "onResult",
        "ensureWebView",
        "injectAndTriggerUpload",
        "view",
        "pollResult",
        "finish",
        "success",
        "msg",
        "destroy",
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
.field private final TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private firstInject:Z

.field private fitFile:Ljava/io/File;

.field private final mainHandler:Landroid/os/Handler;

.field private resultCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutTask:Ljava/lang/Runnable;

.field private final token:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$FwhSPBaWYw1JkRWFF_M5EtZXkeU(Lcom/jichi/ob/MageneWebUploader;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/MageneWebUploader;->upload$lambda$1(Lcom/jichi/ob/MageneWebUploader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SNBXZcgFood1OahMXB68MOAFprU(Lcom/jichi/ob/MageneWebUploader;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/MageneWebUploader;->destroy$lambda$8(Lcom/jichi/ob/MageneWebUploader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WgTs5nLDxC9lUfdGCbDMn0Mt5Uw(Lcom/jichi/ob/MageneWebUploader;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/MageneWebUploader;->upload$lambda$0(Lcom/jichi/ob/MageneWebUploader;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPlKxmbY4xXpshLDJNit_TEg7EY(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/MageneWebUploader;->injectAndTriggerUpload$lambda$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSYabDMmH6GCuHHGzoVopf4Zx6Q(Lcom/jichi/ob/MageneWebUploader;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/MageneWebUploader;->pollResult$lambda$5(Lcom/jichi/ob/MageneWebUploader;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r4cff5iJzHXIApl4O0_vQV-KFTA(Lcom/jichi/ob/MageneWebUploader;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/MageneWebUploader;->pollResult$lambda$5$lambda$4(Lcom/jichi/ob/MageneWebUploader;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MageneWebUploader;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/jichi/ob/MageneWebUploader;->token:Ljava/lang/String;

    .line 34
    const-string p1, "MageneWebUploader"

    iput-object p1, p0, Lcom/jichi/ob/MageneWebUploader;->TAG:Ljava/lang/String;

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/jichi/ob/MageneWebUploader;->mainHandler:Landroid/os/Handler;

    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/jichi/ob/MageneWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/jichi/ob/MageneWebUploader;->firstInject:Z

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/jichi/ob/MageneWebUploader;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/ob/MageneWebUploader;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getDone$p(Lcom/jichi/ob/MageneWebUploader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/ob/MageneWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getFirstInject$p(Lcom/jichi/ob/MageneWebUploader;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/jichi/ob/MageneWebUploader;->firstInject:Z

    return p0
.end method

.method public static final synthetic access$getFitFile$p(Lcom/jichi/ob/MageneWebUploader;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/ob/MageneWebUploader;->fitFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/jichi/ob/MageneWebUploader;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jichi/ob/MageneWebUploader;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$injectAndTriggerUpload(Lcom/jichi/ob/MageneWebUploader;Landroid/webkit/WebView;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/jichi/ob/MageneWebUploader;->injectAndTriggerUpload(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static final synthetic access$pollResult(Lcom/jichi/ob/MageneWebUploader;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/jichi/ob/MageneWebUploader;->pollResult()V

    return-void
.end method

.method public static final synthetic access$setFirstInject$p(Lcom/jichi/ob/MageneWebUploader;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/jichi/ob/MageneWebUploader;->firstInject:Z

    return-void
.end method

.method private static final destroy$lambda$8(Lcom/jichi/ob/MageneWebUploader;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->timeoutTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jichi/ob/MageneWebUploader;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method private final ensureWebView()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jichi/ob/MageneWebUploader;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 69
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 70
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 71
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 72
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 73
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 74
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 76
    new-instance v1, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;

    invoke-direct {v1, p0}, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$1;-><init>(Lcom/jichi/ob/MageneWebUploader;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    new-instance v1, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$2;

    invoke-direct {v1, p0}, Lcom/jichi/ob/MageneWebUploader$ensureWebView$1$2;-><init>(Lcom/jichi/ob/MageneWebUploader;)V

    check-cast v1, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 67
    iput-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method private final finish(ZLjava/lang/String;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->timeoutTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jichi/ob/MageneWebUploader;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->resultCallback:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    .line 177
    iput-object v1, p0, Lcom/jichi/ob/MageneWebUploader;->resultCallback:Lkotlin/jvm/functions/Function2;

    .line 178
    iget-object v1, p0, Lcom/jichi/ob/MageneWebUploader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finish success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 179
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private final injectAndTriggerUpload(Landroid/webkit/WebView;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->fitFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->token:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            (function(){\n              try{\n                var cur = (localStorage.getItem(\'token\')||\'\');\n                if (cur.length < 20) {\n                  localStorage.setItem(\'token\', \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');\n                  location.reload();\n                  return;\n                }\n                window.__obUpload = \'pending\';\n                // \u76d1\u542c\u4e0a\u4f20\u7ed3\u679c\u6d88\u606f\n                setInterval(function(){\n                  if (window.__obUpload && window.__obUpload.indexOf(\'pending\')>=0){\n                    var msgs = document.querySelectorAll(\'.arco-message,[class*=\"message\"],[class*=\"Message\"]\');\n                    for (var i=0;i<msgs.length;i++){\n                      var t = msgs[i].textContent||\'\';\n                      if (t.indexOf(\'\u4e0a\u4f20\u6210\u529f\')>=0 || t.indexOf(\'\u5168\u90e8\u4e0a\u4f20\u6210\u529f\')>=0){ window.__obUpload=\'success\'; }\n                      else if (t.indexOf(\'\u4e0a\u4f20\u5931\u8d25\')>=0){ window.__obUpload=\'fail:\'+t.slice(0,100); }\n                    }\n                  }\n                }, 700);\n                // \u6253\u5f00\u4e0a\u4f20\u5f39\u7a97\n                setTimeout(function(){\n                  var btns = document.querySelectorAll(\'button\');\n                  var hit = false;\n                  for (var i=0;i<btns.length;i++){\n                    if (btns[i].textContent.trim()===\'\u4e0a\u4f20\'){ btns[i].click(); hit=true; break; }\n                  }\n                  if (!hit){ window.__obUpload=\'fail:\u672a\u627e\u5230\u4e0a\u4f20\u6309\u94ae\'; return; }\n                  setTimeout(function(){\n                    var input = document.querySelector(\'input[type=file]\');\n                    if (input){ input.click(); }\n                    else { window.__obUpload=\'fail:\u672a\u627e\u5230\u6587\u4ef6\u9009\u62e9\u6846\'; }\n                  }, 900);\n                }, 700);\n              }catch(e){ window.__obUpload=\'error:\'+String(e); }\n            })();\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 157
    new-instance v1, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    return-void
.end method

.method private static final injectAndTriggerUpload$lambda$3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final pollResult()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/MageneWebUploader;)V

    const-string/jumbo v2, "window.__obUpload || \'pending\'"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final pollResult$lambda$5(Lcom/jichi/ob/MageneWebUploader;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 163
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v2, v0, [C

    const/16 v3, 0x22

    aput-char v3, v2, v1

    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "pending"

    .line 165
    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "success"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p1, "\u987d\u9e7f\u4e0a\u4f20\u6210\u529f"

    invoke-direct {p0, v0, p1}, Lcom/jichi/ob/MageneWebUploader;->finish(ZLjava/lang/String;)V

    return-void

    .line 166
    :cond_2
    const-string v0, "fail:"

    invoke-static {p1, v0, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/jichi/ob/MageneWebUploader;->finish(ZLjava/lang/String;)V

    return-void

    .line 167
    :cond_3
    const-string v0, "error:"

    invoke-static {p1, v0, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/jichi/ob/MageneWebUploader;->finish(ZLjava/lang/String;)V

    return-void

    .line 168
    :cond_4
    iget-object p1, p0, Lcom/jichi/ob/MageneWebUploader;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/MageneWebUploader;)V

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final pollResult$lambda$5$lambda$4(Lcom/jichi/ob/MageneWebUploader;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/jichi/ob/MageneWebUploader;->pollResult()V

    return-void
.end method

.method private static final upload$lambda$0(Lcom/jichi/ob/MageneWebUploader;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MageneWebUploader;->upload(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final upload$lambda$1(Lcom/jichi/ob/MageneWebUploader;)V
    .locals 2

    const/4 v0, 0x0

    .line 61
    const-string/jumbo v1, "\u987d\u9e7f\u4e0a\u4f20\u8d85\u65f6(60s)\uff1a\u8bf7\u786e\u8ba4\u987d\u9e7f\u9875\u9762\u767b\u5f55\u6b63\u5e38\u4e14\u7f51\u7edc\u7545\u901a"

    invoke-direct {p0, v0, v1}, Lcom/jichi/ob/MageneWebUploader;->finish(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/MageneWebUploader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final upload(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fitPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/ob/MageneWebUploader;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    iput-object v0, p0, Lcom/jichi/ob/MageneWebUploader;->fitFile:Ljava/io/File;

    .line 56
    iput-object p2, p0, Lcom/jichi/ob/MageneWebUploader;->resultCallback:Lkotlin/jvm/functions/Function2;

    .line 57
    iget-object p1, p0, Lcom/jichi/ob/MageneWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/jichi/ob/MageneWebUploader;->firstInject:Z

    .line 59
    invoke-direct {p0}, Lcom/jichi/ob/MageneWebUploader;->ensureWebView()V

    .line 60
    iget-object p1, p0, Lcom/jichi/ob/MageneWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    const-string p2, "https://otm.onelap.cn/calendar"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    :cond_2
    new-instance p1, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/jichi/ob/MageneWebUploader$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/ob/MageneWebUploader;)V

    iput-object p1, p0, Lcom/jichi/ob/MageneWebUploader;->timeoutTask:Ljava/lang/Runnable;

    .line 62
    iget-object p2, p0, Lcom/jichi/ob/MageneWebUploader;->mainHandler:Landroid/os/Handler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 52
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f85\u4e0a\u4f20FIT\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u65e0\u6548: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
