.class public final Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;
.super Landroid/webkit/WebViewClient;
.source "BrytonWebApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/BrytonWebApi;->doGetActivities(IILkotlin/jvm/functions/Function1;)V
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
        "com/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1",
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

.field final synthetic $pageLoadCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $pollRunnable:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $skip:I

.field final synthetic this$0:Lcom/jichi/ob/BrytonWebApi;


# direct methods
.method public static synthetic $r8$lambda$wl_W_MhVjUvYMvC2mntI2mIInjw(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->onPageFinished$lambda$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$IntRef;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/Handler;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/jichi/ob/BrytonWebApi;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Runnable;",
            ">;",
            "Landroid/os/Handler;",
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

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$done:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$pageLoadCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->this$0:Lcom/jichi/ob/BrytonWebApi;

    iput-object p4, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$pollRunnable:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$mainHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$cleanup:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$skip:I

    iput p9, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$limit:I

    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private static final onPageFinished$lambda$0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .line 68
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 69
    const-string p2, ""

    .line 70
    :cond_1
    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "active.brytonsport.com"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$pageLoadCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$pageLoadCount:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    iput p2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 72
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$pageLoadCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p2, v1, :cond_4

    if-eqz p1, :cond_3

    .line 74
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->this$0:Lcom/jichi/ob/BrytonWebApi;

    invoke-static {p2}, Lcom/jichi/ob/BrytonWebApi;->access$getToken$p(Lcom/jichi/ob/BrytonWebApi;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\'"

    const-string v2, "\\\'"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->this$0:Lcom/jichi/ob/BrytonWebApi;

    invoke-static {v0}, Lcom/jichi/ob/BrytonWebApi;->access$getUserId$p(Lcom/jichi/ob/BrytonWebApi;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "\'"

    const-string v3, "\\\'"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(function(){localStorage.setItem(\'Meteor.loginToken\',\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\');localStorage.setItem(\'Meteor.userId\',\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\');location.reload();})()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 75
    new-instance v0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$$ExternalSyntheticLambda0;-><init>()V

    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_3
    :goto_0
    return-void

    .line 99
    :cond_4
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$pollRunnable:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;

    iget-object v1, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$done:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->this$0:Lcom/jichi/ob/BrytonWebApi;

    iget-object v6, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$cleanup:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iget v8, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$skip:I

    iget v9, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$limit:I

    const-string v3, "(function(){\n  try {\n    var c = Meteor.connection._mongo_livedata_collections[\'userActivities\'];\n    if (!c) return \'wait\';\n    var all = c.find().fetch();\n    var out = all.map(function(a){\n      var s = a.summary||{};\n      return {\n        id: a._id,\n        name: (a.name||\'\').toString(),\n        start_time: a.start_time||0,\n        distance_m: s.total_distance||0,\n        duration_s: s.total_elapsed_time||0,\n        avg_speed: s.avg_speed||0\n      };\n    });\n    return JSON.stringify(out);\n  } catch(e){ return \'error:\'+e; }\n})()"

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1$onPageFinished$2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 123
    iget-object p1, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$mainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;->$pollRunnable:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
