.class public final Lcom/jichi/ob/api/GarminApi$Companion$initSharedWebView$2$1;
.super Landroid/webkit/WebViewClient;
.source "GarminApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi$Companion;->initSharedWebView(Landroid/content/Context;)V
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
        "com/jichi/ob/api/GarminApi$Companion$initSharedWebView$2$1",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 222
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 223
    sget-object p1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/jichi/ob/api/GarminApi;->access$setWebViewLoading$cp(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 224
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "connect.garmin.com"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, p1, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 225
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "connect.garmin.cn"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, p1, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    if-eqz p2, :cond_2

    .line 226
    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "logout"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, p1, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, p1

    :goto_2
    if-eqz p2, :cond_3

    .line 227
    check-cast p2, Ljava/lang/CharSequence;

    const-string/jumbo v5, "sign-in"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {p2, v5, p1, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-ne p2, v2, :cond_3

    move p1, v2

    :cond_3
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    .line 229
    sget-object p1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-static {v2}, Lcom/jichi/ob/api/GarminApi;->access$setSharedWebViewReady$cp(Z)V

    :cond_4
    return-void
.end method
