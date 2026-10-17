.class final Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AutoSyncWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/AutoSyncWorker;->downloadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.AutoSyncWorker"
    f = "AutoSyncWorker.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x8,
        0x8,
        0x8,
        0x9,
        0x9,
        0x9,
        0xa,
        0xa,
        0xa,
        0xb,
        0xb,
        0xb,
        0xb,
        0xb,
        0xb,
        0xb,
        0xc,
        0xc,
        0xc,
        0xc,
        0xc,
        0xc,
        0xc,
        0xd,
        0xd,
        0xd,
        0xd,
        0xe,
        0xe,
        0xe,
        0xf,
        0xf,
        0xf,
        0x10,
        0x10,
        0x10,
        0x11,
        0x11,
        0x11,
        0x12,
        0x12,
        0x12,
        0x12,
        0x13,
        0x13,
        0x13,
        0x14,
        0x14,
        0x14,
        0x15,
        0x15,
        0x15
    }
    l = {
        0x22c,
        0x22d,
        0x22e,
        0x231,
        0x244,
        0x246,
        0x246,
        0x248,
        0x249,
        0x24a,
        0x24b,
        0x253,
        0x25a,
        0x25e,
        0x263,
        0x26b,
        0x26c,
        0x26d,
        0x270,
        0x272,
        0x273,
        0x275
    }
    m = "downloadActivity"
    n = {
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "<unused var>",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "token",
        "refresh",
        "clientId",
        "clientSecret",
        "source",
        "cred",
        "record",
        "token",
        "refresh",
        "clientId",
        "clientSecret",
        "source",
        "cred",
        "record",
        "whooshId",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "email",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record",
        "source",
        "cred",
        "record"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
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
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/jichi/ob/AutoSyncWorker;


# direct methods
.method constructor <init>(Lcom/jichi/ob/AutoSyncWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/AutoSyncWorker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->this$0:Lcom/jichi/ob/AutoSyncWorker;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    iget-object p1, p0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->this$0:Lcom/jichi/ob/AutoSyncWorker;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v0, v0, v1}, Lcom/jichi/ob/AutoSyncWorker;->access$downloadActivity(Lcom/jichi/ob/AutoSyncWorker;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
