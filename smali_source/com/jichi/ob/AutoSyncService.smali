.class public final Lcom/jichi/ob/AutoSyncService;
.super Landroid/app/Service;
.source "AutoSyncService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/AutoSyncService$Companion;,
        Lcom/jichi/ob/AutoSyncService$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 92\u00020\u0001:\u00019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\"\u0010\u001c\u001a\u00020\t2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016J\u0008\u0010!\u001a\u00020\u001bH\u0002J*\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020$0#2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&H\u0082@\u00a2\u0006\u0002\u0010(J(\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010%\u001a\u00020&2\u0006\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020-H\u0082@\u00a2\u0006\u0002\u0010.J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020$H\u0002J\u0010\u00102\u001a\u00020\u001b2\u0006\u00101\u001a\u00020$H\u0002J\u0008\u00103\u001a\u00020\u001bH\u0002J\u0010\u00104\u001a\u00020$2\u0006\u00105\u001a\u00020\tH\u0002J\u0014\u00106\u001a\u0004\u0018\u0001072\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u00108\u001a\u00020\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/jichi/ob/AutoSyncService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "serviceScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "syncJob",
        "Lkotlinx/coroutines/Job;",
        "intervalSeconds",
        "",
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
        "outbaseApi",
        "Lcom/jichi/ob/api/OutbaseApi;",
        "uploadEngine",
        "Lcom/jichi/ob/api/UploadEngine;",
        "onCreate",
        "",
        "onStartCommand",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "startAutoSyncLoop",
        "doSync",
        "Lkotlin/Pair;",
        "",
        "source",
        "Lcom/jichi/ob/model/DataSource;",
        "target",
        "(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadActivity",
        "",
        "cred",
        "record",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "buildNotification",
        "Landroid/app/Notification;",
        "message",
        "updateNotification",
        "createNotificationChannel",
        "formatInterval",
        "seconds",
        "onBind",
        "Landroid/os/IBinder;",
        "onDestroy",
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
.field public static final ACTION_START:Ljava/lang/String; = "com.jichi.ob.START_AUTOSYNC"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.jichi.ob.STOP_AUTOSYNC"

.field private static final CHANNEL_ID:Ljava/lang/String; = "jichi_ob_autosync"

.field public static final Companion:Lcom/jichi/ob/AutoSyncService$Companion;

.field public static final EXTRA_INTERVAL:Ljava/lang/String; = "interval_seconds"

.field private static final NOTIF_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "AutoSyncService"

.field private static volatile syncing:Z


# instance fields
.field private final blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

.field private final brytonApi:Lcom/jichi/ob/api/BrytonApi;

.field private final igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

.field private intervalSeconds:I

.field private final mageneApi:Lcom/jichi/ob/api/MageneApi;

.field private final outbaseApi:Lcom/jichi/ob/api/OutbaseApi;

.field private prefs:Lcom/jichi/ob/util/PrefsManager;

.field private final serviceScope:Lkotlinx/coroutines/CoroutineScope;

.field private syncJob:Lkotlinx/coroutines/Job;

.field private final uploadEngine:Lcom/jichi/ob/api/UploadEngine;

.field private final xingzheApi:Lcom/jichi/ob/api/XingzheApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/AutoSyncService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/AutoSyncService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/AutoSyncService;->Companion:Lcom/jichi/ob/AutoSyncService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    const/16 v0, 0x12c

    .line 60
    iput v0, p0, Lcom/jichi/ob/AutoSyncService;->intervalSeconds:I

    .line 63
    new-instance v0, Lcom/jichi/ob/api/IgpsportApi;

    invoke-direct {v0}, Lcom/jichi/ob/api/IgpsportApi;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

    .line 64
    new-instance v0, Lcom/jichi/ob/api/XingzheApi;

    invoke-direct {v0}, Lcom/jichi/ob/api/XingzheApi;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->xingzheApi:Lcom/jichi/ob/api/XingzheApi;

    .line 65
    new-instance v0, Lcom/jichi/ob/api/MageneApi;

    invoke-direct {v0}, Lcom/jichi/ob/api/MageneApi;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->mageneApi:Lcom/jichi/ob/api/MageneApi;

    .line 66
    new-instance v0, Lcom/jichi/ob/api/BlackbirdApi;

    invoke-direct {v0}, Lcom/jichi/ob/api/BlackbirdApi;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

    .line 67
    new-instance v0, Lcom/jichi/ob/api/BrytonApi;

    invoke-direct {v0}, Lcom/jichi/ob/api/BrytonApi;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    .line 68
    new-instance v0, Lcom/jichi/ob/api/OutbaseApi;

    invoke-direct {v0}, Lcom/jichi/ob/api/OutbaseApi;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->outbaseApi:Lcom/jichi/ob/api/OutbaseApi;

    .line 69
    new-instance v0, Lcom/jichi/ob/api/UploadEngine;

    invoke-direct {v0, v1, v2, v1}, Lcom/jichi/ob/api/UploadEngine;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->uploadEngine:Lcom/jichi/ob/api/UploadEngine;

    return-void
