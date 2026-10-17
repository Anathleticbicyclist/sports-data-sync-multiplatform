.class final Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WebBridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/util/WebBridge;->convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.util.WebBridge"
    f = "WebBridge.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
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
        0x8d,
        0x8e,
        0x8f,
        0x92,
        0xa5,
        0xab
    }
    m = "convertGpxToFit"
    n = {
        "gpxData",
        "add8Hours",
        "gpxData",
        "add8Hours",
        "gpxData",
        "add8Hours",
        "count",
        "gpxData",
        "trigger",
        "add8Hours",
        "count",
        "gpxData",
        "trigger",
        "sb",
        "add8Hours",
        "count",
        "b64Len",
        "pos",
        "gpxData",
        "trigger",
        "sb",
        "add8Hours",
        "count",
        "b64Len",
        "pos"
    }
    s = {
        "L$0",
        "Z$0",
        "L$0",
        "Z$0",
        "L$0",
        "Z$0",
        "I$0",
        "L$0",
        "L$1",
        "Z$0",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "I$0",
        "I$1",
        "I$2"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/jichi/ob/util/WebBridge;


# direct methods
.method constructor <init>(Lcom/jichi/ob/util/WebBridge;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/util/WebBridge;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->label:I

    iget-object p1, p0, Lcom/jichi/ob/util/WebBridge$convertGpxToFit$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/jichi/ob/util/WebBridge;->convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
