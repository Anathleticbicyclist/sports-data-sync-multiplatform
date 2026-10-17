.class final Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;
.super Ljava/lang/Object;
.source "GarminApi.kt"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1;->run()V
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

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/internal/Ref$IntRef;Landroid/webkit/WebView;Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroid/webkit/WebView;",
            "Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->$attempts:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->$wv:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->this$0:Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1052
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public final onReceiveValue(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1053
    const-string v2, ""

    if-eqz p1, :cond_1

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [C

    const/16 v5, 0x22

    aput-char v5, v4, v1

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v2

    .line 1054
    :goto_1
    const-string v3, "__ND__"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v10, 0x0

    if-nez v3, :cond_3

    move-object v3, v4

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1056
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "\\n"

    const-string v6, "\n"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\\""

    const-string v13, "\""

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1057
    const-string v4, "s"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1058
    const-string v4, "r"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1059
    iget-object v3, v0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v3, Lkotlin/coroutines/Continuation;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/16 v4, 0xc8

    if-gt v4, v1, :cond_2

    const/16 v4, 0x12c

    if-ge v1, v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v10

    :goto_2
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1060
    :catch_0
    iget-object v1, v0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 1061
    :cond_3
    iget-object v1, v0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->$attempts:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    .line 1062
    iget-object v1, v0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->$wv:Landroid/webkit/WebView;

    iget-object v2, v0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->this$0:Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1;

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1063
    :cond_4
    iget-object v1, v0, Lcom/jichi/ob/api/GarminApi$fetchViaWebView$2$1$1$checkResult$1$run$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
