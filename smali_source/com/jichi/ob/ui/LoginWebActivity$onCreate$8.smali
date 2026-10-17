.class public final Lcom/jichi/ob/ui/LoginWebActivity$onCreate$8;
.super Landroid/webkit/WebChromeClient;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/jichi/ob/ui/LoginWebActivity$onCreate$8",
        "Landroid/webkit/WebChromeClient;",
        "onProgressChanged",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "newProgress",
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
.field final synthetic this$0:Lcom/jichi/ob/ui/LoginWebActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$8;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    .line 489
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 491
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$onCreate$8;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getProgressBar$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "progressBar"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
