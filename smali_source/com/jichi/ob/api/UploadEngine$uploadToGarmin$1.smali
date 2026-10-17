.class final Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UploadEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/UploadEngine;->uploadToGarmin(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.UploadEngine"
    f = "UploadEngine.kt"
    i = {
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
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x2fe,
        0x338,
        0x347,
        0x349
    }
    m = "uploadToGarmin"
    n = {
        "cred",
        "fitData",
        "record",
        "target",
        "cred",
        "fitData",
        "record",
        "target",
        "uploadBytes",
        "fileName",
        "isFit",
        "cred",
        "fitData",
        "record",
        "target",
        "uploadBytes",
        "fileName",
        "err",
        "recEpoch",
        "title",
        "received",
        "isFit",
        "attempt",
        "$i$a$-repeat-UploadEngine$uploadToGarmin$2",
        "cred",
        "fitData",
        "record",
        "target",
        "uploadBytes",
        "fileName",
        "err",
        "recEpoch",
        "title",
        "received",
        "isFit",
        "attempt",
        "$i$a$-repeat-UploadEngine$uploadToGarmin$2"
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
        "L$4",
        "L$5",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "Z$0",
        "I$2",
        "I$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "Z$0",
        "I$2",
        "I$3"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/jichi/ob/api/UploadEngine;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/UploadEngine;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->this$0:Lcom/jichi/ob/api/UploadEngine;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I

    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->this$0:Lcom/jichi/ob/api/UploadEngine;

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/jichi/ob/api/UploadEngine;->access$uploadToGarmin(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
