.class public final Lcom/jichi/ob/BrytonWebUploader;
.super Ljava/lang/Object;
.source "BrytonWebUploader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrytonWebUploader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrytonWebUploader.kt\ncom/jichi/ob/BrytonWebUploader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1#2:249\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J(\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00052\u0018\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00150\u0013J\u0008\u0010!\u001a\u00020\u0015H\u0002J\u0012\u0010\"\u001a\u00020\u00152\u0008\u0010#\u001a\u0004\u0018\u00010\rH\u0002J\u0012\u0010$\u001a\u00020\u00152\u0008\u0010#\u001a\u0004\u0018\u00010\rH\u0002J\u0008\u0010%\u001a\u00020\u0015H\u0002J\u0008\u0010&\u001a\u00020\u0015H\u0002J\u0018\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0005H\u0002J\u0008\u0010*\u001a\u00020\u0015H\u0002J\u0006\u0010+\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/jichi/ob/BrytonWebUploader;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "token",
        "",
        "userId",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V",
        "TAG",
        "mainHandler",
        "Landroid/os/Handler;",
        "webView",
        "Landroid/webkit/WebView;",
        "container",
        "Landroid/widget/FrameLayout;",
        "fitFile",
        "Ljava/io/File;",
        "resultCallback",
        "Lkotlin/Function2;",
        "",
        "",
        "done",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "timeoutTask",
        "Ljava/lang/Runnable;",
        "pageLoadCount",
        "",
        "baseRecordId",
        "confirmTries",
        "upload",
        "fitPath",
        "onResult",
        "ensureWebView",
        "injectAndReload",
        "view",
        "startUploadFlow",
        "pollResult",
        "confirmByCollection",
        "finish",
        "success",
        "msg",
        "removeFromTree",
        "destroy",
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
.field private final TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private baseRecordId:Ljava/lang/String;

.field private confirmTries:I

.field private container:Landroid/widget/FrameLayout;

.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private fitFile:Ljava/io/File;

.field private final mainHandler:Landroid/os/Handler;

.field private pageLoadCount:I

.field private resultCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutTask:Ljava/lang/Runnable;

.field private final token:Ljava/lang/String;

