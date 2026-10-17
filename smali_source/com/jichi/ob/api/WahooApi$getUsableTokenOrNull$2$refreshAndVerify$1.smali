.class final Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WahooApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->invokeSuspend$refreshAndVerify(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.WahooApi$getUsableTokenOrNull$2"
    f = "WahooApi.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xbf,
        0xc0
    }
    m = "invokeSuspend$refreshAndVerify"
    n = {
        "this$0",
        "$refreshToken",
        "$clientId",
        "$clientSecret",
        "this$0",
        "$refreshToken",
        "$clientId",
        "$clientSecret",
        "fresh"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2$refreshAndVerify$1;->label:I

    const/4 p1, 0x0

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, p1, p1, p1, v0}, Lcom/jichi/ob/api/WahooApi$getUsableTokenOrNull$2;->access$invokeSuspend$refreshAndVerify(Lcom/jichi/ob/api/WahooApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
