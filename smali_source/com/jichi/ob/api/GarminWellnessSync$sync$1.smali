.class final Lcom/jichi/ob/api/GarminWellnessSync$sync$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "GarminWellnessSync.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminWellnessSync;->sync(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.jichi.ob.api.GarminWellnessSync"
    f = "GarminWellnessSync.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
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
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
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
        0x2
    }
    l = {
        0x36,
        0x48,
        0x4d
    }
    m = "sync"
    n = {
        "garminApi",
        "source",
        "sourceCred",
        "target",
        "targetCred",
        "onLog",
        "fmt",
        "cal",
        "date",
        "days",
        "ok",
        "dup",
        "fail",
        "deviceInactive",
        "syncedDays",
        "d",
        "garminApi",
        "source",
        "sourceCred",
        "target",
        "targetCred",
        "onLog",
        "fmt",
        "cal",
        "date",
        "zip",
        "fits",
        "name",
        "data",
        "days",
        "ok",
        "dup",
        "fail",
        "deviceInactive",
        "syncedDays",
        "d",
        "dayOk",
        "dayDup",
        "dayFail",
        "garminApi",
        "source",
        "sourceCred",
        "target",
        "targetCred",
        "onLog",
        "fmt",
        "cal",
        "date",
        "zip",
        "fits",
        "name",
        "data",
        "fileName",
        "days",
        "ok",
        "dup",
        "fail",
        "deviceInactive",
        "syncedDays",
        "d",
        "dayOk",
        "dayDup",
        "dayFail"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "I$4",
        "I$5",
        "I$6",
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
        "L$10",
        "L$12",
        "L$13",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "I$4",
        "I$5",
        "I$6",
        "I$7",
        "I$8",
        "I$9",
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
        "L$10",
        "L$12",
        "L$13",
        "L$14",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "I$4",
        "I$5",
        "I$6",
        "I$7",
        "I$8",
        "I$9"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field I$5:I

.field I$6:I

.field I$7:I

.field I$8:I

.field I$9:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$14:Ljava/lang/Object;

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

.field final synthetic this$0:Lcom/jichi/ob/api/GarminWellnessSync;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminWellnessSync;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/GarminWellnessSync;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/GarminWellnessSync$sync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->this$0:Lcom/jichi/ob/api/GarminWellnessSync;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iput-object p1, p0, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->label:I

    iget-object v0, p0, Lcom/jichi/ob/api/GarminWellnessSync$sync$1;->this$0:Lcom/jichi/ob/api/GarminWellnessSync;

    const/4 v7, 0x0

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/jichi/ob/api/GarminWellnessSync;->sync(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
