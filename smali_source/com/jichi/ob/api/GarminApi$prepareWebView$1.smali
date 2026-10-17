.class final Lcom/jichi/ob/api/GarminApi$prepareWebView$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "GarminApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi;->prepareWebView(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.jichi.ob.api.GarminApi"
    f = "GarminApi.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5
    }
    l = {
        0x395,
        0x39d,
        0x3b4,
        0x3b9,
        0x3bf,
        0x3c2
    }
    m = "prepareWebView"
    n = {
        "cred",
        "ds",
        "wv",
        "host",
        "cnUrl",
        "cred",
        "ds",
        "wv",
        "host",
        "cnUrl",
        "current",
        "existingCookies",
        "cred",
        "ds",
        "wv",
        "host",
        "cnUrl",
        "current",
        "existingCookies",
        "attempts",
        "cred",
        "ds",
        "wv",
        "host",
        "cred",
        "ds",
        "wv",
        "host",
        "currentUrl",
        "onGarmin",
        "cred",
        "ds",
        "wv",
        "host",
        "currentUrl",
        "onGarmin",
        "attempts"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/jichi/ob/api/GarminApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminApi$prepareWebView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->this$0:Lcom/jichi/ob/api/GarminApi;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->label:I

    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$prepareWebView$1;->this$0:Lcom/jichi/ob/api/GarminApi;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v0, v1}, Lcom/jichi/ob/api/GarminApi;->access$prepareWebView(Lcom/jichi/ob/api/GarminApi;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