.field private final userId:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$0i-Lg77NKEgP3wv5uLTjUSVgbs0(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/BrytonWebUploader;->confirmByCollection$lambda$7$lambda$6(Lcom/jichi/ob/BrytonWebUploader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$79Sgi5ffA7brFBrUjTCkKntf0kw(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/BrytonWebUploader;->startUploadFlow$lambda$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9r318X1Hk5bB7fkh4C5jQfawATA(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/BrytonWebUploader;->destroy$lambda$11(Lcom/jichi/ob/BrytonWebUploader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yq5s7W4yvjwRfcXy8bVEEwct5k8(Lcom/jichi/ob/BrytonWebUploader;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/BrytonWebUploader;->upload$lambda$0(Lcom/jichi/ob/BrytonWebUploader;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vfCGHbf-lHJDJigxSW6gqhB-QDU(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/BrytonWebUploader;->injectAndReload$lambda$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xWKBSdTYtZuwEkMsyra-NhQ-YAI(Lcom/jichi/ob/BrytonWebUploader;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/BrytonWebUploader;->confirmByCollection$lambda$7(Lcom/jichi/ob/BrytonWebUploader;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xePAQvqS1MRIMSA2Fa00V3dU1Uw(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/BrytonWebUploader;->upload$lambda$1(Lcom/jichi/ob/BrytonWebUploader;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->activity:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/jichi/ob/BrytonWebUploader;->token:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/jichi/ob/BrytonWebUploader;->userId:Ljava/lang/String;

    .line 39
    const-string p1, "BrytonWebUploader"

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->TAG:Ljava/lang/String;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->mainHandler:Landroid/os/Handler;

    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/jichi/ob/BrytonWebUploader;)Landroid/app/Activity;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jichi/ob/BrytonWebUploader;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getDone$p(Lcom/jichi/ob/BrytonWebUploader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jichi/ob/BrytonWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getFitFile$p(Lcom/jichi/ob/BrytonWebUploader;)Ljava/io/File;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jichi/ob/BrytonWebUploader;->fitFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getPageLoadCount$p(Lcom/jichi/ob/BrytonWebUploader;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/jichi/ob/BrytonWebUploader;->pageLoadCount:I

    return p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/jichi/ob/BrytonWebUploader;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jichi/ob/BrytonWebUploader;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$injectAndReload(Lcom/jichi/ob/BrytonWebUploader;Landroid/webkit/WebView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/jichi/ob/BrytonWebUploader;->injectAndReload(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static final synthetic access$pollResult(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jichi/ob/BrytonWebUploader;->pollResult()V

    return-void
.end method

.method public static final synthetic access$setPageLoadCount$p(Lcom/jichi/ob/BrytonWebUploader;I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jichi/ob/BrytonWebUploader;->pageLoadCount:I

    return-void
.end method

.method public static final synthetic access$startUploadFlow(Lcom/jichi/ob/BrytonWebUploader;Landroid/webkit/WebView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/jichi/ob/BrytonWebUploader;->startUploadFlow(Landroid/webkit/WebView;)V

    return-void
.end method

.method private final confirmByCollection()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget v0, p0, Lcom/jichi/ob/BrytonWebUploader;->confirmTries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jichi/ob/BrytonWebUploader;->confirmTries:I

    .line 211
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/BrytonWebUploader;)V

    const-string v2, "(async function(){\n  try {\n    const c = Meteor.connection._mongo_livedata_collections[\'userActivities\'];\n    if (!c) return \'empty\';\n    const all = c.find().fetch();\n    if (all.length){\n      const top = all[0]._id;\n      if (top && top !== (window.__baseId||\'\')) return \'confirmed:\'+top;\n      return \'notyet\';\n    }\n    return \'empty\';\n  } catch(e){ return \'api_err:\'+String(e); }\n})();"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final confirmByCollection$lambda$7(Lcom/jichi/ob/BrytonWebUploader;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 212
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v2, v0, [C

    const/16 v3, 0x22

    aput-char v3, v2, v1

    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "empty"

    .line 214
    :cond_1
    const-string v2, "confirmed"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "confirmed:"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u767e\u9510\u817e\u4e0a\u4f20\u6210\u529f\uff08\u5df2\u843d\u5e93 id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\uff09"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/jichi/ob/BrytonWebUploader;->finish(ZLjava/lang/String;)V

    return-void

    .line 215
    :cond_2
    const-string v0, "api_err:"

    invoke-static {p1, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u767e\u9510\u817e\u524d\u7aef\u63d0\u793a\u6210\u529f\u4f46\u843d\u5e93\u786e\u8ba4\u5931\u8d25: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/jichi/ob/BrytonWebUploader;->finish(ZLjava/lang/String;)V

    return-void

    .line 216
    :cond_3
    iget p1, p0, Lcom/jichi/ob/BrytonWebUploader;->confirmTries:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_4

    const-string/jumbo p1, "\u767e\u9510\u817e\u4e0a\u4f20\u8d85\u65f6\uff1acollection\u672a\u68c0\u6d4b\u5230\u65b0\u8bb0\u5f55\uff08\u672a\u843d\u5e93\u6216\u9875\u9762\u4e0a\u4f20\u5931\u8d25\uff09"

    invoke-direct {p0, v1, p1}, Lcom/jichi/ob/BrytonWebUploader;->finish(ZLjava/lang/String;)V

    return-void

    .line 217
    :cond_4
    iget-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/ob/BrytonWebUploader;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final confirmByCollection$lambda$7$lambda$6(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/jichi/ob/BrytonWebUploader;->confirmByCollection()V

    return-void
.end method

.method private static final destroy$lambda$11(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->timeoutTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jichi/ob/BrytonWebUploader;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/BrytonWebUploader;->removeFromTree()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->webView:Landroid/webkit/WebView;

    .line 244
    iput-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->container:Landroid/widget/FrameLayout;

    return-void
.end method

.method private final ensureWebView()V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jichi/ob/BrytonWebUploader;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 81
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/jichi/ob/BrytonWebUploader;->activity:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 83
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 84
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 85
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 86
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 87
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 88
    new-instance v1, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;

    invoke-direct {v1, p0}, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$1;-><init>(Lcom/jichi/ob/BrytonWebUploader;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    new-instance v1, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;

    invoke-direct {v1, p0}, Lcom/jichi/ob/BrytonWebUploader$ensureWebView$wv$1$2;-><init>(Lcom/jichi/ob/BrytonWebUploader;)V

    check-cast v1, Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 130
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v1, p0, Lcom/jichi/ob/BrytonWebUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 133
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 132
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    :cond_2
    iput-object v2, p0, Lcom/jichi/ob/BrytonWebUploader;->webView:Landroid/webkit/WebView;

    .line 135
    iput-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->container:Landroid/widget/FrameLayout;

    return-void
.end method

.method private final finish(ZLjava/lang/String;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->timeoutTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jichi/ob/BrytonWebUploader;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->resultCallback:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lcom/jichi/ob/BrytonWebUploader;->resultCallback:Lkotlin/jvm/functions/Function2;

    .line 227
    iget-object v1, p0, Lcom/jichi/ob/BrytonWebUploader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finish success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/jichi/ob/BrytonWebUploader;->removeFromTree()V

    if-eqz v0, :cond_2

    .line 229
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private final injectAndReload(Landroid/webkit/WebView;)V
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->token:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\'"

    const-string v2, "\\\'"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/jichi/ob/BrytonWebUploader;->userId:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "\'"

    const-string v3, "\\\'"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            (function(){\n              try {\n                localStorage.setItem(\'Meteor.loginToken\', \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');\n                localStorage.setItem(\'Meteor.userId\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');\n                location.reload();\n              } catch(e){ window.__bbUpload=\'error:\'+String(e); }\n            })();\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 148
    new-instance v1, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private static final injectAndReload$lambda$4(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final pollResult()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/BrytonWebUploader;->confirmByCollection()V

    return-void
.end method

.method private final removeFromTree()V
    .locals 3

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jichi/ob/BrytonWebUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private final startUploadFlow(Landroid/webkit/WebView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 181
    new-instance v0, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "(async function(){\n  try{\n    // 1. \u8bb0\u5f55\u4e0a\u4f20\u524d\u6700\u65b0\u8bb0\u5f55id\uff08collection userActivities \u9700\u8ba2\u9605\u5b8c\u6210\uff09\n    try {\n      const c = Meteor.connection._mongo_livedata_collections[\'userActivities\'];\n      if (c){ const all=c.find().fetch(); window.__baseId = all.length?all[0]._id:\'\'; }\n      else window.__baseId = \'\';\n    } catch(e){ window.__baseId = \'\'; }\n    window.__bbUpload = \'pending\';\n    // 2. \u70b9\u53f3\u4e0a\u89d2 + \u56fe\u6807\n    setTimeout(function(){\n      var imgs = document.querySelectorAll(\'img\');\n      var add = null;\n      for (var i=0;i<imgs.length;i++){\n        if ((imgs[i].src||\'\').indexOf(\'0_add\')>=0){ add=imgs[i]; break; }\n      }\n      if (!add){ window.__bbUpload=\'fail:\u672a\u627e\u5230+\u6309\u94ae\'; return; }\n      add.click();\n      // 3. \u7b49\u5f39\u7a97\u6e32\u67d3\u540e\u70b9\u51fb\u6587\u4ef6input\n      setTimeout(function(){\n        var input = document.querySelector(\'#fileInput\') || document.querySelector(\'input[type=file]\');\n        if (input){ input.click(); }\n        else { window.__bbUpload=\'fail:\u672a\u627e\u5230\u6587\u4ef6\u9009\u62e9\u6846\'; }\n      }, 1500);\n    }, 1200);\n  }catch(e){ window.__bbUpload=\'error:\'+String(e); }\n})();"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private static final startUploadFlow$lambda$5(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static final upload$lambda$0(Lcom/jichi/ob/BrytonWebUploader;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/BrytonWebUploader;->upload(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final upload$lambda$1(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 2

    const/4 v0, 0x0

    .line 71
    const-string/jumbo v1, "\u767e\u9510\u817e\u4e0a\u4f20\u8d85\u65f6(45s)\uff1a\u8bf7\u786e\u8ba4\u767e\u9510\u817e\u7f51\u9875\u767b\u5f55\u6709\u6548"

    invoke-direct {p0, v0, v1}, Lcom/jichi/ob/BrytonWebUploader;->finish(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/BrytonWebUploader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final upload(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fitPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/ob/BrytonWebUploader;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    iput-object v0, p0, Lcom/jichi/ob/BrytonWebUploader;->fitFile:Ljava/io/File;

    .line 64
    iput-object p2, p0, Lcom/jichi/ob/BrytonWebUploader;->resultCallback:Lkotlin/jvm/functions/Function2;

    .line 65
    iget-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iput v2, p0, Lcom/jichi/ob/BrytonWebUploader;->pageLoadCount:I

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->baseRecordId:Ljava/lang/String;

    .line 68
    iput v2, p0, Lcom/jichi/ob/BrytonWebUploader;->confirmTries:I

    .line 69
    invoke-direct {p0}, Lcom/jichi/ob/BrytonWebUploader;->ensureWebView()V

    .line 70
    iget-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    const-string p2, "https://active.brytonsport.com/activities"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    :cond_2
    new-instance p1, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/jichi/ob/BrytonWebUploader$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/ob/BrytonWebUploader;)V

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebUploader;->timeoutTask:Ljava/lang/Runnable;

    .line 72
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebUploader;->mainHandler:Landroid/os/Handler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/32 v0, 0xafc8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 60
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f85\u4e0a\u4f20\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u65e0\u6548: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