.end method

.method public static final synthetic access$doSync(Lcom/jichi/ob/AutoSyncService;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/AutoSyncService;->doSync(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadActivity(Lcom/jichi/ob/AutoSyncService;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/AutoSyncService;->downloadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$formatInterval(Lcom/jichi/ob/AutoSyncService;I)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncService;->formatInterval(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIntervalSeconds$p(Lcom/jichi/ob/AutoSyncService;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/jichi/ob/AutoSyncService;->intervalSeconds:I

    return p0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/jichi/ob/AutoSyncService;)Lcom/jichi/ob/util/PrefsManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/jichi/ob/AutoSyncService;->prefs:Lcom/jichi/ob/util/PrefsManager;

    return-object p0
.end method

.method public static final synthetic access$getSyncing$cp()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/jichi/ob/AutoSyncService;->syncing:Z

    return v0
.end method

.method public static final synthetic access$setSyncing$cp(Z)V
    .locals 0

    .line 24
    sput-boolean p0, Lcom/jichi/ob/AutoSyncService;->syncing:Z

    return-void
.end method

.method public static final synthetic access$updateNotification(Lcom/jichi/ob/AutoSyncService;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncService;->updateNotification(Ljava/lang/String;)V

    return-void
.end method

.method private final buildNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    .line 198
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 202
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "jichi_ob_autosync"

    invoke-direct {v2, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB \u81ea\u52a8\u540c\u6b65"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 204
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v1, 0x108005f

    .line 205
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 208
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createNotificationChannel()V
    .locals 4

    .line 219
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "\u81ea\u52a8\u540c\u6b65"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const-string v3, "jichi_ob_autosync"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 220
    const-string/jumbo v1, "\u540e\u53f0\u81ea\u52a8\u540c\u6b65\u8fd0\u52a8\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 221
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/jichi/ob/AutoSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    .line 222
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final doSync(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/jichi/ob/AutoSyncService$doSync$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/jichi/ob/AutoSyncService$doSync$1;

    iget v5, v4, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/jichi/ob/AutoSyncService$doSync$1;

    invoke-direct {v4, v1, v3}, Lcom/jichi/ob/AutoSyncService$doSync$1;-><init>(Lcom/jichi/ob/AutoSyncService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v4

    iget-object v3, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 121
    iget v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    const-string v13, "AutoSyncService"

    const/4 v14, 0x5

    const-string v15, ""

    const-string v16, "prefs"

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->I$0:I

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$12:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$11:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$10:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$9:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$8:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$6:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/Iterator;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$5:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$4:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/jichi/ob/model/DataSource;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v2

    move-object/from16 p3, v15

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    const/16 v3, 0x8

    const/16 v18, 0x0

    goto/16 :goto_17

    :catchall_0
    move-exception v0

    const/16 v18, 0x0

    goto/16 :goto_1d

    :catch_0
    move-exception v0

    move v7, v2

    move-object/from16 p3, v15

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    const/16 v17, 0x8

    const/16 v18, 0x0

    goto/16 :goto_1c

    :pswitch_1
    iget v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->I$0:I

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$11:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$10:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v9, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$9:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v11, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$8:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v12, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v14, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$6:Ljava/lang/Object;

    check-cast v14, Ljava/util/Iterator;

    iget-object v8, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$5:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    const/16 v18, 0x0

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 p1, v0

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/jichi/ob/model/DataSource;

    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p1

    move-object/from16 v25, v9

    move-object/from16 p3, v15

    move-object/from16 v15, v20

    move-object/from16 p1, v21

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v14

    move-object/from16 v14, v19

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object v11, v6

    move-object v12, v7

    move-object v9, v8

    move-object v5, v14

    move-object/from16 p3, v15

    move-object/from16 v14, v19

    move-object/from16 v3, v21

    const/16 v17, 0x8

    move v7, v2

    move-object/from16 v2, v20

    goto/16 :goto_1c

    :pswitch_2
    const/16 v18, 0x0

    iget v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->I$0:I

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$8:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$5:Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$4:Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Ljava/util/List;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    iget-object v7, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/jichi/ob/model/DataSource;

    iget-object v8, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/jichi/ob/model/DataSource;

    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 p3, v7

    move v7, v2

    move-object/from16 v2, p3

    move-object/from16 p3, v15

    move-object v15, v14

    move-object v14, v12

    move-object v12, v0

    move-object v0, v5

    move-object v5, v8

    const/4 v8, 0x0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object/from16 p3, v7

    move v7, v2

    move-object/from16 v2, p3

    move-object v5, v6

    move-object v3, v8

    :goto_1
    move-object/from16 p3, v15

    :goto_2
    const/16 v17, 0x8

    goto/16 :goto_1c

    :pswitch_3
    const/16 v18, 0x0

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    :try_start_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v35, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v2

    move-object v2, v5

    move-object/from16 v5, v35

    goto/16 :goto_3

    :pswitch_4
    const/16 v18, 0x0

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    :try_start_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v2

    move-object v2, v5

    goto/16 :goto_4

    :pswitch_5
    const/16 v18, 0x0

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    :try_start_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v7, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v2

    move-object v2, v5

    goto/16 :goto_5

    :pswitch_6
    const/16 v18, 0x0

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    :try_start_6
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v8, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v2

    move-object v2, v5

    move-object v5, v8

    move/from16 v9, v18

    const/16 v8, 0x8

    goto/16 :goto_7

    :pswitch_7
    const/16 v18, 0x0

    iget-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    iget-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    :try_start_7
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v35, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v2

    move-object v2, v5

    move-object/from16 v5, v35

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_1d

    :pswitch_8
    const/16 v18, 0x0

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    iget-object v3, v1, Lcom/jichi/ob/AutoSyncService;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v3, :cond_1

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v3, v0}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v0, Lkotlin/Pair;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u672a\u767b\u5f55"

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 123
    :cond_2
    iget-object v3, v1, Lcom/jichi/ob/AutoSyncService;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v3, :cond_3

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v3, v2}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v0, Lkotlin/Pair;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "\u76ee\u6807\u672a\u767b\u5f55"

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 v5, 0x1

    .line 124
    sput-boolean v5, Lcom/jichi/ob/AutoSyncService;->syncing:Z

    .line 126
    :try_start_8
    sget-object v7, Lcom/jichi/ob/AutoSyncService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_d

    const/4 v5, 0x2

    if-eq v7, v5, :cond_b

    const/4 v5, 0x3

    if-eq v7, v5, :cond_9

    const/4 v5, 0x4

    if-eq v7, v5, :cond_7

    if-eq v7, v14, :cond_5

    .line 132
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_a

    .line 131
    :cond_5
    :try_start_9
    iget-object v5, v1, Lcom/jichi/ob/AutoSyncService;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    iput v14, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    move/from16 v8, v18

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v8, v7, v10}, Lcom/jichi/ob/api/BrytonApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    goto/16 :goto_16

    :cond_6
    :goto_3
    check-cast v5, Ljava/util/List;

    goto :goto_6

    .line 130
    :cond_7
    iget-object v7, v1, Lcom/jichi/ob/AutoSyncService;->blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    iput v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    const/16 v5, 0x8

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v5, v10}, Lcom/jichi/ob/api/BlackbirdApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_8

    goto/16 :goto_16

    :cond_8
    :goto_4
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    goto :goto_6

    .line 129
    :cond_9
    iget-object v7, v1, Lcom/jichi/ob/AutoSyncService;->mageneApi:Lcom/jichi/ob/api/MageneApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    iput v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    const/16 v5, 0x8

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v5, v10}, Lcom/jichi/ob/api/MageneApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_a

    goto/16 :goto_16

    :cond_a
    :goto_5
    move-object v5, v7

    check-cast v5, Ljava/util/List;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    const/16 v18, 0x0

    goto :goto_a

    .line 128
    :cond_b
    :try_start_a
    iget-object v7, v1, Lcom/jichi/ob/AutoSyncService;->xingzheApi:Lcom/jichi/ob/api/XingzheApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    iput v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/16 v8, 0x8

    const/4 v9, 0x0

    :try_start_b
    invoke-virtual {v7, v6, v9, v8, v10}, Lcom/jichi/ob/api/XingzheApi;->getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_c

    goto/16 :goto_16

    :cond_c
    :goto_7
    check-cast v5, Ljava/util/List;

    move/from16 v18, v9

    goto :goto_a

    :catchall_2
    move-exception v0

    :goto_8
    move/from16 v18, v9

    goto/16 :goto_1d

    :catchall_3
    move-exception v0

    const/4 v9, 0x0

    goto :goto_8

    :cond_d
    move/from16 v9, v18

    const/16 v8, 0x8

    .line 127
    iget-object v7, v1, Lcom/jichi/ob/AutoSyncService;->igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v3, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    iput v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v5, v7

    const/4 v7, 0x0

    move/from16 v17, v8

    const/16 v8, 0x8

    move/from16 v18, v9

    const/4 v9, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    :try_start_c
    invoke-static/range {v5 .. v12}, Lcom/jichi/ob/api/IgpsportApi;->getActivities$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_e

    goto/16 :goto_16

    :cond_e
    :goto_9
    check-cast v5, Ljava/util/List;

    .line 137
    :goto_a
    move-object v7, v5

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v12, v3

    move-object v11, v5

    move-object v14, v6

    move-object v5, v7

    move-object v9, v15

    move/from16 v7, v18

    move-object v3, v0

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 139
    :try_start_d
    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object/from16 p1, v11

    :try_start_e
    invoke-virtual {v2}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object/from16 p3, v15

    :try_start_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "_"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_to_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    iget-object v8, v1, Lcom/jichi/ob/AutoSyncService;->prefs:Lcom/jichi/ob/util/PrefsManager;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-nez v8, :cond_f

    :try_start_10
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/4 v8, 0x0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v11, p1

    goto/16 :goto_2

    :cond_f
    :goto_c
    :try_start_11
    invoke-virtual {v8, v6}, Lcom/jichi/ob/util/PrefsManager;->isSynced(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 142
    iput-object v3, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v14, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v12, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$4:Ljava/lang/Object;

    iput-object v9, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$5:Ljava/lang/Object;

    iput-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$6:Ljava/lang/Object;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$7:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$8:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$9:Ljava/lang/Object;

    iput-object v8, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$10:Ljava/lang/Object;

    iput-object v8, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$11:Ljava/lang/Object;

    iput-object v8, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$12:Ljava/lang/Object;

    iput v7, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->I$0:I

    const/4 v11, 0x6

    iput v11, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    invoke-direct {v1, v3, v14, v0, v10}, Lcom/jichi/ob/AutoSyncService;->downloadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-ne v11, v4, :cond_10

    goto/16 :goto_16

    :cond_10
    move-object v15, v14

    move-object v14, v12

    move-object v12, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v11

    move-object/from16 v11, p1

    :goto_d
    :try_start_12
    move-object/from16 v25, v3

    check-cast v25, [B

    if-nez v25, :cond_11

    :goto_e
    move-object v3, v5

    move-object v5, v6

    move-object v12, v14

    move-object v14, v15

    :goto_f
    move-object/from16 v15, p3

    goto/16 :goto_b

    .line 143
    :cond_11
    sget-object v3, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-ne v2, v3, :cond_13

    :try_start_13
    iget-object v3, v1, Lcom/jichi/ob/AutoSyncService;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v3, :cond_12

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v8

    :cond_12
    invoke-virtual {v3}, Lcom/jichi/ob/util/PrefsManager;->getXingzheCsrf()Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-nez v3, :cond_14

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v3, v5

    move-object v5, v6

    move-object v12, v14

    move-object v14, v15

    goto/16 :goto_2

    :cond_13
    :goto_10
    move-object/from16 v3, p3

    .line 144
    :cond_14
    :try_start_14
    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-lez v17, :cond_15

    :try_start_15
    const-string v8, "csrf"

    invoke-static {v8, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_11

    :cond_15
    :try_start_16
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    :goto_11
    move-object/from16 v27, v8

    .line 147
    sget-object v8, Lcom/jichi/ob/model/DataSource;->MAGENE:Lcom/jichi/ob/model/DataSource;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-ne v2, v8, :cond_16

    .line 148
    :try_start_17
    const-string/jumbo v9, "\u8fc8\u91d1\u4e0a\u4f20\u9700\u524d\u53f0\u540c\u6b65(WebView)"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_e

    .line 151
    :cond_16
    :try_start_18
    sget-object v8, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-ne v2, v8, :cond_17

    .line 152
    :try_start_19
    const-string/jumbo v9, "\u767e\u9510\u817e\u4e0a\u4f20\u9700\u524d\u53f0\u540c\u6b65(WebView)"
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_e

    .line 155
    :cond_17
    :try_start_1a
    iget-object v8, v1, Lcom/jichi/ob/AutoSyncService;->uploadEngine:Lcom/jichi/ob/api/UploadEngine;

    iput-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v14, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-object/from16 v23, v2

    :try_start_1b
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$4:Ljava/lang/Object;

    iput-object v9, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$5:Ljava/lang/Object;

    iput-object v6, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$6:Ljava/lang/Object;

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$7:Ljava/lang/Object;

    iput-object v12, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$8:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$9:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$10:Ljava/lang/Object;

    invoke-static/range {v27 .. v27}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$11:Ljava/lang/Object;

    iput v7, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->I$0:I

    const/4 v2, 0x7

    iput v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move-object/from16 v26, v0

    move-object/from16 v22, v8

    move-object/from16 v28, v10

    move-object/from16 v24, v14

    :try_start_1c
    invoke-virtual/range {v22 .. v28}, Lcom/jichi/ob/api/UploadEngine;->upload(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-ne v0, v4, :cond_18

    goto/16 :goto_16

    :cond_18
    move-object/from16 p1, v5

    move-object v5, v6

    move v2, v7

    move-object v7, v11

    move-object v11, v12

    move-object v14, v15

    move-object/from16 v15, v23

    move-object/from16 v8, v24

    move-object/from16 v12, v26

    move-object/from16 v10, v28

    move-object v6, v3

    move-object v3, v0

    move-object/from16 v0, v27

    .line 121
    :goto_12
    :try_start_1d
    check-cast v3, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    .line 156
    invoke-virtual {v3}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getSuccess()Z

    move-result v17
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    if-eqz v17, :cond_1a

    move-object/from16 p2, v0

    .line 157
    :try_start_1e
    iget-object v0, v1, Lcom/jichi/ob/AutoSyncService;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v0, :cond_19

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_19
    invoke-virtual {v0, v11}, Lcom/jichi/ob/util/PrefsManager;->addSyncedId(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 159
    invoke-virtual {v12}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 162
    :try_start_1f
    sget-object v1, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    move-object/from16 v9, p0

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v1, v9}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v26

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const/16 v33, 0xc

    const/16 v34, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v26 .. v34}, Lcom/jichi/ob/util/ActivityCache;->addPlatformStat$default(Lcom/jichi/ob/util/ActivityCache;Ljava/lang/String;IIIJILjava/lang/Object;)V

    .line 164
    invoke-virtual {v15}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const/16 v33, 0xa

    const/16 v34, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-static/range {v26 .. v34}, Lcom/jichi/ob/util/ActivityCache;->addPlatformStat$default(Lcom/jichi/ob/util/ActivityCache;Ljava/lang/String;IIIJILjava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :catch_5
    move-object v9, v0

    :goto_13
    move-object/from16 v1, p1

    goto :goto_15

    :catch_6
    move-exception v0

    move-object/from16 v3, p1

    move-object v11, v7

    move-object v12, v8

    const/16 v17, 0x8

    :goto_14
    move v7, v2

    move-object v2, v15

    goto/16 :goto_1c

    :cond_1a
    move-object/from16 p2, v0

    .line 167
    :try_start_20
    invoke-virtual {v3}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move/from16 v17, v2

    :try_start_21
    const-string v2, "AutoSync upload failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    move/from16 v2, v17

    goto :goto_13

    .line 169
    :goto_15
    :try_start_22
    iput-object v1, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$0:Ljava/lang/Object;

    iput-object v15, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$1:Ljava/lang/Object;

    iput-object v14, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$2:Ljava/lang/Object;

    iput-object v8, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$3:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$4:Ljava/lang/Object;

    iput-object v9, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$5:Ljava/lang/Object;

    iput-object v5, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$6:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$7:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$8:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$9:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$10:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$11:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->L$12:Ljava/lang/Object;

    iput v2, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->I$0:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_8
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    const/16 v3, 0x8

    :try_start_23
    iput v3, v10, Lcom/jichi/ob/AutoSyncService$doSync$1;->label:I

    const-wide/16 v11, 0xc8

    invoke-static {v11, v12, v10}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    if-ne v0, v4, :cond_1b

    :goto_16
    return-object v4

    :cond_1b
    move-object v11, v7

    move-object v12, v8

    move v7, v2

    move-object v2, v15

    :goto_17
    move-object/from16 v15, p3

    move-object v3, v1

    move-object/from16 v1, p0

    goto/16 :goto_b

    :catch_7
    move-exception v0

    goto :goto_18

    :catch_8
    move-exception v0

    const/16 v3, 0x8

    :goto_18
    move/from16 v17, v3

    move-object v11, v7

    move-object v12, v8

    move-object v3, v1

    goto/16 :goto_14

    :catch_9
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_19

    :catch_a
    move-exception v0

    move-object/from16 v1, p1

    move/from16 v17, v2

    :goto_19
    const/16 v3, 0x8

    move-object v11, v7

    move-object v12, v8

    move-object v2, v15

    move/from16 v7, v17

    move/from16 v17, v3

    move-object v3, v1

    goto :goto_1c

    :catch_b
    move-exception v0

    const/16 v3, 0x8

    move/from16 v17, v3

    move-object v3, v5

    move-object v5, v6

    move-object v14, v15

    move-object/from16 v2, v23

    move-object/from16 v12, v24

    move-object/from16 v10, v28

    goto :goto_1c

    :catch_c
    move-exception v0

    move-object/from16 v28, v10

    move-object/from16 v24, v14

    const/16 v3, 0x8

    move/from16 v17, v3

    move-object v3, v5

    move-object v5, v6

    move-object v14, v15

    move-object/from16 v2, v23

    goto :goto_1a

    :catch_d
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v28, v10

    move-object/from16 v24, v14

    const/16 v3, 0x8

    move/from16 v17, v3

    move-object v3, v5

    move-object v5, v6

    move-object v14, v15

    :goto_1a
    move-object/from16 v12, v24

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    goto/16 :goto_f

    :catch_e
    move-exception v0

    goto :goto_1b

    :catch_f
    move-exception v0

    move-object/from16 p3, v15

    :goto_1b
    const/16 v17, 0x8

    move-object/from16 v11, p1

    goto :goto_1c

    :catch_10
    move-exception v0

    move-object/from16 p1, v11

    goto/16 :goto_1

    .line 171
    :goto_1c
    :try_start_24
    const-string v1, "AutoSync item error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v13, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-object/from16 v1, p0

    goto/16 :goto_f

    .line 174
    :cond_1d
    new-instance v0, Lkotlin/Pair;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 176
    sput-boolean v18, Lcom/jichi/ob/AutoSyncService;->syncing:Z

    return-object v0

    :goto_1d
    sput-boolean v18, Lcom/jichi/ob/AutoSyncService;->syncing:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method private final downloadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p4, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;

    iget v1, v0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;

    invoke-direct {v0, p0, p4}, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;-><init>(Lcom/jichi/ob/AutoSyncService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v5, v0

    iget-object p4, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 180
    iget v0, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :pswitch_4
    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_6
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    sget-object p4, Lcom/jichi/ob/AutoSyncService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v0

    aget p4, p4, v0

    const/4 v0, 0x1

    if-eq p4, v0, :cond_a

    const/4 v0, 0x2

    if-eq p4, v0, :cond_8

    const/4 v0, 0x3

    if-eq p4, v0, :cond_6

    const/4 v0, 0x4

    if-eq p4, v0, :cond_4

    const/4 v0, 0x5

    if-eq p4, v0, :cond_1

    return-object v1

    .line 191
    :cond_1
    :try_start_2
    iget-object p4, p0, Lcom/jichi/ob/AutoSyncService;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    iput-object p2, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    iput-object p3, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    iput v0, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    invoke-virtual {p4, p2, v1, v5}, Lcom/jichi/ob/api/BrytonApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_2

    goto/16 :goto_7

    :cond_2
    :goto_1
    check-cast p4, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p4, v0

    iget-object v0, p0, Lcom/jichi/ob/AutoSyncService;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$3:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    invoke-virtual {v0, p2, v1, v5}, Lcom/jichi/ob/api/BrytonApi;->downloadGpx(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_3

    goto/16 :goto_7

    :cond_3
    :goto_2
    check-cast p4, [B

    goto :goto_5

    .line 190
    :cond_4
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncService;->blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    iput v0, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/jichi/ob/api/BlackbirdApi;->downloadActivity$default(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_5

    goto/16 :goto_7

    :cond_5
    :goto_3
    check-cast p4, [B

    return-object p4

    :cond_6
    move-object v2, p2

    .line 186
    :try_start_3
    iget-object p2, p0, Lcom/jichi/ob/AutoSyncService;->mageneApi:Lcom/jichi/ob/api/MageneApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    iput v0, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    invoke-virtual {p2, v2, p4, v5}, Lcom/jichi/ob/api/MageneApi;->downloadFit(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_7

    goto :goto_7

    .line 180
    :cond_7
    :goto_4
    check-cast p4, Lcom/jichi/ob/api/MageneApi$MageneFitResult;

    .line 187
    invoke-virtual {p4}, Lcom/jichi/ob/api/MageneApi$MageneFitResult;->getData()[B

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-object p4, v1

    :goto_5
    return-object p4

    :cond_8
    move-object v2, p2

    .line 183
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncService;->xingzheApi:Lcom/jichi/ob/api/XingzheApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    iput v0, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jichi/ob/api/XingzheApi;->downloadGpxOrFit$default(Lcom/jichi/ob/api/XingzheApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    check-cast p4, Lkotlin/Pair;

    invoke-virtual {p4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_a
    move-object v2, p2

    .line 182
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncService;->igpsportApi:Lcom/jichi/ob/api/IgpsportApi;

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->L$2:Ljava/lang/Object;

    iput v0, v5, Lcom/jichi/ob/AutoSyncService$downloadActivity$1;->label:I

    move-object v6, v5

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jichi/ob/api/IgpsportApi;->downloadFitFile$default(Lcom/jichi/ob/api/IgpsportApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v9, :cond_b

    :goto_7
    return-object v9

    :cond_b
    :goto_8
    check-cast p4, [B

    return-object p4

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

.method private final formatInterval(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 227
    div-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "\u5206\u949f"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "\u79d2"

    goto :goto_0
.end method

.method private final startAutoSyncLoop()V
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncService;->syncJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/jichi/ob/AutoSyncService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;

    invoke-direct {v0, p0, v1}, Lcom/jichi/ob/AutoSyncService$startAutoSyncLoop$1;-><init>(Lcom/jichi/ob/AutoSyncService;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->syncJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final updateNotification(Ljava/lang/String;)V
    .locals 2

    .line 213
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/jichi/ob/AutoSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    .line 214
    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncService;->buildNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    new-instance v0, Lcom/jichi/ob/util/PrefsManager;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jichi/ob/AutoSyncService;->prefs:Lcom/jichi/ob/util/PrefsManager;

    .line 74
    invoke-direct {p0}, Lcom/jichi/ob/AutoSyncService;->createNotificationChannel()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncService;->syncJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 235
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v0, 0x3f13c662

    if-eq p3, v0, :cond_3

    const v0, 0x61f08d8c

    if-eq p3, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, "com.jichi.ob.START_AUTOSYNC"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    const-string p2, "interval_seconds"

    const/16 p3, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jichi/ob/AutoSyncService;->intervalSeconds:I

    .line 85
    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncService;->formatInterval(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u81ea\u52a8\u540c\u6b65\u5df2\u5f00\u542f\uff0c\u95f4\u9694"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/AutoSyncService;->buildNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-virtual {p0, p2, p1}, Lcom/jichi/ob/AutoSyncService;->startForeground(ILandroid/app/Notification;)V

    .line 86
    invoke-direct {p0}, Lcom/jichi/ob/AutoSyncService;->startAutoSyncLoop()V

    goto :goto_1

    .line 78
    :cond_3
    const-string p1, "com.jichi.ob.STOP_AUTOSYNC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/jichi/ob/AutoSyncService;->stopSelf()V

    const/4 p1, 0x2

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
