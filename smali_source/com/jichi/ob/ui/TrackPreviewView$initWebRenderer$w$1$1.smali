.class public final Lcom/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1;
.super Landroid/webkit/WebViewClient;
.source "TrackPreviewView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/TrackPreviewView;->initWebRenderer()V
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
        "com/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1",
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
.field final synthetic $this_apply:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/jichi/ob/ui/TrackPreviewView;


# direct methods
.method constructor <init>(Lcom/jichi/ob/ui/TrackPreviewView;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    iput-object p2, p0, Lcom/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1;->$this_apply:Landroid/webkit/WebView;

    .line 1718
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1720
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/jichi/ob/ui/TrackPreviewView;->access$setWebReady$p(Lcom/jichi/ob/ui/TrackPreviewView;Z)V

    .line 1721
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1;->this$0:Lcom/jichi/ob/ui/TrackPreviewView;

    invoke-static {p1}, Lcom/jichi/ob/ui/TrackPreviewView;->access$refreshCssSize(Lcom/jichi/ob/ui/TrackPreviewView;)V

    .line 1722
    iget-object p1, p0, Lcom/jichi/ob/ui/TrackPreviewView$initWebRenderer$w$1$1;->$this_apply:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method
