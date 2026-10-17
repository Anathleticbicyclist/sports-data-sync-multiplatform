.class public final Lcom/jichi/ob/MainActivity$initFixWebView$1;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->initFixWebView()V
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
        "com/jichi/ob/MainActivity$initFixWebView$1",
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
.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$initFixWebView$1;->this$0:Lcom/jichi/ob/MainActivity;

    .line 3749
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 3751
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$initFixWebView$1;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jichi/ob/MainActivity;->access$setFixJsReady$p(Lcom/jichi/ob/MainActivity;Z)V

    .line 3752
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$initFixWebView$1;->this$0:Lcom/jichi/ob/MainActivity;

    const-string/jumbo p2, "\u2705 \u8fc8\u91d1\u5750\u6807\u8f6c\u6362\u5f15\u64ce\u5df2\u5c31\u7eea"

    invoke-static {p1, p2}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    return-void
.end method
