.class final Lcom/jichi/ob/AutoSyncService$downloadActivity$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AutoSyncService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/AutoSyncService;->downloadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.AutoSyncService"
    f = "AutoSyncService.kt"
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
        0x5
    }
    l = {
        0xb6,
        0xb7,
        0xba,
        0xbe,
        0xbf,
        0xbf
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
        "<unused var>"
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
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/jichi/ob/AutoSyncService;


# direct methods
.method constructor <init>(Lcom/jichi/ob/AutoSyncService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/AutoSyncService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/AutoSyncService$downloadActivity$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    iget-object p1, p0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v0, v0, v1}, Lcom/jichi/ob/AutoSyncService;->access$downloadActivity(Lcom/jichi/ob/AutoSyncService;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
