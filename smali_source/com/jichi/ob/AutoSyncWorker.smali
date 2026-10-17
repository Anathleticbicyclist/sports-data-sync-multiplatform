.class public final Lcom/jichi/ob/AutoSyncWorker;
.super Landroidx/work/CoroutineWorker;
.source "AutoSyncWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;,
        Lcom/jichi/ob/AutoSyncWorker$Companion;,
        Lcom/jichi/ob/AutoSyncWorker$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoSyncWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoSyncWorker.kt\ncom/jichi/ob/AutoSyncWorker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,818:1\n1617#2,9:819\n1869#2:828\n1870#2:830\n1626#2:831\n774#2:832\n865#2,2:833\n774#2:835\n865#2,2:836\n1617#2,9:838\n1869#2:847\n1870#2:849\n1626#2:850\n1617#2,9:851\n1869#2:860\n1870#2:862\n1626#2:863\n774#2:864\n865#2,2:865\n295#2,2:867\n295#2,2:869\n295#2,2:872\n295#2,2:874\n295#2,2:876\n295#2,2:878\n295#2,2:880\n1869#2,2:884\n1869#2,2:886\n1869#2,2:888\n1869#2,2:890\n774#2:892\n865#2,2:893\n774#2:895\n865#2,2:896\n1869#2,2:898\n1869#2,2:900\n1#3:829\n1#3:848\n1#3:861\n1#3:871\n216#4,2:882\n*S KotlinDebug\n*F\n+ 1 AutoSyncWorker.kt\ncom/jichi/ob/AutoSyncWorker\n*L\n90#1:819,9\n90#1:828\n90#1:830\n90#1:831\n90#1:832\n90#1:833,2\n118#1:835\n118#1:836,2\n134#1:838,9\n134#1:847\n134#1:849\n134#1:850\n135#1:851,9\n135#1:860\n135#1:862\n135#1:863\n136#1:864\n136#1:865,2\n144#1:867,2\n145#1:869,2\n188#1:872,2\n189#1:874,2\n215#1:876,2\n219#1:878,2\n220#1:880,2\n266#1:884,2\n290#1:886,2\n293#1:888,2\n298#1:890,2\n389#1:892\n389#1:893,2\n466#1:895\n466#1:896,2\n731#1:898,2\n735#1:900,2\n90#1:829\n134#1:848\n135#1:861\n260#1:882,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 a2\u00020\u0001:\u0002abB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010,\u001a\u00020-H\u0096@\u00a2\u0006\u0002\u0010.J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J,\u00103\u001a\u0008\u0012\u0004\u0012\u000205042\u0006\u00106\u001a\u0002022\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u000208H\u0082@\u00a2\u0006\u0002\u0010:J$\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>04H\u0082@\u00a2\u0006\u0002\u0010@J(\u0010A\u001a\u0004\u0018\u00010B2\u0006\u0010=\u001a\u00020>2\u0006\u0010C\u001a\u0002022\u0006\u0010D\u001a\u000205H\u0082@\u00a2\u0006\u0002\u0010EJ\n\u0010F\u001a\u0004\u0018\u000102H\u0002J@\u0010G\u001a\u0008\u0012\u0004\u0012\u000205042\u0006\u00106\u001a\u0002022\u0008\u0010H\u001a\u0004\u0018\u0001022\u0008\u0010I\u001a\u0004\u0018\u0001022\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u000208H\u0082@\u00a2\u0006\u0002\u0010JJ,\u0010K\u001a\u0008\u0012\u0004\u0012\u000205042\u0006\u0010C\u001a\u0002022\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u000208H\u0082@\u00a2\u0006\u0002\u0010:J\u0010\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020BH\u0002J(\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u0002022\u0006\u0010=\u001a\u00020>2\u0006\u0010R\u001a\u00020>2\u0006\u0010S\u001a\u000208H\u0002J(\u0010T\u001a\u00020U2\u0006\u0010Q\u001a\u0002022\u0006\u0010=\u001a\u00020>2\u0006\u0010R\u001a\u00020>2\u0006\u0010S\u001a\u000208H\u0002J(\u0010V\u001a\u0002002\u0006\u0010Q\u001a\u0002022\u0006\u0010=\u001a\u00020>2\u0006\u0010R\u001a\u00020>2\u0006\u0010S\u001a\u000208H\u0002J0\u0010W\u001a\u0002002\u0006\u0010=\u001a\u00020>2\u0006\u0010R\u001a\u00020>2\u0006\u0010S\u001a\u0002082\u0006\u0010X\u001a\u00020<2\u0006\u0010Y\u001a\u000202H\u0002J \u0010Z\u001a\u0002002\u0006\u0010[\u001a\u0002022\u0006\u0010=\u001a\u00020>2\u0006\u0010Y\u001a\u000202H\u0002J\u0008\u0010\\\u001a\u00020]H\u0002J\u0010\u0010^\u001a\u0002022\u0006\u0010_\u001a\u000202H\u0002J\u0008\u0010`\u001a\u000200H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006c"
    }
    d2 = {
        "Lcom/jichi/ob/AutoSyncWorker;",
        "Landroidx/work/CoroutineWorker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "prefs",
        "Lcom/jichi/ob/util/PrefsManager;",
        "igpsportApi",
        "Lcom/jichi/ob/api/IgpsportApi;",
        "xingzheApi",
        "Lcom/jichi/ob/api/XingzheApi;",
        "mageneApi",
        "Lcom/jichi/ob/api/MageneApi;",
        "blackbirdApi",
        "Lcom/jichi/ob/api/BlackbirdApi;",
        "brytonApi",
        "Lcom/jichi/ob/api/BrytonApi;",
        "garminApi",
        "Lcom/jichi/ob/api/GarminApi;",
        "corosApi",
        "Lcom/jichi/ob/api/CorosApi;",
        "wahooApi",
        "Lcom/jichi/ob/api/WahooApi;",
        "mywhooshApi",
        "Lcom/jichi/ob/api/MyWhooshApi;",
        "zwiftApi",
        "Lcom/jichi/ob/api/ZwiftApi;",
        "keepApi",
        "Lcom/jichi/ob/api/KeepApi;",
        "codoonApi",
        "Lcom/jichi/ob/api/CodoonApi;",
        "zeppApi",
        "Lcom/jichi/ob/api/ZeppApi;",
        "komootApi",
        "Lcom/jichi/ob/api/KomootApi;",
        "suuntoApi",
        "Lcom/jichi/ob/api/SuuntoApi;",
        "intervalsIcuApi",
        "Lcom/jichi/ob/api/IntervalsIcuApi;",
        "uploadEngine",
        "Lcom/jichi/ob/api/UploadEngine;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "plog",
        "",
        "msg",
        "",
        "getMageneActivitiesWithRefresh",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "token",
        "skip",
        "",
        "limit",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doSync",
        "Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;",
        "source",
        "Lcom/jichi/ob/model/DataSource;",
        "targets",
        "(Lcom/jichi/ob/model/DataSource;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadActivity",
        "",
        "cred",
        "record",
        "(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "suuntoSubscriptionKey",
        "getZwiftActivitiesWithRefresh",
        "playerId",
        "refresh",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getWahooActivitiesWithRefresh",
        "isFit",
        "",
        "bytes",
        "createForegroundInfo",
        "Landroidx/work/ForegroundInfo;",
        "message",
        "target",
        "intervalMin",
        "buildForegroundNotification",
        "Landroid/app/Notification;",
        "updateForeground",
        "postSummaryNotification",
        "result",
        "targetNames",
        "postFailureNotification",
        "error",
        "getLaunchPendingIntent",
        "Landroid/app/PendingIntent;",
        "formatDate",
        "raw",
        "createNotificationChannel",
        "Companion",
        "AutoSyncResult",
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
.field private static final CHANNEL_ID:Ljava/lang/String; = "jichi_ob_autosync"

.field public static final Companion:Lcom/jichi/ob/AutoSyncWorker$Companion;

.field private static final NOTIF_ID_FOREGROUND:I = 0x3ea

.field private static final NOTIF_ID_SUMMARY:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "AutoSyncWorker"

.field public static final WORK_TAG:Ljava/lang/String; = "jichi_ob_autosync_work"

.field private static volatile syncing:Z


# instance fields
.field private final blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

.field private final brytonApi:Lcom/jichi/ob/api/BrytonApi;

.field private final codoonApi:Lcom/jichi/ob/api/CodoonApi;

.field private final corosApi:Lcom/jichi/ob/api/CorosApi;

.field private final garminApi:Lcom/jichi/ob/api/GarminApi;

.field private final igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

.field private final intervalsIcuApi:Lcom/jichi/ob/api/IntervalsIcuApi;

.field private final keepApi:Lcom/jichi/ob/api/KeepApi;

.field private final komootApi:Lcom/jichi/ob/api/KomootApi;

.field private final mageneApi:Lcom/jichi/ob/api/MageneApi;

.field private final mywhooshApi:Lcom/jichi/ob/api/MyWhooshApi;

.field private final prefs:Lcom/jichi/ob/util/PrefsManager;

.field private final suuntoApi:Lcom/jichi/ob/api/SuuntoApi;

.field private final uploadEngine:Lcom/jichi/ob/api/UploadEngine;

.field private final wahooApi:Lcom/jichi/ob/api/WahooApi;

.field private final xingzheApi:Lcom/jichi/ob/api/XingzheApi;

.field private final zeppApi:Lcom/jichi/ob/api/ZeppApi;

.field private final zwiftApi:Lcom/jichi/ob/api/ZwiftApi;


# direct methods
.method public static synthetic $r8$lambda$1rq1G0Ow2hKz35h41qldYAOh0Pg(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$10(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FuZK1cEtw2-_WR3-2SRnLfxmLHs(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$15(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KVtF-XLcjc4LtX2wM8ahWIO4nnM(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$20(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OGmCz7rUjvrMQLhZPdpY3t-qXvM(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$12(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c_gXp_rc31_KQBr_hkq9zJ6cIVw(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$22(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$csec8ogBa-LRNQAtDUsLKX6w2Qg(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$11(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gRbAsjL4AnRT9xO7nnGQsYEjARo(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$21(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jRmcpCkgpoxDkyrs28c8UhDKCcM(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/AutoSyncWorker;->doSync$lambda$38(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lsBPsKyODLZBjQzkKfzUlLPCx0o(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$23(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$me1lhSswPDsv0XDxiiCuuW5aybY(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$24(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qOAXZG4BtWPuS2n03iJljXymXtc(Lcom/jichi/ob/model/SyncTask;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$35(Lcom/jichi/ob/model/SyncTask;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yqCl0AxlJ-3Bbh1kkmPKfjlL-tA(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/AutoSyncWorker;->doWork$lambda$2(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/AutoSyncWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/AutoSyncWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/AutoSyncWorker;->Companion:Lcom/jichi/ob/AutoSyncWorker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 59
    new-instance p1, Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getApplicationContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    .line 60
    new-instance p1, Lcom/jichi/ob/api/IgpsportApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/IgpsportApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

    .line 61
    new-instance p1, Lcom/jichi/ob/api/XingzheApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/XingzheApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->xingzheApi:Lcom/jichi/ob/api/XingzheApi;

    .line 62
    new-instance p1, Lcom/jichi/ob/api/MageneApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/MageneApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->mageneApi:Lcom/jichi/ob/api/MageneApi;

    .line 63
    new-instance p1, Lcom/jichi/ob/api/BlackbirdApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/BlackbirdApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

    .line 64
    new-instance p1, Lcom/jichi/ob/api/BrytonApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/BrytonApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    .line 65
    new-instance p1, Lcom/jichi/ob/api/GarminApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/GarminApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->garminApi:Lcom/jichi/ob/api/GarminApi;

    .line 66
    new-instance p1, Lcom/jichi/ob/api/CorosApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/CorosApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->corosApi:Lcom/jichi/ob/api/CorosApi;

    .line 67
    new-instance p1, Lcom/jichi/ob/api/WahooApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/WahooApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->wahooApi:Lcom/jichi/ob/api/WahooApi;

    .line 68
    new-instance p1, Lcom/jichi/ob/api/MyWhooshApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/MyWhooshApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->mywhooshApi:Lcom/jichi/ob/api/MyWhooshApi;

    .line 69
    new-instance p1, Lcom/jichi/ob/api/ZwiftApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/ZwiftApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->zwiftApi:Lcom/jichi/ob/api/ZwiftApi;

    .line 70
    new-instance p1, Lcom/jichi/ob/api/KeepApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/KeepApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->keepApi:Lcom/jichi/ob/api/KeepApi;

    .line 71
    new-instance p1, Lcom/jichi/ob/api/CodoonApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/CodoonApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->codoonApi:Lcom/jichi/ob/api/CodoonApi;

    .line 72
    new-instance p1, Lcom/jichi/ob/api/ZeppApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/ZeppApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->zeppApi:Lcom/jichi/ob/api/ZeppApi;

    .line 73
    new-instance p1, Lcom/jichi/ob/api/KomootApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/KomootApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->komootApi:Lcom/jichi/ob/api/KomootApi;

    .line 74
    new-instance p1, Lcom/jichi/ob/api/SuuntoApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/SuuntoApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->suuntoApi:Lcom/jichi/ob/api/SuuntoApi;

    .line 75
    new-instance p1, Lcom/jichi/ob/api/IntervalsIcuApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/IntervalsIcuApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->intervalsIcuApi:Lcom/jichi/ob/api/IntervalsIcuApi;

    .line 76
    new-instance p1, Lcom/jichi/ob/api/UploadEngine;

    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jichi/ob/api/UploadEngine;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->uploadEngine:Lcom/jichi/ob/api/UploadEngine;

    return-void
.end method

.method public static final synthetic access$doSync(Lcom/jichi/ob/AutoSyncWorker;Lcom/jichi/ob/model/DataSource;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/AutoSyncWorker;->doSync(Lcom/jichi/ob/model/DataSource;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadActivity(Lcom/jichi/ob/AutoSyncWorker;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/AutoSyncWorker;->downloadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMageneActivitiesWithRefresh(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/AutoSyncWorker;->getMageneActivitiesWithRefresh(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSyncing$cp()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/jichi/ob/AutoSyncWorker;->syncing:Z

    return v0
.end method

.method public static final synthetic access$getWahooActivitiesWithRefresh(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/AutoSyncWorker;->getWahooActivitiesWithRefresh(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getZwiftActivitiesWithRefresh(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/jichi/ob/AutoSyncWorker;->getZwiftActivitiesWithRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setSyncing$cp(Z)V
    .locals 0

    .line 36
    sput-boolean p0, Lcom/jichi/ob/AutoSyncWorker;->syncing:Z

    return-void
.end method

.method private final buildForegroundNotification(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)Landroid/app/Notification;
    .locals 5

    .line 691
    invoke-direct {p0}, Lcom/jichi/ob/AutoSyncWorker;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 692
    invoke-virtual {p2}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\u2192"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | \u95f4\u9694"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string/jumbo v1, "\u5206\u949f"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 693
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "jichi_ob_autosync"

    invoke-direct {v1, v2, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 694
    const-string/jumbo v2, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB \u81ea\u52a8\u540c\u6b65\u4e2d"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 695
    invoke-virtual {p2}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " | "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 696
    new-instance p2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    check-cast p2, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x108005f

    .line 697
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 698
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 699
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, -0x1

    .line 700
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 701
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createForegroundInfo(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)Landroidx/work/ForegroundInfo;
    .locals 1

    .line 682
    new-instance v0, Landroidx/work/ForegroundInfo;

    .line 684
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/AutoSyncWorker;->buildForegroundNotification(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)Landroid/app/Notification;

    move-result-object p1

    const/4 p2, 0x1

    const/16 p3, 0x3ea

    .line 682
    invoke-direct {v0, p3, p1, p2}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    return-object v0
.end method

.method private final createNotificationChannel()V
    .locals 5

    .line 808
    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 810
    const-string v1, "jichi_ob_autosync"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 811
    new-instance v2, Landroid/app/NotificationChannel;

    const-string/jumbo v3, "\u81ea\u52a8\u540c\u6b65"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 812
    const-string/jumbo v1, "\u540e\u53f0\u81ea\u52a8\u540c\u6b65\u8fd0\u52a8\u6570\u636e"

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private final doSync(Lcom/jichi/ob/model/DataSource;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/util/List<",
            "+",
            "Lcom/jichi/ob/model/DataSource;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string/jumbo v3, "yyyy-MM-dd"

    instance-of v4, v2, Lcom/jichi/ob/AutoSyncWorker$doSync$1;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/jichi/ob/AutoSyncWorker$doSync$1;

    iget v5, v4, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v2, v4, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    sub-int/2addr v2, v6

    iput v2, v4, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/jichi/ob/AutoSyncWorker$doSync$1;

    invoke-direct {v4, v1, v2}, Lcom/jichi/ob/AutoSyncWorker$doSync$1;-><init>(Lcom/jichi/ob/AutoSyncWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v4

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v13

    .line 383
    iget v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    const-string v14, "_to_"

    const-string v11, "_"

    const-string v8, " \u2192 "

    const-string v16, ""

    move-object/from16 p3, v11

    packed-switch v4, :pswitch_data_0

    move-object v2, v1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I

    iget v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I

    iget v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$21:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$20:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$19:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    check-cast v7, [B

    const/16 v20, 0x1

    iget-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    check-cast v15, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v11, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v25, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 p1, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 p2, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v27, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v29, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v31, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    :try_start_0
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v13

    move-object v13, v7

    move-object/from16 v7, v18

    move-object/from16 v33, p3

    move-object/from16 v41, v8

    move-object/from16 v18, v9

    move-object v8, v10

    move-object/from16 v19, v14

    move-object/from16 v36, v26

    move-object/from16 v25, v28

    const/16 v22, 0x0

    move-object/from16 v10, p1

    move-object/from16 v9, p2

    move/from16 v26, v3

    move v14, v4

    move v4, v6

    move-object v3, v12

    move-object/from16 v6, v29

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    goto/16 :goto_5d

    :catch_0
    move-exception v0

    move-object/from16 v33, p3

    move/from16 v18, v3

    move/from16 v40, v6

    move-object/from16 v41, v8

    move-object/from16 v39, v10

    move-object/from16 v35, v11

    move-object v10, v12

    move-object/from16 v34, v13

    move-object/from16 v19, v14

    move-object/from16 v11, v28

    move-object/from16 v15, v29

    move-object/from16 v9, v30

    move-object/from16 v29, v31

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v37, 0xc

    move-object/from16 v8, p1

    move-object v6, v2

    move-object v12, v5

    move-object/from16 v5, v26

    move-object/from16 v30, v27

    move-object v2, v1

    :goto_1
    move-object/from16 v1, p2

    goto/16 :goto_7b

    :pswitch_1
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I

    iget v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I

    iget v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$20:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$19:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;

    check-cast v9, Lcom/jichi/ob/model/DataSource;

    iget-object v11, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    check-cast v12, [B

    iget-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    move/from16 v26, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/ActivityRecord;

    move-object/from16 p1, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    move-object/from16 p2, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v27, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v28, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v29, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v31, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v32, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v33, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v34, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v35, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v36, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    :try_start_1
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v4

    move-object/from16 v4, p2

    move/from16 p2, v18

    move-object/from16 v18, v33

    move-object/from16 v33, p3

    move-object/from16 p3, v5

    move-object/from16 v5, v31

    move-object/from16 v31, v18

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    move-object/from16 v18, p1

    move-object/from16 v44, v0

    move/from16 p1, v3

    move-object/from16 v41, v6

    move-object/from16 v38, v8

    move-object v3, v10

    move-object v0, v11

    move-object v11, v12

    move-object/from16 v19, v14

    move-object/from16 v10, v29

    move-object/from16 v6, v34

    move-object/from16 v12, v35

    move-object/from16 v29, v36

    const/16 v22, 0x0

    move-object v8, v7

    move-object v14, v13

    move-object/from16 v7, v27

    move-object v13, v9

    move-object/from16 v27, v15

    move-object/from16 v15, v28

    move-object/from16 v9, v30

    move-object/from16 v30, v32

    goto/16 :goto_4e

    :catch_1
    move-exception v0

    move-object v6, v2

    move/from16 v18, v3

    move/from16 v40, v4

    move-object/from16 v41, v8

    move-object/from16 v39, v10

    move-object/from16 v19, v14

    move/from16 v4, v26

    move-object/from16 v10, v27

    move-object/from16 v12, v28

    move-object/from16 v8, v29

    move-object/from16 v5, v31

    move-object/from16 v11, v33

    move-object/from16 v15, v34

    move-object/from16 v9, v35

    move-object/from16 v29, v36

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v37, 0xc

    move-object/from16 v35, p2

    move-object/from16 v33, p3

    move-object v2, v1

    move-object/from16 v34, v13

    move-object/from16 v1, v30

    move-object/from16 v30, v32

    goto/16 :goto_7b

    :pswitch_2
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I

    iget v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I

    iget v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$21:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$20:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$19:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v11, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;

    check-cast v15, Ljava/util/Iterator;

    move/from16 v26, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 p1, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 p2, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v27, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v30, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v31, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v32, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v33, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v34, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    :try_start_2
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v38, v8

    move-object/from16 v18, v12

    move-object/from16 v19, v14

    move-object/from16 v12, v33

    const/16 v22, 0x0

    move-object/from16 v33, p3

    move-object v8, v6

    move-object v14, v13

    move-object/from16 v6, v32

    move-object/from16 v32, v2

    move-object v13, v9

    move-object v2, v1

    move-object v9, v7

    move-object/from16 v1, v25

    move/from16 v25, v26

    move-object v7, v5

    move-object/from16 v26, v11

    move-object v11, v15

    move-object/from16 v5, v29

    move-object/from16 v29, v34

    move-object/from16 v34, p1

    move-object/from16 v15, p2

    goto/16 :goto_44

    :pswitch_3
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I

    iget v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I

    iget v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v11, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;

    check-cast v15, Ljava/util/Iterator;

    move/from16 v26, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 p1, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 p2, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v27, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v30, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v31, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v32, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v33, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v34, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    :try_start_3
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v38, v8

    move-object/from16 v19, v11

    move-object/from16 v18, v15

    const/16 v22, 0x0

    move-object/from16 v15, p2

    move-object v8, v6

    move-object v11, v10

    move-object v6, v5

    move-object v10, v9

    move-object/from16 v5, v29

    move-object/from16 v29, v34

    move-object v9, v7

    move-object/from16 v34, v12

    move-object/from16 v12, v33

    move-object/from16 v33, p3

    move-object v7, v2

    move-object v2, v1

    move-object/from16 v1, v25

    move-object/from16 v25, p1

    goto/16 :goto_3d

    :catch_2
    move-exception v0

    move-object/from16 v12, p2

    move-object v6, v2

    move/from16 v18, v3

    move/from16 v40, v4

    move-object/from16 v41, v8

    move-object/from16 v39, v10

    move-object/from16 v19, v14

    move-object/from16 v35, v15

    move/from16 v4, v26

    move-object/from16 v8, v27

    move-object/from16 v5, v29

    move-object/from16 v11, v31

    move-object/from16 v15, v32

    move-object/from16 v9, v33

    move-object/from16 v29, v34

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v37, 0xc

    move-object/from16 v10, p1

    move-object/from16 v33, p3

    move-object v2, v1

    move-object/from16 v34, v13

    :goto_2
    move-object/from16 v1, v28

    goto/16 :goto_7b

    :pswitch_4
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I

    iget v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I

    iget v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;

    move-object v11, v6

    check-cast v11, Ljava/util/Iterator;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Ljava/util/List;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move/from16 v26, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 p1, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 p2, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v27, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v29, v2

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    :try_start_4
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v2

    move/from16 v40, v4

    move-object/from16 v38, v8

    move-object/from16 v39, v10

    move-object v10, v12

    const/16 v22, 0x0

    move-object v2, v1

    move v4, v3

    move-object v12, v6

    move-object v8, v7

    move-object v6, v13

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v5

    move-object/from16 v5, v25

    move-object/from16 v25, p2

    goto/16 :goto_3a

    :catch_3
    move-exception v0

    move-object/from16 v30, p1

    move-object/from16 v33, p3

    move/from16 v18, v3

    move/from16 v40, v4

    move-object/from16 v41, v8

    move-object/from16 v39, v10

    move-object/from16 v35, v11

    move-object v10, v12

    move-object/from16 v34, v13

    move-object/from16 v19, v14

    move-object v5, v15

    move/from16 v4, v26

    move-object/from16 v15, v27

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v37, 0xc

    move-object/from16 v11, p2

    move-object v12, v6

    move-object v8, v7

    move-object v6, v2

    move-object v2, v1

    move-object v1, v9

    move-object/from16 v9, v28

    goto/16 :goto_7b

    :pswitch_5
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_5
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v0, v5

    move-object/from16 v2, v25

    const/16 v5, 0x64

    goto/16 :goto_5

    :pswitch_6
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_6
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v0, v5

    move-object/from16 v2, v25

    const/16 v5, 0x64

    goto/16 :goto_6

    :pswitch_7
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_7
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    move-object/from16 v3, v25

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    goto/16 :goto_8

    :pswitch_8
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_8
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    move-object/from16 v3, v25

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    goto/16 :goto_9

    :pswitch_9
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_9
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    const/16 v3, 0xf

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    goto/16 :goto_c

    :pswitch_a
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_a
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    const/16 v3, 0xf

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    goto/16 :goto_e

    :pswitch_b
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_b
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    const/16 v3, 0xf

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    goto/16 :goto_f

    :pswitch_c
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_c
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v0, v5

    move-object/from16 v2, v25

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_11

    :pswitch_d
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_d
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    move-object/from16 v3, v25

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_14

    :pswitch_e
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_e
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v11, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    move-object/from16 v3, v25

    const/4 v7, 0x0

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_18

    :pswitch_f
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_f
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v17, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v22, 0x0

    const/16 v23, 0xf

    const/16 v24, 0x64

    move-object/from16 v3, p3

    move-object v5, v4

    const/16 v4, 0x14

    goto/16 :goto_1b

    :pswitch_10
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_10
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object/from16 v17, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v5

    move-object v2, v8

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v22, 0x0

    const/16 v23, 0xf

    const/16 v24, 0x64

    move-object/from16 v3, p3

    move-object v5, v4

    const/16 v4, 0x14

    goto/16 :goto_1c

    :pswitch_11
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_11
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object/from16 v7, p3

    move-object v6, v1

    move-object v15, v2

    move-object v1, v5

    move-object v5, v10

    move/from16 v9, v20

    move-object/from16 v2, v25

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_21

    :pswitch_12
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_12
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v7, p3

    move-object/from16 v17, v0

    move-object v6, v1

    move-object v15, v2

    move-object v0, v4

    move-object v1, v5

    move/from16 v9, v20

    move-object/from16 v2, v25

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_22

    :pswitch_13
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_13
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-object/from16 v7, p3

    move-object/from16 v17, v0

    move-object v6, v1

    move-object v15, v2

    move-object v0, v4

    move-object v1, v5

    move/from16 v9, v20

    move-object/from16 v2, v25

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_23

    :pswitch_14
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_14
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-object/from16 v7, p3

    move-object/from16 v17, v0

    move-object v6, v1

    move-object v15, v2

    move-object v0, v4

    move-object v1, v5

    move/from16 v9, v20

    move-object/from16 v2, v25

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_24

    :pswitch_15
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_15
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-object/from16 v7, p3

    move-object/from16 v17, v0

    move-object v6, v1

    move-object v15, v2

    move-object v0, v4

    move-object v1, v5

    move/from16 v9, v20

    move-object/from16 v2, v25

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_27

    :pswitch_16
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_16
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object/from16 v7, p3

    move-object/from16 v17, v0

    move-object v6, v1

    move-object v15, v2

    move-object v0, v4

    move-object v1, v5

    move/from16 v9, v20

    move-object/from16 v2, v25

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    goto/16 :goto_28

    :pswitch_17
    move-object/from16 v25, v2

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    :try_start_17
    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-object/from16 v17, v0

    move-object v15, v2

    move-object v6, v3

    move-object v0, v4

    move-object/from16 v38, v8

    const/16 v4, 0x14

    const/16 v22, 0x0

    move-object/from16 v3, p3

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_2c

    :catchall_0
    move-exception v0

    move-object v2, v1

    const/16 v22, 0x0

    goto/16 :goto_81

    :catch_4
    move-exception v0

    :goto_3
    move-object v2, v1

    const/16 v21, 0x0

    const/16 v22, 0x0

    goto/16 :goto_7f

    :pswitch_18
    move-object/from16 v25, v2

    const/16 v20, 0x1

    invoke-static/range {v25 .. v25}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 384
    iget-object v2, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v2, v0}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/jichi/ob/AutoSyncWorker;

    .line 385
    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u274c \u81ea\u52a8\u540c\u6b65: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u672a\u767b\u5f55"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 386
    new-instance v2, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    const/16 v11, 0xe0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string/jumbo v7, "\u65e0\u8bb0\u5f55"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 389
    :cond_1
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 892
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 893
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/jichi/ob/model/DataSource;

    .line 390
    iget-object v9, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v9, v7}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/jichi/ob/model/UploadSupport;->Companion:Lcom/jichi/ob/model/UploadSupport$Companion;

    invoke-virtual {v9, v7}, Lcom/jichi/ob/model/UploadSupport$Companion;->fromDataSource(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/model/UploadSupport;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jichi/ob/model/UploadSupport;->getAvailable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 391
    sget-object v9, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    if-eq v7, v9, :cond_2

    .line 893
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 894
    :cond_3
    move-object v15, v4

    check-cast v15, Ljava/util/List;

    .line 393
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 394
    const-string/jumbo v0, "\u23ed\ufe0f \u81ea\u52a8\u540c\u6b65: \u65e0\u53ef\u7528\u76ee\u6807\uff08\u672a\u767b\u5f55\u6216\u4e0a\u4f20\u4e0d\u53ef\u7528\uff09"

    invoke-direct {v1, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 395
    new-instance v2, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    const/16 v11, 0xe0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string/jumbo v7, "\u65e0\u8bb0\u5f55"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 397
    :cond_4
    move-object/from16 v25, v15

    check-cast v25, Ljava/lang/Iterable;

    const-string/jumbo v2, "\u3001"

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/CharSequence;

    new-instance v31, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda0;

    invoke-direct/range {v31 .. v31}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda0;-><init>()V

    const/16 v32, 0x1e

    const/16 v33, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v25 .. v33}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 399
    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u23f0 \u81ea\u52a8\u540c\u6b65\u5f00\u59cb: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 400
    sput-boolean v20, Lcom/jichi/ob/AutoSyncWorker;->syncing:Z

    .line 402
    :try_start_18
    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\ud83d\udce5 ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] \u83b7\u53d6\u6d3b\u52a8\u5217\u8868..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 404
    :try_start_19
    sget-object v2, Lcom/jichi/ob/AutoSyncWorker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v4

    aget v2, v2, v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const/4 v4, 0x6

    const/16 v5, 0x8

    packed-switch v2, :pswitch_data_1

    move-object/from16 v3, p3

    move-object v2, v1

    move-object/from16 v38, v8

    move-object/from16 v17, v11

    const/16 v4, 0x14

    const/16 v22, 0x0

    move-object v1, v0

    .line 440
    :try_start_1a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto/16 :goto_2f

    .line 435
    :pswitch_19
    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\ud83d\udcc2 \u6587\u4ef6\u5939URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 436
    new-instance v2, Lcom/jichi/ob/api/LocalFolderApi;

    invoke-virtual {v1}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getApplicationContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/jichi/ob/api/LocalFolderApi;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/16 v3, 0x13

    iput v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    const/16 v5, 0x64

    invoke-virtual {v2, v6, v5, v10}, Lcom/jichi/ob/api/LocalFolderApi;->getActivities(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_5

    goto/16 :goto_17

    :cond_5
    move-object/from16 v4, p2

    move-object v3, v6

    .line 383
    :goto_5
    check-cast v2, Ljava/util/List;

    .line 437
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\ud83d\udcc2 \u626b\u63cf\u7ed3\u679c: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u6761"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_1a
    const/16 v5, 0x64

    .line 427
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v9, -0x7

    .line 429
    invoke-virtual {v7, v4, v9}, Ljava/util/Calendar;->add(II)V

    .line 430
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 431
    iget-object v4, v1, Lcom/jichi/ob/AutoSyncWorker;->intervalsIcuApi:Lcom/jichi/ob/api/IntervalsIcuApi;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    const/16 v7, 0x12

    iput v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    invoke-virtual {v4, v6, v3, v2, v10}, Lcom/jichi/ob/api/IntervalsIcuApi;->getActivities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_6

    goto/16 :goto_17

    :cond_6
    move-object/from16 v4, p2

    move-object v3, v6

    :goto_6
    check-cast v2, Ljava/util/List;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_12

    :pswitch_1b
    const/16 v24, 0x64

    .line 424
    :try_start_1c
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->suuntoApi:Lcom/jichi/ob/api/SuuntoApi;

    invoke-direct {v1}, Lcom/jichi/ob/AutoSyncWorker;->suuntoSubscriptionKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move-object/from16 v7, v16

    goto :goto_7

    :cond_7
    move-object v7, v2

    :goto_7
    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/16 v2, 0x11

    iput v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-object v2, v8

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/16 v12, 0xc

    const/16 v19, 0x3c

    :try_start_1d
    invoke-virtual/range {v5 .. v10}, Lcom/jichi/ob/api/SuuntoApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_8

    goto/16 :goto_17

    :cond_8
    move-object/from16 v4, p2

    :goto_8
    check-cast v3, Ljava/util/List;

    goto/16 :goto_15

    :catch_5
    move-exception v0

    const/16 v19, 0x3c

    goto/16 :goto_3

    :pswitch_1c
    move-object v2, v8

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    .line 421
    iget-object v3, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v3}, Lcom/jichi/ob/util/PrefsManager;->getKomootAccount()Ljava/lang/String;

    move-result-object v3

    .line 422
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9

    goto :goto_a

    :cond_9
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->komootApi:Lcom/jichi/ob/api/KomootApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    const/16 v4, 0x10

    iput v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    const/4 v8, 0x0

    const/16 v9, 0x8

    move-object v7, v6

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lcom/jichi/ob/api/KomootApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v7

    if-ne v3, v13, :cond_a

    goto/16 :goto_17

    :cond_a
    move-object/from16 v4, p2

    :goto_9
    check-cast v3, Ljava/util/List;

    goto/16 :goto_15

    :cond_b
    :goto_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v38, v2

    move-object v7, v3

    goto/16 :goto_16

    :pswitch_1d
    move-object v2, v8

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    .line 419
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->zeppApi:Lcom/jichi/ob/api/ZeppApi;

    iget-object v3, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v3}, Lcom/jichi/ob/util/PrefsManager;->getZeppUserId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move-object/from16 v7, v16

    goto :goto_b

    :cond_c
    move-object v7, v3

    :goto_b
    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/16 v3, 0xf

    iput v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual/range {v5 .. v10}, Lcom/jichi/ob/api/ZeppApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_d

    goto/16 :goto_17

    :cond_d
    move-object/from16 v25, v4

    move-object/from16 v4, p2

    :goto_c
    move-object/from16 v5, v25

    check-cast v5, Ljava/util/List;

    goto/16 :goto_10

    :pswitch_1e
    move-object v2, v8

    const/16 v3, 0xf

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    .line 418
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->codoonApi:Lcom/jichi/ob/api/CodoonApi;

    iget-object v4, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getCodoonUserId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move-object/from16 v7, v16

    goto :goto_d

    :cond_e
    move-object v7, v4

    :goto_d
    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/16 v4, 0xe

    iput v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual/range {v5 .. v10}, Lcom/jichi/ob/api/CodoonApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_f

    goto/16 :goto_17

    :cond_f
    move-object/from16 v25, v4

    move-object/from16 v4, p2

    :goto_e
    move-object/from16 v5, v25

    check-cast v5, Ljava/util/List;

    goto :goto_10

    :pswitch_1f
    move-object v2, v8

    const/16 v3, 0xf

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    .line 417
    iget-object v4, v1, Lcom/jichi/ob/AutoSyncWorker;->keepApi:Lcom/jichi/ob/api/KeepApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/16 v7, 0xd

    iput v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v5, v10}, Lcom/jichi/ob/api/KeepApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_10

    goto/16 :goto_17

    :cond_10
    move-object/from16 v25, v4

    move-object/from16 v4, p2

    :goto_f
    move-object/from16 v5, v25

    check-cast v5, Ljava/util/List;

    :goto_10
    move-object/from16 v3, p3

    move-object/from16 v38, v2

    move-object v7, v5

    const/16 v22, 0x0

    move-object v2, v1

    move-object v5, v4

    const/16 v4, 0x14

    goto/16 :goto_30

    :pswitch_20
    move-object v2, v8

    const/16 v3, 0xf

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v24, 0x64

    .line 416
    iget-object v4, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getZwiftPlayerId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v5}, Lcom/jichi/ob/util/PrefsManager;->getZwiftRefreshToken()Ljava/lang/String;

    move-result-object v5

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    iput v12, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    move/from16 v23, v3

    move-object v3, v4

    move-object v4, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/16 v6, 0x8

    move-object v8, v2

    move-object v2, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/AutoSyncWorker;->getZwiftActivitiesWithRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v2

    if-ne v3, v13, :cond_11

    goto/16 :goto_17

    :cond_11
    move-object/from16 v4, p2

    move-object v2, v3

    move-object v3, v6

    :goto_11
    check-cast v2, Ljava/util/List;

    :goto_12
    move-object v7, v2

    move-object v6, v3

    move-object v5, v4

    move-object/from16 v38, v8

    goto :goto_16

    :pswitch_21
    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    .line 415
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->mywhooshApi:Lcom/jichi/ob/api/MyWhooshApi;

    iget-object v2, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v2}, Lcom/jichi/ob/util/PrefsManager;->getMywhooshWhooshId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    move-object/from16 v7, v16

    goto :goto_13

    :cond_12
    move-object v7, v2

    :goto_13
    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/16 v2, 0xb

    iput v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    move-object v2, v8

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual/range {v5 .. v10}, Lcom/jichi/ob/api/MyWhooshApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_13

    goto :goto_17

    :cond_13
    move-object/from16 v4, p2

    :goto_14
    check-cast v3, Ljava/util/List;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :goto_15
    move-object/from16 v38, v2

    move-object v7, v3

    move-object v5, v4

    :goto_16
    const/16 v4, 0x14

    const/16 v22, 0x0

    move-object/from16 v3, p3

    goto/16 :goto_1e

    :pswitch_22
    move-object v2, v8

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    .line 414
    :try_start_1e
    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/16 v3, 0xa

    iput v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_7
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    const/4 v7, 0x0

    :try_start_1f
    invoke-direct {v1, v6, v7, v5, v10}, Lcom/jichi/ob/AutoSyncWorker;->getWahooActivitiesWithRefresh(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_14

    :goto_17
    move-object v2, v1

    goto/16 :goto_26

    :cond_14
    move-object/from16 v4, p2

    :goto_18
    check-cast v3, Ljava/util/List;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    move-object/from16 v38, v2

    move-object v5, v4

    move/from16 v22, v7

    const/16 v4, 0x14

    move-object v2, v1

    move-object v7, v3

    move-object/from16 v3, p3

    goto/16 :goto_30

    :catchall_1
    move-exception v0

    :goto_19
    move-object v2, v1

    move/from16 v22, v7

    goto/16 :goto_81

    :catch_6
    move-exception v0

    :goto_1a
    move-object v2, v1

    move/from16 v22, v7

    goto/16 :goto_2e

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    goto :goto_19

    :catch_7
    move-exception v0

    const/4 v7, 0x0

    goto :goto_1a

    :pswitch_23
    move-object v2, v8

    const/4 v7, 0x0

    const/16 v12, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    .line 413
    :try_start_20
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->corosApi:Lcom/jichi/ob/api/CorosApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/16 v3, 0x9

    iput v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    move/from16 v22, v7

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v11

    const/16 v11, 0x8

    move/from16 v18, v12

    const/4 v12, 0x0

    move-object/from16 v17, v3

    const/16 v4, 0x14

    move-object/from16 v3, p3

    :try_start_21
    invoke-static/range {v5 .. v12}, Lcom/jichi/ob/api/CorosApi;->getActivities$default(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;IILcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v13, :cond_15

    goto :goto_17

    :cond_15
    move-object/from16 v25, v5

    move-object/from16 v5, p2

    :goto_1b
    move-object/from16 v7, v25

    check-cast v7, Ljava/util/List;

    goto :goto_1d

    :catchall_3
    move-exception v0

    move/from16 v22, v7

    goto :goto_1f

    :catch_8
    move-exception v0

    move/from16 v22, v7

    goto :goto_20

    :pswitch_24
    move-object/from16 v3, p3

    move-object v2, v8

    move-object/from16 v17, v11

    const/16 v4, 0x14

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v22, 0x0

    const/16 v23, 0xf

    const/16 v24, 0x64

    .line 412
    iget-object v7, v1, Lcom/jichi/ob/AutoSyncWorker;->corosApi:Lcom/jichi/ob/api/CorosApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    iput v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    move-object v5, v7

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/jichi/ob/api/CorosApi;->getActivities$default(Lcom/jichi/ob/api/CorosApi;Ljava/lang/String;IILcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v13, :cond_16

    goto/16 :goto_17

    :cond_16
    move-object/from16 v25, v5

    move-object/from16 v5, p2

    :goto_1c
    move-object/from16 v7, v25

    check-cast v7, Ljava/util/List;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    :goto_1d
    move-object/from16 v38, v2

    move-object/from16 v11, v17

    :goto_1e
    move-object v2, v1

    goto/16 :goto_30

    :catchall_4
    move-exception v0

    :goto_1f
    move-object v2, v1

    goto/16 :goto_81

    :catch_9
    move-exception v0

    :goto_20
    move-object v2, v1

    goto/16 :goto_2e

    :pswitch_25
    move-object/from16 v3, p3

    move-object v2, v8

    move-object/from16 v17, v11

    const/16 v4, 0x14

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v22, 0x0

    const/16 v23, 0xf

    const/16 v24, 0x64

    .line 411
    :try_start_22
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->garminApi:Lcom/jichi/ob/api/GarminApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_a
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    move-object v7, v3

    const/4 v3, 0x0

    move v8, v4

    const/16 v4, 0x8

    move-object v9, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v10

    move v10, v8

    move-object v8, v2

    move-object v2, v6

    move-object v6, v9

    move/from16 v9, v20

    move/from16 v11, v22

    :try_start_23
    invoke-virtual/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi;->getActivities(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_17

    goto/16 :goto_25

    :cond_17
    move-object/from16 v4, p2

    move-object v3, v2

    move-object v2, v0

    move-object/from16 v0, v17

    :goto_21
    check-cast v2, Ljava/util/List;

    move-object/from16 v20, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v5

    move-object v5, v4

    move v4, v10

    move-object/from16 v10, v20

    move-object/from16 v38, v8

    move/from16 v20, v9

    move/from16 v22, v11

    move-object v11, v0

    goto/16 :goto_2d

    :catchall_5
    move-exception v0

    move-object v6, v1

    move/from16 v11, v22

    move-object v2, v6

    goto/16 :goto_81

    :catch_a
    move-exception v0

    move-object v6, v1

    move/from16 v11, v22

    move-object v2, v6

    goto/16 :goto_2e

    :pswitch_26
    move-object/from16 v7, p3

    move-object v2, v6

    move-object v5, v10

    move-object/from16 v17, v11

    move/from16 v9, v20

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    move-object v6, v1

    move-object v1, v0

    .line 410
    iget-object v0, v6, Lcom/jichi/ob/AutoSyncWorker;->garminApi:Lcom/jichi/ob/api/GarminApi;

    iput-object v1, v5, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v5, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v5, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v5, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    iput v4, v5, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual/range {v0 .. v5}, Lcom/jichi/ob/api/GarminApi;->getActivities(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move v4, v10

    move-object v10, v5

    if-ne v0, v13, :cond_18

    goto/16 :goto_25

    :cond_18
    move-object v3, v2

    move-object v2, v0

    move-object/from16 v0, p2

    :goto_22
    check-cast v2, Ljava/util/List;

    goto/16 :goto_29

    :pswitch_27
    move-object/from16 v7, p3

    move-object v2, v6

    move-object/from16 v17, v11

    move/from16 v9, v20

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    move-object v6, v1

    move-object v1, v0

    .line 409
    iget-object v0, v6, Lcom/jichi/ob/AutoSyncWorker;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    iput-object v1, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    invoke-virtual {v0, v2, v11, v5, v10}, Lcom/jichi/ob/api/BrytonApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_19

    goto/16 :goto_25

    :cond_19
    move-object v3, v2

    move-object v2, v0

    move-object/from16 v0, p2

    :goto_23
    check-cast v2, Ljava/util/List;

    goto/16 :goto_29

    :pswitch_28
    move-object/from16 v7, p3

    move-object v2, v6

    move-object/from16 v17, v11

    move/from16 v9, v20

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    move-object v6, v1

    move-object v1, v0

    .line 408
    iget-object v0, v6, Lcom/jichi/ob/AutoSyncWorker;->blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

    iput-object v1, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    invoke-virtual {v0, v2, v11, v5, v10}, Lcom/jichi/ob/api/BlackbirdApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_1a

    goto :goto_25

    :cond_1a
    move-object v3, v2

    move-object v2, v0

    move-object/from16 v0, p2

    :goto_24
    check-cast v2, Ljava/util/List;

    goto/16 :goto_29

    :pswitch_29
    move-object/from16 v7, p3

    move-object v2, v6

    move-object/from16 v17, v11

    move/from16 v9, v20

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    move-object v6, v1

    move-object v1, v0

    .line 407
    iput-object v1, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    invoke-direct {v6, v2, v11, v5, v10}, Lcom/jichi/ob/AutoSyncWorker;->getMageneActivitiesWithRefresh(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_1b

    :goto_25
    move-object v2, v6

    :goto_26
    move-object v5, v13

    goto/16 :goto_5c

    :cond_1b
    move-object v3, v2

    move-object v2, v0

    move-object/from16 v0, p2

    :goto_27
    check-cast v2, Ljava/util/List;

    goto :goto_29

    :pswitch_2a
    move-object/from16 v7, p3

    move-object v2, v6

    move-object/from16 v17, v11

    move/from16 v9, v20

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    move-object v6, v1

    move-object v1, v0

    .line 406
    iget-object v0, v6, Lcom/jichi/ob/AutoSyncWorker;->xingzheApi:Lcom/jichi/ob/api/XingzheApi;

    iput-object v1, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    invoke-virtual {v0, v2, v11, v5, v10}, Lcom/jichi/ob/api/XingzheApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_1c

    goto :goto_25

    :cond_1c
    move-object v3, v2

    move-object v2, v0

    move-object/from16 v0, p2

    :goto_28
    check-cast v2, Ljava/util/List;

    :goto_29
    move-object v5, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v3

    move-object v3, v5

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v38, v8

    move/from16 v20, v9

    move/from16 v22, v11

    :goto_2a
    move-object/from16 v11, v17

    goto/16 :goto_30

    :catchall_6
    move-exception v0

    move-object v2, v6

    move/from16 v22, v11

    goto/16 :goto_81

    :catch_b
    move-exception v0

    move-object v2, v6

    move/from16 v22, v11

    goto :goto_2e

    :pswitch_2b
    move-object/from16 v7, p3

    move-object v2, v6

    move-object/from16 v17, v11

    move/from16 v9, v20

    const/16 v4, 0x14

    const/4 v11, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x3c

    const/16 v23, 0xf

    const/16 v24, 0x64

    move-object v6, v1

    move-object v1, v0

    .line 405
    iget-object v5, v6, Lcom/jichi/ob/AutoSyncWorker;->igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

    iput-object v1, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    iput v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    move-object v3, v7

    const/4 v7, 0x0

    move-object v12, v8

    const/16 v8, 0x8

    move/from16 v20, v9

    const/4 v9, 0x0

    move/from16 v22, v11

    const/16 v11, 0x8

    move-object/from16 v25, v12

    const/4 v12, 0x0

    move-object/from16 v38, v6

    move-object v6, v2

    move-object/from16 v2, v38

    move-object/from16 v38, v25

    :try_start_24
    invoke-static/range {v5 .. v12}, Lcom/jichi/ob/api/IgpsportApi;->getActivities$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_1d

    :goto_2b
    goto/16 :goto_26

    :cond_1d
    move-object/from16 v25, v0

    move-object/from16 v0, p2

    :goto_2c
    move-object/from16 v5, v25

    check-cast v5, Ljava/util/List;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    move-object v7, v5

    move-object/from16 v11, v17

    move-object v5, v0

    :goto_2d
    move-object v0, v1

    goto :goto_30

    :catch_c
    move-exception v0

    :goto_2e
    const/16 v21, 0x0

    goto/16 :goto_7f

    :goto_2f
    move-object/from16 v5, p2

    move-object v7, v0

    move-object v0, v1

    goto :goto_2a

    .line 446
    :goto_30
    :try_start_25
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\ud83d\udccb \u83b7\u53d6\u5230 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u6761\u6d3b\u52a8"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 449
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/model/ActivityRecord;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    :cond_1e
    const-string/jumbo v1, "\u65e0\u8bb0\u5f55"

    .line 455
    :cond_1f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    .line 456
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/List;

    .line 457
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/List;

    .line 460
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 p2, v5

    move-object/from16 p3, v7

    move-object/from16 v39, v10

    move-object v10, v12

    move-object/from16 p1, v17

    move/from16 v4, v22

    move v7, v4

    move/from16 v40, v7

    move-object v5, v1

    move-object v12, v9

    move-object/from16 v1, v16

    move-object v9, v6

    move-object v6, v0

    :goto_31
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 466
    :try_start_26
    move-object/from16 v18, v15

    check-cast v18, Ljava/lang/Iterable;

    .line 895
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_5e
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    move-object/from16 v25, v11

    :try_start_27
    move-object/from16 v11, v19

    check-cast v11, Ljava/util/Collection;

    .line 896
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_32
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_5d
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    if-eqz v19, :cond_21

    move-object/from16 v19, v13

    :try_start_28
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v26, v13

    check-cast v26, Lcom/jichi/ob/model/DataSource;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_12
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    move/from16 v28, v7

    .line 467
    :try_start_29
    iget-object v7, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_11
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    move/from16 v27, v4

    :try_start_2a
    invoke-virtual {v6}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_10
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    move-object/from16 v33, v10

    :try_start_2b
    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v10
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_f
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    move-object/from16 v32, v12

    :try_start_2c
    invoke-virtual/range {v26 .. v26}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v12
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    move-object/from16 v31, v8

    :try_start_2d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/jichi/ob/util/PrefsManager;->isSynced(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 896
    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    :cond_20
    move-object/from16 v13, v19

    move/from16 v4, v27

    move/from16 v7, v28

    move-object/from16 v8, v31

    move-object/from16 v12, v32

    move-object/from16 v10, v33

    goto :goto_32

    :catch_d
    move-exception v0

    move-object/from16 v35, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move-object/from16 v34, v19

    move-object/from16 v11, v25

    move/from16 v4, v27

    goto/16 :goto_37

    :catch_e
    move-exception v0

    move-object/from16 v31, v8

    move-object/from16 v35, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move-object/from16 v34, v19

    move-object/from16 v11, v25

    move/from16 v4, v27

    move/from16 v18, v28

    goto/16 :goto_38

    :catch_f
    move-exception v0

    move-object/from16 v31, v8

    move-object/from16 v32, v12

    move-object/from16 v35, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move-object/from16 v34, v19

    move-object/from16 v11, v25

    move/from16 v4, v27

    move/from16 v18, v28

    goto/16 :goto_39

    :catch_10
    move-exception v0

    move-object/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v32, v12

    move-object/from16 v35, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move-object/from16 v34, v19

    move-object/from16 v11, v25

    move/from16 v4, v27

    goto :goto_34

    :catch_11
    move-exception v0

    move/from16 v27, v4

    goto :goto_33

    :catch_12
    move-exception v0

    move/from16 v27, v4

    move/from16 v28, v7

    :goto_33
    move-object/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v32, v12

    move-object/from16 v35, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move-object/from16 v34, v19

    move-object/from16 v11, v25

    :goto_34
    move/from16 v18, v28

    :goto_35
    move-object/from16 v41, v38

    const/16 v21, 0x0

    const/16 v37, 0xc

    :goto_36
    move-object/from16 v33, v3

    move-object/from16 v19, v14

    const/16 v3, 0xa

    goto/16 :goto_46

    :cond_21
    move/from16 v27, v4

    move/from16 v28, v7

    move-object/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v32, v12

    move-object/from16 v19, v13

    .line 897
    :try_start_2e
    move-object v4, v11

    check-cast v4, Ljava/util/List;

    .line 469
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_5c
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    if-eqz v7, :cond_22

    add-int/lit8 v4, v27, 0x1

    .line 471
    :try_start_2f
    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x14

    invoke-static {v0, v8}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u23ed\ufe0f \u5df2\u540c\u6b65\u8df3\u8fc7: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_13
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    move-object/from16 v13, v19

    move-object/from16 v11, v25

    move/from16 v7, v28

    move-object/from16 v8, v31

    move-object/from16 v12, v32

    move-object/from16 v10, v33

    goto/16 :goto_31

    :catch_13
    move-exception v0

    move-object/from16 v35, p1

    move-object/from16 v29, p2

    move-object/from16 v30, p3

    move-object/from16 v34, v19

    move-object/from16 v11, v25

    :goto_37
    move/from16 v18, v28

    move-object/from16 v8, v31

    :goto_38
    move-object/from16 v12, v32

    :goto_39
    move-object/from16 v10, v33

    goto :goto_35

    :cond_22
    move-object/from16 v10, v39

    .line 474
    :try_start_30
    iput-object v6, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v9, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    iput-object v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    iput-object v1, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_5b
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    move-object/from16 v8, v31

    :try_start_31
    iput-object v8, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_5a
    .catchall {:try_start_31 .. :try_end_31} :catchall_7

    move-object/from16 v7, v32

    :try_start_32
    iput-object v7, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_59
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    move-object/from16 v12, v33

    :try_start_33
    iput-object v12, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_58
    .catchall {:try_start_33 .. :try_end_33} :catchall_7

    move-object/from16 v11, p1

    :try_start_34
    iput-object v11, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    iput-object v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_57
    .catchall {:try_start_34 .. :try_end_34} :catchall_7

    const/4 v13, 0x0

    :try_start_35
    iput-object v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    iput-object v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    iput-object v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;

    iput-object v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;

    iput-object v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    iput-object v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$19:Ljava/lang/Object;

    iput-object v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$20:Ljava/lang/Object;

    iput-object v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$21:Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_56
    .catchall {:try_start_35 .. :try_end_35} :catchall_7

    move/from16 v13, v40

    :try_start_36
    iput v13, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_55
    .catchall {:try_start_36 .. :try_end_36} :catchall_7

    move-object/from16 v29, v1

    move/from16 v1, v27

    :try_start_37
    iput v1, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_54
    .catchall {:try_start_37 .. :try_end_37} :catchall_7

    move-object/from16 p1, v4

    move/from16 v4, v28

    :try_start_38
    iput v4, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_53
    .catchall {:try_start_38 .. :try_end_38} :catchall_7

    move-object/from16 v30, v5

    const/16 v5, 0x14

    :try_start_39
    iput v5, v10, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    invoke-direct {v2, v6, v9, v0, v10}, Lcom/jichi/ob/AutoSyncWorker;->downloadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_52
    .catchall {:try_start_39 .. :try_end_39} :catchall_7

    move-object/from16 v18, v6

    move-object/from16 v6, v19

    if-ne v5, v6, :cond_23

    move-object v5, v6

    goto/16 :goto_5c

    :cond_23
    move/from16 v26, v1

    move-object/from16 v28, v9

    move-object/from16 v39, v10

    move-object v10, v12

    move/from16 v40, v13

    move-object/from16 v27, v15

    move-object/from16 v9, v29

    move-object/from16 v15, v30

    move-object/from16 v29, p2

    move-object/from16 v1, p3

    move-object v12, v7

    move-object v7, v0

    move-object/from16 v0, p1

    .line 383
    :goto_3a
    :try_start_3a
    check-cast v5, [B
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_51
    .catchall {:try_start_3a .. :try_end_3a} :catchall_7

    if-eqz v5, :cond_3c

    .line 475
    :try_start_3b
    array-length v13, v5

    move-object/from16 p1, v7

    const/16 v7, 0x64

    if-ge v13, v7, :cond_24

    goto/16 :goto_6d

    .line 481
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v13

    const/16 v7, 0x14

    invoke-static {v13, v7}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    array-length v7, v5
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_4e
    .catchall {:try_start_3b .. :try_end_3b} :catchall_7

    move-object/from16 p2, v1

    :try_start_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_4d
    .catchall {:try_start_3c .. :try_end_3c} :catchall_7

    move/from16 p3, v4

    :try_start_3d
    const-string/jumbo v4, "\u2b07\ufe0f \u4e0b\u8f7d: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\u5b57\u8282)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 482
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_4c
    .catchall {:try_start_3d .. :try_end_3d} :catchall_7

    move-object v13, v5

    move-object/from16 v19, v6

    move-object v5, v15

    move-object/from16 v7, v18

    move-object/from16 v6, v27

    move/from16 v4, v40

    move-object/from16 v18, v0

    move-object v0, v1

    move-object v15, v10

    move-object v1, v12

    move/from16 v27, v26

    move-object/from16 v12, v28

    move/from16 v26, p3

    move-object v10, v8

    move-object/from16 v8, v39

    :goto_3b
    :try_start_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_4b
    .catchall {:try_start_3e .. :try_end_3e} :catchall_7

    move/from16 v30, v4

    :try_start_3f
    move-object/from16 v4, v28

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v28, v13

    .line 483
    invoke-virtual {v7}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v13
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_4a
    .catchall {:try_start_3f .. :try_end_3f} :catchall_7

    move-object/from16 v31, v11

    :try_start_40
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v11
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_49
    .catchall {:try_start_40 .. :try_end_40} :catchall_7

    move-object/from16 v32, v15

    :try_start_41
    invoke-virtual {v4}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v15
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_48
    .catchall {:try_start_41 .. :try_end_41} :catchall_7

    move-object/from16 v33, v1

    :try_start_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    iget-object v11, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v11, v4}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_25

    move-object/from16 v13, v28

    move/from16 v4, v30

    move-object/from16 v11, v31

    move-object/from16 v15, v32

    move-object/from16 v1, v33

    goto :goto_3b

    .line 486
    :cond_25
    sget-object v13, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_47
    .catchall {:try_start_42 .. :try_end_42} :catchall_7

    if-eq v4, v13, :cond_27

    :try_start_43
    sget-object v13, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_14
    .catchall {:try_start_43 .. :try_end_43} :catchall_7

    if-ne v4, v13, :cond_26

    goto :goto_3c

    :cond_26
    move/from16 v13, v26

    move-object/from16 v26, v18

    move/from16 v18, v13

    move-object/from16 v40, v11

    move-object/from16 v34, v19

    move-object/from16 v13, v28

    move-object/from16 v15, v33

    move-object/from16 v28, v0

    move-object v0, v1

    move-object/from16 v33, v3

    move-object/from16 v19, v14

    move-object/from16 v1, v31

    move-object/from16 v3, v32

    move-object v14, v8

    move-object/from16 v31, v25

    move/from16 v25, v27

    move/from16 v27, v30

    move-object/from16 v30, p2

    move-object v8, v4

    move-object/from16 v4, p1

    goto/16 :goto_41

    :catch_14
    move-exception v0

    move-object v15, v6

    move-object v6, v7

    move-object/from16 v39, v8

    move-object v1, v9

    move-object v8, v10

    move-object v9, v12

    move-object/from16 v34, v19

    move-object/from16 v11, v25

    move/from16 v18, v26

    move/from16 v4, v27

    move/from16 v40, v30

    move-object/from16 v35, v31

    move-object/from16 v10, v32

    move-object/from16 v12, v33

    move-object/from16 v41, v38

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object/from16 v30, p2

    goto/16 :goto_36

    .line 487
    :cond_27
    :goto_3c
    :try_start_44
    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker;->garminApi:Lcom/jichi/ob/api/GarminApi;

    iput-object v7, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v12, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v6, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    iput-object v5, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    iput-object v9, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    iput-object v10, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_47
    .catchall {:try_start_44 .. :try_end_44} :catchall_7

    move-object/from16 v15, v33

    :try_start_45
    iput-object v15, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_46
    .catchall {:try_start_45 .. :try_end_45} :catchall_7

    move-object/from16 v33, v3

    move-object/from16 v3, v32

    :try_start_46
    iput-object v3, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_45
    .catchall {:try_start_46 .. :try_end_46} :catchall_7

    move-object/from16 v32, v3

    move-object/from16 v3, v31

    :try_start_47
    iput-object v3, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_44
    .catchall {:try_start_47 .. :try_end_47} :catchall_7

    move-object/from16 v31, v3

    move-object/from16 v3, p1

    :try_start_48
    iput-object v3, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    move-object/from16 v34, v3

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    move-object/from16 v3, v28

    iput-object v3, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    iput-object v0, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    iput-object v4, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;

    iput-object v1, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;

    iput-object v11, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    move-object/from16 p1, v1

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$19:Ljava/lang/Object;

    iput-object v1, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$20:Ljava/lang/Object;

    iput-object v1, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$21:Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_43
    .catchall {:try_start_48 .. :try_end_48} :catchall_7

    move/from16 v1, v30

    :try_start_49
    iput v1, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_42
    .catchall {:try_start_49 .. :try_end_49} :catchall_7

    move/from16 v30, v1

    move/from16 v1, v27

    :try_start_4a
    iput v1, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_41
    .catchall {:try_start_4a .. :try_end_4a} :catchall_7

    move/from16 v27, v1

    move/from16 v1, v26

    :try_start_4b
    iput v1, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_40
    .catchall {:try_start_4b .. :try_end_4b} :catchall_7

    move/from16 v26, v1

    const/16 v1, 0x15

    :try_start_4c
    iput v1, v8, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I

    invoke-virtual {v13, v4, v11, v8}, Lcom/jichi/ob/api/GarminApi;->ensureValidToken(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_43
    .catchall {:try_start_4c .. :try_end_4c} :catchall_7

    move-object/from16 v13, v19

    if-ne v1, v13, :cond_28

    goto/16 :goto_2b

    :cond_28
    move-object/from16 v19, v10

    move-object v10, v3

    move/from16 v3, v26

    move/from16 v26, v27

    move-object/from16 v27, v19

    move-object/from16 v28, v9

    move-object/from16 v19, v18

    move-object/from16 v18, v31

    move-object v9, v0

    move-object v0, v11

    move-object/from16 v31, v25

    move-object/from16 v25, v32

    move-object/from16 v32, v6

    move-object v11, v8

    move-object/from16 v6, p1

    move-object v8, v4

    move/from16 v4, v30

    move-object/from16 v30, p2

    .line 383
    :goto_3d
    :try_start_4d
    check-cast v1, Ljava/lang/String;

    .line 488
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v35
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_3f
    .catchall {:try_start_4d .. :try_end_4d} :catchall_7

    if-nez v35, :cond_2a

    .line 490
    :try_start_4e
    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_17
    .catchall {:try_start_4e .. :try_end_4e} :catchall_7

    if-ne v8, v0, :cond_29

    :try_start_4f
    iget-object v0, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0, v1}, Lcom/jichi/ob/util/PrefsManager;->saveGarminComToken(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_15
    .catchall {:try_start_4f .. :try_end_4f} :catchall_7

    goto :goto_3e

    :catch_15
    move-exception v0

    move/from16 v40, v4

    move-object v6, v7

    move-object/from16 v39, v11

    move-object v9, v12

    move-object/from16 v34, v13

    move-object/from16 v19, v14

    move-object v12, v15

    move-object/from16 v35, v18

    move-object/from16 v10, v25

    move/from16 v4, v26

    move-object/from16 v8, v27

    move-object/from16 v1, v28

    move-object/from16 v11, v31

    move-object/from16 v15, v32

    move-object/from16 v41, v38

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v37, 0xc

    move/from16 v18, v3

    goto/16 :goto_57

    .line 491
    :cond_29
    :try_start_50
    iget-object v0, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0, v1}, Lcom/jichi/ob/util/PrefsManager;->saveGarminCnToken(Ljava/lang/String;)V

    .line 492
    :goto_3e
    invoke-virtual {v8}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_17
    .catchall {:try_start_50 .. :try_end_50} :catchall_7

    move/from16 p2, v3

    :try_start_51
    const-string/jumbo v3, "\ud83d\udd04 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token\u5df2\u81ea\u52a8\u5237\u65b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_16
    .catchall {:try_start_51 .. :try_end_51} :catchall_7

    move-object/from16 v0, v27

    move/from16 v27, v4

    move-object/from16 v4, v34

    move-object/from16 v34, v13

    move-object v13, v10

    move-object v10, v0

    move-object/from16 v0, v28

    move-object/from16 v28, v9

    move-object v9, v0

    move-object/from16 v40, p1

    goto :goto_40

    :catch_16
    move-exception v0

    goto :goto_3f

    :catch_17
    move-exception v0

    move/from16 p2, v3

    :goto_3f
    move/from16 v40, v4

    move-object v6, v7

    move-object/from16 v39, v11

    move-object v9, v12

    move-object/from16 v34, v13

    move-object/from16 v19, v14

    move-object v12, v15

    move-object/from16 v35, v18

    move-object/from16 v10, v25

    move/from16 v4, v26

    move-object/from16 v8, v27

    move-object/from16 v1, v28

    move-object/from16 v11, v31

    move-object/from16 v15, v32

    move-object/from16 v41, v38

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v37, 0xc

    move/from16 v18, p2

    goto/16 :goto_7b

    :cond_2a
    move/from16 p2, v3

    move-object/from16 v1, v27

    move/from16 v27, v4

    move-object/from16 v4, v34

    move-object/from16 v34, v13

    move-object v13, v10

    move-object v10, v1

    move-object/from16 v1, v28

    move-object/from16 v28, v9

    move-object v9, v1

    move-object/from16 v40, v0

    :goto_40
    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v3, v25

    move/from16 v25, v26

    move-object/from16 v6, v32

    move/from16 v18, p2

    move-object/from16 v26, v19

    move-object/from16 v19, v14

    move-object v14, v11

    .line 495
    :goto_41
    :try_start_52
    sget-object v11, Lcom/jichi/ob/model/DataSource;->WAHOO:Lcom/jichi/ob/model/DataSource;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_3e
    .catchall {:try_start_52 .. :try_end_52} :catchall_7

    if-ne v8, v11, :cond_32

    .line 496
    :try_start_53
    iget-object v11, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v11}, Lcom/jichi/ob/util/PrefsManager;->getWahooRefresh()Ljava/lang/String;

    move-result-object v41

    .line 497
    sget-object v11, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v11}, Lcom/jichi/ob/api/WahooApi$Companion;->isBuiltinConfigured()Z

    move-result v11
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_20
    .catchall {:try_start_53 .. :try_end_53} :catchall_7

    if-eqz v11, :cond_2b

    :try_start_54
    sget-object v11, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v11}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_ID()Ljava/lang/String;

    move-result-object v11
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_18
    .catchall {:try_start_54 .. :try_end_54} :catchall_7

    goto :goto_42

    :catch_18
    move-exception v0

    move-object/from16 v35, v1

    move-object v1, v9

    move-object v8, v10

    move-object v9, v12

    move-object/from16 v39, v14

    move-object v12, v15

    move/from16 v4, v25

    move/from16 v40, v27

    move-object/from16 v11, v31

    move-object/from16 v41, v38

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object v10, v3

    move-object v15, v6

    move-object v6, v7

    goto/16 :goto_57

    :cond_2b
    :try_start_55
    iget-object v11, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v11}, Lcom/jichi/ob/util/PrefsManager;->getWahooClientId()Ljava/lang/String;

    move-result-object v11

    :goto_42
    move-object/from16 v42, v11

    .line 498
    sget-object v11, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v11}, Lcom/jichi/ob/api/WahooApi$Companion;->isBuiltinConfigured()Z

    move-result v11
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_20
    .catchall {:try_start_55 .. :try_end_55} :catchall_7

    if-eqz v11, :cond_2c

    :try_start_56
    sget-object v11, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v11}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_SECRET()Ljava/lang/String;

    move-result-object v11
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_18
    .catchall {:try_start_56 .. :try_end_56} :catchall_7

    goto :goto_43

    :cond_2c
    :try_start_57
    iget-object v11, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v11}, Lcom/jichi/ob/util/PrefsManager;->getWahooClientSecret()Ljava/lang/String;

    move-result-object v11

    :goto_43
    move-object/from16 v43, v11

    .line 499
    move-object/from16 v11, v41

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_32

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_2d

    goto/16 :goto_49

    :cond_2d
    move-object/from16 v11, v42

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_32

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_2e

    goto/16 :goto_49

    :cond_2e
    move-object/from16 v11, v43

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_32

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_2f

    goto/16 :goto_49

    .line 500
    :cond_2f
    iget-object v11, v2, Lcom/jichi/ob/AutoSyncWorker;->wahooApi:Lcom/jichi/ob/api/WahooApi;

    iput-object v7, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_20
    .catchall {:try_start_57 .. :try_end_57} :catchall_7

    move-object/from16 v32, v7

    :try_start_58
    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v12, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v6, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    iput-object v5, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    iput-object v9, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    iput-object v10, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;

    iput-object v15, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;

    iput-object v3, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;

    iput-object v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;

    iput-object v4, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    iput-object v13, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    move-object/from16 v7, v28

    iput-object v7, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    iput-object v8, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;

    iput-object v0, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_1f
    .catchall {:try_start_58 .. :try_end_58} :catchall_7

    move-object/from16 v28, v1

    move-object/from16 v1, v40

    :try_start_59
    iput-object v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    move-object/from16 v40, v1

    invoke-static/range {v41 .. v41}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$19:Ljava/lang/Object;

    invoke-static/range {v42 .. v42}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$20:Ljava/lang/Object;

    invoke-static/range {v43 .. v43}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$21:Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_1e
    .catchall {:try_start_59 .. :try_end_59} :catchall_7

    move/from16 v1, v27

    :try_start_5a
    iput v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_1d
    .catchall {:try_start_5a .. :try_end_5a} :catchall_7

    move/from16 v27, v1

    move/from16 v1, v25

    :try_start_5b
    iput v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_1c
    .catchall {:try_start_5b .. :try_end_5b} :catchall_7

    move/from16 v25, v1

    move/from16 v1, v18

    :try_start_5c
    iput v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_1b
    .catchall {:try_start_5c .. :try_end_5c} :catchall_7

    move/from16 v18, v1

    const/16 v1, 0x16

    :try_start_5d
    iput v1, v14, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_1e
    .catchall {:try_start_5d .. :try_end_5d} :catchall_7

    move-object/from16 v39, v11

    move-object/from16 v44, v14

    :try_start_5e
    invoke-virtual/range {v39 .. v44}, Lcom/jichi/ob/api/WahooApi;->ensureValidToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_1a
    .catchall {:try_start_5e .. :try_end_5e} :catchall_7

    move-object/from16 v14, v34

    if-ne v1, v14, :cond_30

    goto/16 :goto_4d

    :cond_30
    move-object/from16 v34, v3

    move/from16 v3, v18

    move-object/from16 v11, v28

    move-object/from16 v18, v4

    move-object/from16 v28, v9

    move/from16 v4, v27

    move-object v9, v7

    move-object/from16 v27, v10

    move-object/from16 v10, v44

    move-object v7, v0

    move-object/from16 v0, v40

    .line 383
    :goto_44
    :try_start_5f
    check-cast v1, Ljava/lang/String;

    .line 501
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_31

    .line 503
    iget-object v0, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0, v1}, Lcom/jichi/ob/util/PrefsManager;->saveWahooToken(Ljava/lang/String;)V

    .line 504
    const-string/jumbo v0, "\ud83d\udd04 Wahoo token\u5df2\u81ea\u52a8\u5237\u65b0"

    invoke-direct {v2, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_19
    .catchall {:try_start_5f .. :try_end_5f} :catchall_7

    move-object/from16 v0, v26

    move/from16 v26, v4

    move-object/from16 v4, v34

    move-object/from16 v34, v14

    move-object v14, v9

    move-object/from16 v9, v28

    move-object/from16 v28, v7

    move-object v7, v10

    move-object/from16 v10, v27

    move-object/from16 v27, v0

    move-object/from16 v41, v1

    goto :goto_45

    :cond_31
    move-object/from16 v1, v26

    move/from16 v26, v4

    move-object/from16 v4, v34

    move-object/from16 v34, v14

    move-object v14, v9

    move-object/from16 v9, v28

    move-object/from16 v28, v7

    move-object v7, v10

    move-object/from16 v10, v27

    move-object/from16 v27, v1

    move-object/from16 v41, v0

    :goto_45
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move/from16 v18, v3

    move-object v3, v13

    move-object v13, v11

    move-object v11, v8

    goto/16 :goto_4a

    :catch_19
    move-exception v0

    move/from16 v18, v3

    move/from16 v40, v4

    move-object/from16 v39, v10

    move-object/from16 v35, v11

    move-object v9, v12

    move-object v12, v15

    move/from16 v4, v25

    move-object/from16 v8, v27

    move-object/from16 v1, v28

    move-object/from16 v11, v31

    move-object/from16 v10, v34

    move-object/from16 v41, v38

    const/16 v3, 0xa

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object v15, v6

    move-object/from16 v34, v14

    move-object/from16 v6, v32

    :goto_46
    const/16 v14, 0x3c

    goto/16 :goto_7b

    :catch_1a
    move-exception v0

    goto :goto_48

    :catch_1b
    move-exception v0

    move/from16 v18, v1

    goto :goto_47

    :catch_1c
    move-exception v0

    move/from16 v25, v1

    goto :goto_47

    :catch_1d
    move-exception v0

    move/from16 v27, v1

    goto :goto_47

    :catch_1e
    move-exception v0

    goto :goto_47

    :catch_1f
    move-exception v0

    move-object/from16 v28, v1

    goto :goto_47

    :catch_20
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v32, v7

    :goto_47
    move-object/from16 v44, v14

    :goto_48
    move-object/from16 v14, v34

    move-object v1, v9

    move-object v8, v10

    move-object v9, v12

    move-object v12, v15

    move/from16 v4, v25

    move/from16 v40, v27

    move-object/from16 v35, v28

    move-object/from16 v11, v31

    move-object/from16 v41, v38

    move-object/from16 v39, v44

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object v10, v3

    move-object v15, v6

    move-object/from16 v6, v32

    goto/16 :goto_57

    :cond_32
    :goto_49
    move-object/from16 v32, v7

    move-object/from16 v44, v14

    move-object/from16 v7, v28

    move-object/from16 v14, v34

    move-object/from16 v28, v1

    move-object/from16 v1, v28

    move-object/from16 v28, v0

    move-object v0, v4

    move-object v4, v3

    move-object v3, v13

    move-object v13, v1

    move/from16 v1, v27

    move-object/from16 v27, v26

    move/from16 v26, v1

    move-object v11, v8

    move-object/from16 v34, v14

    move-object/from16 v1, v32

    move-object/from16 v41, v40

    move-object v14, v7

    move-object/from16 v7, v44

    .line 508
    :goto_4a
    :try_start_60
    sget-object v8, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_3d
    .catchall {:try_start_60 .. :try_end_60} :catchall_7

    if-ne v11, v8, :cond_33

    :try_start_61
    iget-object v8, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v8}, Lcom/jichi/ob/util/PrefsManager;->getXingzheCsrf()Ljava/lang/String;

    move-result-object v8
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_21
    .catchall {:try_start_61 .. :try_end_61} :catchall_7

    if-nez v8, :cond_34

    goto :goto_4b

    :catch_21
    move-exception v0

    move-object v3, v6

    move-object v6, v1

    move-object v1, v9

    move-object v9, v12

    move-object v12, v15

    move-object v15, v3

    move-object/from16 v39, v7

    move-object v8, v10

    move-object/from16 v35, v13

    move/from16 v40, v26

    move-object/from16 v11, v31

    move-object/from16 v41, v38

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object v10, v4

    move/from16 v4, v25

    goto/16 :goto_7b

    :cond_33
    :goto_4b
    move-object/from16 v8, v16

    .line 509
    :cond_34
    :try_start_62
    move-object/from16 v32, v8

    check-cast v32, Ljava/lang/CharSequence;

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_3d
    .catchall {:try_start_62 .. :try_end_62} :catchall_7

    if-lez v32, :cond_35

    move-object/from16 v40, v11

    :try_start_63
    const-string v11, "csrf"

    invoke-static {v11, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_21
    .catchall {:try_start_63 .. :try_end_63} :catchall_7

    goto :goto_4c

    :cond_35
    move-object/from16 v40, v11

    :try_start_64
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v11

    :goto_4c
    move-object/from16 v44, v11

    .line 510
    invoke-virtual/range {v40 .. v40}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 p1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v14

    const-string/jumbo v14, "\ud83d\udce4 \u4e0a\u4f20\u5230 "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "..."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 511
    iget-object v8, v2, Lcom/jichi/ob/AutoSyncWorker;->uploadEngine:Lcom/jichi/ob/api/UploadEngine;

    iput-object v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v12, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v6, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;

    iput-object v5, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    iput-object v9, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    iput-object v10, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;

    iput-object v15, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;

    iput-object v4, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;

    iput-object v13, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;

    iput-object v0, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    invoke-static/range {v27 .. v27}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    iput-object v3, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    move-object/from16 v11, v32

    iput-object v11, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    move-object/from16 v14, v40

    iput-object v14, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_3d
    .catchall {:try_start_64 .. :try_end_64} :catchall_7

    move-object/from16 v32, v1

    move-object/from16 v1, v28

    :try_start_65
    iput-object v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;

    move-object/from16 v28, v1

    invoke-static/range {v41 .. v41}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$19:Ljava/lang/Object;

    invoke-static/range {v44 .. v44}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$20:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$21:Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_3c
    .catchall {:try_start_65 .. :try_end_65} :catchall_7

    move/from16 v1, v26

    :try_start_66
    iput v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_3b
    .catchall {:try_start_66 .. :try_end_66} :catchall_7

    move/from16 v26, v1

    move/from16 v1, v25

    :try_start_67
    iput v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_3a
    .catchall {:try_start_67 .. :try_end_67} :catchall_7

    move/from16 v25, v1

    move/from16 v1, v18

    :try_start_68
    iput v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_39
    .catchall {:try_start_68 .. :try_end_68} :catchall_7

    move/from16 v18, v1

    const/16 v1, 0x17

    :try_start_69
    iput v1, v7, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_3c
    .catchall {:try_start_69 .. :try_end_69} :catchall_7

    move-object/from16 v43, v0

    move-object/from16 v42, v3

    move-object/from16 v45, v7

    move-object/from16 v39, v8

    move-object/from16 v40, v14

    :try_start_6a
    invoke-virtual/range {v39 .. v45}, Lcom/jichi/ob/api/UploadEngine;->upload(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_38
    .catchall {:try_start_6a .. :try_end_6a} :catchall_7

    move-object/from16 v14, v34

    if-ne v0, v14, :cond_36

    :goto_4d
    move-object v5, v14

    goto/16 :goto_5c

    :cond_36
    move-object/from16 p3, p1

    move-object v7, v4

    move-object v4, v13

    move/from16 p1, v18

    move/from16 p2, v26

    move-object/from16 v8, v28

    move-object/from16 v1, v32

    move-object/from16 v13, v40

    move-object/from16 v18, v43

    move-object/from16 v3, v45

    move/from16 v26, v25

    move-object/from16 v25, v0

    move-object v0, v11

    move-object/from16 v11, v42

    .line 383
    :goto_4e
    :try_start_6b
    check-cast v25, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    .line 512
    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getSuccess()Z

    move-result v28
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_37
    .catchall {:try_start_6b .. :try_end_6b} :catchall_7

    move-object/from16 v32, v9

    const-string v9, " - "

    move-object/from16 v34, v14

    const-string v14, " "

    if-eqz v28, :cond_37

    move-object/from16 v28, v11

    .line 513
    :try_start_6c
    iget-object v11, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v11, v8}, Lcom/jichi/ob/util/PrefsManager;->addSyncedId(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_2b
    .catchall {:try_start_6c .. :try_end_6c} :catchall_7

    add-int/lit8 v11, p2, 0x1

    move-object/from16 v35, v4

    .line 515
    :try_start_6d
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v4
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_2a
    .catchall {:try_start_6d .. :try_end_6d} :catchall_7

    move-object/from16 v36, v5

    const/16 v5, 0xf

    :try_start_6e
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_29
    .catchall {:try_start_6e .. :try_end_6e} :catchall_7

    .line 516
    :try_start_6f
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/jichi/ob/AutoSyncWorker;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_28
    .catchall {:try_start_6f .. :try_end_6f} :catchall_7

    move-object/from16 p2, v4

    :try_start_70
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v4
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_27
    .catchall {:try_start_70 .. :try_end_70} :catchall_7

    move-object/from16 v39, v6

    const/16 v6, 0x14

    :try_start_71
    invoke-static {v4, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v6
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_26
    .catchall {:try_start_71 .. :try_end_71} :catchall_7

    move-object/from16 v40, v12

    :try_start_72
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_25
    .catchall {:try_start_72 .. :try_end_72} :catchall_7

    move-object/from16 v5, v38

    :try_start_73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x14

    invoke-static {v6, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u2705 \u4e0a\u4f20\u6210\u529f: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v4
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_24
    .catchall {:try_start_73 .. :try_end_73} :catchall_7

    const/16 v6, 0xc

    :try_start_74
    invoke-static {v4, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u5df2\u4e0a\u4f20"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "\u6761: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 520
    iget-object v9, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v9}, Lcom/jichi/ob/util/PrefsManager;->getAutoInterval()I

    move-result v9

    const/16 v12, 0x384

    invoke-static {v9, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v9
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_23
    .catchall {:try_start_74 .. :try_end_74} :catchall_7

    const/16 v12, 0x3c

    :try_start_75
    div-int/2addr v9, v12

    .line 518
    invoke-direct {v2, v4, v1, v13, v9}, Lcom/jichi/ob/AutoSyncWorker;->updateForeground(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_22
    .catchall {:try_start_75 .. :try_end_75} :catchall_7

    move/from16 v6, p1

    move-object/from16 v4, p2

    move/from16 v9, v26

    goto/16 :goto_5b

    :catch_22
    move-exception v0

    goto :goto_54

    :catch_23
    move-exception v0

    goto :goto_53

    :catch_24
    move-exception v0

    goto :goto_52

    :catch_25
    move-exception v0

    goto :goto_51

    :catch_26
    move-exception v0

    goto :goto_50

    :catch_27
    move-exception v0

    goto :goto_4f

    :catch_28
    move-exception v0

    move-object/from16 p2, v4

    :goto_4f
    move-object/from16 v39, v6

    :goto_50
    move-object/from16 v40, v12

    :goto_51
    move-object/from16 v5, v38

    :goto_52
    const/16 v6, 0xc

    :goto_53
    const/16 v12, 0x3c

    :goto_54
    move/from16 v18, p1

    move-object/from16 v41, v5

    move/from16 v37, v6

    move-object v8, v10

    move v14, v12

    move-object v12, v15

    move/from16 v4, v26

    move-object/from16 v5, v36

    move-object/from16 v15, v39

    move-object/from16 v9, v40

    const/16 v21, 0x0

    move-object v6, v1

    move-object/from16 v39, v3

    move-object v10, v7

    move/from16 v40, v11

    move-object/from16 v11, v31

    const/16 v3, 0xa

    goto/16 :goto_1

    :catch_29
    move-exception v0

    goto :goto_55

    :catch_2a
    move-exception v0

    move-object/from16 v36, v5

    :goto_55
    move-object/from16 v39, v6

    move-object/from16 v40, v12

    move-object/from16 v5, v38

    const/16 v6, 0xc

    const/16 v12, 0x3c

    move/from16 v18, p1

    move-object/from16 v41, v5

    move/from16 v37, v6

    move-object v8, v10

    move v14, v12

    move-object v12, v15

    move/from16 v4, v26

    move-object/from16 v5, v36

    move-object/from16 v15, v39

    move-object/from16 v9, v40

    const/16 v21, 0x0

    move-object v6, v1

    move-object/from16 v39, v3

    move-object v10, v7

    move/from16 v40, v11

    move-object/from16 v11, v31

    goto :goto_56

    :catch_2b
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v39, v6

    move-object/from16 v40, v12

    move-object/from16 v5, v38

    const/16 v6, 0xc

    const/16 v12, 0x3c

    move/from16 v18, p1

    move-object/from16 v41, v5

    move/from16 v37, v6

    move-object v8, v10

    move v14, v12

    move-object v12, v15

    move/from16 v4, v26

    move-object/from16 v11, v31

    move-object/from16 v5, v36

    move-object/from16 v15, v39

    move-object/from16 v9, v40

    const/16 v21, 0x0

    move/from16 v40, p2

    move-object v6, v1

    move-object/from16 v39, v3

    move-object v10, v7

    :goto_56
    move-object/from16 v1, v32

    :goto_57
    const/16 v3, 0xa

    goto/16 :goto_7b

    :cond_37
    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v39, v6

    move-object/from16 v28, v11

    move-object/from16 v40, v12

    move-object/from16 v5, v38

    const/16 v6, 0xc

    const/16 v12, 0x3c

    .line 522
    :try_start_76
    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getSkipped()Z

    move-result v4
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_36
    .catchall {:try_start_76 .. :try_end_76} :catchall_7

    if-eqz v4, :cond_38

    add-int/lit8 v26, v26, 0x1

    .line 524
    :try_start_77
    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v4, v8}, Lcom/jichi/ob/util/PrefsManager;->addSyncedId(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/jichi/ob/AutoSyncWorker;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x14

    invoke-static {v9, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u23ed\ufe0f \u5df2\u5b58\u5728\u8df3\u8fc7: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_2c
    .catchall {:try_start_77 .. :try_end_77} :catchall_7

    :goto_58
    move/from16 v6, p1

    move/from16 v11, p2

    :goto_59
    move/from16 v9, v26

    move-object/from16 v4, v32

    goto/16 :goto_5b

    :catch_2c
    move-exception v0

    move/from16 v18, p1

    move-object v6, v1

    move-object/from16 v41, v5

    move-object v8, v10

    move v14, v12

    move-object v12, v15

    move/from16 v4, v26

    move-object/from16 v11, v31

    move-object/from16 v1, v32

    move-object/from16 v5, v36

    move-object/from16 v15, v39

    move-object/from16 v9, v40

    :goto_5a
    const/16 v21, 0x0

    const/16 v37, 0xc

    move/from16 v40, p2

    move-object/from16 v39, v3

    move-object v10, v7

    goto/16 :goto_57

    .line 527
    :cond_38
    :try_start_78
    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getPending()Z

    move-result v4
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_36
    .catchall {:try_start_78 .. :try_end_78} :catchall_7

    if-eqz v4, :cond_39

    add-int/lit8 v26, v26, 0x1

    .line 531
    :try_start_79
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/jichi/ob/AutoSyncWorker;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x14

    invoke-static {v6, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\uff08\u5df2\u4e0a\u4f20\u5f85\u786e\u8ba4\uff09"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x3c

    invoke-static {v6, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\ud83d\udd50 \u5df2\u4e0a\u4f20\u5f85\u786e\u8ba4: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_2d
    .catchall {:try_start_79 .. :try_end_79} :catchall_7

    goto/16 :goto_58

    :catch_2d
    move-exception v0

    move/from16 v18, p1

    move-object v6, v1

    move-object/from16 v41, v5

    move-object v8, v10

    move-object v12, v15

    move/from16 v4, v26

    move-object/from16 v11, v31

    move-object/from16 v1, v32

    move-object/from16 v5, v36

    move-object/from16 v15, v39

    move-object/from16 v9, v40

    const/16 v14, 0x3c

    goto/16 :goto_5a

    :cond_39
    add-int/lit8 v4, p1, 0x1

    .line 535
    :try_start_7a
    invoke-virtual/range {v18 .. v18}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0xc

    invoke-static {v6, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getMessage()Ljava/lang/String;

    move-result-object v14

    const/16 v12, 0x14

    invoke-static {v14, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "\u2192"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3c

    invoke-static {v11, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u274c \u4e0a\u4f20\u5931\u8d25: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_35
    .catchall {:try_start_7a .. :try_end_7a} :catchall_7

    move/from16 v11, p2

    move v6, v4

    goto/16 :goto_59

    .line 538
    :goto_5b
    :try_start_7b
    iput-object v1, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$0:Ljava/lang/Object;

    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$1:Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_34
    .catchall {:try_start_7b .. :try_end_7b} :catchall_7

    move-object/from16 v12, v40

    :try_start_7c
    iput-object v12, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$2:Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_33
    .catchall {:try_start_7c .. :try_end_7c} :catchall_7

    move-object/from16 v14, v39

    :try_start_7d
    iput-object v14, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$3:Ljava/lang/Object;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_32
    .catchall {:try_start_7d .. :try_end_7d} :catchall_7

    move-object/from16 v38, v1

    :try_start_7e
    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$4:Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$5:Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_31
    .catchall {:try_start_7e .. :try_end_7e} :catchall_7

    move-object/from16 v1, v36

    :try_start_7f
    iput-object v1, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$6:Ljava/lang/Object;

    iput-object v4, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$7:Ljava/lang/Object;

    iput-object v10, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$8:Ljava/lang/Object;

    iput-object v15, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$9:Ljava/lang/Object;

    iput-object v7, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$10:Ljava/lang/Object;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_30
    .catchall {:try_start_7f .. :try_end_7f} :catchall_7

    move-object/from16 v36, v1

    move-object/from16 v1, v35

    :try_start_80
    iput-object v1, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$11:Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_2f
    .catchall {:try_start_80 .. :try_end_80} :catchall_7

    move-object/from16 v35, v1

    move-object/from16 v1, v18

    :try_start_81
    iput-object v1, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$12:Ljava/lang/Object;

    move-object/from16 v18, v1

    invoke-static/range {v27 .. v27}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$13:Ljava/lang/Object;

    move-object/from16 v1, v28

    iput-object v1, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$14:Ljava/lang/Object;

    iput-object v0, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$15:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$16:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$17:Ljava/lang/Object;

    invoke-static/range {v41 .. v41}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$18:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$19:Ljava/lang/Object;

    invoke-static/range {v44 .. v44}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$20:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->L$21:Ljava/lang/Object;

    iput v11, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$0:I

    iput v9, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$1:I

    iput v6, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->I$2:I

    const/16 v8, 0x18

    iput v8, v3, Lcom/jichi/ob/AutoSyncWorker$doSync$1;->label:I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_31
    .catchall {:try_start_81 .. :try_end_81} :catchall_7

    move-object v8, v4

    move-object/from16 v41, v5

    const-wide/16 v4, 0xc8

    :try_start_82
    invoke-static {v4, v5, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_2e
    .catchall {:try_start_82 .. :try_end_82} :catchall_7

    move-object/from16 v5, v34

    if-ne v4, v5, :cond_3a

    :goto_5c
    return-object v5

    :cond_3a
    move-object v13, v1

    move/from16 v26, v6

    move v4, v11

    move-object v6, v14

    move-object v1, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v27

    move-object/from16 v27, v30

    move-object/from16 v25, v31

    move-object/from16 v11, v35

    move v14, v9

    move-object v9, v8

    move-object v8, v3

    move-object v3, v7

    move-object/from16 v7, v38

    :goto_5d
    move-object/from16 p1, v15

    move-object/from16 p2, v27

    move-object/from16 v38, v41

    move-object v15, v3

    move/from16 v27, v14

    move-object/from16 v14, v19

    move-object/from16 v3, v33

    move-object/from16 v19, v5

    move-object/from16 v5, v36

    goto/16 :goto_3b

    :catch_2e
    move-exception v0

    goto :goto_5f

    :catch_2f
    move-exception v0

    move-object/from16 v35, v1

    goto :goto_5e

    :catch_30
    move-exception v0

    move-object/from16 v36, v1

    goto :goto_5e

    :catch_31
    move-exception v0

    goto :goto_5e

    :catch_32
    move-exception v0

    move-object/from16 v38, v1

    :goto_5e
    move-object v8, v4

    move-object/from16 v41, v5

    :goto_5f
    move-object/from16 v5, v34

    goto :goto_60

    :catch_33
    move-exception v0

    move-object/from16 v38, v1

    move-object v8, v4

    move-object/from16 v41, v5

    move-object/from16 v5, v34

    move-object/from16 v14, v39

    goto :goto_60

    :catch_34
    move-exception v0

    move-object/from16 v38, v1

    move-object v8, v4

    move-object/from16 v41, v5

    move-object/from16 v5, v34

    move-object/from16 v14, v39

    move-object/from16 v12, v40

    :goto_60
    move-object/from16 v39, v3

    move/from16 v18, v6

    move-object v1, v8

    move v4, v9

    move-object v8, v10

    move/from16 v40, v11

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v11, v31

    goto :goto_62

    :catch_35
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v41, v5

    move-object/from16 v5, v34

    move-object/from16 v14, v39

    move-object/from16 v12, v40

    move/from16 v40, p2

    move-object/from16 v39, v3

    move/from16 v18, v4

    goto :goto_61

    :catch_36
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v41, v5

    move-object/from16 v5, v34

    move-object/from16 v14, v39

    move-object/from16 v12, v40

    move/from16 v18, p1

    move/from16 v40, p2

    move-object/from16 v39, v3

    goto :goto_61

    :catch_37
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v32, v9

    move-object v5, v14

    move-object/from16 v41, v38

    move-object/from16 v38, v1

    move-object v14, v6

    move/from16 v18, p1

    move/from16 v40, p2

    move-object/from16 v39, v3

    move-object/from16 v34, v5

    :goto_61
    move-object v8, v10

    move-object v9, v12

    move-object v12, v15

    move/from16 v4, v26

    move-object/from16 v11, v31

    move-object/from16 v1, v32

    :goto_62
    move-object/from16 v5, v36

    move-object/from16 v6, v38

    const/16 v3, 0xa

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object v10, v7

    move-object v15, v14

    goto/16 :goto_46

    :catch_38
    move-exception v0

    move-object v1, v5

    goto :goto_64

    :catch_39
    move-exception v0

    move/from16 v18, v1

    goto :goto_63

    :catch_3a
    move-exception v0

    move/from16 v25, v1

    goto :goto_63

    :catch_3b
    move-exception v0

    move/from16 v26, v1

    goto :goto_63

    :catch_3c
    move-exception v0

    goto :goto_63

    :catch_3d
    move-exception v0

    move-object/from16 v32, v1

    :goto_63
    move-object v1, v5

    move-object/from16 v45, v7

    :goto_64
    move-object/from16 v5, v34

    move-object/from16 v41, v38

    const/16 v14, 0x3c

    const/16 v37, 0xc

    move-object v8, v10

    move-object/from16 v35, v13

    move/from16 v40, v26

    move-object/from16 v11, v31

    move-object/from16 v39, v45

    const/16 v3, 0xa

    const/16 v21, 0x0

    move-object v5, v1

    move-object v10, v4

    move-object v1, v9

    move-object v9, v12

    move-object v12, v15

    move/from16 v4, v25

    goto :goto_65

    :catch_3e
    move-exception v0

    move-object/from16 v28, v1

    move-object v1, v5

    move-object/from16 v32, v7

    move-object/from16 v44, v14

    move-object/from16 v5, v34

    move-object/from16 v41, v38

    const/16 v14, 0x3c

    const/16 v37, 0xc

    move-object v8, v10

    move/from16 v4, v25

    move/from16 v40, v27

    move-object/from16 v35, v28

    move-object/from16 v11, v31

    move-object/from16 v39, v44

    const/16 v21, 0x0

    move-object v5, v1

    move-object v10, v3

    move-object v1, v9

    move-object v9, v12

    move-object v12, v15

    const/16 v3, 0xa

    :goto_65
    move-object v15, v6

    move-object/from16 v6, v32

    goto/16 :goto_7b

    :catch_3f
    move-exception v0

    move/from16 p2, v3

    move-object v1, v5

    move-object v5, v13

    move-object/from16 v19, v14

    move-object/from16 v41, v38

    const/16 v14, 0x3c

    const/16 v37, 0xc

    move/from16 v40, v4

    move-object/from16 v34, v5

    move-object v6, v7

    move-object/from16 v39, v11

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v35, v18

    move-object/from16 v10, v25

    move/from16 v4, v26

    move-object/from16 v8, v27

    move-object/from16 v11, v31

    move-object/from16 v15, v32

    const/16 v3, 0xa

    const/16 v21, 0x0

    move/from16 v18, p2

    move-object v5, v1

    goto/16 :goto_2

    :catch_40
    move-exception v0

    move/from16 v26, v1

    goto :goto_67

    :catch_41
    move-exception v0

    move/from16 v27, v1

    goto :goto_67

    :catch_42
    move-exception v0

    move/from16 v30, v1

    goto :goto_67

    :catch_43
    move-exception v0

    goto :goto_67

    :catch_44
    move-exception v0

    move-object/from16 v31, v3

    goto :goto_67

    :catch_45
    move-exception v0

    move-object/from16 v32, v3

    goto :goto_67

    :catch_46
    move-exception v0

    goto :goto_66

    :catch_47
    move-exception v0

    move-object/from16 v36, v5

    move-object/from16 v5, v19

    move-object/from16 v15, v33

    move-object/from16 v41, v38

    const/16 v37, 0xc

    move-object/from16 v33, v3

    goto/16 :goto_6a

    :catch_48
    move-exception v0

    move-object v15, v1

    :goto_66
    move-object/from16 v33, v3

    :goto_67
    move-object/from16 v36, v5

    move-object/from16 v5, v19

    move-object/from16 v41, v38

    const/16 v37, 0xc

    goto :goto_6a

    :catch_49
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v36, v5

    goto :goto_69

    :catch_4a
    move-exception v0

    move-object/from16 v33, v3

    goto :goto_68

    :cond_3b
    move/from16 v30, v4

    move-object/from16 v36, v5

    move-object/from16 v31, v11

    move-object/from16 v32, v15

    move-object/from16 v5, v19

    const/16 v37, 0xc

    move-object v15, v1

    move-object/from16 p3, p2

    move-object v13, v5

    move-object/from16 v39, v8

    move-object v1, v9

    move-object v8, v10

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v11, v25

    move/from16 v4, v27

    move-object/from16 p2, v29

    move/from16 v40, v30

    move-object/from16 p1, v31

    move-object/from16 v10, v32

    move-object/from16 v5, v36

    move-object v15, v6

    move-object v6, v7

    move/from16 v7, v26

    goto/16 :goto_31

    :catch_4b
    move-exception v0

    move-object/from16 v33, v3

    move/from16 v30, v4

    :goto_68
    move-object/from16 v36, v5

    move-object/from16 v31, v11

    :goto_69
    move-object/from16 v32, v15

    move-object/from16 v5, v19

    move-object/from16 v41, v38

    const/16 v37, 0xc

    move-object v15, v1

    :goto_6a
    move-object/from16 v19, v14

    const/16 v14, 0x3c

    move-object/from16 v34, v5

    move-object/from16 v39, v8

    move-object v1, v9

    move-object v8, v10

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v11, v25

    move/from16 v18, v26

    move/from16 v4, v27

    move/from16 v40, v30

    move-object/from16 v35, v31

    move-object/from16 v10, v32

    move-object/from16 v5, v36

    const/16 v3, 0xa

    const/16 v21, 0x0

    move-object/from16 v30, p2

    move-object v15, v6

    move-object v6, v7

    goto/16 :goto_7b

    :catch_4c
    move-exception v0

    move-object/from16 v33, v3

    goto :goto_6c

    :catch_4d
    move-exception v0

    goto :goto_6b

    :catch_4e
    move-exception v0

    move-object/from16 p2, v1

    :goto_6b
    move-object/from16 v33, v3

    move/from16 p3, v4

    :goto_6c
    move-object v5, v6

    move-object/from16 v19, v14

    move-object/from16 v41, v38

    const/16 v14, 0x3c

    const/16 v37, 0xc

    move-object/from16 v30, p2

    move-object/from16 v34, v5

    move-object v1, v9

    move-object/from16 v35, v11

    move-object v5, v15

    move-object/from16 v6, v18

    move-object/from16 v11, v25

    move/from16 v4, v26

    move-object/from16 v15, v27

    move-object/from16 v9, v28

    const/16 v3, 0xa

    goto/16 :goto_6f

    :cond_3c
    move-object/from16 p1, v7

    :goto_6d
    move-object/from16 p2, v1

    move-object/from16 v33, v3

    move/from16 p3, v4

    move-object v5, v6

    move-object/from16 v19, v14

    move-object/from16 v41, v38

    const/16 v14, 0x3c

    const/16 v37, 0xc

    add-int/lit8 v7, p3, 0x1

    .line 477
    :try_start_83
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x14

    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u274c \u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_50
    .catchall {:try_start_83 .. :try_end_83} :catchall_7

    const/16 v3, 0xa

    :try_start_84
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4e0b\u8f7d\u5931\u8d25:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_4f
    .catchall {:try_start_84 .. :try_end_84} :catchall_7

    move-object/from16 p3, p2

    move-object v13, v5

    move-object v1, v9

    move-object/from16 p1, v11

    move-object v5, v15

    move-object/from16 v6, v18

    move-object/from16 v14, v19

    move-object/from16 v11, v25

    move/from16 v4, v26

    move-object/from16 v15, v27

    move-object/from16 v9, v28

    move-object/from16 p2, v29

    move-object/from16 v3, v33

    goto/16 :goto_7e

    :catch_4f
    move-exception v0

    goto :goto_6e

    :catch_50
    move-exception v0

    const/16 v3, 0xa

    :goto_6e
    move-object/from16 v30, p2

    move-object/from16 v34, v5

    move-object v1, v9

    move-object/from16 v35, v11

    move-object v5, v15

    move-object/from16 v6, v18

    move-object/from16 v11, v25

    move/from16 v4, v26

    move-object/from16 v15, v27

    move-object/from16 v9, v28

    const/16 v21, 0x0

    move/from16 v18, v7

    goto/16 :goto_7b

    :catch_51
    move-exception v0

    move-object/from16 p2, v1

    move-object/from16 v33, v3

    move/from16 p3, v4

    move-object v5, v6

    move-object/from16 v19, v14

    move-object/from16 v41, v38

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v37, 0xc

    move-object/from16 v30, p2

    move-object/from16 v34, v5

    move-object v1, v9

    move-object/from16 v35, v11

    move-object v5, v15

    move-object/from16 v6, v18

    move-object/from16 v11, v25

    move/from16 v4, v26

    move-object/from16 v15, v27

    move-object/from16 v9, v28

    :goto_6f
    const/16 v21, 0x0

    move/from16 v18, p3

    goto/16 :goto_7b

    :catch_52
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v18, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v19

    move-object/from16 v41, v38

    const/16 v3, 0xa

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object/from16 v19, v14

    const/16 v14, 0x3c

    move-object/from16 v39, v10

    move-object/from16 v35, v11

    move-object v10, v12

    move/from16 v40, v13

    move-object/from16 v11, v25

    move-object/from16 v5, v30

    goto/16 :goto_7a

    :catch_53
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v19

    goto :goto_71

    :catch_54
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v19

    goto :goto_70

    :catch_55
    move-exception v0

    move-object/from16 v29, v1

    move-object/from16 v33, v3

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v19

    move/from16 v1, v27

    :goto_70
    move/from16 v4, v28

    :goto_71
    move-object/from16 v41, v38

    const/16 v3, 0xa

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object/from16 v19, v14

    const/16 v14, 0x3c

    move-object/from16 v39, v10

    move-object/from16 v35, v11

    move-object v10, v12

    move/from16 v40, v13

    goto/16 :goto_79

    :catch_56
    move-exception v0

    move-object/from16 v29, v1

    move-object/from16 v33, v3

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v32, v7

    move-object/from16 v21, v13

    move-object/from16 v34, v19

    move/from16 v1, v27

    move/from16 v4, v28

    move-object/from16 v41, v38

    move/from16 v13, v40

    const/16 v3, 0xa

    goto :goto_73

    :catch_57
    move-exception v0

    goto :goto_72

    :catch_58
    move-exception v0

    move-object/from16 v11, p1

    :goto_72
    move-object/from16 v29, v1

    move-object/from16 v33, v3

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v19

    move/from16 v1, v27

    move/from16 v4, v28

    move-object/from16 v41, v38

    move/from16 v13, v40

    const/16 v3, 0xa

    const/16 v21, 0x0

    :goto_73
    const/16 v37, 0xc

    move-object/from16 v19, v14

    goto :goto_76

    :catch_59
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v29, v1

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v32, v7

    goto :goto_74

    :catch_5a
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v29, v1

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    :goto_74
    move-object/from16 v34, v19

    move/from16 v1, v27

    move/from16 v4, v28

    goto :goto_75

    :catch_5b
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v29, v1

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v34, v19

    move/from16 v1, v27

    move/from16 v4, v28

    move-object/from16 v8, v31

    :goto_75
    move-object/from16 v12, v33

    move-object/from16 v41, v38

    move/from16 v13, v40

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object/from16 v33, v3

    move-object/from16 v19, v14

    const/16 v3, 0xa

    :goto_76
    const/16 v14, 0x3c

    move-object/from16 v39, v10

    goto/16 :goto_78

    :catch_5c
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v29, v1

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v34, v19

    move/from16 v1, v27

    move/from16 v4, v28

    move-object/from16 v8, v31

    move-object/from16 v12, v33

    move-object/from16 v41, v38

    move-object/from16 v10, v39

    move/from16 v13, v40

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object/from16 v33, v3

    move-object/from16 v19, v14

    const/16 v3, 0xa

    const/16 v14, 0x3c

    goto :goto_78

    :catch_5d
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v29, v1

    move-object/from16 v33, v3

    move v1, v4

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move v4, v7

    move-object/from16 v32, v12

    move-object/from16 v34, v13

    move-object/from16 v19, v14

    move-object/from16 v41, v38

    move/from16 v13, v40

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v37, 0xc

    goto :goto_77

    :catch_5e
    move-exception v0

    move-object/from16 v29, v1

    move-object/from16 v33, v3

    move v1, v4

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move v4, v7

    move-object/from16 v25, v11

    move-object/from16 v32, v12

    move-object/from16 v34, v13

    move-object/from16 v19, v14

    move-object/from16 v41, v38

    move/from16 v13, v40

    const/16 v3, 0xa

    const/16 v14, 0x3c

    const/16 v21, 0x0

    const/16 v37, 0xc

    move-object/from16 v11, p1

    :goto_77
    move-object v12, v10

    move-object/from16 v10, v39

    :goto_78
    move-object/from16 v35, v11

    move-object v10, v12

    :goto_79
    move-object/from16 v11, v25

    :goto_7a
    move-object/from16 v12, v32

    move-object/from16 v30, p3

    move/from16 v18, v4

    move v4, v1

    move-object/from16 v1, v29

    move-object/from16 v29, p2

    :goto_7b
    add-int/lit8 v7, v18, 0x1

    .line 542
    :try_start_85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3d

    const/16 v3, 0x14

    invoke-static {v13, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3e

    goto :goto_7c

    :cond_3d
    const/16 v3, 0x14

    :goto_7c
    const-string/jumbo v13, "\u672a\u77e5"

    :cond_3e
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    const-string v13, "AutoSyncWorker"

    const-string v3, "AutoSync item error"

    move-object v14, v0

    check-cast v14, Ljava/lang/Throwable;

    invoke-static {v13, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/16 v3, 0x32

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_7d

    :cond_3f
    move-object/from16 v13, v21

    :goto_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u274c \u81ea\u52a8\u540c\u6b65\u5355\u6761\u5f02\u5e38: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    move-object/from16 v14, v19

    move-object/from16 p2, v29

    move-object/from16 p3, v30

    move-object/from16 v3, v33

    move-object/from16 v13, v34

    move-object/from16 p1, v35

    :goto_7e
    move-object/from16 v38, v41

    goto/16 :goto_31

    :cond_40
    move-object/from16 v29, v1

    move v1, v4

    move-object/from16 v30, v5

    move v4, v7

    move-object/from16 v32, v12

    move/from16 v13, v40

    move-object v12, v10

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\ud83d\udcca \u81ea\u52a8\u540c\u6b65\u5b8c\u6210: \u6210\u529f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / \u8df3\u8fc7"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / \u5931\u8d25"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 548
    new-instance v25, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    move/from16 v27, v1

    move/from16 v28, v4

    move-object/from16 v31, v8

    move-object/from16 v33, v12

    move/from16 v26, v13

    invoke-direct/range {v25 .. v33}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_7

    .line 550
    sput-boolean v22, Lcom/jichi/ob/AutoSyncWorker;->syncing:Z

    return-object v25

    .line 443
    :goto_7f
    :try_start_86
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    const/16 v12, 0x3c

    invoke-static {v1, v12}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_80

    :cond_41
    move-object/from16 v15, v21

    :goto_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u274c \u81ea\u52a8\u540c\u6b65: \u83b7\u53d6\u5217\u8868\u5931\u8d25 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 444
    throw v0
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_7

    :catchall_7
    move-exception v0

    .line 550
    :goto_81
    sput-boolean v22, Lcom/jichi/ob/AutoSyncWorker;->syncing:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method private static final doSync$lambda$38(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final doWork$lambda$10(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "eid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->addWorkoutSyncedId(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final doWork$lambda$11(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "k"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "h"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/PrefsManager;->putWorkoutHash(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final doWork$lambda$12(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\u8bfe\u8868] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final doWork$lambda$15(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final doWork$lambda$2(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final doWork$lambda$20(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "eid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/util/PrefsManager;->addWorkoutSyncedId(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final doWork$lambda$21(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "k"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "h"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/util/PrefsManager;->putWorkoutHash(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final doWork$lambda$22(Lcom/jichi/ob/AutoSyncWorker;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\u8bfe\u8868] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final doWork$lambda$23(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final doWork$lambda$24(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final doWork$lambda$35(Lcom/jichi/ob/model/SyncTask;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/jichi/ob/model/SyncTask;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final downloadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;

    iget v1, v0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;

    invoke-direct {v0, p0, p4}, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;-><init>(Lcom/jichi/ob/AutoSyncWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p4, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 554
    iget v0, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    :pswitch_0
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :pswitch_1
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_c

    :pswitch_7
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_8
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$6:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$5:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$6:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$4:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v0, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v2, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, p4

    move-object p4, p2

    move-object p2, v2

    move-object v2, v10

    move-object v10, v1

    move-object v1, p3

    move-object p3, v10

    goto/16 :goto_12

    :pswitch_a
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_b
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move-object p4, v0

    goto/16 :goto_16

    :pswitch_c
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_d
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    :try_start_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_19

    :pswitch_e
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1c

    :pswitch_f
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_10
    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :pswitch_11
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 555
    sget-object p4, Lcom/jichi/ob/AutoSyncWorker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v0

    aget p4, p4, v0

    const-string v0, ""

    packed-switch p4, :pswitch_data_1

    return-object v1

    .line 557
    :pswitch_12
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker;->igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    const/4 v5, 0x1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/jichi/ob/api/IgpsportApi;->downloadFitFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_1

    goto/16 :goto_1d

    :cond_1
    :goto_2
    check-cast p4, [B

    return-object p4

    :pswitch_13
    move-object v2, p2

    .line 629
    new-instance p2, Lcom/jichi/ob/api/LocalFolderApi;

    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "getApplicationContext(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p4}, Lcom/jichi/ob/api/LocalFolderApi;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0x16

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, p4, v6}, Lcom/jichi/ob/api/LocalFolderApi;->downloadActivity(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_2

    goto/16 :goto_1d

    :cond_2
    return-object p1

    :pswitch_14
    move-object v2, p2

    .line 627
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->intervalsIcuApi:Lcom/jichi/ob/api/IntervalsIcuApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    :cond_3
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0x15

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v6}, Lcom/jichi/ob/api/IntervalsIcuApi;->downloadActivityFit(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_4

    goto/16 :goto_1d

    :cond_4
    return-object p1

    :pswitch_15
    move-object v2, p2

    .line 626
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker;->suuntoApi:Lcom/jichi/ob/api/SuuntoApi;

    invoke-direct {p0}, Lcom/jichi/ob/AutoSyncWorker;->suuntoSubscriptionKey()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    move-object v3, v0

    goto :goto_3

    :cond_5
    move-object v3, p2

    :goto_3
    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p2

    :cond_6
    move-object v4, p2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0x14

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/jichi/ob/api/SuuntoApi;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_7

    goto/16 :goto_1d

    :cond_7
    :goto_4
    check-cast p4, [B

    return-object p4

    :pswitch_16
    move-object v2, p2

    .line 623
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p2}, Lcom/jichi/ob/util/PrefsManager;->getKomootAccount()Ljava/lang/String;

    move-result-object p2

    .line 624
    move-object p4, p2

    check-cast p4, Ljava/lang/CharSequence;

    if-eqz p4, :cond_b

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_8

    goto :goto_6

    :cond_8
    iget-object p4, p0, Lcom/jichi/ob/AutoSyncWorker;->komootApi:Lcom/jichi/ob/api/KomootApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    const/16 p1, 0x13

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p4, p2, v2, v0, v6}, Lcom/jichi/ob/api/KomootApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_a

    goto/16 :goto_1d

    :cond_a
    :goto_5
    check-cast p4, [B

    return-object p4

    :cond_b
    :goto_6
    return-object v1

    :pswitch_17
    move-object v2, p2

    .line 621
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->zeppApi:Lcom/jichi/ob/api/ZeppApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    move-object v0, v1

    :goto_7
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0x12

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v0, v6}, Lcom/jichi/ob/api/ZeppApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_d

    goto/16 :goto_1d

    :cond_d
    :goto_8
    check-cast p4, [B

    return-object p4

    :pswitch_18
    move-object v2, p2

    .line 620
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->codoonApi:Lcom/jichi/ob/api/CodoonApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_e

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    :cond_e
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0x11

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v6}, Lcom/jichi/ob/api/CodoonApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_f

    goto/16 :goto_1d

    :cond_f
    :goto_9
    check-cast p4, [B

    return-object p4

    :pswitch_19
    move-object v2, p2

    .line 619
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->keepApi:Lcom/jichi/ob/api/KeepApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_10

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    :cond_10
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0x10

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v6}, Lcom/jichi/ob/api/KeepApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_11

    goto/16 :goto_1d

    :cond_11
    :goto_a
    check-cast p4, [B

    return-object p4

    :pswitch_1a
    move-object v2, p2

    .line 611
    :try_start_3
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->zwiftApi:Lcom/jichi/ob/api/ZwiftApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_12

    goto :goto_b

    :cond_12
    move-object v0, p4

    :goto_b
    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0xf

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v0, v2, p4, v6}, Lcom/jichi/ob/api/ZwiftApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_13

    goto/16 :goto_1d

    .line 554
    :cond_13
    :goto_c
    check-cast p4, [B

    .line 612
    const-string/jumbo p1, "\u2705 Zwift \u4e0b\u8f7d\u6210\u529f (v8.3.3: S3\u76f4\u94fe+\u8be6\u60c5\u9884\u68c0+API\u515c\u5e95)"

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_d
    move-object v1, p4

    goto/16 :goto_1b

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 615
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u274c Zwift \u4e0b\u8f7d\u5931\u8d25: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_1b
    move-object v2, p2

    .line 605
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p2}, Lcom/jichi/ob/util/PrefsManager;->getMywhooshWhooshId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_14

    move-object p2, v0

    .line 606
    :cond_14
    iget-object p4, p0, Lcom/jichi/ob/AutoSyncWorker;->mywhooshApi:Lcom/jichi/ob/api/MyWhooshApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_e

    :cond_15
    move-object v0, v1

    :goto_e
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    const/16 p1, 0xe

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p4, v2, p2, v0, v6}, Lcom/jichi/ob/api/MyWhooshApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_16

    goto/16 :goto_1d

    :cond_16
    :goto_f
    check-cast p4, [B

    return-object p4

    :pswitch_1c
    move-object v2, p2

    .line 591
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p2}, Lcom/jichi/ob/util/PrefsManager;->getWahooRefresh()Ljava/lang/String;

    move-result-object p2

    .line 592
    sget-object p4, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {p4}, Lcom/jichi/ob/api/WahooApi$Companion;->isBuiltinConfigured()Z

    move-result p4

    if-eqz p4, :cond_17

    sget-object p4, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {p4}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_ID()Ljava/lang/String;

    move-result-object p4

    goto :goto_10

    :cond_17
    iget-object p4, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p4}, Lcom/jichi/ob/util/PrefsManager;->getWahooClientId()Ljava/lang/String;

    move-result-object p4

    .line 593
    :goto_10
    sget-object v0, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WahooApi$Companion;->isBuiltinConfigured()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_SECRET()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_18
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->getWahooClientSecret()Ljava/lang/String;

    move-result-object v0

    :goto_11
    if-eqz p2, :cond_1d

    .line 594
    move-object v1, p4

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_13

    :cond_19
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_13

    .line 595
    :cond_1a
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker;->wahooApi:Lcom/jichi/ob/api/WahooApi;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    iput-object p3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    iput-object v2, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$4:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$5:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$6:Ljava/lang/Object;

    const/16 v3, 0xc

    iput v3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {v1, p2, p4, v0, v6}, Lcom/jichi/ob/api/WahooApi;->refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_1b

    goto/16 :goto_1d

    :cond_1b
    move-object v3, v1

    move-object v1, p2

    move-object p2, v2

    .line 554
    :goto_12
    check-cast v3, Lkotlin/Pair;

    if-eqz v3, :cond_1c

    .line 597
    iget-object v2, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jichi/ob/util/PrefsManager;->saveWahooToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jichi/ob/util/PrefsManager;->saveWahooRefresh(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 599
    const-string/jumbo v3, "\ud83d\udd04 Wahoo\u6e90 token\u5df2\u81ea\u52a8\u5237\u65b0"

    invoke-direct {p0, v3}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    :cond_1c
    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    goto :goto_14

    :cond_1d
    :goto_13
    move-object v1, p2

    move-object p2, v2

    .line 602
    :goto_14
    iget-object v3, p0, Lcom/jichi/ob/AutoSyncWorker;->wahooApi:Lcom/jichi/ob/api/WahooApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$4:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$5:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$6:Ljava/lang/Object;

    const/16 p1, 0xd

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {v3, p2, v4, v6}, Lcom/jichi/ob/api/WahooApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_1e

    goto/16 :goto_1d

    :cond_1e
    return-object p1

    :pswitch_1d
    move-object v2, p2

    .line 587
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->corosApi:Lcom/jichi/ob/api/CorosApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v0, v6}, Lcom/jichi/ob/api/CorosApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_1f

    goto/16 :goto_1d

    :cond_1f
    return-object p1

    :pswitch_1e
    move-object v2, p2

    .line 586
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->corosApi:Lcom/jichi/ob/api/CorosApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v0, v6}, Lcom/jichi/ob/api/CorosApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_20

    goto/16 :goto_1d

    :cond_20
    return-object p1

    :pswitch_1f
    move-object v2, p2

    .line 585
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->garminApi:Lcom/jichi/ob/api/GarminApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p3, 0x9

    iput p3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, p1, v2, p4, v6}, Lcom/jichi/ob/api/GarminApi;->downloadFit(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_21

    goto/16 :goto_1d

    :cond_21
    return-object p1

    :pswitch_20
    move-object v2, p2

    .line 584
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->garminApi:Lcom/jichi/ob/api/GarminApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/16 p3, 0x8

    iput p3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, p1, v2, p4, v6}, Lcom/jichi/ob/api/GarminApi;->downloadFit(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_22

    goto/16 :goto_1d

    :cond_22
    return-object p1

    :pswitch_21
    move-object v2, p2

    .line 582
    :try_start_4
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    iput-object v2, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    iput-object p3, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v6}, Lcom/jichi/ob/api/BrytonApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-ne p4, v9, :cond_23

    goto/16 :goto_1d

    :cond_23
    move-object p2, v2

    :goto_15
    :try_start_5
    check-cast p4, [B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object p4, v0

    move-object p2, v2

    :goto_16
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$3:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {v0, p2, v1, v6}, Lcom/jichi/ob/api/BrytonApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_24

    goto/16 :goto_1d

    :cond_24
    :goto_17
    check-cast p4, [B

    goto/16 :goto_d

    :pswitch_22
    move-object v2, p2

    .line 580
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker;->blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    const/4 v4, 0x0

    move-object v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jichi/ob/api/BlackbirdApi;->downloadActivity$default(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_25

    goto/16 :goto_1d

    :cond_25
    :goto_18
    check-cast p4, [B

    return-object p4

    :pswitch_23
    move-object v2, p2

    .line 561
    :try_start_6
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncWorker;->mageneApi:Lcom/jichi/ob/api/MageneApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v6}, Lcom/jichi/ob/api/MageneApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_26

    goto/16 :goto_1d

    .line 554
    :cond_26
    :goto_19
    check-cast p4, Lcom/jichi/ob/api/MageneApi$MageneFitResult;

    .line 564
    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getFromFitContent()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->isFit([B)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 565
    iget-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p1}, Lcom/jichi/ob/util/PrefsManager;->isGcj02FitContent()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 566
    const-string/jumbo p1, "\ud83d\udd04 \u8fc8\u91d1fit_content(GCJ-02)\u5750\u6807\u8f6cWGS84..."

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 567
    sget-object p1, Lcom/jichi/ob/util/FitGcj02Fixer;->INSTANCE:Lcom/jichi/ob/util/FitGcj02Fixer;

    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jichi/ob/util/FitGcj02Fixer;->fix([B)[B

    move-result-object p1

    if-nez p1, :cond_2a

    .line 568
    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object p1

    goto :goto_1a

    .line 569
    :cond_27
    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object p1

    goto :goto_1a

    .line 572
    :cond_28
    iget-object p1, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p1}, Lcom/jichi/ob/util/PrefsManager;->isGcj02Qiniu()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->isFit([B)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 573
    const-string/jumbo p1, "\ud83d\udd04 \u8fc8\u91d1\u4e03\u725b\u4e91durl(\u7528\u6237\u624b\u52a8\u5f00\u542fGCJ-02)\u5750\u6807\u8f6cWGS84..."

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 574
    sget-object p1, Lcom/jichi/ob/util/FitGcj02Fixer;->INSTANCE:Lcom/jichi/ob/util/FitGcj02Fixer;

    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jichi/ob/util/FitGcj02Fixer;->fix([B)[B

    move-result-object p1

    if-nez p1, :cond_2a

    .line 575
    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object p1

    goto :goto_1a

    .line 576
    :cond_29
    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2a
    :goto_1a
    move-object v1, p1

    :catch_3
    :goto_1b
    return-object v1

    :pswitch_24
    move-object v2, p2

    .line 558
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker;->xingzheApi:Lcom/jichi/ob/api/XingzheApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    const/4 v4, 0x0

    move-object v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jichi/ob/api/XingzheApi;->downloadGpxOrFit$default(Lcom/jichi/ob/api/XingzheApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_2b

    goto :goto_1d

    :cond_2b
    :goto_1c
    check-cast p4, Lkotlin/Pair;

    invoke-virtual {p4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :pswitch_25
    move-object v2, p2

    .line 556
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker;->igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v6, Lcom/jichi/ob/AutoSyncWorker$downloadActivity$1;->label:I

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jichi/ob/api/IgpsportApi;->downloadFitFile$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_2c

    :goto_1d
    return-object v9

    :cond_2c
    :goto_1e
    check-cast p4, [B

    return-object p4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method private final formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 783
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "\u65e0\u8bb0\u5f55"

    return-object p1

    :cond_0
    const/4 v0, 0x5

    const/16 v1, 0x10

    .line 787
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 788
    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 789
    const-string v2, "MMM dd, yyyy HH:mm:ss"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    .line 786
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 791
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 793
    :try_start_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 794
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 796
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 800
    :cond_2
    :try_start_2
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 802
    :catch_1
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 774
    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    .line 775
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "getActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getMageneActivitiesWithRefresh(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;

    iget v1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;

    invoke-direct {v0, p0, p4}, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;-><init>(Lcom/jichi/ob/AutoSyncWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 364
    iget v2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$1:I

    iget p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$0:I

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$1:I

    iget p2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$0:I

    iget-object p3, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget-object v4, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget p3, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$1:I

    iget p2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$0:I

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 366
    :try_start_1
    iget-object p4, p0, Lcom/jichi/ob/AutoSyncWorker;->mageneApi:Lcom/jichi/ob/api/MageneApi;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$0:I

    iput p3, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$1:I

    iput v5, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/jichi/ob/api/MageneApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    return-object p1

    :catch_0
    move-exception p4

    move-object v2, p4

    .line 368
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p4, :cond_6

    check-cast p4, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u8fc7\u671f"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {p4, v8, v7, v4, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p4

    if-ne p4, v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_9

    check-cast p4, Ljava/lang/CharSequence;

    const-string v8, "401"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {p4, v8, v7, v4, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p4

    if-ne p4, v5, :cond_9

    .line 369
    :goto_1
    iget-object p4, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p4}, Lcom/jichi/ob/util/PrefsManager;->getMageneRefreshToken()Ljava/lang/String;

    move-result-object p4

    .line 370
    move-object v5, p4

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_9

    .line 371
    iget-object v5, p0, Lcom/jichi/ob/AutoSyncWorker;->mageneApi:Lcom/jichi/ob/api/MageneApi;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    iput p2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$0:I

    iput p3, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$1:I

    iput v4, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->label:I

    invoke-virtual {v5, p4, v0}, Lcom/jichi/ob/api/MageneApi;->refreshToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v9, v4

    move-object v4, p1

    move p1, p3

    move-object p3, p4

    move-object p4, v9

    .line 364
    :goto_2
    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_9

    .line 373
    iget-object v5, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v5, p4}, Lcom/jichi/ob/util/PrefsManager;->saveMageneToken(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v5, "\ud83d\udd04 \u8fc8\u91d1\u767b\u5f55\u5df2\u8fc7\u671f\uff0c\u81ea\u52a8\u5237\u65b0token\u540e\u91cd\u8bd5"

    invoke-direct {p0, v5}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 375
    iget-object v5, p0, Lcom/jichi/ob/AutoSyncWorker;->mageneApi:Lcom/jichi/ob/api/MageneApi;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    iput p2, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$0:I

    iput p1, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->I$1:I

    iput v3, v0, Lcom/jichi/ob/AutoSyncWorker$getMageneActivitiesWithRefresh$1;->label:I

    invoke-virtual {v5, p4, p2, p1, v0}, Lcom/jichi/ob/api/MageneApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    return-object p1

    .line 379
    :cond_9
    throw v2
.end method

.method private final getWahooActivitiesWithRefresh(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;

    iget v1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;

    invoke-direct {v0, p0, p4}, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;-><init>(Lcom/jichi/ob/AutoSyncWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 658
    iget v2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->I$1:I

    iget p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->I$0:I

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->I$1:I

    iget p2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->I$0:I

    iget-object p3, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$4:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p3

    move p3, p1

    move-object p1, v6

    move-object v6, v4

    move-object v4, p4

    move-object p4, v8

    goto/16 :goto_3

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 660
    iget-object p4, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p4}, Lcom/jichi/ob/util/PrefsManager;->getWahooRefresh()Ljava/lang/String;

    move-result-object p4

    .line 661
    sget-object v2, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v2}, Lcom/jichi/ob/api/WahooApi$Companion;->isBuiltinConfigured()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v2}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_ID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v2}, Lcom/jichi/ob/util/PrefsManager;->getWahooClientId()Ljava/lang/String;

    move-result-object v2

    .line 662
    :goto_1
    sget-object v5, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v5}, Lcom/jichi/ob/api/WahooApi$Companion;->isBuiltinConfigured()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/jichi/ob/api/WahooApi;->Companion:Lcom/jichi/ob/api/WahooApi$Companion;

    invoke-virtual {v5}, Lcom/jichi/ob/api/WahooApi$Companion;->getBUILTIN_CLIENT_SECRET()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v5}, Lcom/jichi/ob/util/PrefsManager;->getWahooClientSecret()Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz p4, :cond_a

    .line 663
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_4

    .line 664
    :cond_7
    iget-object v6, p0, Lcom/jichi/ob/AutoSyncWorker;->wahooApi:Lcom/jichi/ob/api/WahooApi;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$4:Ljava/lang/Object;

    iput p2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->I$0:I

    iput p3, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->I$1:I

    iput v4, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->label:I

    invoke-virtual {v6, p4, v2, v5, v0}, Lcom/jichi/ob/api/WahooApi;->refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_8

    goto/16 :goto_6

    :cond_8
    move-object v6, p4

    move-object p4, v5

    move-object v5, p1

    .line 658
    :goto_3
    check-cast v4, Lkotlin/Pair;

    if-eqz v4, :cond_9

    .line 666
    iget-object v5, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/jichi/ob/util/PrefsManager;->saveWahooToken(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/jichi/ob/util/PrefsManager;->saveWahooRefresh(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 668
    const-string/jumbo v5, "\ud83d\udd04 Wahoo\u6e90 token\u5df2\u81ea\u52a8\u5237\u65b0"

    invoke-direct {p0, v5}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    move-object v5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_5

    :cond_9
    move v8, p2

    move-object p2, p1

    move-object p1, v5

    move-object v5, p4

    move p4, p3

    move p3, v8

    goto :goto_5

    :cond_a
    :goto_4
    move-object v6, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    .line 671
    :goto_5
    iget-object v4, p0, Lcom/jichi/ob/AutoSyncWorker;->wahooApi:Lcom/jichi/ob/api/WahooApi;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->L$4:Ljava/lang/Object;

    iput p3, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->I$0:I

    iput p4, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->I$1:I

    iput v3, v0, Lcom/jichi/ob/AutoSyncWorker$getWahooActivitiesWithRefresh$1;->label:I

    invoke-virtual {v4, p1, p3, p4, v0}, Lcom/jichi/ob/api/WahooApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    :goto_6
    return-object v1

    :cond_b
    return-object p1
.end method

.method private final getZwiftActivitiesWithRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;

    iget v3, v2, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;

    invoke-direct {v2, v1, v0}, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;-><init>(Lcom/jichi/ob/AutoSyncWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v0, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 640
    iget v3, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->label:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v11, :cond_3

    if-eq v3, v10, :cond_2

    if-ne v3, v9, :cond_1

    iget v2, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$1:I

    iget v2, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$0:I

    iget-object v2, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlin/Pair;

    iget-object v2, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget-object v2, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v3, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$1:I

    iget v4, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$0:I

    iget-object v5, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Exception;

    iget-object v6, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v10, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget v3, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$1:I

    iget v4, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$0:I

    iget-object v5, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v12, v5

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 642
    :try_start_1
    iget-object v3, v1, Lcom/jichi/ob/AutoSyncWorker;->zwiftApi:Lcom/jichi/ob/api/ZwiftApi;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v12, p3

    :try_start_2
    iput-object v12, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    move/from16 v6, p4

    iput v6, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$0:I

    move/from16 v7, p5

    iput v7, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$1:I

    iput v11, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->label:I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/jichi/ob/api/ZwiftApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v2, :cond_5

    goto/16 :goto_4

    :cond_5
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v12, p3

    :goto_1
    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move/from16 v4, p4

    move/from16 v3, p5

    :goto_2
    move-object v5, v0

    .line 644
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/CharSequence;

    const-string v13, "401"

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v0, v13, v14, v10, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v11, :cond_8

    move-object v0, v12

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 645
    iget-object v0, v1, Lcom/jichi/ob/AutoSyncWorker;->zwiftApi:Lcom/jichi/ob/api/ZwiftApi;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    iput-object v5, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    iput v4, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$0:I

    iput v3, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$1:I

    iput v10, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->label:I

    invoke-virtual {v0, v12, v8}, Lcom/jichi/ob/api/ZwiftApi;->refreshToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    goto :goto_4

    :cond_6
    move-object v10, v7

    move-object v7, v6

    move-object v6, v12

    .line 640
    :goto_3
    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_8

    .line 647
    iget-object v11, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/jichi/ob/util/PrefsManager;->saveZwiftToken(Ljava/lang/String;)V

    .line 648
    iget-object v11, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/jichi/ob/util/PrefsManager;->saveZwiftRefreshToken(Ljava/lang/String;)V

    .line 649
    const-string/jumbo v11, "\ud83d\udd04 Zwift\u6e90 token\u5df2\u81ea\u52a8\u5237\u65b0"

    invoke-direct {v1, v11}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 650
    iget-object v11, v1, Lcom/jichi/ob/AutoSyncWorker;->zwiftApi:Lcom/jichi/ob/api/ZwiftApi;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v13}, Lcom/jichi/ob/util/PrefsManager;->getZwiftPlayerId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->L$4:Ljava/lang/Object;

    iput v4, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$0:I

    iput v3, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->I$1:I

    iput v9, v8, Lcom/jichi/ob/AutoSyncWorker$getZwiftActivitiesWithRefresh$1;->label:I

    move/from16 p5, v3

    move/from16 p4, v4

    move-object/from16 p6, v8

    move-object/from16 p1, v11

    move-object/from16 p2, v12

    move-object/from16 p3, v13

    invoke-virtual/range {p1 .. p6}, Lcom/jichi/ob/api/ZwiftApi;->getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_7

    :goto_4
    return-object v2

    :cond_7
    return-object v0

    .line 653
    :cond_8
    throw v5
.end method

.method private final isFit([B)Z
    .locals 2

    .line 675
    array-length v0, p1

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    aget-byte p1, p1, v0

    const/16 v0, 0x46

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final plog(Ljava/lang/String;)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\u81ea\u52a8] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jichi/ob/util/PrefsManager;->appendPersistLog(Ljava/lang/String;)V

    return-void
.end method

.method private final postFailureNotification(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    .locals 5

    .line 758
    :try_start_0
    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 759
    invoke-direct {p0}, Lcom/jichi/ob/AutoSyncWorker;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 760
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "jichi_ob_autosync"

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 761
    const-string/jumbo v3, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB \u81ea\u52a8\u540c\u6b65\u51fa\u9519"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 762
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 763
    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p2}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "\u2192"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x1080078

    .line 764
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 765
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 766
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 767
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 768
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x3eb

    .line 769
    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 770
    const-string p2, "postFailureNotification error"

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "AutoSyncWorker"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final postSummaryNotification(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;ILcom/jichi/ob/AutoSyncWorker$AutoSyncResult;Ljava/lang/String;)V
    .locals 15

    move/from16 v0, p3

    .line 717
    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    .line 718
    invoke-direct {p0}, Lcom/jichi/ob/AutoSyncWorker;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 720
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getFailed()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 721
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v7

    const-string/jumbo v8, "\u6761"

    const-string/jumbo v9, "\u2705 \u65b0\u4e0a\u4f20"

    if-lez v7, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v7

    const-string v10, " \u00b7 "

    if-lez v7, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_2
    const-string/jumbo v7, "\u274c \u5931\u8d25"

    if-eqz v3, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getFailed()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v8

    if-nez v8, :cond_4

    if-nez v3, :cond_4

    const-string/jumbo v8, "\ud83d\udccb \u65e0\u65b0\u8bb0\u5f55"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSkipped()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSkipped()I

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " \u00b7 \u8df3\u8fc7"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 728
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v11

    const-string v12, "\n"

    const-string/jumbo v13, "\u6761\n"

    if-lez v11, :cond_6

    .line 730
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSuccessDetails()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 898
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 731
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 733
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getFailed()I

    move-result v9

    if-lez v9, :cond_7

    .line 734
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getFailed()I

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getFailedDetails()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 900
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 735
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 737
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSkipped()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSkipped()I

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u23ed\ufe0f \u8df3\u8fc7"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\u6761\uff08\u5df2\u5728\u540c\u6b65\u8bb0\u5fc6\uff09\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u6e90:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u2192 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v9, p5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " | \u95f4\u9694"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\u5206\u949f | \u4e0b\u6b21\u7ea6"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "\u5206\u949f\u540e"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "jichi_ob_autosync"

    invoke-direct {v7, v8, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    .line 743
    const-string/jumbo v8, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB \u81ea\u52a8\u540c\u6b65\uff08\u90e8\u5206\u5931\u8d25\uff09"

    goto :goto_3

    :cond_9
    const-string/jumbo v8, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB \u81ea\u52a8\u540c\u6b65"

    :goto_3
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 744
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 745
    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-eqz v3, :cond_a

    const v3, 0x1080078

    goto :goto_4

    :cond_a
    const v3, 0x108005f

    .line 746
    :goto_4
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 747
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 748
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 749
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 750
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x3eb

    .line 752
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private final suuntoSubscriptionKey()Ljava/lang/String;
    .locals 1

    .line 636
    sget-object v0, Lcom/jichi/ob/api/SuuntoApi;->Companion:Lcom/jichi/ob/api/SuuntoApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/SuuntoApi$Companion;->isBuiltinConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jichi/ob/api/SuuntoApi;->Companion:Lcom/jichi/ob/api/SuuntoApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/SuuntoApi$Companion;->getBUILTIN_SUBSCRIPTION_KEY()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->getSuuntoSubscriptionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final updateForeground(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)V
    .locals 2

    .line 705
    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3ea

    .line 706
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/AutoSyncWorker;->buildForegroundNotification(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 66
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/jichi/ob/AutoSyncWorker$doWork$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;

    iget v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;

    invoke-direct {v2, v1, v0}, Lcom/jichi/ob/AutoSyncWorker$doWork$1;-><init>(Lcom/jichi/ob/AutoSyncWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 78
    iget v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I

    const-string v5, "getApplicationContext(...)"

    const-string v8, "igp"

    const-string/jumbo v9, "\u6761"

    const-string/jumbo v10, "\u2192"

    const-string v11, "AutoSyncWorker"

    const-string/jumbo v12, "\u3001"

    const-string v15, "null cannot be cast to non-null type android.app.NotificationManager"

    const-string v14, "notification"

    const-string v6, "igp_int"

    const-string v18, ""

    packed-switch v4, :pswitch_data_0

    move-object v5, v1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    iget v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I

    iget v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v2, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v24, v11

    move-object v10, v14

    move-object v11, v15

    move-object v5, v1

    move v4, v3

    move-object v15, v9

    goto/16 :goto_6e

    :catch_0
    move-exception v0

    move-object v7, v5

    move-object/from16 v24, v11

    move-object v10, v14

    move-object v11, v15

    :goto_1
    const/16 v19, 0x0

    move-object v5, v1

    goto/16 :goto_74

    :pswitch_1
    iget-boolean v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->Z$0:Z

    iget v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    iget v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I

    iget v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I

    move/from16 v21, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$26:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$25:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$24:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$23:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$22:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$21:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$20:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$19:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$18:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    move-object/from16 v22, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$17:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v23, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$16:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v24, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$15:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v25, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$14:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v26, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$13:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v27, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$12:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/SyncTask;

    move-object/from16 v28, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$11:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    move-object/from16 v29, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$10:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v30, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$9:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v31, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$8:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v32, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$7:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v33, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v34, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v35, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v36, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v37, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v38, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v39, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v45, v2

    move-object/from16 v58, v4

    move-object/from16 v49, v5

    move-object/from16 v46, v24

    move-object/from16 v47, v25

    move-object/from16 v48, v26

    move-object/from16 v50, v27

    move-object/from16 v54, v31

    move-object/from16 v4, v33

    const/4 v2, 0x5

    move-object v5, v1

    move-object/from16 v31, v9

    move-object/from16 v27, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    move-object/from16 v1, v22

    move-object/from16 v14, v35

    move-object v9, v3

    move v10, v7

    move-object/from16 v22, v8

    move/from16 v7, v21

    move-object/from16 v3, v38

    move-object v8, v6

    move-object/from16 v21, v12

    move-object/from16 v6, v39

    goto/16 :goto_4f

    :catch_1
    move-exception v0

    move-object/from16 v45, v2

    move-object v2, v4

    move-object/from16 v49, v5

    move-object/from16 v46, v24

    move-object/from16 v47, v25

    move-object/from16 v48, v26

    move-object/from16 v50, v27

    move-object/from16 v51, v28

    move-object/from16 v52, v29

    move-object/from16 v4, v30

    move-object/from16 v54, v31

    move-object/from16 v55, v32

    move-object/from16 v56, v33

    move-object/from16 v57, v34

    move-object v5, v1

    move-object/from16 v31, v9

    move-object/from16 v27, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    move/from16 v29, v21

    move-object/from16 v30, v23

    move-object/from16 v14, v35

    move-object/from16 v35, v38

    move-object v9, v3

    move-object/from16 v21, v12

    move v3, v13

    move-object/from16 v23, v22

    move-object/from16 v13, v36

    move-object/from16 v12, v37

    move-object/from16 v22, v8

    move-object v8, v6

    move-object/from16 v6, v39

    goto/16 :goto_59

    :pswitch_2
    iget v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$4:I

    move-object v4, v12

    iget-wide v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->J$0:J

    iget v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$3:I

    iget v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    iget v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I

    iget v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I

    move-object/from16 v21, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$22:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$21:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$20:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v22, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$19:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$18:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    move-object/from16 v23, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$17:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v24, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$16:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v25, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$15:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v26, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$14:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v27, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$13:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v28, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$12:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/SyncTask;

    move-object/from16 v29, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$11:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    move-object/from16 v30, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$10:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v31, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$9:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v32, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$8:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v33, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$7:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v34, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v35, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v36, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v37, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v38, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v39, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v40, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v49, v5

    move/from16 v47, v7

    move-object/from16 v54, v8

    move-object/from16 v45, v23

    move-object/from16 v52, v27

    move-object/from16 v48, v31

    move-object v5, v1

    move-object v7, v4

    move-object/from16 v31, v9

    move-object/from16 v27, v10

    move/from16 v23, v12

    move-object/from16 v1, v25

    move-object/from16 v4, v26

    move-object/from16 v12, v36

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    move-object/from16 v36, v22

    move-object/from16 v15, v34

    move-object/from16 v14, v38

    move-object/from16 v22, v6

    move-object/from16 v6, v24

    move-object/from16 v24, v11

    goto/16 :goto_33

    :catch_2
    move-exception v0

    move-object/from16 v22, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v22

    move-object/from16 v42, v2

    move-object v2, v4

    move-object/from16 v49, v5

    move-object/from16 v22, v6

    move/from16 v47, v7

    move-object/from16 v54, v8

    move/from16 v46, v13

    move-object/from16 v45, v23

    move-object/from16 v4, v24

    move-object/from16 v43, v25

    move-object/from16 v52, v27

    move-object/from16 v48, v31

    move-object/from16 v53, v32

    move-object/from16 v51, v33

    move-object/from16 v13, v35

    move-object/from16 v7, v40

    move-object v5, v1

    move-object/from16 v31, v9

    move-object/from16 v27, v10

    move-object/from16 v24, v11

    move/from16 v23, v12

    move-object/from16 v25, v15

    move-object/from16 v33, v26

    move-object/from16 v32, v28

    move-object/from16 v15, v34

    move-object/from16 v12, v36

    move-object/from16 v10, v37

    move-object/from16 v11, v39

    move-object/from16 v26, v14

    move-object/from16 v14, v38

    goto/16 :goto_3a

    :pswitch_3
    move-object/from16 v21, v12

    iget v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    iget v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I

    iget v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$20:Ljava/lang/Object;

    check-cast v13, Lcom/jichi/ob/model/DataSource;

    move/from16 v22, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$19:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    move-object/from16 v23, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$18:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    move-object/from16 v24, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$17:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v25, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$16:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v26, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$15:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v27, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$14:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v28, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$13:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v29, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$12:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/SyncTask;

    move-object/from16 v30, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$11:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    move-object/from16 v31, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$10:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v32, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$9:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v33, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$8:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v34, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$7:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v35, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v36, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v37, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v38, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v39, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v40, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v41, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v49, v9

    move-object v9, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v35

    move-object/from16 v35, v33

    move-object/from16 v33, v32

    move-object/from16 v32, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v49

    move-object/from16 v49, v5

    move-object/from16 v54, v8

    move/from16 v62, v12

    move/from16 v61, v22

    move-object/from16 v8, v34

    move-object/from16 v12, v37

    move-object v5, v1

    move-object/from16 v34, v2

    move-object/from16 v37, v4

    move-object/from16 v22, v6

    move-object/from16 v4, v24

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    move-object/from16 v6, v30

    move-object/from16 v27, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v14

    move-object/from16 v30, v28

    move-object/from16 v10, v38

    move-object/from16 v14, v39

    move-object/from16 v11, v40

    move/from16 v28, v7

    move-object/from16 v7, v41

    goto/16 :goto_29

    :catch_3
    move-exception v0

    move-object v5, v1

    move-object v2, v4

    move v3, v7

    move-object/from16 v24, v11

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v4, v40

    move-object/from16 v7, v41

    :goto_2
    const/16 v19, 0x0

    goto/16 :goto_74

    :pswitch_4
    move-object/from16 v21, v12

    iget v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    iget v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I

    iget v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$23:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$22:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$21:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$20:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$19:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$18:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$17:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    move/from16 v22, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$16:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v23, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$15:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v24, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$14:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$13:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$12:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/SyncTask;

    move-object/from16 v25, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$11:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    move-object/from16 v26, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$10:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v27, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$9:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v28, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$8:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v29, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$7:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v30, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v31, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v32, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v33, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v34, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v35, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v36, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v47, v31

    move-object/from16 v31, v9

    move-object/from16 v9, v47

    move-object/from16 v49, v5

    move-object/from16 v54, v8

    move-object/from16 v53, v23

    move-object/from16 v5, v24

    move-object/from16 v50, v25

    move-object/from16 v47, v26

    move-object/from16 v51, v27

    move-object v8, v6

    move-object/from16 v27, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    move-object/from16 v14, v34

    move-object v6, v4

    move-object/from16 v4, v30

    goto/16 :goto_1a

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v10, v14

    move-object v11, v15

    goto/16 :goto_77

    :catch_4
    move-exception v0

    move-object/from16 v45, v31

    move-object/from16 v31, v9

    move-object/from16 v9, v45

    move-object/from16 v45, v2

    move-object v2, v4

    move-object/from16 v49, v5

    move-object/from16 v54, v8

    move-object/from16 v53, v23

    move-object/from16 v55, v24

    move-object/from16 v50, v25

    move-object/from16 v47, v26

    move-object/from16 v51, v27

    move-object/from16 v48, v28

    move-object/from16 v56, v29

    move-object/from16 v4, v35

    move-object/from16 v5, v36

    move-object v8, v6

    move v6, v7

    move-object/from16 v27, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v14

    move-object/from16 v25, v15

    move/from16 v23, v22

    move-object/from16 v10, v30

    move-object/from16 v7, v33

    move-object/from16 v14, v34

    move v15, v12

    move-object/from16 v12, v32

    goto/16 :goto_22

    :pswitch_5
    move-object/from16 v21, v12

    iget v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    iget v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I

    iget v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I

    iget-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v22, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    move-object/from16 v23, v4

    iget-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    :try_start_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v22, v6

    move-object/from16 v31, v9

    move-object v9, v13

    move v13, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v8

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move/from16 v31, v22

    move-object/from16 v22, v6

    move/from16 v6, v31

    move-object/from16 v31, v9

    move-object v9, v13

    move v13, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v8

    goto/16 :goto_a

    :pswitch_6
    move-object/from16 v21, v12

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v1}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/jichi/ob/api/GarminApi$Companion;->setAppContext(Landroid/content/Context;)V

    .line 80
    sget-boolean v0, Lcom/jichi/ob/AutoSyncWorker;->syncing:Z

    if-eqz v0, :cond_1

    .line 81
    const-string/jumbo v0, "\u624b\u52a8\u540c\u6b65\u8fdb\u884c\u4e2d\uff0c\u8df3\u8fc7\u672c\u6b21\u81ea\u52a8\u540c\u6b65"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string/jumbo v0, "\u23ed\ufe0f \u81ea\u52a8\u540c\u6b65\u88ab\u8df3\u8fc7\uff1a\u624b\u52a8\u540c\u6b65\u6b63\u5728\u8fdb\u884c\u4e2d"

    invoke-direct {v1, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string/jumbo v2, "success(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 86
    :cond_1
    invoke-direct {v1}, Lcom/jichi/ob/AutoSyncWorker;->createNotificationChannel()V

    .line 88
    sget-object v0, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    iget-object v4, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v4}, Lcom/jichi/ob/util/PrefsManager;->getLastSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    :cond_2
    move-object v4, v0

    .line 90
    iget-object v0, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->getLastTargets()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 819
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 828
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 827
    check-cast v12, Ljava/lang/String;

    .line 90
    sget-object v13, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v13, v12}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 827
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 831
    :cond_4
    check-cast v7, Ljava/util/List;

    .line 819
    check-cast v7, Ljava/lang/Iterable;

    .line 90
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 832
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 833
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/jichi/ob/model/DataSource;

    if-eq v13, v4, :cond_5

    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 834
    :cond_6
    check-cast v7, Ljava/util/List;

    .line 91
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    iget-object v7, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v7}, Lcom/jichi/ob/util/PrefsManager;->getLastTarget()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    :cond_7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 92
    :cond_8
    iget-object v0, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->getAutoInterval()I

    move-result v0

    const/16 v12, 0x384

    invoke-static {v0, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v12

    .line 93
    div-int/lit8 v13, v12, 0x3c

    .line 94
    move-object/from16 v22, v7

    check-cast v22, Ljava/lang/Iterable;

    move-object/from16 v23, v21

    check-cast v23, Ljava/lang/CharSequence;

    new-instance v28, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda3;

    invoke-direct/range {v28 .. v28}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda3;-><init>()V

    const/16 v29, 0x1e

    const/16 v30, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v31, v9

    invoke-static/range {v22 .. v30}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 101
    :try_start_6
    invoke-virtual {v4}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    move-object/from16 v22, v6

    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 v23, v8

    :try_start_8
    const-string/jumbo v8, "\u6b63\u5728\u68c0\u6d4b: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    .line 100
    invoke-direct {v1, v0, v4, v6, v13}, Lcom/jichi/ob/AutoSyncWorker;->createForegroundInfo(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)Landroidx/work/ForegroundInfo;

    move-result-object v0

    iput-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I

    iput v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I

    const/4 v6, 0x0

    iput v6, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    const/4 v6, 0x1

    iput v6, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I

    invoke-virtual {v1, v0, v2}, Lcom/jichi/ob/AutoSyncWorker;->setForeground(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    if-ne v0, v3, :cond_9

    :goto_5
    move-object v5, v1

    :goto_6
    move-object v9, v3

    goto/16 :goto_6d

    .line 105
    :cond_9
    :goto_7
    :try_start_9
    const-string/jumbo v0, "setForeground\u6210\u529f"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v0, 0x1

    goto :goto_b

    :catch_6
    move-exception v0

    const/4 v6, 0x1

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    move-object/from16 v22, v6

    :goto_8
    move-object/from16 v23, v8

    :goto_9
    const/4 v6, 0x0

    .line 107
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    move/from16 v24, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v25, v7

    const-string/jumbo v7, "setForeground\u5931\u8d25\uff0c\u964d\u7ea7\u4e3a\u666e\u901a\u901a\u77e5: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v11, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    invoke-virtual {v1}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 111
    invoke-virtual {v4}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u6b63\u5728\u68c0\u6d4b: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-static/range {v25 .. v25}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/model/DataSource;

    .line 110
    invoke-direct {v1, v6, v4, v7, v13}, Lcom/jichi/ob/AutoSyncWorker;->buildForegroundNotification(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)Landroid/app/Notification;

    move-result-object v6

    const/16 v7, 0x3ea

    invoke-virtual {v0, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v0, v24

    move-object/from16 v7, v25

    .line 118
    :goto_b
    :try_start_a
    iget-object v6, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v6}, Lcom/jichi/ob/util/PrefsManager;->getTasks()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 835
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .line 836
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_70
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v24, :cond_b

    move-object/from16 v24, v6

    :try_start_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, Lcom/jichi/ob/model/SyncTask;

    .line 118
    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/model/SyncTask;->getEnabled()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/jichi/ob/model/SyncTask;->getAutoSync()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 836
    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_a
    move-object/from16 v6, v24

    goto :goto_c

    :catch_a
    move-exception v0

    move-object v5, v1

    move-object v2, v4

    move-object v4, v9

    move-object/from16 v24, v11

    move v3, v13

    move-object v10, v14

    move-object v11, v15

    goto/16 :goto_2

    .line 837
    :cond_b
    :try_start_c
    check-cast v8, Ljava/util/List;

    .line 119
    move-object v6, v8

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_70
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v6, :cond_5e

    .line 120
    :try_start_d
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v24, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v24 .. v24}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v25, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v25 .. v25}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 122
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    check-cast v26, Ljava/util/List;

    .line 123
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    check-cast v27, Ljava/util/List;

    .line 124
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    check-cast v28, Ljava/util/List;

    .line 125
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    check-cast v29, Ljava/util/List;

    .line 126
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v46, v4

    move-object v4, v2

    move-object/from16 v2, v46

    move-object/from16 v46, v7

    move-object v7, v6

    move-object/from16 v6, v30

    move/from16 v30, v13

    move-object/from16 v13, v46

    move/from16 v46, v12

    move-object/from16 v12, v24

    move-object/from16 v24, v11

    move-object v11, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v27

    move-object/from16 v27, v10

    move-object/from16 v10, v26

    move-object/from16 v26, v14

    move-object v14, v8

    move-object/from16 v8, v29

    move/from16 v29, v0

    :goto_d
    :try_start_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_69
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v0, :cond_4f

    :try_start_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v47, v6

    move-object v6, v0

    check-cast v6, Lcom/jichi/ob/model/SyncTask;

    .line 128
    new-instance v0, Lcom/jichi/ob/util/TrialLicense;

    move-object/from16 v48, v15

    invoke-virtual {v1}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lcom/jichi/ob/util/TrialLicense;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jichi/ob/util/TrialLicense;->isAllowed()Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-nez v0, :cond_c

    .line 129
    :try_start_10
    invoke-virtual {v6}, Lcom/jichi/ob/model/SyncTask;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ": \u26a0\ufe0f \u4f53\u9a8c\u8ba1\u5212\u5df2\u8fc7\u671f\uff0c\u8df3\u8fc7\u81ea\u52a8\u540c\u6b65\uff08\u6253\u5f00App\u66f4\u65b0\u4f53\u9a8c\u7801\uff09"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v6}, Lcom/jichi/ob/model/SyncTask;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v49, v5

    const-string/jumbo v5, "\u26a0\ufe0f [\u81ea\u52a8] \u4f53\u9a8c\u8ba1\u5212\u5df2\u8fc7\u671f\uff0c\u8df3\u8fc7\u4efb\u52a1\u300c"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\u300d\u81ea\u52a8\u540c\u6b65\uff0c\u8bf7\u5728App\u5185\u66f4\u65b0\u4f53\u9a8c\u7801"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 131
    iget-object v0, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    const-string/jumbo v5, "{}"

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v15, v15, v5}, Lcom/jichi/ob/model/SyncTask;->copyRun(IIILjava/lang/String;)Lcom/jichi/ob/model/SyncTask;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jichi/ob/util/PrefsManager;->upsertTask(Lcom/jichi/ob/model/SyncTask;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v6, v47

    move-object/from16 v15, v48

    move-object/from16 v5, v49

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v5, v1

    move-object v4, v11

    move-object v7, v13

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move/from16 v3, v30

    goto/16 :goto_2

    :cond_c
    move-object/from16 v49, v5

    .line 134
    :try_start_11
    invoke-virtual {v6}, Lcom/jichi/ob/model/SyncTask;->getSources()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 838
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 847
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5f
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v15, :cond_e

    :try_start_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 846
    check-cast v15, Ljava/lang/String;

    move-object/from16 v50, v6

    .line 134
    sget-object v6, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v6, v15}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 846
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_d
    move-object/from16 v6, v50

    goto :goto_e

    :cond_e
    move-object/from16 v50, v6

    .line 850
    :try_start_13
    check-cast v5, Ljava/util/List;

    .line 838
    check-cast v5, Ljava/lang/Iterable;

    .line 134
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-virtual/range {v50 .. v50}, Lcom/jichi/ob/model/SyncTask;->getTargets()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 851
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 860
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5f
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v15, :cond_10

    :try_start_14
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 859
    check-cast v15, Ljava/lang/String;

    move-object/from16 v32, v5

    .line 135
    sget-object v5, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v5, v15}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 859
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_f
    move-object/from16 v5, v32

    goto :goto_f

    .line 863
    :cond_10
    :try_start_15
    check-cast v6, Ljava/util/List;

    .line 851
    check-cast v6, Ljava/lang/Iterable;

    .line 135
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 864
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 865
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5f
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v15, :cond_12

    :try_start_16
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v32, v5

    move-object v5, v15

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v51, v8

    .line 136
    sget-object v8, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    if-eq v5, v8, :cond_11

    sget-object v8, Lcom/jichi/ob/model/DataSource;->KEEP:Lcom/jichi/ob/model/DataSource;

    if-eq v5, v8, :cond_11

    .line 865
    invoke-interface {v6, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :cond_11
    move-object/from16 v5, v32

    move-object/from16 v8, v51

    goto :goto_10

    :cond_12
    move-object/from16 v51, v8

    .line 866
    :try_start_17
    check-cast v6, Ljava/util/List;

    .line 137
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 138
    new-instance v32, Ljava/util/LinkedHashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v32, Ljava/util/Map;

    .line 140
    invoke-virtual/range {v50 .. v50}, Lcom/jichi/ob/model/SyncTask;->getWorkoutTargets()Ljava/util/List;

    move-result-object v33

    check-cast v33, Ljava/util/Collection;

    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->isEmpty()Z

    move-result v33
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5f
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-nez v33, :cond_22

    move-object/from16 v33, v6

    .line 141
    :try_start_18
    invoke-virtual/range {v50 .. v50}, Lcom/jichi/ob/model/SyncTask;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v52, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v53, v8

    const-string/jumbo v8, "\ud83d\udcc5 [\u81ea\u52a8][\u8bfe\u8868] \u7eaf\u8bfe\u8868\u6a21\u5f0f: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\uff0c\u8df3\u8fc7\u6d3b\u52a8\u540c\u6b65"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 142
    iget-object v6, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    sget-object v8, Lcom/jichi/ob/model/DataSource;->INTERVALS_ICU:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v6, v8}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    move-object/from16 v36, v18

    goto :goto_11

    :cond_13
    move-object/from16 v36, v6

    .line 143
    :goto_11
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x5

    if-le v6, v8, :cond_21

    .line 144
    invoke-virtual/range {v50 .. v50}, Lcom/jichi/ob/model/SyncTask;->getWorkoutTargets()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 867
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_22
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-eqz v8, :cond_16

    :try_start_19
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    move-object/from16 v34, v6

    move-object/from16 v6, v23

    .line 144
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_15

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-eqz v15, :cond_14

    goto :goto_13

    :cond_14
    move-object/from16 v23, v6

    move-object/from16 v22, v8

    move-object/from16 v6, v34

    goto :goto_12

    :cond_15
    move-object/from16 v23, v8

    move-object/from16 v8, v22

    goto :goto_13

    :cond_16
    move-object/from16 v8, v22

    move-object/from16 v6, v23

    const/16 v23, 0x0

    :goto_13
    :try_start_1a
    move-object/from16 v15, v23

    check-cast v15, Ljava/lang/String;

    .line 145
    invoke-virtual/range {v50 .. v50}, Lcom/jichi/ob/model/SyncTask;->getWorkoutTargets()Ljava/util/List;

    move-result-object v22

    check-cast v22, Ljava/lang/Iterable;

    .line 869
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_14
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_22
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v23, :cond_18

    :try_start_1b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v54, v6

    move-object/from16 v6, v23

    check-cast v6, Ljava/lang/String;

    move-object/from16 v55, v5

    .line 145
    const-string v5, "bryton"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    if-eqz v5, :cond_17

    goto :goto_15

    :cond_17
    move-object/from16 v6, v54

    move-object/from16 v5, v55

    goto :goto_14

    :cond_18
    move-object/from16 v55, v5

    move-object/from16 v54, v6

    const/16 v23, 0x0

    :goto_15
    :try_start_1c
    check-cast v23, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_22
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-eqz v15, :cond_1a

    .line 148
    :try_start_1d
    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Lcom/jichi/ob/model/DataSource;->IGPSPORT_INT:Lcom/jichi/ob/model/DataSource;

    goto :goto_16

    :cond_19
    sget-object v5, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    .line 149
    :goto_16
    iget-object v6, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v6, v5}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    goto :goto_18

    :catch_c
    move-exception v0

    move-object/from16 v56, v3

    move-object/from16 v45, v4

    move-object v4, v11

    move-object v5, v13

    move-object/from16 v3, v28

    move/from16 v23, v29

    move/from16 v6, v30

    move/from16 v15, v46

    :goto_17
    move-object/from16 v13, v52

    goto/16 :goto_22

    :cond_1a
    :goto_18
    move-object/from16 v5, v18

    :cond_1b
    if-eqz v23, :cond_1c

    .line 151
    iget-object v6, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v6}, Lcom/jichi/ob/util/PrefsManager;->getBrytonCookie()Ljava/lang/String;

    move-result-object v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    move-object/from16 v35, v6

    goto :goto_19

    :cond_1c
    const/16 v35, 0x0

    :goto_19
    move-object/from16 v6, v32

    .line 152
    :try_start_1e
    sget-object v32, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    .line 153
    move-object/from16 v22, v5

    check-cast v22, Ljava/lang/CharSequence;

    invoke-static/range {v22 .. v22}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_1d

    const/16 v22, 0x0

    :cond_1d
    check-cast v22, Ljava/lang/String;

    .line 154
    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v34

    .line 157
    invoke-virtual/range {v50 .. v50}, Lcom/jichi/ob/model/SyncTask;->getWorkoutFutureDays()I

    move-result v37

    .line 158
    invoke-virtual/range {v50 .. v50}, Lcom/jichi/ob/model/SyncTask;->getWorkoutHistoryDays()I

    move-result v38

    move-object/from16 v39, v5

    .line 160
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v5}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutSyncedIds()Ljava/util/Set;

    move-result-object v40

    .line 161
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v5}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutHashes()Ljava/util/Map;

    move-result-object v41

    .line 152
    new-instance v5, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/ob/AutoSyncWorker;)V

    move-object/from16 v42, v5

    new-instance v5, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/ob/AutoSyncWorker;)V

    move-object/from16 v43, v5

    new-instance v5, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda7;

    invoke-direct {v5, v1}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda7;-><init>(Lcom/jichi/ob/AutoSyncWorker;)V

    iput-object v2, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v13, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v11, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v14, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v7, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v12, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$5:Ljava/lang/Object;

    iput-object v9, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$6:Ljava/lang/Object;

    iput-object v10, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$7:Ljava/lang/Object;

    iput-object v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$8:Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    move-object/from16 v56, v3

    move-object/from16 v3, v48

    :try_start_1f
    iput-object v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$9:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    move-object/from16 v48, v3

    move-object/from16 v3, v51

    :try_start_20
    iput-object v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$10:Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1b
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move-object/from16 v51, v3

    move-object/from16 v3, v47

    :try_start_21
    iput-object v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$11:Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1a
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    move-object/from16 v47, v3

    move-object/from16 v3, v50

    :try_start_22
    iput-object v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$12:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$13:Ljava/lang/Object;

    invoke-static/range {v33 .. v33}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$14:Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_19
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    move-object/from16 v50, v3

    move-object/from16 v3, v55

    :try_start_23
    iput-object v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$15:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_18
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    move-object/from16 v55, v3

    move-object/from16 v3, v53

    :try_start_24
    iput-object v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$16:Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_17
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    move-object/from16 v53, v3

    move-object/from16 v3, v52

    :try_start_25
    iput-object v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$17:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$18:Ljava/lang/Object;

    invoke-static/range {v36 .. v36}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$19:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$20:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$21:Ljava/lang/Object;

    invoke-static/range {v39 .. v39}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$22:Ljava/lang/Object;

    invoke-static/range {v35 .. v35}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$23:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$24:Ljava/lang/Object;

    iput-object v6, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$25:Ljava/lang/Object;

    iput-object v6, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$26:Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_16
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    move/from16 v15, v46

    :try_start_26
    iput v15, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_15
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    move/from16 v6, v30

    :try_start_27
    iput v6, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_14
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    move-object/from16 v52, v3

    move/from16 v3, v29

    :try_start_28
    iput v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_13
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    move/from16 v23, v3

    const/4 v3, 0x2

    :try_start_29
    iput v3, v4, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_12
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    const/16 v39, 0x0

    move-object/from16 v45, v4

    move-object/from16 v44, v5

    move-object/from16 v33, v22

    :try_start_2a
    invoke-virtual/range {v32 .. v45}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_11
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    move-object/from16 v3, v28

    if-ne v0, v3, :cond_1e

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v33, v7

    move-object v4, v10

    move-object/from16 v35, v11

    move-object/from16 v32, v12

    move-object/from16 v36, v13

    move v12, v15

    move/from16 v22, v23

    move-object/from16 v28, v48

    move-object/from16 v13, v52

    move-object/from16 v5, v55

    move-object/from16 v29, v56

    move v7, v6

    move-object v6, v2

    move-object/from16 v2, v45

    .line 78
    :goto_1a
    :try_start_2b
    check-cast v0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    .line 165
    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getListed()I

    move-result v10

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v11

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getSkipped()I

    move-result v15
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_10
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    move-object/from16 v23, v2

    :try_start_2c
    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getFailed()I

    move-result v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_f
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    move-object/from16 v30, v4

    :try_start_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_e
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    move-object/from16 v34, v6

    :try_start_2e
    const-string/jumbo v6, "\ud83d\udcca [\u8bfe\u8868] \u5b8c\u6210: \u5217\u51fa"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u4e0a\u4f20"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u8df3\u8fc7"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u5931\u8d25"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v2

    if-lez v2, :cond_1f

    move-object/from16 v4, v30

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u8bfe\u8868 "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " \u4e2a"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1f
    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v0

    iput v0, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_d
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    move-object v10, v9

    move/from16 v46, v12

    move-object v15, v13

    move-object/from16 v4, v23

    move-object/from16 v48, v28

    move-object/from16 v56, v29

    move-object/from16 v12, v32

    move-object/from16 v23, v34

    move-object/from16 v11, v35

    move-object/from16 v13, v36

    move-object/from16 v6, v50

    move-object/from16 v0, v51

    move-object/from16 v9, v53

    move/from16 v29, v22

    move/from16 v22, v7

    move-object/from16 v7, v33

    goto/16 :goto_27

    :catch_d
    move-exception v0

    goto :goto_1d

    :catch_e
    move-exception v0

    goto :goto_1c

    :catch_f
    move-exception v0

    goto :goto_1b

    :catch_10
    move-exception v0

    move-object/from16 v23, v2

    :goto_1b
    move-object/from16 v30, v4

    :goto_1c
    move-object/from16 v34, v6

    :goto_1d
    move-object/from16 v55, v5

    move v6, v7

    move v15, v12

    move-object/from16 v45, v23

    move-object/from16 v48, v28

    move-object/from16 v56, v29

    move-object/from16 v10, v30

    move-object/from16 v12, v32

    move-object/from16 v7, v33

    move-object/from16 v2, v34

    move-object/from16 v4, v35

    move-object/from16 v5, v36

    move/from16 v23, v22

    goto/16 :goto_22

    :catch_11
    move-exception v0

    goto :goto_1f

    :catch_12
    move-exception v0

    goto :goto_1e

    :catch_13
    move-exception v0

    move/from16 v23, v3

    :goto_1e
    move-object/from16 v45, v4

    :goto_1f
    move-object/from16 v3, v28

    goto :goto_21

    :catch_14
    move-exception v0

    move-object/from16 v52, v3

    move-object/from16 v45, v4

    move-object/from16 v3, v28

    move/from16 v23, v29

    goto :goto_21

    :catch_15
    move-exception v0

    move-object/from16 v52, v3

    move-object/from16 v45, v4

    move-object/from16 v3, v28

    move/from16 v23, v29

    move/from16 v6, v30

    goto :goto_21

    :catch_16
    move-exception v0

    move-object/from16 v52, v3

    goto :goto_20

    :catch_17
    move-exception v0

    move-object/from16 v53, v3

    goto :goto_20

    :catch_18
    move-exception v0

    move-object/from16 v55, v3

    goto :goto_20

    :catch_19
    move-exception v0

    move-object/from16 v50, v3

    goto :goto_20

    :catch_1a
    move-exception v0

    move-object/from16 v47, v3

    goto :goto_20

    :catch_1b
    move-exception v0

    move-object/from16 v51, v3

    goto :goto_20

    :catch_1c
    move-exception v0

    move-object/from16 v48, v3

    goto :goto_20

    :catch_1d
    move-exception v0

    move-object/from16 v56, v3

    :goto_20
    move-object/from16 v45, v4

    move-object/from16 v3, v28

    move/from16 v23, v29

    move/from16 v6, v30

    move/from16 v15, v46

    :goto_21
    move-object v4, v11

    move-object v5, v13

    goto/16 :goto_17

    .line 169
    :goto_22
    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_20
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    if-eqz v0, :cond_20

    const/16 v11, 0x3c

    :try_start_30
    invoke-static {v0, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_1e
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    goto :goto_23

    :catch_1e
    move-exception v0

    goto :goto_25

    :cond_20
    const/4 v0, 0x0

    :goto_23
    :try_start_31
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_20
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    move-object/from16 v22, v2

    :try_start_32
    const-string/jumbo v2, "\u274c [\u81ea\u52a8][\u8bfe\u8868] \u5f02\u5e38: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 170
    iput v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_1f
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    move-object v11, v4

    move-object/from16 v30, v10

    move/from16 v46, v15

    move/from16 v29, v23

    move-object/from16 v4, v45

    move-object/from16 v0, v51

    move-object v10, v9

    move-object v15, v13

    move-object/from16 v23, v22

    move-object/from16 v9, v53

    move-object v13, v5

    move/from16 v22, v6

    move-object/from16 v6, v50

    move-object/from16 v5, v55

    goto :goto_27

    :catch_1f
    move-exception v0

    move-object v7, v5

    move v3, v6

    move-object/from16 v2, v22

    goto :goto_26

    :catchall_1
    move-exception v0

    move-object v5, v1

    :goto_24
    move-object/from16 v11, v25

    move-object/from16 v10, v26

    goto/16 :goto_77

    :catch_20
    move-exception v0

    move-object/from16 v22, v2

    :goto_25
    move-object v7, v5

    move v3, v6

    :goto_26
    move-object/from16 v11, v25

    move-object/from16 v10, v26

    goto/16 :goto_1

    :cond_21
    move-object/from16 v56, v3

    move-object/from16 v45, v4

    move-object/from16 v55, v5

    move-object/from16 v8, v22

    move-object/from16 v54, v23

    move-object/from16 v3, v28

    move/from16 v23, v29

    move/from16 v6, v30

    move/from16 v15, v46

    move/from16 v22, v6

    move-object/from16 v30, v10

    move-object/from16 v6, v50

    move-object/from16 v0, v51

    move-object/from16 v15, v52

    move-object/from16 v23, v2

    move-object v10, v9

    move-object/from16 v9, v53

    .line 173
    :goto_27
    :try_start_33
    invoke-virtual {v6}, Lcom/jichi/ob/model/SyncTask;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v4

    iget v4, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v32, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ": \u8bfe\u8868 "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\u4e2a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, v1, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    iget v4, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v7, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-string/jumbo v9, "{}"

    invoke-virtual {v6, v4, v5, v7, v9}, Lcom/jichi/ob/model/SyncTask;->copyRun(IIILjava/lang/String;)Lcom/jichi/ob/model/SyncTask;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jichi/ob/util/PrefsManager;->upsertTask(Lcom/jichi/ob/model/SyncTask;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_21
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    move-object v9, v10

    move-object/from16 v2, v23

    move-object/from16 v4, v28

    move-object/from16 v10, v30

    move-object/from16 v7, v32

    move-object/from16 v6, v47

    move-object/from16 v15, v48

    move-object/from16 v5, v49

    move-object/from16 v23, v54

    move-object/from16 v28, v3

    move/from16 v30, v22

    move-object/from16 v3, v56

    move-object/from16 v22, v8

    move-object v8, v0

    goto/16 :goto_d

    :catch_21
    move-exception v0

    move-object v5, v1

    move-object v4, v11

    move-object v7, v13

    move/from16 v3, v22

    move-object/from16 v2, v23

    goto/16 :goto_3f

    :catch_22
    move-exception v0

    move/from16 v6, v30

    move-object v5, v1

    move v3, v6

    goto/16 :goto_62

    :cond_22
    move-object/from16 v56, v3

    move-object/from16 v45, v4

    move-object/from16 v55, v5

    move-object/from16 v33, v6

    move-object/from16 v53, v8

    move-object/from16 v52, v15

    move-object/from16 v8, v22

    move-object/from16 v54, v23

    move-object/from16 v3, v28

    move/from16 v23, v29

    move/from16 v4, v30

    move-object/from16 v6, v32

    move/from16 v15, v46

    .line 177
    :try_start_34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_5e
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    move-object/from16 v28, v3

    move-object/from16 v60, v6

    move-object/from16 v22, v8

    move/from16 v62, v15

    move/from16 v61, v23

    move-object/from16 v29, v33

    move-object/from16 v3, v48

    move-object/from16 v6, v50

    move-object/from16 v1, v51

    move-object/from16 v59, v52

    move-object/from16 v58, v53

    move-object/from16 v57, v55

    move-object/from16 v8, v56

    move/from16 v23, v4

    move-object v15, v10

    move-object v4, v2

    move-object v10, v7

    move-object v7, v13

    move-object/from16 v2, v45

    move-object v13, v9

    move-object v9, v0

    move-object v0, v5

    move-object/from16 v5, v47

    :goto_28
    :try_start_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v30
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_5d
    .catchall {:try_start_35 .. :try_end_35} :catchall_3

    if-eqz v30, :cond_24

    :try_start_36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v32, v9

    move-object/from16 v9, v30

    check-cast v9, Lcom/jichi/ob/model/DataSource;

    .line 178
    iput-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v14, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$5:Ljava/lang/Object;

    iput-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$6:Ljava/lang/Object;

    iput-object v15, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$7:Ljava/lang/Object;

    iput-object v8, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$8:Ljava/lang/Object;

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$9:Ljava/lang/Object;

    iput-object v1, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$10:Ljava/lang/Object;

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$11:Ljava/lang/Object;

    iput-object v6, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$12:Ljava/lang/Object;

    move-object/from16 v30, v6

    move-object/from16 v6, v32

    iput-object v6, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$13:Ljava/lang/Object;

    move-object/from16 v32, v6

    move-object/from16 v6, v29

    iput-object v6, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$14:Ljava/lang/Object;

    move-object/from16 v29, v5

    move-object/from16 v5, v57

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$15:Ljava/lang/Object;

    move-object/from16 v33, v5

    move-object/from16 v5, v58

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$16:Ljava/lang/Object;

    move-object/from16 v43, v5

    move-object/from16 v5, v59

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$17:Ljava/lang/Object;

    move-object/from16 v44, v5

    move-object/from16 v5, v60

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$18:Ljava/lang/Object;

    iput-object v0, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$19:Ljava/lang/Object;

    iput-object v9, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$20:Ljava/lang/Object;

    move-object/from16 v45, v5

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$21:Ljava/lang/Object;

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$22:Ljava/lang/Object;

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$23:Ljava/lang/Object;

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$24:Ljava/lang/Object;

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$25:Ljava/lang/Object;

    iput-object v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$26:Ljava/lang/Object;

    move/from16 v5, v62

    iput v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_25
    .catchall {:try_start_36 .. :try_end_36} :catchall_3

    move/from16 v46, v5

    move/from16 v5, v23

    :try_start_37
    iput v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_24
    .catchall {:try_start_37 .. :try_end_37} :catchall_3

    move/from16 v23, v5

    move/from16 v5, v61

    :try_start_38
    iput v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    move/from16 v47, v5

    const/4 v5, 0x3

    iput v5, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_25
    .catchall {:try_start_38 .. :try_end_38} :catchall_3

    move-object/from16 v5, p0

    move-object/from16 v48, v1

    :try_start_39
    invoke-direct {v5, v9, v6, v2}, Lcom/jichi/ob/AutoSyncWorker;->doSync(Lcom/jichi/ob/model/DataSource;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_26
    .catchall {:try_start_39 .. :try_end_39} :catchall_2

    move-object/from16 v34, v9

    move-object/from16 v9, v28

    if-ne v1, v9, :cond_23

    goto/16 :goto_6d

    :cond_23
    move-object/from16 v28, v30

    move-object/from16 v30, v6

    move-object/from16 v6, v28

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v13

    move/from16 v28, v23

    move-object/from16 v13, v34

    move-object/from16 v3, v44

    move-object/from16 v4, v45

    move/from16 v62, v46

    move/from16 v61, v47

    move-object/from16 v23, v0

    move-object v0, v1

    move-object/from16 v34, v2

    move-object/from16 v1, v33

    move-object/from16 v2, v43

    move-object/from16 v33, v48

    .line 78
    :goto_29
    :try_start_3a
    check-cast v0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    move-object/from16 v38, v6

    .line 179
    iget v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v39

    add-int v6, v6, v39

    iput v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSkipped()I

    move-result v39

    add-int v6, v6, v39

    iput v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v6, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getFailed()I

    move-result v39

    add-int v6, v6, v39

    iput v6, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 180
    invoke-virtual {v13}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v13

    move-object/from16 v39, v1

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSkipped()I

    move-result v1

    move-object/from16 v40, v2

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getFailed()I

    move-result v2

    filled-new-array {v13, v1, v2}, [I

    move-result-object v1

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    move-object v1, v15

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSuccessDetails()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 182
    move-object v1, v8

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getFailedDetails()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 183
    move-object/from16 v1, v35

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSkippedDetails()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_23
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2

    move-object/from16 v59, v3

    move-object/from16 v60, v4

    move-object/from16 v0, v23

    move/from16 v23, v28

    move-object/from16 v5, v29

    move-object/from16 v29, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v13, v36

    move-object/from16 v4, v37

    move-object/from16 v6, v38

    move-object/from16 v57, v39

    move-object/from16 v58, v40

    move-object/from16 v28, v9

    move-object/from16 v9, v32

    goto/16 :goto_28

    :catchall_2
    move-exception v0

    goto/16 :goto_24

    :catch_23
    move-exception v0

    move-object v4, v11

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move/from16 v3, v28

    move-object/from16 v2, v37

    goto/16 :goto_2

    :catch_24
    move-exception v0

    move/from16 v23, v5

    goto :goto_2a

    :catch_25
    move-exception v0

    :goto_2a
    move-object/from16 v5, p0

    :goto_2b
    move-object v2, v4

    goto/16 :goto_3d

    :cond_24
    move-object/from16 v48, v1

    move-object/from16 v30, v6

    move-object/from16 v32, v9

    move-object/from16 v9, v28

    move-object/from16 v6, v29

    move-object/from16 v33, v57

    move-object/from16 v43, v58

    move-object/from16 v44, v59

    move-object/from16 v45, v60

    move/from16 v47, v61

    move/from16 v46, v62

    move-object/from16 v29, v5

    move-object/from16 v5, p0

    .line 187
    :try_start_3b
    invoke-virtual/range {v30 .. v30}, Lcom/jichi/ob/model/SyncTask;->getWellness()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->isGarminWellnessSync()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 188
    move-object/from16 v0, v32

    check-cast v0, Ljava/lang/Iterable;

    .line 872
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_5c
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2

    if-eqz v1, :cond_26

    :try_start_3c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    move-object/from16 v1, v28

    check-cast v1, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v50, v9

    .line 188
    sget-object v9, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    if-eq v1, v9, :cond_27

    sget-object v9, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_26
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2

    if-ne v1, v9, :cond_25

    goto :goto_2d

    :cond_25
    move-object/from16 v9, v50

    goto :goto_2c

    :catch_26
    move-exception v0

    goto :goto_2b

    :cond_26
    move-object/from16 v50, v9

    const/16 v28, 0x0

    :cond_27
    :goto_2d
    :try_start_3d
    move-object/from16 v0, v28

    check-cast v0, Lcom/jichi/ob/model/DataSource;

    .line 189
    move-object v1, v6

    check-cast v1, Ljava/lang/Iterable;

    .line 874
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_5c
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2

    if-eqz v9, :cond_29

    :try_start_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v28, v1

    move-object v1, v9

    check-cast v1, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v34, v9

    .line 189
    sget-object v9, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    if-eq v1, v9, :cond_2a

    sget-object v9, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_26
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2

    if-ne v1, v9, :cond_28

    goto :goto_2f

    :cond_28
    move-object/from16 v1, v28

    goto :goto_2e

    :cond_29
    const/16 v34, 0x0

    :cond_2a
    :goto_2f
    :try_start_3f
    move-object/from16 v1, v34

    check-cast v1, Lcom/jichi/ob/model/DataSource;

    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    if-eq v0, v1, :cond_33

    .line 191
    invoke-virtual/range {v30 .. v30}, Lcom/jichi/ob/model/SyncTask;->getWellnessDays()I

    move-result v9

    move/from16 v28, v9

    .line 192
    iget-object v9, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    move-object/from16 v51, v8

    invoke-virtual {v9}, Lcom/jichi/ob/util/PrefsManager;->getWellnessLastSync()J

    move-result-wide v8
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_5c
    .catchall {:try_start_3f .. :try_end_3f} :catchall_2

    const-wide/16 v34, 0x0

    cmp-long v34, v8, v34

    if-lez v34, :cond_2b

    .line 195
    :try_start_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    move-wide/from16 v37, v8

    const/16 v8, 0x3e8

    int-to-long v8, v8

    div-long v35, v35, v8

    sub-long v8, v35, v37

    long-to-double v8, v8

    const-wide v35, 0x40f5180000000000L    # 86400.0

    div-double v8, v8, v35

    double-to-int v8, v8

    const/16 v16, 0x2

    add-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    .line 196
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_26
    .catchall {:try_start_40 .. :try_end_40} :catchall_2

    goto :goto_30

    :cond_2b
    move-wide/from16 v37, v8

    move/from16 v8, v28

    .line 198
    :goto_30
    :try_start_41
    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v52, v6

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_5c
    .catchall {:try_start_41 .. :try_end_41} :catchall_2

    if-lez v34, :cond_2c

    :try_start_42
    const-string v34, ",\u589e\u91cf"
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_26
    .catchall {:try_start_42 .. :try_end_42} :catchall_2

    goto :goto_31

    :cond_2c
    :try_start_43
    const-string/jumbo v34, "\uff0c\u9996\u6b21"

    :goto_31
    move-object/from16 v53, v3

    move-object/from16 v55, v15

    move-object/from16 v3, v34

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v56, v13

    const-string/jumbo v13, "\ud83d\udcca [\u81ea\u52a8][\u5065\u5eb7\u6570\u636e] \u5f00\u59cb\u540c\u6b65 "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " \u2192 "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "\uff08\u6700\u8fd1 "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " \u5929"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "\uff09..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_5c
    .catchall {:try_start_43 .. :try_end_43} :catchall_2

    .line 200
    :try_start_44
    iget-object v3, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v3, v0}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2d

    move-object/from16 v3, v18

    .line 201
    :cond_2d
    iget-object v6, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v6, v1}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2e

    move-object/from16 v39, v18

    goto :goto_32

    :cond_2e
    move-object/from16 v39, v6

    .line 202
    :goto_32
    sget-object v34, Lcom/jichi/ob/api/GarminWellnessSync;->INSTANCE:Lcom/jichi/ob/api/GarminWellnessSync;

    iget-object v6, v5, Lcom/jichi/ob/AutoSyncWorker;->garminApi:Lcom/jichi/ob/api/GarminApi;

    new-instance v9, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda8;

    invoke-direct {v9, v5}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda8;-><init>(Lcom/jichi/ob/AutoSyncWorker;)V

    iput-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v14, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$5:Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_3b
    .catchall {:try_start_44 .. :try_end_44} :catchall_2

    move-object/from16 v13, v56

    :try_start_45
    iput-object v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$6:Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_3a
    .catchall {:try_start_45 .. :try_end_45} :catchall_2

    move-object/from16 v15, v55

    :try_start_46
    iput-object v15, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$7:Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_39
    .catchall {:try_start_46 .. :try_end_46} :catchall_2

    move-object/from16 v35, v3

    move-object/from16 v3, v51

    :try_start_47
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$8:Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_38
    .catchall {:try_start_47 .. :try_end_47} :catchall_2

    move-object/from16 v51, v3

    move-object/from16 v3, v53

    :try_start_48
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$9:Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_37
    .catchall {:try_start_48 .. :try_end_48} :catchall_2

    move-object/from16 v53, v3

    move-object/from16 v3, v48

    :try_start_49
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$10:Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_36
    .catchall {:try_start_49 .. :try_end_49} :catchall_2

    move-object/from16 v48, v3

    move-object/from16 v3, v29

    :try_start_4a
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$11:Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_35
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2

    move-object/from16 v29, v3

    move-object/from16 v3, v30

    :try_start_4b
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$12:Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_34
    .catchall {:try_start_4b .. :try_end_4b} :catchall_2

    move-object/from16 v30, v3

    move-object/from16 v3, v32

    :try_start_4c
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$13:Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_33
    .catchall {:try_start_4c .. :try_end_4c} :catchall_2

    move-object/from16 v32, v3

    move-object/from16 v3, v52

    :try_start_4d
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$14:Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_32
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2

    move-object/from16 v52, v3

    move-object/from16 v3, v33

    :try_start_4e
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$15:Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_31
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2

    move-object/from16 v33, v3

    move-object/from16 v3, v43

    :try_start_4f
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$16:Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_30
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2

    move-object/from16 v43, v3

    move-object/from16 v3, v44

    :try_start_50
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$17:Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_2f
    .catchall {:try_start_50 .. :try_end_50} :catchall_2

    move-object/from16 v44, v3

    move-object/from16 v3, v45

    :try_start_51
    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$18:Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_2e
    .catchall {:try_start_51 .. :try_end_51} :catchall_2

    move-object/from16 v45, v3

    :try_start_52
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$19:Ljava/lang/Object;

    iput-object v1, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$20:Ljava/lang/Object;

    invoke-static/range {v35 .. v35}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$21:Ljava/lang/Object;

    invoke-static/range {v39 .. v39}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$22:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$23:Ljava/lang/Object;

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$24:Ljava/lang/Object;

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$25:Ljava/lang/Object;

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$26:Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_39
    .catchall {:try_start_52 .. :try_end_52} :catchall_2

    move/from16 v3, v46

    :try_start_53
    iput v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_2d
    .catchall {:try_start_53 .. :try_end_53} :catchall_2

    move-object/from16 v36, v1

    move/from16 v1, v23

    :try_start_54
    iput v1, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_2c
    .catchall {:try_start_54 .. :try_end_54} :catchall_2

    move/from16 v23, v1

    move/from16 v1, v47

    :try_start_55
    iput v1, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_2b
    .catchall {:try_start_55 .. :try_end_55} :catchall_2

    move/from16 v47, v1

    move/from16 v1, v28

    :try_start_56
    iput v1, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$3:I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_2d
    .catchall {:try_start_56 .. :try_end_56} :catchall_2

    move/from16 v46, v3

    move-object v1, v4

    move-wide/from16 v3, v37

    :try_start_57
    iput-wide v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->J$0:J

    iput v8, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$4:I

    const/4 v3, 0x4

    iput v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_2a
    .catchall {:try_start_57 .. :try_end_57} :catchall_2

    move-object/from16 v42, v2

    move/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v37, v35

    move-object/from16 v38, v36

    move-object/from16 v36, v0

    move-object/from16 v35, v6

    :try_start_58
    invoke-virtual/range {v34 .. v42}, Lcom/jichi/ob/api/GarminWellnessSync;->sync(Lcom/jichi/ob/api/GarminApi;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_29
    .catchall {:try_start_58 .. :try_end_58} :catchall_2

    move-object/from16 v36, v38

    move-object/from16 v3, v50

    if-ne v0, v3, :cond_2f

    goto/16 :goto_6

    :cond_2f
    move-object/from16 v2, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v2

    move-object/from16 v40, v7

    move-object/from16 v37, v10

    move-object/from16 v39, v11

    move-object/from16 v35, v13

    move-object/from16 v28, v32

    move-object/from16 v4, v33

    move-object/from16 v2, v42

    move-object/from16 v6, v44

    move/from16 v13, v46

    move-object/from16 v33, v51

    move-object/from16 v32, v53

    move-object v7, v1

    move-object/from16 v1, v43

    .line 78
    :goto_33
    :try_start_59
    check-cast v0, Lcom/jichi/ob/api/GarminWellnessSync$Result;

    .line 203
    iget-object v8, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/16 v11, 0x3e8

    move-wide/from16 v41, v9

    int-to-long v9, v11

    div-long v9, v41, v9

    invoke-virtual {v8, v9, v10}, Lcom/jichi/ob/util/PrefsManager;->setWellnessLastSync(J)V

    .line 204
    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminWellnessSync$Result;->getOk()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v8, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminWellnessSync$Result;->getDuplicate()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v8, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminWellnessSync$Result;->getFailed()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 205
    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminWellnessSync$Result;->getOk()I

    move-result v8

    if-lez v8, :cond_30

    move-object v8, v15

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminWellnessSync$Result;->getOk()I

    move-result v9

    invoke-virtual/range {v36 .. v36}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_28
    .catchall {:try_start_59 .. :try_end_59} :catchall_2

    move-object/from16 v34, v1

    :try_start_5a
    const-string/jumbo v1, "\u5065\u5eb7\u6570\u636e "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " \u5929 \u2192 "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_30
    move-object/from16 v34, v1

    .line 206
    :goto_34
    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminWellnessSync$Result;->getFailed()I

    move-result v1

    if-lez v1, :cond_31

    move-object/from16 v1, v33

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminWellnessSync$Result;->getFailed()I

    move-result v0

    invoke-virtual/range {v36 .. v36}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u5065\u5eb7\u6570\u636e\u5931\u8d25 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " \u2192 "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_27
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2

    move-object v1, v14

    move-object v14, v12

    move-object v12, v1

    move-object v1, v2

    move-object v2, v7

    move/from16 v64, v13

    move-object v11, v15

    move-object/from16 v50, v28

    move-object/from16 v7, v29

    move-object/from16 v9, v32

    move-object/from16 v10, v33

    move-object/from16 v46, v34

    move-object/from16 v15, v35

    move-object/from16 v13, v37

    move-object/from16 v29, v45

    move/from16 v63, v47

    move-object/from16 v8, v48

    move-object/from16 v48, v52

    move-object/from16 v28, v3

    move-object/from16 v47, v4

    move-object/from16 v4, v30

    move-object/from16 v3, v39

    move-object/from16 v30, v6

    move-object/from16 v6, v40

    goto/16 :goto_41

    :catch_27
    move-exception v0

    goto :goto_35

    :catch_28
    move-exception v0

    move-object/from16 v34, v1

    :goto_35
    move-object/from16 v10, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v10

    move-object/from16 v42, v2

    move-object v2, v7

    move/from16 v46, v13

    move-object/from16 v53, v32

    move-object/from16 v51, v33

    move-object/from16 v43, v34

    move-object/from16 v13, v35

    move-object/from16 v10, v37

    move-object/from16 v11, v39

    move-object/from16 v7, v40

    move-object/from16 v33, v4

    move-object v4, v6

    move-object/from16 v32, v28

    goto/16 :goto_3a

    :catch_29
    move-exception v0

    goto/16 :goto_38

    :catch_2a
    move-exception v0

    move-object/from16 v42, v2

    goto/16 :goto_38

    :catch_2b
    move-exception v0

    move/from16 v47, v1

    goto :goto_36

    :catch_2c
    move-exception v0

    move/from16 v23, v1

    goto :goto_36

    :catch_2d
    move-exception v0

    :goto_36
    move-object/from16 v42, v2

    move/from16 v46, v3

    goto :goto_37

    :catch_2e
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v45, v3

    goto :goto_37

    :catch_2f
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v44, v3

    goto :goto_37

    :catch_30
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    goto :goto_37

    :catch_31
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v33, v3

    goto :goto_37

    :catch_32
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v52, v3

    goto :goto_37

    :catch_33
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v32, v3

    goto :goto_37

    :catch_34
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v30, v3

    goto :goto_37

    :catch_35
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v29, v3

    goto :goto_37

    :catch_36
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v48, v3

    goto :goto_37

    :catch_37
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v53, v3

    goto :goto_37

    :catch_38
    move-exception v0

    move-object/from16 v42, v2

    move-object/from16 v51, v3

    goto :goto_37

    :catch_39
    move-exception v0

    move-object/from16 v42, v2

    :goto_37
    move-object v1, v4

    :goto_38
    move-object/from16 v3, v50

    goto :goto_39

    :catch_3a
    move-exception v0

    move-object/from16 v42, v2

    move-object v1, v4

    move-object/from16 v3, v50

    move-object/from16 v15, v55

    goto :goto_39

    :catch_3b
    move-exception v0

    move-object/from16 v42, v2

    move-object v1, v4

    move-object/from16 v3, v50

    move-object/from16 v15, v55

    move-object/from16 v13, v56

    :goto_39
    move-object v2, v1

    move-object/from16 v4, v44

    .line 208
    :goto_3a
    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3b

    :cond_32
    const/4 v6, 0x0

    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u274c [\u81ea\u52a8][\u5065\u5eb7\u6570\u636e] \u540c\u6b65\u5f02\u5e38: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 209
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_3c
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2

    move-object v1, v14

    move-object v14, v12

    move-object v12, v1

    move-object/from16 v28, v3

    move-object v6, v7

    move-object v3, v11

    move-object v11, v15

    move-object/from16 v7, v30

    move-object/from16 v50, v32

    move-object/from16 v1, v42

    move/from16 v64, v46

    move/from16 v63, v47

    move-object/from16 v8, v48

    move-object/from16 v48, v52

    move-object/from16 v9, v53

    move-object/from16 v30, v4

    move-object v15, v13

    move-object/from16 v4, v29

    move-object/from16 v47, v33

    move-object/from16 v46, v43

    move-object/from16 v29, v45

    :goto_3c
    move-object v13, v10

    move-object/from16 v10, v51

    goto :goto_41

    :catch_3c
    move-exception v0

    :goto_3d
    move-object v4, v11

    :goto_3e
    move/from16 v3, v23

    :goto_3f
    move-object/from16 v11, v25

    move-object/from16 v10, v26

    goto/16 :goto_2

    :cond_33
    move-object/from16 v42, v2

    move-object/from16 v53, v3

    move-object v1, v4

    move-object/from16 v52, v6

    move-object/from16 v51, v8

    move-object/from16 v3, v50

    goto :goto_40

    :cond_34
    move-object/from16 v42, v2

    move-object/from16 v53, v3

    move-object v1, v4

    move-object/from16 v52, v6

    move-object/from16 v51, v8

    move-object v3, v9

    :goto_40
    move-object v2, v14

    move-object v14, v12

    move-object v12, v2

    move-object v2, v1

    move-object/from16 v28, v3

    move-object v6, v7

    move-object v3, v11

    move-object v11, v15

    move-object/from16 v4, v29

    move-object/from16 v7, v30

    move-object/from16 v50, v32

    move-object/from16 v1, v42

    move-object/from16 v30, v44

    move-object/from16 v29, v45

    move/from16 v64, v46

    move/from16 v63, v47

    move-object/from16 v8, v48

    move-object/from16 v48, v52

    move-object/from16 v9, v53

    move-object v15, v13

    move-object/from16 v47, v33

    move-object/from16 v46, v43

    goto :goto_3c

    .line 215
    :goto_41
    :try_start_5c
    move-object/from16 v0, v50

    check-cast v0, Ljava/lang/Iterable;

    .line 876
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v32
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_5b
    .catchall {:try_start_5c .. :try_end_5c} :catchall_2

    if-eqz v32, :cond_36

    :try_start_5d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v51, v7

    move-object/from16 v7, v32

    check-cast v7, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v52, v4

    .line 215
    sget-object v4, Lcom/jichi/ob/model/DataSource;->INTERVALS_ICU:Lcom/jichi/ob/model/DataSource;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_3d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_2

    if-ne v7, v4, :cond_35

    goto :goto_43

    :cond_35
    move-object/from16 v7, v51

    move-object/from16 v4, v52

    goto :goto_42

    :catch_3d
    move-exception v0

    move-object v4, v3

    move-object v7, v6

    goto :goto_3e

    :cond_36
    move-object/from16 v52, v4

    move-object/from16 v51, v7

    const/16 v32, 0x0

    :goto_43
    :try_start_5e
    move-object/from16 v0, v32

    check-cast v0, Lcom/jichi/ob/model/DataSource;

    if-eqz v0, :cond_4b

    .line 217
    iget-object v4, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v4, v0}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_37

    move-object/from16 v36, v18

    goto :goto_44

    :cond_37
    move-object/from16 v36, v4

    .line 218
    :goto_44
    invoke-virtual/range {v51 .. v51}, Lcom/jichi/ob/model/SyncTask;->getWorkoutTargets()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_5b
    .catchall {:try_start_5e .. :try_end_5e} :catchall_2

    if-nez v4, :cond_38

    :try_start_5f
    invoke-virtual/range {v51 .. v51}, Lcom/jichi/ob/model/SyncTask;->getWorkoutTargets()Ljava/util/List;

    move-result-object v4
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_3d
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2

    goto :goto_45

    :cond_38
    :try_start_60
    invoke-virtual/range {v51 .. v51}, Lcom/jichi/ob/model/SyncTask;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 219
    :goto_45
    move-object v7, v4

    check-cast v7, Ljava/lang/Iterable;

    .line 878
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v32
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_5b
    .catchall {:try_start_60 .. :try_end_60} :catchall_2

    if-eqz v32, :cond_3b

    :try_start_61
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v33, v4

    move-object/from16 v4, v32

    check-cast v4, Ljava/lang/String;

    move-object/from16 v34, v7

    move-object/from16 v7, v54

    .line 219
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3a

    move-object/from16 v53, v8

    move-object/from16 v8, v22

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_3d
    .catchall {:try_start_61 .. :try_end_61} :catchall_2

    if-eqz v4, :cond_39

    goto :goto_47

    :cond_39
    move-object/from16 v54, v7

    move-object/from16 v22, v8

    move-object/from16 v4, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v53

    goto :goto_46

    :cond_3a
    move-object/from16 v53, v8

    move-object/from16 v8, v22

    goto :goto_47

    :cond_3b
    move-object/from16 v33, v4

    move-object/from16 v53, v8

    move-object/from16 v8, v22

    move-object/from16 v7, v54

    const/16 v32, 0x0

    :goto_47
    :try_start_62
    move-object/from16 v4, v32

    check-cast v4, Ljava/lang/String;

    .line 220
    move-object/from16 v22, v33

    check-cast v22, Ljava/lang/Iterable;

    .line 880
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_48
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v32
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_5b
    .catchall {:try_start_62 .. :try_end_62} :catchall_2

    if-eqz v32, :cond_3d

    :try_start_63
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v54, v9

    move-object/from16 v9, v32

    check-cast v9, Ljava/lang/String;

    move-object/from16 v55, v10

    .line 220
    const-string v10, "bryton"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_3d
    .catchall {:try_start_63 .. :try_end_63} :catchall_2

    if-eqz v9, :cond_3c

    goto :goto_49

    :cond_3c
    move-object/from16 v9, v54

    move-object/from16 v10, v55

    goto :goto_48

    :cond_3d
    move-object/from16 v54, v9

    move-object/from16 v55, v10

    const/16 v32, 0x0

    :goto_49
    :try_start_64
    check-cast v32, Ljava/lang/String;

    .line 221
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_5b
    .catchall {:try_start_64 .. :try_end_64} :catchall_2

    const/4 v10, 0x5

    if-le v9, v10, :cond_4a

    if-nez v4, :cond_3e

    if-eqz v32, :cond_4a

    .line 223
    :cond_3e
    :try_start_65
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/List;

    .line 224
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_58
    .catchall {:try_start_65 .. :try_end_65} :catchall_2

    if-eqz v10, :cond_3f

    :try_start_66
    const-string v10, "iGPSPORT\u56fd\u5185"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_3e
    .catchall {:try_start_66 .. :try_end_66} :catchall_2

    goto :goto_4b

    :catch_3e
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v35, v3

    move-object/from16 v22, v7

    move-object/from16 v56, v11

    move-object/from16 v57, v15

    :goto_4a
    move/from16 v3, v23

    move-object/from16 v9, v28

    move-object/from16 v23, v29

    move-object/from16 v4, v53

    move/from16 v29, v63

    move/from16 v7, v64

    goto/16 :goto_59

    .line 225
    :cond_3f
    :goto_4b
    :try_start_67
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_58
    .catchall {:try_start_67 .. :try_end_67} :catchall_2

    if-eqz v10, :cond_40

    :try_start_68
    const-string v10, "iGPSPORT\u56fd\u9645"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    if-eqz v32, :cond_41

    .line 226
    const-string/jumbo v10, "\u767e\u9510\u987f"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_3e
    .catchall {:try_start_68 .. :try_end_68} :catchall_2

    .line 227
    :cond_41
    :try_start_69
    move-object/from16 v37, v9

    check-cast v37, Ljava/lang/Iterable;

    move-object/from16 v38, v21

    check-cast v38, Ljava/lang/CharSequence;

    const/16 v44, 0x3e

    const/16 v45, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-static/range {v37 .. v45}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_58
    .catchall {:try_start_69 .. :try_end_69} :catchall_2

    move-object/from16 v22, v7

    :try_start_6a
    invoke-virtual/range {v51 .. v51}, Lcom/jichi/ob/model/SyncTask;->getWorkoutHistoryDays()I

    move-result v7

    move-object/from16 v34, v9

    invoke-virtual/range {v51 .. v51}, Lcom/jichi/ob/model/SyncTask;->getWorkoutFutureDays()I

    move-result v9
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_57
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2

    move-object/from16 v56, v11

    :try_start_6b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_56
    .catchall {:try_start_6b .. :try_end_6b} :catchall_2

    move-object/from16 v57, v15

    :try_start_6c
    const-string/jumbo v15, "\ud83d\udcc5 [\u81ea\u52a8][\u8bfe\u8868] \u5f00\u59cb\u540c\u6b65 ICU\u8bfe\u8868 \u2192 "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\uff08\u5386\u53f2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "\u5929/\u672a\u6765"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\u5929\uff09..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_55
    .catchall {:try_start_6c .. :try_end_6c} :catchall_2

    if-eqz v4, :cond_43

    .line 229
    :try_start_6d
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    sget-object v7, Lcom/jichi/ob/model/DataSource;->IGPSPORT_INT:Lcom/jichi/ob/model/DataSource;

    goto :goto_4c

    :cond_42
    sget-object v7, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    .line 230
    :goto_4c
    iget-object v9, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v9, v7}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_44

    goto :goto_4d

    :catch_3f
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v35, v3

    goto/16 :goto_4a

    :cond_43
    :goto_4d
    move-object/from16 v7, v18

    :cond_44
    if-eqz v32, :cond_45

    .line 232
    iget-object v9, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v9}, Lcom/jichi/ob/util/PrefsManager;->getBrytonCookie()Ljava/lang/String;

    move-result-object v9
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_3f
    .catchall {:try_start_6d .. :try_end_6d} :catchall_2

    move-object/from16 v35, v9

    goto :goto_4e

    :cond_45
    const/16 v35, 0x0

    .line 233
    :goto_4e
    :try_start_6e
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v10, v32

    .line 234
    sget-object v32, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    .line 235
    move-object v11, v7

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_46

    const/4 v11, 0x0

    :cond_46
    check-cast v11, Ljava/lang/String;

    .line 239
    invoke-virtual/range {v51 .. v51}, Lcom/jichi/ob/model/SyncTask;->getWorkoutFutureDays()I

    move-result v37

    .line 240
    invoke-virtual/range {v51 .. v51}, Lcom/jichi/ob/model/SyncTask;->getWorkoutHistoryDays()I

    move-result v38

    .line 242
    iget-object v15, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v15}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutSyncedIds()Ljava/util/Set;

    move-result-object v40

    .line 243
    iget-object v15, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v15}, Lcom/jichi/ob/util/PrefsManager;->getWorkoutHashes()Ljava/util/Map;

    move-result-object v41

    .line 234
    new-instance v15, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda9;

    invoke-direct {v15, v5}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda9;-><init>(Lcom/jichi/ob/AutoSyncWorker;)V

    move-object/from16 v39, v4

    new-instance v4, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda10;

    invoke-direct {v4, v5}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda10;-><init>(Lcom/jichi/ob/AutoSyncWorker;)V

    move-object/from16 v43, v4

    new-instance v4, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda11;

    invoke-direct {v4, v5}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda11;-><init>(Lcom/jichi/ob/AutoSyncWorker;)V

    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v12, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v13, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v14, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$5:Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_55
    .catchall {:try_start_6e .. :try_end_6e} :catchall_2

    move-object/from16 v58, v2

    move-object/from16 v2, v57

    :try_start_6f
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$6:Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_54
    .catchall {:try_start_6f .. :try_end_6f} :catchall_2

    move-object/from16 v57, v2

    move-object/from16 v2, v56

    :try_start_70
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$7:Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_53
    .catchall {:try_start_70 .. :try_end_70} :catchall_2

    move-object/from16 v56, v2

    move-object/from16 v2, v55

    :try_start_71
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$8:Ljava/lang/Object;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_52
    .catchall {:try_start_71 .. :try_end_71} :catchall_2

    move-object/from16 v55, v2

    move-object/from16 v2, v54

    :try_start_72
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$9:Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_51
    .catchall {:try_start_72 .. :try_end_72} :catchall_2

    move-object/from16 v54, v2

    move-object/from16 v2, v53

    :try_start_73
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$10:Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_50
    .catchall {:try_start_73 .. :try_end_73} :catchall_2

    move-object/from16 v53, v2

    move-object/from16 v2, v52

    :try_start_74
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$11:Ljava/lang/Object;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_4f
    .catchall {:try_start_74 .. :try_end_74} :catchall_2

    move-object/from16 v52, v2

    move-object/from16 v2, v51

    :try_start_75
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$12:Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_4e
    .catchall {:try_start_75 .. :try_end_75} :catchall_2

    move-object/from16 v51, v2

    move-object/from16 v2, v50

    :try_start_76
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$13:Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_4d
    .catchall {:try_start_76 .. :try_end_76} :catchall_2

    move-object/from16 v50, v2

    move-object/from16 v2, v48

    :try_start_77
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$14:Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_4c
    .catchall {:try_start_77 .. :try_end_77} :catchall_2

    move-object/from16 v48, v2

    move-object/from16 v2, v47

    :try_start_78
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$15:Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_4b
    .catchall {:try_start_78 .. :try_end_78} :catchall_2

    move-object/from16 v47, v2

    move-object/from16 v2, v46

    :try_start_79
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$16:Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_4a
    .catchall {:try_start_79 .. :try_end_79} :catchall_2

    move-object/from16 v46, v2

    move-object/from16 v2, v30

    :try_start_7a
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$17:Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_49
    .catchall {:try_start_7a .. :try_end_7a} :catchall_2

    move-object/from16 v30, v2

    move-object/from16 v2, v29

    :try_start_7b
    iput-object v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$18:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$19:Ljava/lang/Object;

    invoke-static/range {v36 .. v36}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$20:Ljava/lang/Object;

    invoke-static/range {v33 .. v33}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$21:Ljava/lang/Object;

    invoke-static/range {v39 .. v39}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$22:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$23:Ljava/lang/Object;

    invoke-static/range {v34 .. v34}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$24:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$25:Ljava/lang/Object;

    invoke-static/range {v35 .. v35}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$26:Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_48
    .catchall {:try_start_7b .. :try_end_7b} :catchall_2

    move/from16 v7, v64

    :try_start_7c
    iput v7, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_47
    .catchall {:try_start_7c .. :try_end_7c} :catchall_2

    move/from16 v10, v23

    :try_start_7d
    iput v10, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_46
    .catchall {:try_start_7d .. :try_end_7d} :catchall_2

    move-object/from16 v23, v2

    move/from16 v2, v63

    :try_start_7e
    iput v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    iput-boolean v9, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->Z$0:Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_45
    .catchall {:try_start_7e .. :try_end_7e} :catchall_2

    move/from16 v29, v2

    const/4 v2, 0x5

    :try_start_7f
    iput v2, v1, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_44
    .catchall {:try_start_7f .. :try_end_7f} :catchall_2

    const/16 v39, 0x0

    move-object/from16 v45, v1

    move-object/from16 v44, v4

    move/from16 v34, v9

    move-object/from16 v33, v11

    move-object/from16 v42, v15

    :try_start_80
    invoke-virtual/range {v32 .. v45}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_43
    .catchall {:try_start_80 .. :try_end_80} :catchall_2

    move-object/from16 v9, v28

    if-ne v0, v9, :cond_47

    goto/16 :goto_6d

    :cond_47
    move-object/from16 v37, v12

    move-object/from16 v36, v13

    move-object/from16 v1, v23

    move-object/from16 v23, v30

    move-object/from16 v28, v51

    move-object/from16 v30, v53

    move-object/from16 v32, v55

    move-object/from16 v4, v56

    move-object/from16 v34, v57

    move v13, v10

    move v10, v7

    move/from16 v7, v29

    move-object/from16 v29, v52

    .line 78
    :goto_4f
    :try_start_81
    check-cast v0, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;

    .line 247
    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getListed()I

    move-result v11

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v12

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getSkipped()I

    move-result v15

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getFailed()I

    move-result v2
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_42
    .catchall {:try_start_81 .. :try_end_81} :catchall_2

    move-object/from16 v33, v1

    :try_start_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_41
    .catchall {:try_start_82 .. :try_end_82} :catchall_2

    move-object/from16 v35, v3

    :try_start_83
    const-string/jumbo v3, "\ud83d\udcca [\u8bfe\u8868] \u5b8c\u6210: \u5217\u51fa"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u4e0a\u4f20"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u8df3\u8fc7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u5931\u8d25"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v1

    if-lez v1, :cond_48

    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$Result;->getUploaded()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8bfe\u8868 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u4e2a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_40
    .catchall {:try_start_83 .. :try_end_83} :catchall_2

    :cond_48
    move-object/from16 v56, v4

    move-object v15, v6

    move-object/from16 v0, v28

    move-object/from16 v52, v29

    move-object/from16 v1, v30

    move-object/from16 v55, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v45

    move-object/from16 v12, v46

    move-object/from16 v11, v47

    move-object/from16 v6, v50

    move/from16 v29, v7

    move/from16 v46, v10

    move/from16 v30, v13

    move-object/from16 v13, v23

    move-object/from16 v10, v34

    move-object/from16 v7, v36

    move-object/from16 v23, v58

    goto/16 :goto_5d

    :catch_40
    move-exception v0

    goto :goto_51

    :catch_41
    move-exception v0

    goto :goto_50

    :catch_42
    move-exception v0

    move-object/from16 v33, v1

    :goto_50
    move-object/from16 v35, v3

    :goto_51
    move-object/from16 v56, v4

    move v3, v13

    move-object/from16 v51, v28

    move-object/from16 v52, v29

    move-object/from16 v4, v30

    move-object/from16 v55, v32

    move-object/from16 v57, v34

    move-object/from16 v13, v36

    move-object/from16 v12, v37

    move-object/from16 v2, v58

    move/from16 v29, v7

    move v7, v10

    move-object/from16 v30, v23

    move-object/from16 v23, v33

    goto/16 :goto_59

    :catch_43
    move-exception v0

    goto :goto_52

    :catch_44
    move-exception v0

    move-object/from16 v45, v1

    goto :goto_52

    :catch_45
    move-exception v0

    move-object/from16 v45, v1

    move/from16 v29, v2

    :goto_52
    move-object/from16 v9, v28

    goto/16 :goto_55

    :catch_46
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v23, v2

    move-object/from16 v9, v28

    move/from16 v29, v63

    goto/16 :goto_55

    :catch_47
    move-exception v0

    move-object/from16 v45, v1

    move/from16 v10, v23

    move-object/from16 v9, v28

    move/from16 v29, v63

    goto :goto_53

    :catch_48
    move-exception v0

    move-object/from16 v45, v1

    move/from16 v10, v23

    move-object/from16 v9, v28

    move/from16 v29, v63

    move/from16 v7, v64

    :goto_53
    move-object/from16 v23, v2

    goto/16 :goto_55

    :catch_49
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v30, v2

    goto :goto_54

    :catch_4a
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v46, v2

    goto :goto_54

    :catch_4b
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v47, v2

    goto :goto_54

    :catch_4c
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v48, v2

    goto :goto_54

    :catch_4d
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v50, v2

    goto :goto_54

    :catch_4e
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v51, v2

    goto :goto_54

    :catch_4f
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v52, v2

    goto :goto_54

    :catch_50
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v53, v2

    goto :goto_54

    :catch_51
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v54, v2

    goto :goto_54

    :catch_52
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v55, v2

    goto :goto_54

    :catch_53
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v56, v2

    goto :goto_54

    :catch_54
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v57, v2

    :goto_54
    move/from16 v10, v23

    move-object/from16 v9, v28

    move-object/from16 v23, v29

    move/from16 v29, v63

    move/from16 v7, v64

    :goto_55
    move-object/from16 v35, v3

    move v3, v10

    move-object/from16 v4, v53

    move-object/from16 v2, v58

    goto :goto_59

    :catch_55
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v58, v2

    goto :goto_58

    :catch_56
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v58, v2

    goto :goto_57

    :catch_57
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v58, v2

    goto :goto_56

    :catch_58
    move-exception v0

    move-object/from16 v45, v1

    move-object/from16 v58, v2

    move-object/from16 v22, v7

    :goto_56
    move-object/from16 v56, v11

    :goto_57
    move-object/from16 v57, v15

    :goto_58
    move/from16 v10, v23

    move-object/from16 v9, v28

    move-object/from16 v23, v29

    move/from16 v29, v63

    move/from16 v7, v64

    move-object/from16 v35, v3

    move v3, v10

    move-object/from16 v4, v53

    .line 250
    :goto_59
    :try_start_84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    :cond_49
    const/4 v0, 0x0

    :goto_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u274c [\u81ea\u52a8][\u8bfe\u8868] \u540c\u6b65\u5f02\u5e38: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_59
    .catchall {:try_start_84 .. :try_end_84} :catchall_2

    move-object v1, v4

    move-object v15, v6

    move-object/from16 v37, v12

    move-object/from16 v4, v45

    move-object/from16 v12, v46

    move-object/from16 v11, v47

    move-object/from16 v6, v50

    move-object/from16 v0, v51

    move-object/from16 v10, v57

    move/from16 v46, v7

    move-object v7, v13

    move-object/from16 v13, v30

    move/from16 v30, v3

    move-object/from16 v3, v23

    move-object/from16 v23, v2

    goto/16 :goto_5d

    :catch_59
    move-exception v0

    move-object v7, v6

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    :goto_5b
    move-object/from16 v4, v35

    goto/16 :goto_2

    :cond_4a
    move-object/from16 v45, v1

    move-object/from16 v58, v2

    move-object/from16 v22, v7

    move-object/from16 v56, v11

    move-object/from16 v57, v15

    move/from16 v10, v23

    move-object/from16 v9, v28

    move-object/from16 v23, v29

    move/from16 v29, v63

    move/from16 v7, v64

    goto :goto_5c

    :cond_4b
    move-object/from16 v45, v1

    move-object/from16 v58, v2

    move-object/from16 v53, v8

    move-object/from16 v55, v10

    move-object/from16 v56, v11

    move-object/from16 v57, v15

    move-object/from16 v8, v22

    move/from16 v10, v23

    move-object/from16 v23, v29

    move-object/from16 v22, v54

    move/from16 v29, v63

    move/from16 v7, v64

    move-object/from16 v54, v9

    move-object/from16 v9, v28

    :goto_5c
    move-object/from16 v35, v3

    move-object v15, v6

    move-object/from16 v37, v12

    move-object/from16 v3, v23

    move-object/from16 v4, v45

    move-object/from16 v12, v46

    move-object/from16 v11, v47

    move-object/from16 v6, v50

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    move-object/from16 v23, v58

    move/from16 v46, v7

    move-object v7, v13

    move-object/from16 v13, v30

    move/from16 v30, v10

    move-object/from16 v10, v57

    .line 254
    :goto_5d
    :try_start_85
    iget v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v28, v2

    iget v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int v2, v28, v2

    iput v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v28, v2

    iget v2, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int v2, v28, v2

    iput v2, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move/from16 v28, v2

    iget v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int v2, v28, v2

    iput v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 255
    move-object/from16 v57, v48

    check-cast v57, Ljava/lang/Iterable;

    move-object/from16 v58, v21

    check-cast v58, Ljava/lang/CharSequence;

    new-instance v63, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda1;

    invoke-direct/range {v63 .. v63}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda1;-><init>()V

    const/16 v64, 0x1e

    const/16 v65, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    invoke-static/range {v57 .. v65}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v3

    .line 256
    invoke-virtual {v0}, Lcom/jichi/ob/model/SyncTask;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v57, v6

    check-cast v57, Ljava/lang/Iterable;

    move-object/from16 v58, v21

    check-cast v58, Ljava/lang/CharSequence;

    new-instance v63, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda2;

    invoke-direct/range {v63 .. v63}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda2;-><init>()V

    const/16 v64, 0x1e

    const/16 v65, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    invoke-static/range {v57 .. v65}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v32, v4

    iget v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v33, v7

    iget v7, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v34, v8

    iget v8, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v36, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ": "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, v27

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 \u65b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u8df3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 259
    const-string v3, "scanned"

    iget v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v7, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v4, v7

    iget v7, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 882
    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_5a
    .catchall {:try_start_85 .. :try_end_85} :catchall_2

    const-string/jumbo v7, "up"

    if-eqz v4, :cond_4c

    :try_start_86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 261
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v27, v1

    .line 262
    const-string v1, "dl"

    move-object/from16 v28, v3

    const/16 v20, 0x0

    aget v3, v4, v20

    invoke-virtual {v10, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v1, v4, v20

    invoke-virtual {v10, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fail"

    const/16 v16, 0x2

    aget v3, v4, v16

    invoke-virtual {v10, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 261
    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, v27

    move-object/from16 v3, v28

    goto :goto_5e

    :cond_4c
    move-object/from16 v27, v1

    const/16 v16, 0x2

    const/16 v20, 0x0

    .line 266
    check-cast v48, Ljava/lang/Iterable;

    .line 884
    invoke-interface/range {v48 .. v48}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jichi/ob/model/DataSource;

    .line 267
    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 268
    iget v3, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5f

    .line 269
    :cond_4d
    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget v8, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5f

    .line 271
    :cond_4e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v2, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    iget v3, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v7, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v3, v4, v7, v1}, Lcom/jichi/ob/model/SyncTask;->copyRun(IIILjava/lang/String;)Lcom/jichi/ob/model/SyncTask;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jichi/ob/util/PrefsManager;->upsertTask(Lcom/jichi/ob/model/SyncTask;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_5a
    .catchall {:try_start_86 .. :try_end_86} :catchall_2

    move-object v1, v5

    move-object/from16 v28, v9

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v2, v23

    move-object/from16 v8, v27

    move-object/from16 v4, v32

    move-object/from16 v7, v33

    move-object/from16 v11, v35

    move-object/from16 v9, v36

    move-object/from16 v14, v37

    move-object/from16 v5, v49

    move-object/from16 v15, v54

    move-object/from16 v3, v55

    move-object/from16 v10, v56

    move-object/from16 v27, v6

    move-object/from16 v23, v22

    move-object/from16 v22, v34

    move-object/from16 v6, v52

    goto/16 :goto_d

    :catch_5a
    move-exception v0

    move-object v7, v15

    move-object/from16 v2, v23

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move/from16 v3, v30

    goto/16 :goto_5b

    :catch_5b
    move-exception v0

    move-object/from16 v58, v2

    move/from16 v10, v23

    move-object v4, v3

    move-object v7, v6

    move v3, v10

    goto/16 :goto_3f

    :catch_5c
    move-exception v0

    goto :goto_60

    :catchall_3
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_24

    :catch_5d
    move-exception v0

    move-object/from16 v5, p0

    :goto_60
    move-object v1, v4

    move-object v2, v1

    goto/16 :goto_3d

    :catch_5e
    move-exception v0

    move-object v5, v1

    goto :goto_61

    :catch_5f
    move-exception v0

    move-object v5, v1

    move/from16 v4, v30

    :goto_61
    move v3, v4

    :goto_62
    move-object v4, v11

    move-object v7, v13

    goto/16 :goto_3f

    :cond_4f
    move-object v5, v1

    move-object/from16 v56, v3

    move-object/from16 v51, v8

    move-object/from16 v48, v15

    move/from16 v4, v30

    const/16 v20, 0x0

    .line 274
    :try_start_87
    iget-object v0, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_68
    .catchall {:try_start_87 .. :try_end_87} :catchall_2

    move-object v3, v10

    move-object v1, v11

    :try_start_88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/jichi/ob/util/PrefsManager;->setLastAutoSyncTime(J)V

    .line 275
    iget-object v0, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    iget v6, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u4efb\u52a1: \u65b0\u4e0a\u4f20"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " \u6761"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/jichi/ob/util/PrefsManager;->setLastAutoSyncResult(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_67
    .catchall {:try_start_88 .. :try_end_88} :catchall_2

    .line 277
    :try_start_89
    iget v0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4efb\u52a1\u540c\u6b65\u5b8c\u6210: \u65b0\u4e0a\u4f20"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u6761"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    invoke-direct {v5, v0, v2, v6, v4}, Lcom/jichi/ob/AutoSyncWorker;->updateForeground(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)V

    .line 278
    invoke-virtual {v5}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_63
    .catchall {:try_start_89 .. :try_end_89} :catchall_2

    move-object/from16 v10, v26

    :try_start_8a
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_62
    .catchall {:try_start_8a .. :try_end_8a} :catchall_4

    move-object/from16 v11, v25

    :try_start_8b
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 279
    invoke-direct {v5}, Lcom/jichi/ob/AutoSyncWorker;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    .line 280
    iget v8, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v8, :cond_50

    const/16 v20, 0x1

    .line 281
    :cond_50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    iget v15, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v15, :cond_51

    iget v15, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_60
    .catchall {:try_start_8b .. :try_end_8b} :catchall_6

    move-object/from16 v16, v1

    :try_start_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_61
    .catchall {:try_start_8c .. :try_end_8c} :catchall_6

    move-object/from16 v17, v2

    :try_start_8d
    const-string/jumbo v2, "\u2705 \u65b0\u4e0a\u4f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v15, v31

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_51
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v15, v31

    .line 283
    :goto_63
    iget v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_64
    .catchall {:try_start_8d .. :try_end_8d} :catchall_6

    const-string v2, " \u00b7 "

    if-lez v1, :cond_52

    if-eqz v20, :cond_52

    :try_start_8e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    if-eqz v20, :cond_53

    .line 284
    iget v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string/jumbo v3, "\u274c \u5931\u8d25"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    :cond_53
    move-object/from16 v18, v3

    .line 285
    :goto_64
    iget v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v1, :cond_54

    if-nez v20, :cond_54

    const-string/jumbo v1, "\ud83d\udccb \u65e0\u65b0\u8bb0\u5f55"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_54
    iget v1, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v1, :cond_55

    iget v1, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 \u8df3\u8fc7"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    move-object/from16 v8, v51

    check-cast v8, Ljava/lang/Iterable;

    .line 886
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_65
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_64
    .catchall {:try_start_8e .. :try_end_8e} :catchall_6

    const-string v9, "\n"

    if-eqz v8, :cond_56

    :try_start_8f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 290
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 291
    :cond_56
    move-object/from16 v7, v18

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/16 v8, 0xa

    if-nez v7, :cond_58

    .line 292
    const-string/jumbo v7, "\u2705 \u660e\u7ec6:\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    move-object/from16 v7, v18

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 888
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 293
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 294
    :cond_57
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_58

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " \u00b7 \u2026\u5171"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, "\u6761\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_58
    move-object/from16 v7, v56

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5a

    .line 297
    const-string/jumbo v7, "\u274c \u5931\u8d25:\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    move-object/from16 v7, v56

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 890
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_67
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_59

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 298
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 299
    :cond_59
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_5a

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 \u2026\u5171"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u6761\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_5a
    move-object/from16 v15, v48

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5b

    .line 302
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u23ed\ufe0f \u8df3\u8fc7 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u6761\uff08\u5df2\u5728\u540c\u6b65\u8bb0\u5fc6\uff09\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_5b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u95f4\u9694"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u5206\u949f | \u4e0b\u6b21\u7ea6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u5206\u949f\u540e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    move-object/from16 v25, v14

    check-cast v25, Ljava/lang/Iterable;

    move-object/from16 v26, v21

    check-cast v26, Ljava/lang/CharSequence;

    new-instance v31, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda4;

    invoke-direct/range {v31 .. v31}, Lcom/jichi/ob/AutoSyncWorker$$ExternalSyntheticLambda4;-><init>()V

    const/16 v32, 0x1e

    const/16 v33, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v25 .. v33}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 307
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "jichi_ob_autosync"

    invoke-direct {v7, v8, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v20, :cond_5c

    .line 308
    const-string/jumbo v8, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB \u4efb\u52a1\u540c\u6b65\uff08\u90e8\u5206\u5931\u8d25\uff09"

    goto :goto_68

    :cond_5c
    const-string/jumbo v8, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB \u4efb\u52a1\u540c\u6b65"

    :goto_68
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 309
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e2a\u4efb\u52a1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 310
    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    if-eqz v20, :cond_5d

    const v2, 0x1080078

    goto :goto_69

    :cond_5d
    const v2, 0x108005f

    .line 311
    :goto_69
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 312
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 313
    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 314
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x3eb

    .line 316
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_64
    .catchall {:try_start_8f .. :try_end_8f} :catchall_6

    goto :goto_6a

    :catch_60
    move-object/from16 v16, v1

    :catch_61
    move-object/from16 v17, v2

    goto :goto_6a

    :catchall_4
    move-exception v0

    move-object/from16 v11, v25

    goto/16 :goto_77

    :catch_62
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v11, v25

    goto :goto_6a

    :catch_63
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    .line 318
    :catch_64
    :goto_6a
    :try_start_90
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string/jumbo v1, "success(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_66
    .catchall {:try_start_90 .. :try_end_90} :catchall_6

    .line 346
    :try_start_91
    invoke-virtual {v5}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v7, 0x3ea

    .line 347
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_65

    :catch_65
    return-object v0

    :catch_66
    move-exception v0

    move v3, v4

    move-object v7, v13

    move-object/from16 v4, v16

    move-object/from16 v2, v17

    goto/16 :goto_2

    :catch_67
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_6b

    :catch_68
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v11

    :goto_6b
    move-object/from16 v11, v25

    move-object/from16 v10, v26

    goto :goto_6c

    :catch_69
    move-exception v0

    move-object v5, v1

    move-object/from16 v17, v2

    move-object/from16 v16, v11

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move/from16 v4, v30

    :goto_6c
    move v3, v4

    move-object v7, v13

    move-object/from16 v4, v16

    goto/16 :goto_2

    :catch_6a
    move-exception v0

    move-object v5, v1

    move-object v1, v9

    move-object/from16 v24, v11

    move-object v10, v14

    move-object v11, v15

    move-object v2, v4

    move v3, v13

    const/16 v19, 0x0

    goto/16 :goto_73

    :cond_5e
    move-object v5, v1

    move-object v1, v9

    move-object/from16 v24, v11

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v15, v31

    move-object v9, v3

    .line 321
    :try_start_92
    iput-object v4, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput v12, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$0:I

    iput v13, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$1:I

    iput v0, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->I$2:I

    const/4 v0, 0x6

    iput v0, v2, Lcom/jichi/ob/AutoSyncWorker$doWork$1;->label:I

    invoke-direct {v5, v4, v7, v2}, Lcom/jichi/ob/AutoSyncWorker;->doSync(Lcom/jichi/ob/model/DataSource;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_6f
    .catchall {:try_start_92 .. :try_end_92} :catchall_6

    if-ne v0, v9, :cond_5f

    :goto_6d
    return-object v9

    :cond_5f
    move-object v6, v1

    move-object v2, v4

    move v4, v13

    .line 78
    :goto_6e
    :try_start_93
    check-cast v0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    .line 324
    iget-object v1, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/jichi/ob/util/PrefsManager;->setLastAutoSyncTime(J)V

    .line 325
    iget-object v1, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getDetectedDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jichi/ob/util/PrefsManager;->setLastDetectedDate(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v1
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_6e
    .catchall {:try_start_93 .. :try_end_93} :catchall_6

    if-lez v1, :cond_60

    :try_start_94
    invoke-virtual {v0}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->getSynced()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u65b0\u4e0a\u4f20"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_6b
    .catchall {:try_start_94 .. :try_end_94} :catchall_6

    goto :goto_6f

    :catch_6b
    move-exception v0

    move v3, v4

    move-object v4, v6

    goto/16 :goto_2

    :cond_60
    :try_start_95
    const-string/jumbo v1, "\u65e0\u6700\u65b0(\u5df2\u4e0a\u4f20)"

    .line 327
    :goto_6f
    iget-object v3, v5, Lcom/jichi/ob/AutoSyncWorker;->prefs:Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {v3, v1}, Lcom/jichi/ob/util/PrefsManager;->setLastAutoSyncResult(Ljava/lang/String;)V

    .line 330
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/jichi/ob/model/DataSource;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_6e
    .catchall {:try_start_95 .. :try_end_95} :catchall_6

    move-object v1, v5

    const/16 v19, 0x0

    move-object v5, v0

    :try_start_96
    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/AutoSyncWorker;->postSummaryNotification(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;ILcom/jichi/ob/AutoSyncWorker$AutoSyncResult;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_6d
    .catchall {:try_start_96 .. :try_end_96} :catchall_5

    move-object v5, v1

    .line 332
    :try_start_97
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_6c
    .catchall {:try_start_97 .. :try_end_97} :catchall_6

    .line 346
    :try_start_98
    invoke-virtual {v5}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_70
    check-cast v1, Landroid/app/NotificationManager;

    const/16 v7, 0x3ea

    .line 347
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_98} :catch_72

    goto/16 :goto_76

    :catch_6c
    move-exception v0

    goto :goto_71

    :catchall_5
    move-exception v0

    move-object v5, v1

    goto/16 :goto_77

    :catch_6d
    move-exception v0

    move-object v5, v1

    goto :goto_71

    :catchall_6
    move-exception v0

    goto/16 :goto_77

    :catch_6e
    move-exception v0

    const/16 v19, 0x0

    :goto_71
    move v3, v4

    move-object v4, v6

    goto :goto_74

    :catch_6f
    move-exception v0

    goto :goto_72

    :catch_70
    move-exception v0

    move-object v5, v1

    move-object v1, v9

    move-object/from16 v24, v11

    move-object v10, v14

    move-object v11, v15

    :goto_72
    const/16 v19, 0x0

    move-object v2, v4

    move v3, v13

    :goto_73
    move-object v4, v1

    .line 334
    :goto_74
    :try_start_99
    const-string v1, "Auto sync error"

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    move-object/from16 v8, v24

    invoke-static {v8, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    const/16 v6, 0x3c

    invoke-static {v1, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_75

    :cond_61
    move-object/from16 v13, v19

    :goto_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u274c \u81ea\u52a8\u540c\u6b65\u51fa\u9519: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/jichi/ob/AutoSyncWorker;->plog(Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_6

    .line 337
    :try_start_9a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_62

    const/16 v6, 0x1e

    invoke-static {v1, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_63

    :cond_62
    const-string/jumbo v1, "\u672a\u77e5"

    :cond_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u540c\u6b65\u51fa\u9519: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    invoke-direct {v5, v1, v2, v6, v3}, Lcom/jichi/ob/AutoSyncWorker;->updateForeground(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;I)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_65

    :cond_64
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    :cond_65
    invoke-direct {v5, v0, v2, v4}, Lcom/jichi/ob/AutoSyncWorker;->postFailureNotification(Ljava/lang/String;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9a} :catch_71
    .catchall {:try_start_9a .. :try_end_9a} :catchall_6

    .line 341
    :catch_71
    :try_start_9b
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_6

    .line 346
    :try_start_9c
    invoke-virtual {v5}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9c} :catch_72

    goto/16 :goto_70

    :catch_72
    :goto_76
    return-object v0

    :goto_77
    :try_start_9d
    invoke-virtual {v5}, Lcom/jichi/ob/AutoSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v7, 0x3ea

    .line 347
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9d} :catch_73

    .line 348
    :catch_73
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
