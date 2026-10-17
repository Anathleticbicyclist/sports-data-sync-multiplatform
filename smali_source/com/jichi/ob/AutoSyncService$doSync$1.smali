.class final Lcom/jichi/ob/AutoSyncService$doSync$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AutoSyncService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/AutoSyncService;->doSync(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
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
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7
    }
    l = {
        0x7f,
        0x80,
        0x81,
        0x82,
        0x83,
        0x8e,
        0x9b,
        0xa9
    }
    m = "doSync"
    n = {
        "source",
        "target",
        "sourceCred",
        "targetCred",
        "source",
        "target",
        "sourceCred",
        "targetCred",
        "source",
        "target",
        "sourceCred",
        "targetCred",
        "source",
        "target",
        "sourceCred",
        "targetCred",
        "source",
        "target",
        "sourceCred",
        "targetCred",
        "source",
        "target",
        "sourceCred",
        "targetCred",
        "activities",
        "lastMsg",
        "record",
        "syncKey",
        "synced",
        "source",
        "target",
        "sourceCred",
        "targetCred",
        "activities",
        "lastMsg",
        "record",
        "syncKey",
        "data",
        "csrf",
        "upExtra",
        "synced",
        "source",
        "target",
        "sourceCred",
        "targetCred",
        "activities",
        "lastMsg",
        "record",
        "syncKey",
        "data",
        "csrf",
        "upExtra",
        "result",
        "synced"
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
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
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
        "L$7",
        "L$8",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "L$12",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

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
            "Lcom/jichi/ob/AutoSyncService$doSync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncService$doSync$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncService$doSync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    iget-object p1, p0, Lcom/jichi/ob/AutoSyncService$doSync$1;->this$0:Lcom/jichi/ob/AutoSyncService;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v0, v1}, Lcom/jichi/ob/AutoSyncService;->access$doSync(Lcom/jichi/ob/AutoSyncService;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
