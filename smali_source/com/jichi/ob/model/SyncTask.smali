.class public final Lcom/jichi/ob/model/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/model/SyncTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008&\n\u0002\u0018\u0002\n\u0002\u0008$\u0008\u0086\u0008\u0018\u0000 d2\u00020\u0001:\u0001dB\u0091\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0004\u0008 \u0010!J\u0006\u0010@\u001a\u00020AJ(\u0010B\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010D\u001a\u00020\t2\u0008\u0008\u0002\u0010E\u001a\u00020\u0003J\t\u0010F\u001a\u00020\u0003H\u00c6\u0003J\t\u0010G\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J\u000f\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J\t\u0010J\u001a\u00020\tH\u00c6\u0003J\t\u0010K\u001a\u00020\tH\u00c6\u0003J\t\u0010L\u001a\u00020\u000cH\u00c6\u0003J\t\u0010M\u001a\u00020\u000cH\u00c6\u0003J\t\u0010N\u001a\u00020\u000cH\u00c6\u0003J\t\u0010O\u001a\u00020\u000cH\u00c6\u0003J\t\u0010P\u001a\u00020\tH\u00c6\u0003J\t\u0010Q\u001a\u00020\u000cH\u00c6\u0003J\t\u0010R\u001a\u00020\tH\u00c6\u0003J\t\u0010S\u001a\u00020\u000cH\u00c6\u0003J\t\u0010T\u001a\u00020\u0003H\u00c6\u0003J\t\u0010U\u001a\u00020\tH\u00c6\u0003J\t\u0010V\u001a\u00020\tH\u00c6\u0003J\u000f\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J\t\u0010X\u001a\u00020\u000cH\u00c6\u0003J\t\u0010Y\u001a\u00020\u001aH\u00c6\u0003J\t\u0010Z\u001a\u00020\tH\u00c6\u0003J\t\u0010[\u001a\u00020\tH\u00c6\u0003J\t\u0010\\\u001a\u00020\tH\u00c6\u0003J\t\u0010]\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J\u009b\u0002\u0010_\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t2\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0001J\u0013\u0010`\u001a\u00020\u000c2\u0008\u0010a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010b\u001a\u00020\tH\u00d6\u0001J\t\u0010c\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010#R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010)R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010,R\u0011\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010,R\u0011\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010,R\u0011\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010)R\u0011\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010,R\u0011\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010)R\u0011\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010,R\u0011\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010#R\u0011\u0010\u0015\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010)R\u0011\u0010\u0016\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010)R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010&R\u0011\u0010\u0018\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010,R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R\u0011\u0010\u001b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010)R\u0011\u0010\u001c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010)R\u0011\u0010\u001d\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010)R\u0011\u0010\u001e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010#R\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010&\u00a8\u0006e"
    }
    d2 = {
        "Lcom/jichi/ob/model/SyncTask;",
        "",
        "id",
        "",
        "name",
        "sources",
        "",
        "targets",
        "count",
        "",
        "skip",
        "incremental",
        "",
        "force",
        "coordinateConvert",
        "autoSync",
        "autoIntervalSec",
        "wellness",
        "wellnessDays",
        "garminMasquerade",
        "garminCustomProduct",
        "workoutHistoryDays",
        "workoutFutureDays",
        "workoutTargets",
        "enabled",
        "lastRunTime",
        "",
        "lastRunOk",
        "lastRunSkip",
        "lastRunFail",
        "lastRunDetail",
        "recentRuns",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;)V",
        "getId",
        "()Ljava/lang/String;",
        "getName",
        "getSources",
        "()Ljava/util/List;",
        "getTargets",
        "getCount",
        "()I",
        "getSkip",
        "getIncremental",
        "()Z",
        "getForce",
        "getCoordinateConvert",
        "getAutoSync",
        "getAutoIntervalSec",
        "getWellness",
        "getWellnessDays",
        "getGarminMasquerade",
        "getGarminCustomProduct",
        "getWorkoutHistoryDays",
        "getWorkoutFutureDays",
        "getWorkoutTargets",
        "getEnabled",
        "getLastRunTime",
        "()J",
        "getLastRunOk",
        "getLastRunSkip",
        "getLastRunFail",
        "getLastRunDetail",
        "getRecentRuns",
        "toJson",
        "Lorg/json/JSONObject;",
        "copyRun",
        "ok",
        "fail",
        "detail",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/jichi/ob/model/SyncTask$Companion;


# instance fields
.field private final autoIntervalSec:I

.field private final autoSync:Z

.field private final coordinateConvert:Z

.field private final count:I

.field private final enabled:Z

.field private final force:Z

.field private final garminCustomProduct:Ljava/lang/String;

.field private final garminMasquerade:Z

.field private final id:Ljava/lang/String;

.field private final incremental:Z

.field private final lastRunDetail:Ljava/lang/String;

.field private final lastRunFail:I

.field private final lastRunOk:I

.field private final lastRunSkip:I

.field private final lastRunTime:J

.field private final name:Ljava/lang/String;

.field private final recentRuns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final skip:I

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wellness:Z

.field private final wellnessDays:I

.field private final workoutFutureDays:I

.field private final workoutHistoryDays:I

.field private final workoutTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/model/SyncTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/model/SyncTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/model/SyncTask;->Companion:Lcom/jichi/ob/model/SyncTask$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZZZZIZIZ",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZJIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p15

    move-object/from16 v1, p18

    move-object/from16 v2, p25

    move-object/from16 v3, p26

    const-string v4, "id"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "name"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "sources"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "targets"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "garminCustomProduct"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "workoutTargets"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "lastRunDetail"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "recentRuns"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    .line 15
    iput-object p4, p0, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    .line 16
    iput p5, p0, Lcom/jichi/ob/model/SyncTask;->count:I

    .line 17
    iput p6, p0, Lcom/jichi/ob/model/SyncTask;->skip:I

    .line 18
    iput-boolean p7, p0, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    .line 19
    iput-boolean p8, p0, Lcom/jichi/ob/model/SyncTask;->force:Z

    .line 20
    iput-boolean p9, p0, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    .line 21
    iput-boolean p10, p0, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    move/from16 p1, p11

    .line 22
    iput p1, p0, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    move/from16 p1, p12

    .line 23
    iput-boolean p1, p0, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    move/from16 p1, p13

    .line 24
    iput p1, p0, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    move/from16 p1, p14

    .line 25
    iput-boolean p1, p0, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    .line 26
    iput-object v0, p0, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    move/from16 p1, p16

    .line 27
    iput p1, p0, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    move/from16 p1, p17

    .line 28
    iput p1, p0, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    .line 29
    iput-object v1, p0, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    move/from16 p1, p19

    .line 30
    iput-boolean p1, p0, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    move-wide/from16 p1, p20

    .line 31
    iput-wide p1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    move/from16 p1, p22

    .line 32
    iput p1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    move/from16 p1, p23

    .line 33
    iput p1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    move/from16 p1, p24

    .line 34
    iput p1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    .line 35
    iput-object v2, p0, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    .line 36
    iput-object v3, p0, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 29

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v11, v3

    goto :goto_4

    :cond_4
    move/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move v12, v2

    goto :goto_5

    :cond_5
    move/from16 v12, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    const/16 v1, 0x384

    move v13, v1

    goto :goto_6

    :cond_6
    move/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move v14, v2

    goto :goto_7

    :cond_7
    move/from16 v14, p12

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    const/4 v4, 0x7

    if-eqz v1, :cond_8

    move v15, v4

    goto :goto_8

    :cond_8
    move/from16 v15, p13

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    move/from16 v16, v2

    goto :goto_9

    :cond_9
    move/from16 v16, p14

    :goto_9
    and-int/lit16 v1, v0, 0x4000

    .line 11
    const-string v5, ""

    if-eqz v1, :cond_a

    move-object/from16 v17, v5

    goto :goto_a

    :cond_a
    move-object/from16 v17, p15

    :goto_a
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move/from16 v18, v2

    goto :goto_b

    :cond_b
    move/from16 v18, p16

    :goto_b
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move/from16 v19, v4

    goto :goto_c

    :cond_c
    move/from16 v19, p17

    :goto_c
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_d

    :cond_d
    move-object/from16 v20, p18

    :goto_d
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v21, v3

    goto :goto_e

    :cond_e
    move/from16 v21, p19

    :goto_e
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    const-wide/16 v3, 0x0

    move-wide/from16 v22, v3

    goto :goto_f

    :cond_f
    move-wide/from16 v22, p20

    :goto_f
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v24, v2

    goto :goto_10

    :cond_10
    move/from16 v24, p22

    :goto_10
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move/from16 v25, v2

    goto :goto_11

    :cond_11
    move/from16 v25, p23

    :goto_11
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move/from16 v26, v2

    goto :goto_12

    :cond_12
    move/from16 v26, p24

    :goto_12
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-object/from16 v27, v5

    goto :goto_13

    :cond_13
    move-object/from16 v27, p25

    :goto_13
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v28, v0

    goto :goto_14

    :cond_14
    move-object/from16 v28, p26

    :goto_14
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 11
    invoke-direct/range {v2 .. v28}, Lcom/jichi/ob/model/SyncTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/model/SyncTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/jichi/ob/model/SyncTask;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p27

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/jichi/ob/model/SyncTask;->count:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/jichi/ob/model/SyncTask;->skip:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/jichi/ob/model/SyncTask;->force:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget v1, v0, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p27, v16

    move/from16 p2, v1

    if-eqz v16, :cond_10

    iget v1, v0, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    goto :goto_10

    :cond_10
    move/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p27, v16

    move/from16 p3, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p27, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    iget-boolean v1, v0, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p27, v16

    move/from16 p6, v1

    move-object/from16 p5, v2

    if-eqz v16, :cond_13

    iget-wide v1, v0, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    goto :goto_13

    :cond_13
    move-wide/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p27, v16

    move-wide/from16 p7, v1

    if-eqz v16, :cond_14

    iget v1, v0, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    goto :goto_14

    :cond_14
    move/from16 v1, p22

    :goto_14
    const/high16 v2, 0x200000

    and-int v2, p27, v2

    if-eqz v2, :cond_15

    iget v2, v0, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    goto :goto_15

    :cond_15
    move/from16 v2, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p27, v16

    move/from16 p9, v1

    if-eqz v16, :cond_16

    iget v1, v0, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    goto :goto_16

    :cond_16
    move/from16 v1, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p27, v16

    move/from16 p10, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p27, v16

    if-eqz v16, :cond_18

    move-object/from16 p11, v1

    iget-object v1, v0, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    move-object/from16 p26, p11

    move-object/from16 p27, v1

    goto :goto_18

    :cond_18
    move-object/from16 p27, p26

    move-object/from16 p26, v1

    :goto_18
    move/from16 p17, p2

    move/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p16, p5

    move/from16 p20, p6

    move-wide/from16 p21, p7

    move/from16 p23, p9

    move/from16 p25, p10

    move/from16 p24, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p27}, Lcom/jichi/ob/model/SyncTask;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;)Lcom/jichi/ob/model/SyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic copyRun$default(Lcom/jichi/ob/model/SyncTask;IIILjava/lang/String;ILjava/lang/Object;)Lcom/jichi/ob/model/SyncTask;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 66
    const-string p4, ""

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/model/SyncTask;->copyRun(IIILjava/lang/String;)Lcom/jichi/ob/model/SyncTask;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    return v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    return v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    return v0
.end method

.method public final component18()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    return-object v0
.end method

.method public final component19()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()J
    .locals 2

    iget-wide v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    return-wide v0
.end method

.method public final component21()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    return v0
.end method

.method public final component22()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    return v0
.end method

.method public final component23()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    return v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->count:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->skip:I

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->force:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;)Lcom/jichi/ob/model/SyncTask;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZZZZIZIZ",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZJIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jichi/ob/model/SyncTask;"
        }
    .end annotation

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sources"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targets"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "garminCustomProduct"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workoutTargets"

    move-object/from16 v6, p18

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastRunDetail"

    move-object/from16 v7, p25

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentRuns"

    move-object/from16 v8, p26

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/model/SyncTask;

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v20, p19

    move-wide/from16 v21, p20

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v19, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v27}, Lcom/jichi/ob/model/SyncTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public final copyRun(IIILjava/lang/String;)Lcom/jichi/ob/model/SyncTask;
    .locals 30

    move-object/from16 v0, p4

    const-string v1, "detail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 69
    const-string/jumbo v5, "time"

    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "ok"

    move/from16 v6, p1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "skip"

    move/from16 v7, p2

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "fail"

    move/from16 v8, p3

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "toString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v5, 0x5

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v27

    const v28, 0x7ffff

    const/16 v29, 0x0

    move-wide/from16 v21, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move/from16 v23, p1

    move/from16 v24, p2

    move/from16 v25, p3

    move-object/from16 v26, v0

    .line 72
    invoke-static/range {v1 .. v29}, Lcom/jichi/ob/model/SyncTask;->copy$default(Lcom/jichi/ob/model/SyncTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/jichi/ob/model/SyncTask;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/model/SyncTask;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/model/SyncTask;

    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->count:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->count:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->skip:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->skip:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    iget-boolean v3, p1, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->force:Z

    iget-boolean v3, p1, Lcom/jichi/ob/model/SyncTask;->force:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    iget-boolean v3, p1, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    iget-boolean v3, p1, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    iget-boolean v3, p1, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    iget-boolean v3, p1, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    iget-boolean v3, p1, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    iget-wide v5, p1, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    iget v3, p1, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    iget-object p1, p1, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getAutoIntervalSec()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    return v0
.end method

.method public final getAutoSync()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    return v0
.end method

.method public final getCoordinateConvert()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->count:I

    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    return v0
.end method

.method public final getForce()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->force:Z

    return v0
.end method

.method public final getGarminCustomProduct()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    return-object v0
.end method

.method public final getGarminMasquerade()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIncremental()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    return v0
.end method

.method public final getLastRunDetail()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastRunFail()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    return v0
.end method

.method public final getLastRunOk()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    return v0
.end method

.method public final getLastRunSkip()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    return v0
.end method

.method public final getLastRunTime()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecentRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    return-object v0
.end method

.method public final getSkip()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->skip:I

    return v0
.end method

.method public final getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    return-object v0
.end method

.method public final getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    return-object v0
.end method

.method public final getWellness()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    return v0
.end method

.method public final getWellnessDays()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    return v0
.end method

.method public final getWorkoutFutureDays()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    return v0
.end method

.method public final getWorkoutHistoryDays()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    return v0
.end method

.method public final getWorkoutTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->skip:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->force:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 4

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    const-string v1, "id"

    iget-object v2, p0, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v1, "name"

    iget-object v2, p0, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v2, "sources"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v2, "targets"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "count"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->count:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string/jumbo v1, "skip"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->skip:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string v1, "incremental"

    iget-boolean v2, p0, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    const-string v1, "force"

    iget-boolean v2, p0, Lcom/jichi/ob/model/SyncTask;->force:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 47
    const-string v1, "coordinateConvert"

    iget-boolean v2, p0, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 48
    const-string v1, "autoSync"

    iget-boolean v2, p0, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 49
    const-string v1, "autoIntervalSec"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v1, "wellness"

    iget-boolean v2, p0, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v1, "wellnessDays"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string v1, "garminMasquerade"

    iget-boolean v2, p0, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 53
    const-string v1, "garminCustomProduct"

    iget-object v2, p0, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v1, "workoutHistoryDays"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v1, "workoutFutureDays"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v2, "workoutTargets"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    const-string v1, "lastRunTime"

    iget-wide v2, p0, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string v1, "lastRunOk"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string v1, "lastRunSkip"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    const-string v1, "lastRunFail"

    iget v2, p0, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v1, "lastRunDetail"

    iget-object v2, p0, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "recentRuns"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jichi/ob/model/SyncTask;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/jichi/ob/model/SyncTask;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/jichi/ob/model/SyncTask;->sources:Ljava/util/List;

    iget-object v4, v0, Lcom/jichi/ob/model/SyncTask;->targets:Ljava/util/List;

    iget v5, v0, Lcom/jichi/ob/model/SyncTask;->count:I

    iget v6, v0, Lcom/jichi/ob/model/SyncTask;->skip:I

    iget-boolean v7, v0, Lcom/jichi/ob/model/SyncTask;->incremental:Z

    iget-boolean v8, v0, Lcom/jichi/ob/model/SyncTask;->force:Z

    iget-boolean v9, v0, Lcom/jichi/ob/model/SyncTask;->coordinateConvert:Z

    iget-boolean v10, v0, Lcom/jichi/ob/model/SyncTask;->autoSync:Z

    iget v11, v0, Lcom/jichi/ob/model/SyncTask;->autoIntervalSec:I

    iget-boolean v12, v0, Lcom/jichi/ob/model/SyncTask;->wellness:Z

    iget v13, v0, Lcom/jichi/ob/model/SyncTask;->wellnessDays:I

    iget-boolean v14, v0, Lcom/jichi/ob/model/SyncTask;->garminMasquerade:Z

    iget-object v15, v0, Lcom/jichi/ob/model/SyncTask;->garminCustomProduct:Ljava/lang/String;

    move-object/from16 v16, v15

    iget v15, v0, Lcom/jichi/ob/model/SyncTask;->workoutHistoryDays:I

    move/from16 v17, v15

    iget v15, v0, Lcom/jichi/ob/model/SyncTask;->workoutFutureDays:I

    move/from16 v18, v15

    iget-object v15, v0, Lcom/jichi/ob/model/SyncTask;->workoutTargets:Ljava/util/List;

    move-object/from16 v19, v15

    iget-boolean v15, v0, Lcom/jichi/ob/model/SyncTask;->enabled:Z

    move/from16 v20, v14

    move/from16 v21, v15

    iget-wide v14, v0, Lcom/jichi/ob/model/SyncTask;->lastRunTime:J

    move-wide/from16 v22, v14

    iget v14, v0, Lcom/jichi/ob/model/SyncTask;->lastRunOk:I

    iget v15, v0, Lcom/jichi/ob/model/SyncTask;->lastRunSkip:I

    move/from16 v24, v15

    iget v15, v0, Lcom/jichi/ob/model/SyncTask;->lastRunFail:I

    move/from16 v25, v15

    iget-object v15, v0, Lcom/jichi/ob/model/SyncTask;->lastRunDetail:Ljava/lang/String;

    move-object/from16 v26, v15

    iget-object v15, v0, Lcom/jichi/ob/model/SyncTask;->recentRuns:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v27, v15

    const-string v15, "SyncTask(id="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", incremental="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coordinateConvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoIntervalSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wellness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wellnessDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", garminMasquerade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", garminCustomProduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", workoutHistoryDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", workoutFutureDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", workoutTargets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRunTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRunOk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRunSkip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRunFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRunDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recentRuns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
