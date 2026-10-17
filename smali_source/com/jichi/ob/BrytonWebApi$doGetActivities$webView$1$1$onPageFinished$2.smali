.class public final Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;
.super Ljava/lang/Object;
.source "BrytonWebApi.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
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
        "com/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2",
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
.field final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $cleanup:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $limit:I

.field final synthetic $mainHandler:Landroid/os/Handler;

.field final synthetic $query:Ljava/lang/String;

.field final synthetic $skip:I

.field final synthetic $view:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/jichi/ob/BrytonWebApi;


# direct methods
.method public static synthetic $r8$lambda$IiRbZdCFgwTFJSEpboj_Mr4Ag_8(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;IILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->run$lambda$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/jichi/ob/BrytonWebApi;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$done:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$query:Ljava/lang/String;

    iput-object p4, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$mainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->this$0:Lcom/jichi/ob/BrytonWebApi;

    iput-object p6, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$cleanup:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$cb:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$skip:I

    iput p9, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$limit:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final run$lambda$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;IILjava/lang/String;)V
    .locals 14

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    .line 103
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 104
    const-string/jumbo v3, "wait"

    const/4 v4, 0x1

    if-eqz p8, :cond_1

    move-object/from16 v5, p8

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    new-array v6, v4, [C

    const/16 v7, 0x22

    aput-char v7, v6, v2

    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "\\\""

    const-string v10, "\""

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    move-object v5, v3

    .line 106
    :cond_2
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ""

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 107
    const-string v7, "error:"

    invoke-static {v5, v7, v2, v3, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    invoke-static/range {p3 .. p3}, Lcom/jichi/ob/BrytonWebApi;->access$getTAG$p(Lcom/jichi/ob/BrytonWebApi;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 111
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 114
    :cond_4
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 p0, p3

    move/from16 v2, p6

    move/from16 v3, p7

    .line 115
    invoke-static {p0, v5, v2, v3}, Lcom/jichi/ob/BrytonWebApi;->access$parseList(Lcom/jichi/ob/BrytonWebApi;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    .line 116
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 117
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 106
    :cond_5
    :goto_0
    move-object/from16 p0, p2

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$view:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$query:Ljava/lang/String;

    iget-object v3, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$done:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$mainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->this$0:Lcom/jichi/ob/BrytonWebApi;

    iget-object v7, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$cleanup:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$cb:Lkotlin/jvm/functions/Function1;

    iget v9, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$skip:I

    iget v10, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;->$limit:I

    new-instance v2, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2$$ExternalSyntheticLambda0;

    move-object v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;II)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
