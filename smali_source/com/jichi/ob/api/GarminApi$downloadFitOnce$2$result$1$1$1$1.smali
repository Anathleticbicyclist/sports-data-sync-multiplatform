.class final Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;
.super Ljava/lang/Object;
.source "GarminApi.kt"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $check:Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;

.field final synthetic $fetchJs:Ljava/lang/String;

.field final synthetic $wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;->$wv:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;->$fetchJs:Ljava/lang/String;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;->$check:Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1474
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public final onReceiveValue(Ljava/lang/String;)V
    .locals 3

    .line 1475
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;->$wv:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;->$fetchJs:Ljava/lang/String;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1$1;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;->$check:Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;

    invoke-direct {v1, v2}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1$1;-><init>(Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;)V

    check-cast v1, Landroid/webkit/ValueCallback;

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
