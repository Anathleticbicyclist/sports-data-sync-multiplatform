.class public final Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;
.super Ljava/lang/Object;
.source "GarminApi.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "com/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1",
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
.field final synthetic $attempts:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroid/webkit/WebView;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$attempts:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$wv:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1461
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$attempts:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$attempts:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1462
    iget-object v0, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$wv:Landroid/webkit/WebView;

    new-instance v1, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1$run$1;

    iget-object v2, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v3, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$attempts:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->$wv:Landroid/webkit/WebView;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1$run$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;)V

    check-cast v1, Landroid/webkit/ValueCallback;

    const-string v2, "(function(){ if(window.__g_done){ var s=window.__g_status||0; var r=window.__g_result!==undefined?window.__g_result:\'\'; var e=window.__g_error||\'\'; return JSON.stringify({s:s,r:r,e:e}); } return \'__ND__\'; })()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
