.class public final Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;
.super Ljava/lang/Object;
.source "LoginWebActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/jichi/ob/ui/LoginWebActivity$checkRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
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

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$detectLogin(Lcom/jichi/ob/ui/LoginWebActivity;)V

    .line 180
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$checkRunnable$1;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getWebView$p(Lcom/jichi/ob/ui/LoginWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
