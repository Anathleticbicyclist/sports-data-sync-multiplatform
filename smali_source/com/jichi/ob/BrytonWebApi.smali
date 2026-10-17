.class public final Lcom/jichi/ob/BrytonWebApi;
.super Ljava/lang/Object;
.source "BrytonWebApi.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrytonWebApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrytonWebApi.kt\ncom/jichi/ob/BrytonWebApi\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n314#2,11:191\n1#3:202\n*S KotlinDebug\n*F\n+ 1 BrytonWebApi.kt\ncom/jichi/ob/BrytonWebApi\n*L\n38#1:191,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J$\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010J2\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0018\u0010\u0013\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0004\u0012\u00020\u00120\u0014H\u0002J&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/jichi/ob/BrytonWebApi;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "token",
        "",
        "userId",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V",
        "TAG",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "skip",
        "",
        "limit",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doGetActivities",
        "",
        "cb",
        "Lkotlin/Function1;",
        "parseList",
        "json",
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

.field private final token:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$72YhoPPveaksF31l2ql46lWhp_M(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/BrytonWebApi;->doGetActivities$lambda$4(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XT_FVU_-v26IT_8y9ot2CKNrAUU()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/jichi/ob/BrytonWebApi;->doGetActivities$lambda$1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$uyFTlbBj3GQPiks4COuBhucUbtg(Lcom/jichi/ob/BrytonWebApi;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/BrytonWebApi;->doGetActivities$lambda$5(Lcom/jichi/ob/BrytonWebApi;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jichi/ob/BrytonWebApi;->activity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/jichi/ob/BrytonWebApi;->token:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/jichi/ob/BrytonWebApi;->userId:Ljava/lang/String;

    .line 34
    const-string p1, "BrytonWebApi"

    iput-object p1, p0, Lcom/jichi/ob/BrytonWebApi;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$doGetActivities(Lcom/jichi/ob/BrytonWebApi;IILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/BrytonWebApi;->doGetActivities(IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/jichi/ob/BrytonWebApi;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jichi/ob/BrytonWebApi;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getToken$p(Lcom/jichi/ob/BrytonWebApi;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jichi/ob/BrytonWebApi;->token:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUserId$p(Lcom/jichi/ob/BrytonWebApi;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jichi/ob/BrytonWebApi;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$parseList(Lcom/jichi/ob/BrytonWebApi;Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/BrytonWebApi;->parseList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final doGetActivities(IILkotlin/jvm/functions/Function1;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 58
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 59
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 60
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    new-instance v11, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/jichi/ob/BrytonWebApi;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v11}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    invoke-virtual {v11}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 65
    invoke-virtual {v11}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v12, -0x1

    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 66
    new-instance v0, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;

    move-object v3, p0

    move v8, p1

    move v9, p2

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/jichi/ob/BrytonWebApi$doGetActivities$webView$1$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$IntRef;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/Handler;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;II)V

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v11, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 130
    move-object p2, v11

    check-cast p2, Landroid/view/View;

    invoke-virtual {v10, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object p2, p0, Lcom/jichi/ob/BrytonWebApi;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :cond_1
    const-string p1, "https://active.brytonsport.com/activities"

    invoke-virtual {v11, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    new-instance p1, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;

    move-object/from16 v7, p3

    invoke-direct {p1, v1, p0, v6, v7}, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    const-wide/16 v0, 0x7530

    invoke-virtual {v5, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    new-instance p1, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v10, v11}, Lcom/jichi/ob/BrytonWebApi$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/BrytonWebApi;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V

    iput-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private static final doGetActivities$lambda$1()Lkotlin/Unit;
    .locals 1

    .line 53
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final doGetActivities$lambda$4(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/jichi/ob/BrytonWebApi;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    iget-object p0, p1, Lcom/jichi/ob/BrytonWebApi;->TAG:Ljava/lang/String;

    const-string p1, "list timeout"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 140
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final doGetActivities$lambda$5(Lcom/jichi/ob/BrytonWebApi;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)Lkotlin/Unit;
    .locals 1

    .line 146
    :try_start_0
    iget-object p0, p0, Lcom/jichi/ob/BrytonWebApi;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 147
    :catch_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Landroid/webkit/WebView;->removeAllViews()V

    invoke-virtual {p2}, Landroid/webkit/WebView;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :catch_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final parseList(Ljava/lang/String;II)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 153
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 155
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move/from16 v4, p2

    :goto_0
    if-ge v5, v3, :cond_4

    .line 158
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v7, p3

    if-ge v6, v7, :cond_4

    .line 159
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    :goto_1
    move-object/from16 v23, v2

    move/from16 v24, v3

    goto/16 :goto_3

    .line 161
    :cond_0
    const-string v8, "id"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 162
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v10

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 163
    :cond_1
    const-string v8, "name"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v8, "\u767e\u9510\u817e\u9a91\u884c"

    :cond_2
    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    .line 164
    const-string/jumbo v8, "start_time"

    const-wide/16 v12, 0x0

    invoke-virtual {v6, v8, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v14, 0x3e8

    mul-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-lez v14, :cond_3

    .line 167
    :try_start_1
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v14, v15, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 168
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :cond_3
    move-object v12, v0

    .line 171
    :goto_2
    :try_start_2
    const-string v13, "distance_m"

    const-wide/16 v14, 0x0

    invoke-virtual {v6, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    .line 172
    const-string v15, "duration_s"

    move-object/from16 v23, v2

    move/from16 v24, v3

    const-wide/16 v2, 0x0

    invoke-virtual {v6, v15, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-wide/from16 v18, v8

    .line 173
    new-instance v9, Lcom/jichi/ob/model/ActivityRecord;

    .line 175
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 176
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    long-to-int v15, v2

    .line 179
    sget-object v16, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    const/16 v21, 0x100

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    .line 173
    invoke-direct/range {v9 .. v22}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_0

    :cond_4
    move-object/from16 v2, p0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    .line 185
    iget-object v3, v2, Lcom/jichi/ob/BrytonWebApi;->TAG:Ljava/lang/String;

    const-string v4, "parseList error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-object v1
.end method


# virtual methods
.method public final getActivities(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 192
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 198
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 199
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/jichi/ob/BrytonWebApi$getActivities$2$1;-><init>(Lcom/jichi/ob/BrytonWebApi;IILkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 47
    :cond_0
    new-instance v2, Lcom/jichi/ob/BrytonWebApi$getActivities$2$2;

    invoke-direct {v2, v1}, Lcom/jichi/ob/BrytonWebApi$getActivities$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, p2, v2}, Lcom/jichi/ob/BrytonWebApi;->access$doGetActivities(Lcom/jichi/ob/BrytonWebApi;IILkotlin/jvm/functions/Function1;)V

    .line 200
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 191
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p1
.end method
