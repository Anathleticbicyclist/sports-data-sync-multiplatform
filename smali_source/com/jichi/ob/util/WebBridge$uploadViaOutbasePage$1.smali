.class final Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WebBridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/util/WebBridge;->uploadViaOutbasePage(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x0,
        0x0,
        0x0,
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
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3
    }
    l = {
        0xdf,
        0xe0,
        0xe1,
        0xe2
    }
    m = "uploadViaOutbasePage"
    n = {
        "cdnUrl",
        "fileName",
        "fileData",
        "sid",
        "withSid",
        "cdnUrl",
        "fileName",
        "fileData",
        "sid",
        "withSid",
        "cdnUrl",
        "fileName",
        "fileData",
        "sid",
        "withSid",
        "count",
        "cdnUrl",
        "fileName",
        "fileData",
        "sid",
        "withSid",
        "count"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

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
            "Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->label:I

    iget-object v0, p0, Lcom/jichi/ob/util/WebBridge$uploadViaOutbasePage$1;->this$0:Lcom/jichi/ob/util/WebBridge;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jichi/ob/util/WebBridge;->uploadViaOutbasePage(Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
