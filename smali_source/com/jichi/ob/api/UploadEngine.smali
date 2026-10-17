.class public final Lcom/jichi/ob/api/UploadEngine;
.super Ljava/lang/Object;
.source "UploadEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/UploadEngine$Companion;,
        Lcom/jichi/ob/api/UploadEngine$UploadResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadEngine.kt\ncom/jichi/ob/api/UploadEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,930:1\n1#2:931\n216#3,2:932\n216#3,2:934\n1761#4,3:936\n*S KotlinDebug\n*F\n+ 1 UploadEngine.kt\ncom/jichi/ob/api/UploadEngine\n*L\n350#1:932,2\n421#1:934,2\n842#1:936,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0016\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 L2\u00020\u0001:\u0002LMB\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JD\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0014\u0008\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0086@\u00a2\u0006\u0002\u0010*J&\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020#2\u0006\u0010-\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0082@\u00a2\u0006\u0002\u0010.J&\u0010/\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010-\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0082@\u00a2\u0006\u0002\u0010.J&\u00100\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010-\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0082@\u00a2\u0006\u0002\u0010.J:\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0082@\u00a2\u0006\u0002\u00103J4\u00104\u001a\u00020\u001f2\u0006\u00105\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0002J:\u00106\u001a\u00020\u001f2\u0006\u00102\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0082@\u00a2\u0006\u0002\u00103J:\u00107\u001a\u00020\u001f2\u0006\u00105\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0082@\u00a2\u0006\u0002\u00103J:\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0082@\u00a2\u0006\u0002\u00103J:\u0010:\u001a\u00020\u001f2\u0006\u00109\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0082@\u00a2\u0006\u0002\u00103J:\u0010;\u001a\u00020\u001f2\u0006\u00105\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0082@\u00a2\u0006\u0002\u00103J:\u0010<\u001a\u00020\u001f2\u0006\u00105\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0082@\u00a2\u0006\u0002\u00103J:\u0010=\u001a\u00020\u001f2\u0006\u0010>\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0)H\u0082@\u00a2\u0006\u0002\u00103J\u0019\u0010?\u001a\u0004\u0018\u00010@2\u0008\u0010A\u001a\u0004\u0018\u00010#H\u0002\u00a2\u0006\u0002\u0010BJ.\u0010C\u001a\u00020\u001f2\u0006\u0010D\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010 \u001a\u00020!H\u0082@\u00a2\u0006\u0002\u0010EJ&\u0010F\u001a\u00020\u001f2\u0006\u0010D\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0082@\u00a2\u0006\u0002\u0010.J&\u0010G\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0082@\u00a2\u0006\u0002\u0010.J\u0018\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020@2\u0006\u0010K\u001a\u00020@H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/jichi/ob/api/UploadEngine;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "outbaseBridge",
        "Lcom/jichi/ob/util/WebBridge;",
        "getOutbaseBridge",
        "()Lcom/jichi/ob/util/WebBridge;",
        "outbaseBridge$delegate",
        "Lkotlin/Lazy;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "outbaseApi",
        "Lcom/jichi/ob/api/OutbaseApi;",
        "blackbirdApi",
        "Lcom/jichi/ob/api/BlackbirdApi;",
        "brytonApi",
        "Lcom/jichi/ob/api/BrytonApi;",
        "giantApi",
        "Lcom/jichi/ob/api/GiantApi;",
        "cycityApi",
        "Lcom/jichi/ob/api/CyCityApi;",
        "garminApi",
        "Lcom/jichi/ob/api/GarminApi;",
        "corosApi",
        "Lcom/jichi/ob/api/CorosApi;",
        "intervalsIcuApi",
        "Lcom/jichi/ob/api/IntervalsIcuApi;",
        "upload",
        "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
        "target",
        "Lcom/jichi/ob/model/DataSource;",
        "credential",
        "",
        "fitData",
        "",
        "record",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "extra",
        "",
        "(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadToLocalFolder",
        "folderUri",
        "data",
        "(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadToKomoot",
        "uploadToSuunto",
        "uploadToOutbase",
        "sessionId",
        "(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadToIgpsport",
        "token",
        "uploadToXingzhe",
        "uploadToMagene",
        "uploadToBlackbird",
        "cookie",
        "uploadToBryton",
        "uploadToGiant",
        "uploadToCyCity",
        "uploadToIntervalsIcu",
        "apiKey",
        "parseEpoch",
        "",
        "s",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "uploadToGarmin",
        "cred",
        "(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadToCoros",
        "uploadToWahoo",
        "isSameDay",
        "",
        "ts1",
        "ts2",
        "Companion",
        "UploadResult",
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
.field public static final Companion:Lcom/jichi/ob/api/UploadEngine$Companion;

.field private static final MAGENE_BASE:Ljava/lang/String; = "https://otm.onelap.cn"

.field private static final MAGENE_UPLOAD_URL:Ljava/lang/String; = "https://otm.onelap.cn/api/otm/ride_record/upload/fit"

.field private static final TAG:Ljava/lang/String; = "UploadEngine"


# instance fields
.field private final blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

.field private final brytonApi:Lcom/jichi/ob/api/BrytonApi;

.field private final client:Lokhttp3/OkHttpClient;

.field private final context:Landroid/content/Context;

.field public igpTimeDiag:Ljava/lang/String;

.field private final corosApi:Lcom/jichi/ob/api/CorosApi;

.field private final cycityApi:Lcom/jichi/ob/api/CyCityApi;

.field private final garminApi:Lcom/jichi/ob/api/GarminApi;

.field private final giantApi:Lcom/jichi/ob/api/GiantApi;

.field private final intervalsIcuApi:Lcom/jichi/ob/api/IntervalsIcuApi;

.field private final outbaseApi:Lcom/jichi/ob/api/OutbaseApi;

.field private final outbaseBridge$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$O26pJmvM3BpadXd75oSXMLabdN0(Lcom/jichi/ob/api/UploadEngine;)Lcom/jichi/ob/util/WebBridge;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/api/UploadEngine;->outbaseBridge_delegate$lambda$1(Lcom/jichi/ob/api/UploadEngine;)Lcom/jichi/ob/util/WebBridge;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$crK-6Gg9l9zcGRoagAtk2pEQ_qs(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/api/UploadEngine;->uploadToXingzhe$lambda$11(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/UploadEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/UploadEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/UploadEngine;->Companion:Lcom/jichi/ob/api/UploadEngine$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/jichi/ob/api/UploadEngine;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->context:Landroid/content/Context;

    .line 40
    new-instance p1, Lcom/jichi/ob/api/UploadEngine$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/jichi/ob/api/UploadEngine$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/api/UploadEngine;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->outbaseBridge$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v0, 0x1e

    .line 45
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v0, 0x78

    .line 46
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 47
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->client:Lokhttp3/OkHttpClient;

    .line 51
    new-instance p1, Lcom/jichi/ob/api/OutbaseApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/OutbaseApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->outbaseApi:Lcom/jichi/ob/api/OutbaseApi;

    .line 52
    new-instance p1, Lcom/jichi/ob/api/BlackbirdApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/BlackbirdApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

    .line 53
    new-instance p1, Lcom/jichi/ob/api/BrytonApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/BrytonApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->brytonApi:Lcom/jichi/ob/api/BrytonApi;

    .line 54
    new-instance p1, Lcom/jichi/ob/api/GiantApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/GiantApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->giantApi:Lcom/jichi/ob/api/GiantApi;

    .line 55
    new-instance p1, Lcom/jichi/ob/api/CyCityApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/CyCityApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->cycityApi:Lcom/jichi/ob/api/CyCityApi;

    .line 56
    new-instance p1, Lcom/jichi/ob/api/GarminApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/GarminApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->garminApi:Lcom/jichi/ob/api/GarminApi;

    .line 57
    new-instance p1, Lcom/jichi/ob/api/CorosApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/CorosApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->corosApi:Lcom/jichi/ob/api/CorosApi;

    .line 58
    new-instance p1, Lcom/jichi/ob/api/IntervalsIcuApi;

    invoke-direct {p1}, Lcom/jichi/ob/api/IntervalsIcuApi;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/api/UploadEngine;->intervalsIcuApi:Lcom/jichi/ob/api/IntervalsIcuApi;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/UploadEngine;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/jichi/ob/api/UploadEngine;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jichi/ob/api/UploadEngine;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$uploadToBlackbird(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToBlackbird(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToBryton(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToBryton(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToCoros(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/UploadEngine;->uploadToCoros(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToCyCity(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToCyCity(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToGarmin(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToGarmin(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToGiant(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToGiant(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToIgpsport(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;)Lcom/jichi/ob/api/UploadEngine$UploadResult;
    .locals 1

    # iGP时区修正：在调用 uploadToIgpsport 前调整 data（避免在巨型方法内插入代码导致VerifyError）
    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine;->context:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/jichi/ob/api/UploadEngine;->applyIgpTimezoneShift(Landroid/content/Context;[BLcom/jichi/ob/model/ActivityRecord;)[B

    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/UploadEngine;->uploadToIgpsport(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;)Lcom/jichi/ob/api/UploadEngine$UploadResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToIntervalsIcu(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToIntervalsIcu(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToKomoot(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/UploadEngine;->uploadToKomoot(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToLocalFolder(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/UploadEngine;->uploadToLocalFolder(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToMagene(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToMagene(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToOutbase(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToOutbase(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToSuunto(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/UploadEngine;->uploadToSuunto(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToWahoo(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/UploadEngine;->uploadToWahoo(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uploadToXingzhe(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/UploadEngine;->uploadToXingzhe(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/jichi/ob/api/UploadEngine;->outbaseBridge$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/util/WebBridge;

    return-object v0
.end method

.method private final isSameDay(JJ)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-lez v2, :cond_1

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 923
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 924
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 925
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 926
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    if-ne p3, p4, :cond_1

    const/4 p3, 0x6

    .line 927
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p4, p1, :cond_1

    return p2

    :cond_1
    :goto_0
    return v3
.end method

.method private static final outbaseBridge_delegate$lambda$1(Lcom/jichi/ob/api/UploadEngine;)Lcom/jichi/ob/util/WebBridge;
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/jichi/ob/api/UploadEngine;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/jichi/ob/util/WebBridge;

    invoke-direct {v0, p0}, Lcom/jichi/ob/util/WebBridge;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final parseEpoch(Ljava/lang/String;)Ljava/lang/Long;
    .locals 16

    .line 743
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 744
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-static {v2}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/16 v8, 0x3e8

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide v2, 0xe8d4a51000L

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    int-to-long v2, v8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x54

    const/16 v4, 0x20

    const/4 v5, 0x0

    .line 746
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 747
    new-instance v2, Lkotlin/text/Regex;

    const-string v4, "(\\d{4})[-/](\\d{1,2})[-/](\\d{1,2})[ ]+(\\d{1,2}):(\\d{2})(?::(\\d{2}))?"

    invoke-direct {v2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v1}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 748
    :cond_3
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x5

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x6

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 749
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 750
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    .line 751
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v11, v1, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_4
    move v15, v4

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 752
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    int-to-long v2, v8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public static synthetic upload$default(Lcom/jichi/ob/api/UploadEngine;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 78
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/jichi/ob/api/UploadEngine;->upload(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final uploadToBlackbird(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p5

    const-string/jumbo v3, "\u9ed1\u9e1f GPX->FIT(\u81ea\u7814\u515c\u5e95): "

    const-string/jumbo v4, "\u9ed1\u9e1f \u81ea\u7814\u8f6c\u6362\u4e5f\u5931\u8d25: "

    const-string/jumbo v5, "\u9ed1\u9e1f \u6e90\u5df2\u662fFIT\uff0c\u76f4\u63a5\u4e0a\u4f20 "

    const-string/jumbo v6, "\u9ed1\u9e1f GPX\u6e90 "

    const-string v7, "Blackbird upload result: "

    const-string/jumbo v8, "\u9ed1\u9e1f GPX->FIT(\u5b98\u65b9gpx2fit\u6210\u529f): "

    const-string/jumbo v9, "\u9ed1\u9e1f \u5b98\u65b9gpx2fit\u8f6c\u6362\u5f02\u5e38: "

    instance-of v10, v0, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;

    if-eqz v10, :cond_0

    move-object v10, v0

    check-cast v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;

    iget v11, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->label:I

    const/high16 v12, -0x80000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    iget v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->label:I

    sub-int/2addr v0, v12

    iput v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;

    invoke-direct {v10, v1, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 630
    iget v12, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->label:I

    const-string v14, " -> "

    const-string v13, " bytes"

    const-string v15, "UploadEngine"

    move-object/from16 v19, v0

    if-eqz v12, :cond_3

    const/4 v0, 0x1

    if-eq v12, v0, :cond_2

    const/4 v2, 0x2

    if-ne v12, v2, :cond_1

    iget-wide v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->J$0:J

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$5:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$1:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v21, v7

    move-object/from16 v0, v19

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v5, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->J$0:J

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$4:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$3:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/util/Map;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$0:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    :try_start_1
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, v19

    move-object/from16 v19, v4

    move-object/from16 v24, v7

    move-object v7, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v3

    move-wide v3, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v24

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v1, v16

    move-object/from16 v24, v7

    move-object v7, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v3

    move-wide v3, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v24

    goto/16 :goto_4

    :cond_3
    invoke-static/range {v19 .. v19}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v3

    move-object/from16 v19, v4

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 636
    :try_start_2
    sget-object v0, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    move-object/from16 v20, v12

    sget-object v12, Lcom/jichi/ob/model/DataSource;->BLACKBIRD:Lcom/jichi/ob/model/DataSource;

    move-object/from16 v21, v7

    const-string v7, "fit"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v1, p3

    :try_start_3
    invoke-virtual {v0, v12, v1, v7}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 638
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 640
    array-length v0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-object/from16 v5, p1

    move-object/from16 v12, p4

    move-object/from16 v16, v1

    :goto_1
    move-object v0, v2

    goto/16 :goto_7

    .line 642
    :cond_4
    array-length v0, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " bytes\uff0c\u5f00\u59cb\u5b98\u65b9gpx2fit\u8f6c\u6362..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 644
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 645
    invoke-direct/range {p0 .. p0}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v5, p1

    :try_start_5
    iput-object v5, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$3:Ljava/lang/Object;

    iput-object v7, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$4:Ljava/lang/Object;

    iput-wide v3, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->J$0:J

    const/4 v6, 0x1

    iput v6, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->label:I

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6, v10}, Lcom/jichi/ob/util/WebBridge;->convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-ne v0, v11, :cond_5

    move-object/from16 v1, p0

    goto/16 :goto_8

    :cond_5
    move-object/from16 v12, p4

    move-object/from16 v16, v1

    .line 630
    :goto_2
    :try_start_6
    check-cast v0, [B

    .line 646
    array-length v1, v2

    array-length v6, v0

    move-object/from16 p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v0, p1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_4

    :cond_6
    move-object/from16 v5, p1

    .line 649
    :try_start_7
    const-string/jumbo v0, "\u9ed1\u9e1f outbaseBridge\u4e3anull\uff0c\u5b98\u65b9gpx2fit\u4e0d\u53ef\u7528\uff01"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v12, p4

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    :goto_3
    move-object/from16 v12, p4

    .line 653
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v15, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    move-object/from16 v16, v1

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    goto :goto_7

    .line 659
    :cond_7
    const-string/jumbo v0, "\u9ed1\u9e1f \u5b98\u65b9gpx2fit\u4e0d\u53ef\u7528\uff0c\u56de\u9000\u81ea\u7814\u8f6c\u6362\u5668\uff08\u9ed1\u9e1f\u53ef\u80fd\u62d2\u7edd\u8be5FIT\uff09"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 661
    :try_start_9
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-static {v0, v2, v6, v8, v1}, Lcom/jichi/ob/GpxToFitConverter;->convert$default(Lcom/jichi/ob/GpxToFitConverter;[BIILjava/lang/Object;)[B

    move-result-object v0

    .line 662
    array-length v1, v2

    array-length v6, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v20

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 665
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    :goto_7
    move-object/from16 v1, p0

    .line 670
    :try_start_b
    iget-object v6, v1, Lcom/jichi/ob/api/UploadEngine;->blackbirdApi:Lcom/jichi/ob/api/BlackbirdApi;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$1:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$3:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$4:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->L$5:Ljava/lang/Object;

    iput-wide v3, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->J$0:J

    const/4 v2, 0x2

    iput v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToBlackbird$1;->label:I

    invoke-virtual {v6, v5, v0, v7, v10}, Lcom/jichi/ob/api/BlackbirdApi;->uploadActivity(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_8

    :goto_8
    return-object v11

    :cond_8
    move-wide v2, v3

    .line 630
    :goto_9
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_9

    .line 671
    const-string v0, "ok"

    goto :goto_a

    :cond_9
    move-object v0, v7

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_a

    .line 672
    new-instance v16, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v19, "\u9ed1\u9e1f\u5355\u8f66\u4e0a\u4f20\u6210\u529f"

    const/16 v22, 0x1a

    const/16 v23, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_d

    .line 673
    :cond_a
    new-instance v4, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_b

    :catch_6
    move-exception v0

    .line 675
    :goto_b
    const-string v2, "Blackbird upload error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v15, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    new-instance v4, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9ed1\u9e1f\u5355\u8f66\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_c
    move-object/from16 v16, v4

    :goto_d
    return-object v16
.end method

.method private final uploadToBryton(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 683
    new-instance v0, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v6, 0x1a

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "\u767e\u9510\u817e\u4e0a\u4f20\u5f00\u53d1\u4e2d"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final uploadToCoros(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    const-string/jumbo v3, "\u9ad8\u9a70 GPX->FIT(\u81ea\u7814\u515c\u5e95): "

    const-string/jumbo v4, "\u9ad8\u9a70 \u81ea\u7814\u8f6c\u6362\u5931\u8d25: "

    const-string/jumbo v5, "\u9ad8\u9a70\u6587\u4ef6\u5927\u5c0f\u970020KB~200MB\uff08\u5f53\u524d"

    const-string/jumbo v6, "\u9ad8\u9a70 GPX->FIT(\u5b98\u65b9gpx2fit): "

    const-string/jumbo v7, "\u9ad8\u9a70 \u5b98\u65b9gpx2fit\u5931\u8d25: "

    instance-of v8, v0, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;

    if-eqz v8, :cond_0

    move-object v8, v0

    check-cast v8, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;

    iget v9, v8, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->label:I

    const/high16 v10, -0x80000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    iget v0, v8, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->label:I

    sub-int/2addr v0, v10

    iput v0, v8, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;

    invoke-direct {v8, v1, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v14, v8

    iget-object v0, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 865
    iget v9, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->label:I

    const-string v10, " bytes"

    const-string v11, " -> "

    const/4 v13, 0x1

    const/4 v15, 0x2

    const-string v12, "UploadEngine"

    if-eqz v9, :cond_3

    if-eq v9, v13, :cond_2

    if-ne v9, v15, :cond_1

    iget-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$3:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$1:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-object v2, v12

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v9, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$1:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v13, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v2

    move-object v2, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v15, v2

    move-object v2, v9

    goto/16 :goto_4

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 870
    :try_start_2
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v0, :cond_4

    move-object/from16 v10, p1

    move-object/from16 v15, p3

    move-object v11, v2

    goto/16 :goto_8

    .line 874
    :cond_4
    :try_start_3
    invoke-direct {v1}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 875
    invoke-direct {v1}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v9, p1

    :try_start_4
    iput-object v9, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$0:Ljava/lang/Object;

    iput-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$1:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v15, p3

    :try_start_5
    iput-object v15, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$2:Ljava/lang/Object;

    iput v13, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->label:I

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v13, v14}, Lcom/jichi/ob/util/WebBridge;->convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-ne v0, v8, :cond_5

    goto/16 :goto_9

    :cond_5
    move-object v13, v9

    .line 865
    :goto_1
    :try_start_6
    check-cast v0, [B

    .line 876
    array-length v9, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 p1, v2

    :try_start_7
    array-length v2, v0

    move-object/from16 p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 p1, v2

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :cond_6
    move-object/from16 v9, p1

    move-object/from16 v15, p3

    move-object v13, v9

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v9, p1

    :goto_2
    move-object/from16 v15, p3

    :goto_3
    move-object v13, v9

    .line 879
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_7

    .line 881
    :try_start_9
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x2

    invoke-static {v0, v2, v6, v9, v7}, Lcom/jichi/ob/GpxToFitConverter;->convert$default(Lcom/jichi/ob/GpxToFitConverter;[BIILjava/lang/Object;)[B

    move-result-object v0

    .line 882
    array-length v6, v2

    array-length v7, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 883
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_7
    :goto_7
    move-object v11, v0

    move-object v10, v13

    .line 885
    :goto_8
    array-length v0, v11

    const/16 v3, 0x5000

    if-lt v0, v3, :cond_b

    array-length v0, v11

    const/high16 v3, 0xc800000

    if-le v0, v3, :cond_8

    goto :goto_b

    .line 888
    :cond_8
    sget-object v0, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    sget-object v3, Lcom/jichi/ob/model/DataSource;->COROS_CN:Lcom/jichi/ob/model/DataSource;

    const-string v4, "fit"

    invoke-virtual {v0, v3, v15, v4}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    iget-object v9, v1, Lcom/jichi/ob/api/UploadEngine;->corosApi:Lcom/jichi/ob/api/CorosApi;

    invoke-virtual {v15}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$1:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->L$4:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v14, Lcom/jichi/ob/api/UploadEngine$uploadToCoros$1;->label:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-object v2, v12

    move-object v12, v0

    :try_start_b
    invoke-virtual/range {v9 .. v14}, Lcom/jichi/ob/api/CorosApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_9

    :goto_9
    return-object v8

    .line 865
    :cond_9
    :goto_a
    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_a

    .line 890
    new-instance v7, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v10, "\u9ad8\u9a70\u4e0a\u4f20\u6210\u529f"

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_d

    .line 891
    :cond_a
    new-instance v3, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v9, 0x1a

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v3

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_c

    :cond_b
    :goto_b
    move-object v2, v12

    .line 886
    new-instance v12, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    array-length v0, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\u5b57\u8282\uff09"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1a

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    return-object v12

    :catch_8
    move-exception v0

    move-object v2, v12

    .line 893
    :goto_c
    const-string v3, "Coros upload error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    new-instance v5, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9ad8\u9a70\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x1a

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v5

    :goto_d
    return-object v7
.end method

.method private final uploadToCyCity(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    const-string v2, "CyCity upload result: "

    instance-of v3, v0, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;

    iget v4, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->label:I

    sub-int/2addr v0, v5

    iput v0, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;

    invoke-direct {v3, v1, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 703
    iget v5, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->label:I

    const-string v6, "UploadEngine"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-wide v4, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->J$0:J

    iget-object v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    iget-object v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$1:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v3, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 708
    :try_start_1
    sget-object v0, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    sget-object v5, Lcom/jichi/ob/model/DataSource;->CYCITY:Lcom/jichi/ob/model/DataSource;

    const-string v10, "fit"

    move-object/from16 v11, p3

    invoke-virtual {v0, v5, v11, v10}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    iget-object v5, v1, Lcom/jichi/ob/api/UploadEngine;->cycityApi:Lcom/jichi/ob/api/CyCityApi;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$1:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->L$4:Ljava/lang/Object;

    iput-wide v8, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->J$0:J

    iput v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToCyCity$1;->label:I

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    invoke-virtual {v5, v7, v10, v0, v3}, Lcom/jichi/ob/api/CyCityApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    return-object v4

    :cond_3
    move-wide v4, v8

    .line 703
    :goto_1
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_4

    .line 710
    const-string v0, "ok"

    goto :goto_2

    :cond_4
    move-object v0, v10

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_5

    .line 711
    new-instance v11, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string v14, "CyCity\u4e0a\u4f20\u6210\u529f"

    const/16 v17, 0x1a

    const/16 v18, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    .line 712
    :cond_5
    new-instance v7, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    .line 714
    const-string v2, "CyCity upload error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v6, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    new-instance v7, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CyCity\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final uploadToGarmin(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p5

    const-string/jumbo v3, "\u4f73\u660e sport\u4fee\u6b63: "

    const-string/jumbo v4, "\u4f73\u660e\u4e0a\u4f20: size="

    const-string/jumbo v5, "\u4f73\u660e GPX->FIT(\u81ea\u7814\u515c\u5e95): "

    const-string/jumbo v6, "\u4f73\u660e GPX->FIT(\u5b98\u65b9gpx2fit): "

    const-string/jumbo v7, "\u4f73\u660e GPX->FIT\u5168\u90e8\u5931\u8d25\uff0c\u4f20\u539f\u59cbGPX: "

    const-string v8, "Garmin upload result: "

    const-string/jumbo v9, "\u4f73\u660e \u5b98\u65b9gpx2fit\u5931\u8d25\uff0c\u8f6c\u81ea\u7814: "

    instance-of v10, v0, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;

    if-eqz v10, :cond_0

    move-object v10, v0

    check-cast v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;

    iget v11, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I

    const/high16 v12, -0x80000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    iget v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I

    sub-int/2addr v0, v12

    iput v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;

    invoke-direct {v10, v1, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 755
    iget v12, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I

    const-string v13, " bytes"

    const-string v14, " -> "

    const-string v15, "UploadEngine"

    move-object/from16 v18, v8

    if-eqz v12, :cond_5

    const/4 v8, 0x1

    if-eq v12, v8, :cond_4

    const/4 v2, 0x2

    if-eq v12, v2, :cond_3

    const/4 v8, 0x3

    if-eq v12, v8, :cond_2

    const/4 v2, 0x4

    if-ne v12, v2, :cond_1

    iget v3, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$3:I

    iget v3, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$2:I

    iget v4, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$1:I

    iget v5, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$0:I

    iget-boolean v6, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->Z$0:Z

    iget-object v7, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$9:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$8:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v12, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$7:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    iget-object v13, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$6:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$5:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$4:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v8, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/jichi/ob/model/DataSource;

    move-object/from16 v22, v0

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [B

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$0:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    :try_start_0
    invoke-static/range {v22 .. v22}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v27, v10

    move-object/from16 v0, v22

    move-object/from16 v29, v23

    const/16 v17, 0x1

    move-object v10, v7

    move-object/from16 v23, v8

    move v7, v4

    move v8, v5

    move-object v4, v11

    move v5, v3

    move-object v11, v9

    move-object v3, v2

    move v9, v6

    move-object v6, v15

    const/4 v2, 0x4

    goto/16 :goto_25

    :catch_0
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v22, v11

    move-object/from16 v29, v23

    const/4 v3, 0x0

    const/16 v17, 0x1

    move-object v10, v7

    move-object/from16 v23, v8

    move-object v11, v9

    move v7, v4

    move v9, v6

    move-object v6, v15

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_32

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v22, v0

    iget v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$3:I

    iget v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$2:I

    iget v3, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$1:I

    iget v4, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$0:I

    iget-boolean v5, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->Z$0:Z

    iget-object v6, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$9:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$8:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$7:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    iget-object v9, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v12, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$5:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$4:Ljava/lang/Object;

    check-cast v13, [B

    iget-object v14, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lcom/jichi/ob/model/DataSource;

    move/from16 v18, v0

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;

    move-object/from16 p1, v0

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$1:Ljava/lang/Object;

    check-cast v0, [B

    move-object/from16 p2, v0

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_1
    invoke-static/range {v22 .. v22}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v25, v9

    move/from16 v22, v18

    const/16 v17, 0x1

    move v9, v5

    move-object/from16 v18, v14

    move v5, v2

    move-object v14, v13

    move-object/from16 v2, p2

    move-object v13, v10

    move-object v10, v6

    move-object v6, v15

    move-object v15, v12

    move-object v12, v8

    move v8, v4

    move-object v4, v11

    move-object v11, v7

    move v7, v3

    move-object/from16 v3, p1

    goto/16 :goto_21

    :catch_1
    move-exception v0

    move-object v12, v14

    goto :goto_2

    :cond_3
    move-object/from16 v22, v0

    iget-boolean v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->Z$0:Z

    iget-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$4:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/DataSource;

    iget-object v5, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v6, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$1:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v7, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    :try_start_2
    invoke-static/range {v22 .. v22}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v14, v3

    move-object v12, v4

    move-object v8, v5

    move-object v13, v7

    move-object/from16 v16, v10

    move-object v4, v11

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/16 v17, 0x1

    move-object v7, v6

    move-object v6, v15

    move-object v15, v2

    move v2, v0

    move-object/from16 v0, v22

    goto/16 :goto_1e

    :catch_2
    move-exception v0

    move-object v12, v4

    :goto_2
    move-object v6, v15

    goto/16 :goto_35

    :cond_4
    move-object/from16 v22, v0

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$1:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, [B

    iget-object v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$0:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    :try_start_3
    invoke-static/range {v22 .. v22}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v0, v22

    move-object/from16 v22, v2

    move-object v2, v12

    move-object/from16 v12, v23

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v22, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v2

    goto/16 :goto_6

    :cond_5
    move-object/from16 v22, v0

    const/4 v8, 0x4

    invoke-static/range {v22 .. v22}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 761
    :try_start_4
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1a

    if-nez v0, :cond_28

    .line 764
    :try_start_5
    invoke-direct {v1}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    if-eqz v0, :cond_7

    .line 766
    :try_start_6
    invoke-direct {v1}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-object/from16 v12, p1

    :try_start_7
    iput-object v12, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p3

    iput-object v8, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$2:Ljava/lang/Object;

    move-object/from16 v8, p4

    iput-object v8, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$3:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v10}, Lcom/jichi/ob/util/WebBridge;->convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    if-ne v0, v11, :cond_6

    move-object v4, v11

    goto/16 :goto_24

    :cond_6
    move-object/from16 v8, p3

    move-object/from16 v22, p4

    .line 755
    :goto_3
    :try_start_8
    check-cast v0, [B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 p1, v8

    .line 767
    :try_start_9
    array-length v8, v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-object/from16 v23, v2

    :try_start_a
    array-length v2, v0

    move-object/from16 p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v23, v2

    :goto_4
    move-object/from16 v8, p1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 p1, v8

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    move-object/from16 v12, p1

    :goto_5
    move-object/from16 v8, p3

    move-object/from16 v22, p4

    move-object/from16 v23, v2

    .line 770
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    const/4 v0, 0x0

    :goto_7
    move-object/from16 v2, v23

    goto :goto_8

    :catch_9
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_1a

    :cond_7
    move-object/from16 v12, p1

    move-object/from16 v8, p3

    move-object/from16 v22, p4

    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_8

    .line 774
    :try_start_c
    move-object v0, v1

    check-cast v0, Lcom/jichi/ob/api/UploadEngine;

    .line 775
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-object/from16 p1, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    :try_start_d
    invoke-static {v0, v2, v8, v9, v6}, Lcom/jichi/ob/GpxToFitConverter;->convert$default(Lcom/jichi/ob/GpxToFitConverter;[BIILjava/lang/Object;)[B

    move-result-object v0

    .line 776
    array-length v6, v2

    array-length v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_a
    move-exception v0

    move-object/from16 p1, v8

    goto/16 :goto_1a

    :cond_8
    move-object/from16 p1, v8

    .line 781
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    const-string v5, ""

    :cond_9
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u9a91\u884c"

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u81ea\u884c\u8f66"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "cycling"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 785
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "ride"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u52a8\u611f\u5355\u8f66"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u5ba4\u5185\u5355\u8f66"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_18

    .line 787
    :cond_a
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u8dd1\u6b65"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u8dd1"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "running"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_17

    .line 789
    :cond_b
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u5f92\u6b65"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "hike"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_16

    .line 790
    :cond_c
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u6b65\u884c"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u6563\u6b65"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u5065\u8d70"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "walk"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto/16 :goto_15

    .line 792
    :cond_d
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u6e38\u6cf3"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "swim"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_14

    .line 794
    :cond_e
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u745c\u4f3d"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u5065\u8eab"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u529b\u91cf"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 795
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u8bad\u7ec3"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "fitness"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "yoga"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto/16 :goto_13

    .line 797
    :cond_f
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u692d\u5706\u673a"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "elliptical"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto/16 :goto_12

    .line 798
    :cond_10
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u5212\u8239"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u5212\u8239\u673a"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "rowing"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto/16 :goto_11

    .line 799
    :cond_11
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u722c\u697c"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "stair"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto/16 :goto_10

    .line 801
    :cond_12
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u767b\u5c71"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "mountaineering"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto/16 :goto_f

    .line 802
    :cond_13
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u6ed1\u96ea"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "ski"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto/16 :goto_e

    .line 803
    :cond_14
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u6ed1\u677f"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "skateboard"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_d

    .line 804
    :cond_15
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u9a91\u9a6c"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "horse"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_c

    .line 805
    :cond_16
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u9ad8\u5c14\u592b"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "golf"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_b

    .line 806
    :cond_17
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v8, "\u51b2\u6d6a"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v6, v8, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    check-cast v5, Ljava/lang/CharSequence;

    const-string/jumbo v6, "surf"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v14, v13, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_a

    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    :cond_19
    :goto_a
    const/16 v5, 0x1d

    goto :goto_19

    :cond_1a
    :goto_b
    const/16 v5, 0x19

    goto :goto_19

    :cond_1b
    :goto_c
    const/16 v5, 0x1b

    goto :goto_19

    :cond_1c
    :goto_d
    const/16 v5, 0x1c

    goto :goto_19

    :cond_1d
    :goto_e
    const/16 v5, 0xd

    goto :goto_19

    :cond_1e
    :goto_f
    const/16 v5, 0x10

    goto :goto_19

    :cond_1f
    :goto_10
    const/16 v5, 0x26

    goto :goto_19

    :cond_20
    :goto_11
    const/16 v5, 0x24

    goto :goto_19

    :cond_21
    :goto_12
    const/16 v5, 0x25

    goto :goto_19

    :cond_22
    :goto_13
    const/4 v5, 0x4

    goto :goto_19

    :cond_23
    :goto_14
    const/4 v5, 0x5

    goto :goto_19

    :cond_24
    :goto_15
    const/16 v5, 0xb

    goto :goto_19

    :cond_25
    :goto_16
    const/16 v5, 0x11

    goto :goto_19

    :cond_26
    :goto_17
    const/4 v5, 0x1

    goto :goto_19

    :cond_27
    :goto_18
    const/4 v5, 0x2

    .line 810
    :goto_19
    sget-object v6, Lcom/jichi/ob/api/FitDeviceFaker;->INSTANCE:Lcom/jichi/ob/api/FitDeviceFaker;

    invoke-virtual {v6, v0, v5}, Lcom/jichi/ob/api/FitDeviceFaker;->setSport([BI)[B

    move-result-object v0

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    move-object/from16 v8, p1

    goto :goto_1b

    :catch_b
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_1a

    :catch_c
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v8, p3

    move-object/from16 v22, p4

    .line 814
    :goto_1a
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    move-object v0, v2

    :goto_1b
    move-object v14, v0

    move-object v13, v12

    move-object/from16 v12, v22

    goto :goto_1c

    :catch_d
    move-exception v0

    move-object v6, v15

    move-object/from16 v12, v22

    goto/16 :goto_35

    :cond_28
    move-object/from16 v12, p1

    move-object/from16 v8, p3

    move-object v14, v2

    move-object v13, v12

    move-object/from16 v12, p4

    .line 821
    :goto_1c
    :try_start_f
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, v14}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v0

    .line 822
    sget-object v3, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    if-eqz v0, :cond_29

    const-string v5, "fit"

    goto :goto_1d

    :cond_29
    const-string v5, "gpx"

    :goto_1d
    invoke-virtual {v3, v12, v8, v5}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 823
    array-length v5, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isFit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v11

    .line 824
    iget-object v11, v1, Lcom/jichi/ob/api/UploadEngine;->garminApi:Lcom/jichi/ob/api/GarminApi;

    iput-object v13, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$1:Ljava/lang/Object;

    iput-object v8, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$2:Ljava/lang/Object;

    iput-object v12, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$3:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$4:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$5:Ljava/lang/Object;

    iput-boolean v0, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->Z$0:Z

    const/4 v9, 0x2

    iput v9, v10, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_19

    move-object/from16 v16, v10

    move-object v6, v15

    const/4 v5, 0x4

    const/16 v17, 0x1

    move-object v15, v3

    const/4 v3, 0x3

    :try_start_10
    invoke-virtual/range {v11 .. v16}, Lcom/jichi/ob/api/GarminApi;->uploadActivity(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_2a

    goto/16 :goto_24

    :cond_2a
    move-object/from16 v34, v2

    move v2, v0

    move-object v0, v7

    move-object/from16 v7, v34

    .line 755
    :goto_1e
    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    if-nez v25, :cond_2b

    .line 825
    const-string v0, "ok"

    goto :goto_1f

    :cond_2b
    move-object/from16 v0, v25

    :goto_1f
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v10, v18

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v25, :cond_2c

    .line 826
    new-instance v26, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v12}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u4e0a\u4f20\u6210\u529f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v32, 0x1a

    const/16 v33, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_37

    .line 828
    :cond_2c
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v9, "\u91cd\u590d\u6d3b\u52a8"

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v0, v9, v5, v11, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v26, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v29, "\u91cd\u590d\u6587\u4ef6\u5df2\u4e0a\u4f20\u8fc7\uff0c\u81ea\u52a8\u8df3\u8fc7"

    const/16 v32, 0x12

    const/16 v33, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_37

    .line 832
    :cond_2d
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/CharSequence;

    const-string v5, "403"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v5, v11, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 833
    invoke-virtual {v8}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/api/UploadEngine;->parseEpoch(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 834
    invoke-virtual {v8}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 835
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v11, v0

    move-object v10, v5

    move-object v0, v13

    move-object/from16 v13, v16

    move v5, v2

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v3, :cond_3c

    move-object/from16 p1, v7

    .line 837
    iget-boolean v7, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v7, :cond_3b

    if-lez v2, :cond_2f

    .line 839
    iput-object v0, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$1:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$2:Ljava/lang/Object;

    iput-object v12, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$3:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$4:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$5:Ljava/lang/Object;

    invoke-static/range {v25 .. v25}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$6:Ljava/lang/Object;

    iput-object v11, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$7:Ljava/lang/Object;

    iput-object v10, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$8:Ljava/lang/Object;

    iput-object v9, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$9:Ljava/lang/Object;

    iput-boolean v5, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->Z$0:Z

    iput v3, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$0:I

    iput v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$1:I

    iput v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$2:I

    const/4 v7, 0x0

    iput v7, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$3:I

    const/4 v7, 0x3

    iput v7, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I

    move-object/from16 p2, v8

    const-wide/16 v7, 0x1388

    invoke-static {v7, v8, v13}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_18

    if-ne v7, v4, :cond_2e

    goto/16 :goto_24

    :cond_2e
    move v7, v2

    move v8, v3

    move-object/from16 v18, v12

    const/16 v22, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move v9, v5

    move v5, v7

    :goto_21
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move v3, v5

    move v5, v8

    move-object v8, v12

    move-object/from16 v12, v18

    move-object v2, v0

    move/from16 v0, v22

    :goto_22
    move-object/from16 p1, v14

    move-object/from16 v18, v15

    move-object/from16 v15, v25

    goto :goto_23

    :cond_2f
    move-object/from16 p2, v8

    move-object/from16 v29, p1

    move-object/from16 v28, p2

    move v7, v2

    move-object v8, v11

    move-object v2, v0

    move-object v11, v10

    const/4 v0, 0x0

    move-object v10, v9

    move v9, v5

    move v5, v3

    move v3, v7

    goto :goto_22

    .line 841
    :goto_23
    :try_start_11
    iget-object v14, v1, Lcom/jichi/ob/api/UploadEngine;->garminApi:Lcom/jichi/ob/api/GarminApi;

    iput-object v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$0:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_16

    move-object/from16 v24, v2

    :try_start_12
    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$1:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$2:Ljava/lang/Object;

    iput-object v12, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$3:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$4:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$5:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$6:Ljava/lang/Object;

    iput-object v8, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$7:Ljava/lang/Object;

    iput-object v11, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$8:Ljava/lang/Object;

    iput-object v10, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->L$9:Ljava/lang/Object;

    iput-boolean v9, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->Z$0:Z

    iput v5, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$0:I

    iput v7, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$1:I

    iput v3, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$2:I

    iput v0, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->I$3:I

    const/4 v2, 0x4

    iput v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToGarmin$1;->label:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    const/16 v25, 0x0

    const/16 v26, 0xf

    move-object/from16 v23, v12

    move-object/from16 v27, v13

    move-object/from16 v22, v14

    :try_start_13
    invoke-virtual/range {v22 .. v27}, Lcom/jichi/ob/api/GarminApi;->getActivities(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    if-ne v0, v4, :cond_30

    :goto_24
    return-object v4

    :cond_30
    move-object v12, v8

    move-object v13, v15

    move-object/from16 v14, v18

    move-object/from16 v18, v28

    move v8, v5

    move v5, v3

    move-object/from16 v3, p1

    .line 755
    :goto_25
    :try_start_14
    check-cast v0, Ljava/util/List;

    .line 842
    move-object v15, v0

    check-cast v15, Ljava/lang/Iterable;

    .line 936
    instance-of v2, v15, Ljava/util/Collection;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    if-eqz v2, :cond_31

    :try_start_15
    move-object v2, v15

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    if-eqz v2, :cond_31

    move-object/from16 p1, v0

    move-object/from16 p4, v3

    move-object/from16 v22, v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2c

    :catch_e
    move-exception v0

    move-object v2, v3

    move-object/from16 v22, v4

    move v5, v8

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 937
    :cond_31
    :try_start_16
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_13

    if-eqz v15, :cond_39

    :try_start_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jichi/ob/model/ActivityRecord;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    if-eqz v12, :cond_32

    .line 843
    :try_start_18
    move-object/from16 v22, v1

    check-cast v22, Lcom/jichi/ob/api/UploadEngine;

    move-object/from16 p1, v0

    .line 844
    invoke-virtual {v15}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/api/UploadEngine;->parseEpoch(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 845
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    sub-long v25, v25, v30

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(J)J

    move-result-wide v25
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    const-wide/16 v30, 0x4b0

    cmp-long v0, v25, v30

    if-gez v0, :cond_33

    move/from16 v0, v17

    goto :goto_27

    :cond_32
    move-object/from16 p1, v0

    :cond_33
    const/4 v0, 0x0

    .line 847
    :goto_27
    :try_start_19
    move-object/from16 v22, v11

    check-cast v22, Ljava/lang/CharSequence;

    invoke-static/range {v22 .. v22}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_35

    invoke-virtual {v15}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-static/range {v22 .. v22}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_35

    .line 848
    invoke-virtual {v15}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v22

    move/from16 p2, v0

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_11

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 v22, v4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1a
    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10

    if-nez v0, :cond_34

    :try_start_1b
    move-object v0, v11

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v15}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1c
    invoke-static {v0, v1, v3, v2, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_28

    :catch_f
    move-exception v0

    goto :goto_2b

    :cond_34
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_28
    move/from16 v15, v17

    goto :goto_29

    :catch_10
    move-exception v0

    move/from16 v34, v4

    move-object v4, v2

    move v2, v3

    move/from16 v3, v34

    goto/16 :goto_2f

    :cond_35
    move/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 v22, v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_36
    move v15, v3

    :goto_29
    if-nez p2, :cond_38

    if-eqz v15, :cond_37

    goto :goto_2a

    :cond_37
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, v22

    goto/16 :goto_26

    :cond_38
    :goto_2a
    move/from16 v15, v17

    goto :goto_2c

    :catch_11
    move-exception v0

    move-object/from16 p4, v3

    move-object/from16 v22, v4

    :goto_2b
    const/4 v2, 0x2

    goto/16 :goto_2e

    :cond_39
    move-object/from16 p1, v0

    move-object/from16 p4, v3

    move-object/from16 v22, v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v15, v3

    .line 842
    :goto_2c
    iput-boolean v15, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    add-int/lit8 v5, v5, 0x1

    .line 851
    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "\u5df2\u627e\u5230"

    goto :goto_2d

    :cond_3a
    const-string/jumbo v0, "\u672a\u627e\u5230"

    :goto_2d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4f73\u660e403\u6838\u5bf9\u7b2c"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\u6b21: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (\u6700\u8fd1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6761)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12

    move v1, v8

    move-object v15, v14

    move-object/from16 v14, p4

    move v2, v7

    move v5, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v25, v13

    move-object/from16 v8, v18

    move-object/from16 v12, v23

    move-object/from16 v0, v24

    move-object/from16 v13, v27

    goto/16 :goto_33

    :catch_12
    move-exception v0

    goto :goto_2f

    :catch_13
    move-exception v0

    move-object/from16 p4, v3

    move-object/from16 v22, v4

    :goto_2e
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2f
    move-object/from16 v2, p4

    move v5, v8

    goto :goto_32

    :catch_14
    move-exception v0

    move-object/from16 v22, v4

    goto :goto_31

    :catch_15
    move-exception v0

    goto :goto_30

    :catch_16
    move-exception v0

    move-object/from16 v24, v2

    :goto_30
    move-object/from16 v22, v4

    move-object/from16 v23, v12

    move-object/from16 v27, v13

    :goto_31
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move-object v12, v8

    move-object v13, v15

    move-object/from16 v14, v18

    move-object/from16 v18, v28

    .line 852
    :goto_32
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4f73\u660e403\u6838\u5bf9\u5f02\u5e38: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_17

    move v1, v5

    move-object v15, v14

    move-object v14, v2

    move v5, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v25, v13

    move-object/from16 v8, v18

    move-object/from16 v12, v23

    move-object/from16 v0, v24

    move-object/from16 v13, v27

    move v2, v7

    :goto_33
    move-object/from16 v7, v29

    move/from16 v21, v3

    move v3, v1

    move-object v1, v8

    const/16 v20, 0x2

    const/4 v8, 0x4

    goto :goto_34

    :catch_17
    move-exception v0

    move-object/from16 v12, v23

    goto/16 :goto_35

    :cond_3b
    move-object/from16 v22, v4

    move-object/from16 p2, v8

    const/4 v4, 0x0

    const/16 v21, 0x0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    const/4 v8, 0x4

    const/16 v20, 0x2

    :goto_34
    add-int/lit8 v2, v2, 0x1

    move-object v8, v1

    move-object/from16 v4, v22

    move-object/from16 v1, p0

    goto/16 :goto_20

    .line 854
    :cond_3c
    :try_start_1e
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_3d

    new-instance v13, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v12}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5df2\u63a5\u6536(403\u5df2\u786e\u8ba4)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x1a

    const/16 v20, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_36

    .line 855
    :cond_3d
    new-instance v13, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v12}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u4f73\u660e\u8fd4\u56de403\uff0c\u672a\u80fd\u786e\u8ba4\u662f\u5426\u5df2\u63a5\u6536\uff0c\u8bf7\u5230\u4f73\u660e\u6838\u5bf9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x1a

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_36

    .line 857
    :cond_3e
    new-instance v22, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v28, 0x1a

    const/16 v29, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v22 .. v29}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_18

    move-object/from16 v26, v22

    goto :goto_37

    :catch_18
    move-exception v0

    goto :goto_35

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    move-object v6, v15

    move-object/from16 v12, p4

    .line 859
    :goto_35
    const-string v1, "Garmin upload error"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v6, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 860
    new-instance v13, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v12}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e0a\u4f20\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x1a

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_36
    move-object/from16 v26, v13

    :goto_37
    return-object v26
.end method

.method private final uploadToGiant(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    const-string v2, "Giant upload result: "

    instance-of v3, v0, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;

    iget v4, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->label:I

    sub-int/2addr v0, v5

    iput v0, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;

    invoke-direct {v3, v1, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 686
    iget v5, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->label:I

    const-string v6, "UploadEngine"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-wide v4, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->J$0:J

    iget-object v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    iget-object v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$1:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v3, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 691
    :try_start_1
    sget-object v0, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    sget-object v5, Lcom/jichi/ob/model/DataSource;->GIANT:Lcom/jichi/ob/model/DataSource;

    const-string v10, "fit"

    move-object/from16 v11, p3

    invoke-virtual {v0, v5, v11, v10}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    iget-object v5, v1, Lcom/jichi/ob/api/UploadEngine;->giantApi:Lcom/jichi/ob/api/GiantApi;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$1:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->L$4:Ljava/lang/Object;

    iput-wide v8, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->J$0:J

    iput v7, v3, Lcom/jichi/ob/api/UploadEngine$uploadToGiant$1;->label:I

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    invoke-virtual {v5, v7, v10, v0, v3}, Lcom/jichi/ob/api/GiantApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    return-object v4

    :cond_3
    move-wide v4, v8

    .line 686
    :goto_1
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_4

    .line 693
    const-string v0, "ok"

    goto :goto_2

    :cond_4
    move-object v0, v10

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_5

    .line 694
    new-instance v11, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v14, "\u6377\u5b89\u7279\u4e0a\u4f20\u6210\u529f"

    const/16 v17, 0x1a

    const/16 v18, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    .line 695
    :cond_5
    new-instance v7, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    .line 697
    const-string v2, "Giant upload error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v6, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    new-instance v7, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6377\u5b89\u7279\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final buildIgpTimeDiag(ZJZI)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_fit

    const-string/jumbo v0, "[\u65f6\u95f4\u8bca\u65ad] GPX/\u975eFIT\u6587\u4ef6\uff0c\u4e0d\u505a\u65f6\u95f4\u504f\u79fb"

    return-object v0

    :cond_fit
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Asia/Shanghai"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[\u65f6\u95f4\u8bca\u65ad] FIT \u5f00\u59cb "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_history

    const-string/jumbo v0, " \u5224\u5b9a\u5f53\u5929\uff0c\u4e0d\u504f\u79fb"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_end

    :cond_history
    const-string/jumbo v0, " \u5224\u5b9a\u5386\u53f2\uff0c\u5df2+8h\uff0c\u66ff\u6362"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u5904\u65f6\u95f4\u6233"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_end
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final uploadToIgpsport(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;)Lcom/jichi/ob/api/UploadEngine$UploadResult;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/jichi/ob/api/UploadEngine;->igpTimeDiag:Ljava/lang/String;

    .line 319
    const-string v3, "application/json"

    const-string v4, "application/octet-stream"

    const-string v5, "iGPSPORT\u4e0a\u4f20\u5931\u8d25: "

    const-string v6, ": "

    const-string v7, "UploadEngine"

    .line 0
    const-string v8, "https://prod.zh.igpsport.com/service/sportg/third-party-server/oss/getSignedUrl?fileExtension=."

    const-string v9, "Bearer "

    const-string v10, "FIT\u65f6\u95f4\u5904\u7406\u5931\u8d25(\u8df3\u8fc7): "

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 322
    :try_start_0
    array-length v0, v2

    const/16 v13, 0xe

    if-lt v0, v13, :cond_0

    const/16 v0, 0x8

    .line 323
    aget-byte v0, v2, v0

    const/16 v13, 0x2e

    if-ne v0, v13, :cond_0

    const/16 v0, 0x9

    aget-byte v0, v2, v0

    const/16 v13, 0x46

    if-ne v0, v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/16 p4, 0x1

    const/16 v16, 0x0

    .line 325
    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/model/ActivityRecord;->getStartTimeMs()J

    move-result-wide v14

    move-wide/from16 v17, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v1, v14, v15, v11, v12}, Lcom/jichi/ob/api/UploadEngine;->isSameDay(JJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    # 时区修正已移至 access$uploadToIgpsport 处理
    move-object v0, v2

    goto :goto_2

    :goto_2
    if-eqz v13, :cond_3

    .line 338
    const-string v2, "fit"

    goto :goto_3

    :cond_3
    const-string v2, "gpx"

    .line 339
    :goto_3
    sget-object v10, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    sget-object v11, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    move-object/from16 v15, p3

    invoke-virtual {v10, v11, v15, v2}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    .line 341
    new-array v11, v11, [Lkotlin/Pair;

    const-string v12, "Authorization"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p1

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v11, v16

    .line 342
    const-string v9, "User-Agent"

    const-string v12, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v11, p4

    .line 343
    const-string v9, "Origin"

    const-string v12, "https://app.igpsport.cn"

    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v11, v12

    .line 344
    const-string v9, "Referer"

    const-string v12, "https://app.igpsport.cn/"

    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v11, v12

    .line 340
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v16

    .line 348
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 349
    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 932
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 350
    invoke-virtual {v2, v11, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_4

    .line 351
    :cond_4
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 352
    :try_start_2
    iget-object v8, v1, Lcom/jichi/ob/api/UploadEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    move-object v8, v2

    check-cast v8, Lokhttp3/Response;

    .line 353
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    const-string v11, ""

    if-eqz v9, :cond_5

    :try_start_4
    invoke-virtual {v9}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v9, :cond_6

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v6, v5

    goto/16 :goto_1d

    :cond_5
    :goto_5
    move-object v9, v11

    .line 354
    :cond_6
    :try_start_5
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v12

    const/16 v13, 0xc8

    invoke-static {v9, v13}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v0

    const-string v0, "iGPSPORT getSignedUrl HTTP "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    const-string v12, "iGPSPORT\u4e0a\u4f20\u5931\u8d25: \u767b\u5f55\u5df2\u8fc7\u671f(HTTP "

    const/16 v13, 0x191

    const/4 v14, 0x0

    if-eq v0, v13, :cond_2a

    :try_start_6
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v0

    move-object/from16 p4, v10

    const/16 v10, 0x193

    if-ne v0, v10, :cond_7

    move-object v6, v5

    move-object v0, v8

    move-object v5, v12

    goto/16 :goto_1b

    .line 358
    :cond_7
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    const/16 v10, 0xc8

    if-eq v0, v10, :cond_8

    .line 359
    :try_start_7
    new-instance v20, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iGPSPORT\u4e0a\u4f20\u5931\u8d25: \u83b7\u53d6\u4e0a\u4f20\u5730\u5740HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x1a

    const/16 v27, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v20 .. v27}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    return-object v20

    .line 361
    :cond_8
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catch_1
    move-object v0, v14

    .line 363
    :goto_6
    const-string v8, "data"

    if-eqz v0, :cond_9

    :try_start_a
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_7

    :cond_9
    move-object v0, v14

    :goto_7
    if-eqz v0, :cond_a

    .line 364
    const-string/jumbo v10, "signedUrl"

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_b

    :cond_a
    move-object v10, v11

    :cond_b
    if-eqz v0, :cond_c

    .line 365
    const-string v13, "ossId"

    invoke-virtual {v0, v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v0, :cond_d

    :cond_c
    move-object v0, v11

    .line 366
    :cond_d
    :try_start_b
    move-object v13, v10

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    move-object/from16 v21, v11

    const/16 v11, 0x64

    if-nez v13, :cond_e

    .line 367
    :try_start_c
    new-instance v22, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-static {v9, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iGPSPORT\u4e0a\u4f20\u5931\u8d25: \u672a\u83b7\u53d6\u5230\u4e0a\u4f20\u5730\u5740 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x1a

    const/16 v29, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v22 .. v29}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-static {v2, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    return-object v22

    .line 372
    :cond_e
    :try_start_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 375
    new-instance v11, Lokhttp3/Request$Builder;

    invoke-direct {v11}, Lokhttp3/Request$Builder;-><init>()V

    .line 376
    invoke-virtual {v11, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    move-object/from16 v23, v8

    .line 377
    sget-object v8, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    move-object/from16 v24, v13

    const/4 v13, 0x6

    move-object/from16 v25, v14

    const/4 v14, 0x0

    move-object/from16 v26, v10

    const/4 v10, 0x0

    move-object/from16 v27, v11

    const/4 v11, 0x0

    move-object/from16 v28, v12

    const/4 v12, 0x0

    move-object/from16 v30, p4

    move-object/from16 v20, v0

    move-object/from16 p1, v2

    move-object/from16 v19, v3

    move-object/from16 p4, v5

    move-object v15, v9

    move-object/from16 v34, v23

    move-object/from16 v5, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v32, v28

    const/16 v0, 0xc8

    move-object/from16 v9, p2

    :try_start_f
    invoke-static/range {v8 .. v14}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v3, v8}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 378
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 379
    iget-object v8, v1, Lcom/jichi/ob/api/UploadEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :try_start_10
    move-object v8, v3

    check-cast v8, Lokhttp3/Response;

    .line 380
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 381
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    const-string v11, "Content-Type"

    const/16 v12, 0x12c

    const-string v13, " "

    if-gt v0, v10, :cond_f

    if-ge v10, v12, :cond_f

    move-object v4, v11

    move v2, v12

    move-object v9, v13

    const/4 v0, 0x0

    goto/16 :goto_a

    .line 384
    :cond_f
    :try_start_11
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_11

    :cond_10
    move-object/from16 v10, v21

    .line 385
    :cond_11
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iGPSPORT OSS PUT#1 HTTP "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PUT#"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v10, 0x193

    if-eq v0, v10, :cond_13

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v8, 0x190

    if-ne v0, v8, :cond_12

    goto :goto_8

    :cond_12
    move-object v4, v11

    move-object v9, v13

    const/4 v0, 0x0

    const/16 v2, 0x12c

    goto/16 :goto_a

    .line 389
    :cond_13
    :goto_8
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 390
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {v0, v11, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 392
    sget-object v8, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v2, v4}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v10

    move-object v2, v13

    const/4 v13, 0x6

    const/4 v14, 0x0

    move-object v4, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v35, v2

    const/16 v2, 0x12c

    invoke-static/range {v8 .. v14}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 394
    iget-object v8, v1, Lcom/jichi/ob/api/UploadEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :try_start_12
    move-object v0, v8

    check-cast v0, Lokhttp3/Response;

    .line 395
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v9

    const/16 v10, 0xc8

    if-gt v10, v9, :cond_14

    if-ge v9, v2, :cond_14

    .line 396
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v9, v35

    goto :goto_9

    .line 398
    :cond_14
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_16

    :cond_15
    move-object/from16 v11, v21

    .line 399
    :cond_16
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "iGPSPORT OSS PUT#2 HTTP "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " | PUT2#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v9, v35

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 403
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    const/4 v0, 0x0

    .line 394
    :try_start_13
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 406
    :goto_a
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 379
    :try_start_14
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 407
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    const-string/jumbo v3, "toString(...)"

    if-eqz v0, :cond_29

    :try_start_15
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v6, 0x12b

    const/16 v10, 0xc8

    invoke-direct {v0, v10, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_19

    .line 412
    :cond_17
    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string/jumbo v0, "\u9a91\u884c"

    :cond_18
    check-cast v0, Ljava/lang/String;

    .line 413
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 414
    const-string v6, "fileName"

    move-object/from16 v8, v30

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 415
    const-string v6, "ossName"

    move-object/from16 v11, v20

    invoke-virtual {v5, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 416
    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 417
    const-string v6, "name"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 418
    const-string v6, "activityName"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 419
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 420
    const-string v6, "https://prod.zh.igpsport.com/service/web-gateway/web-analyze/activity/uploadByOss"

    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 934
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 421
    invoke-virtual {v5, v10, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_b

    :cond_19
    move-object/from16 v6, v19

    .line 422
    invoke-virtual {v5, v4, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 423
    sget-object v5, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v3, v6}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 425
    iget-object v3, v1, Lcom/jichi/ob/api/UploadEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :try_start_16
    move-object v0, v3

    check-cast v0, Lokhttp3/Response;

    .line 426
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1b

    :cond_1a
    move-object/from16 v11, v21

    .line 427
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v17

    .line 428
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-static {v11, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "iGPSPORT uploadByOss HTTP "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    const-string v4, ")"

    const/16 v10, 0xc8

    if-ne v2, v10, :cond_26

    .line 430
    :try_start_17
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_c

    :catch_2
    const/4 v14, 0x0

    :goto_c
    const/4 v0, -0x1

    if-eqz v14, :cond_1c

    .line 431
    :try_start_18
    const-string v2, "code"

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :cond_1c
    if-eqz v0, :cond_1d

    const/16 v10, 0xc8

    if-eq v0, v10, :cond_1d

    .line 448
    :try_start_19
    new-instance v26, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v0, 0x96

    invoke-static {v11, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    move-object/from16 v6, p4

    :try_start_1a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v32, 0x1a

    const/16 v33, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_16

    :catchall_1
    move-exception v0

    move-object/from16 v6, p4

    goto/16 :goto_17

    :cond_1d
    move-object/from16 v6, p4

    if-eqz v14, :cond_1e

    move-object/from16 v2, v21

    move-object/from16 v0, v34

    .line 437
    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1f

    goto :goto_d

    :cond_1e
    move-object/from16 v2, v21

    move-object/from16 v0, v34

    :goto_d
    move-object v11, v2

    .line 438
    :cond_1f
    move-object v5, v11

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    const-string v8, "null"

    if-nez v5, :cond_21

    :try_start_1b
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_f

    :cond_20
    :goto_e
    move-object v14, v11

    goto :goto_11

    :cond_21
    :goto_f
    if-eqz v14, :cond_22

    .line 439
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    goto :goto_10

    :cond_22
    const/4 v14, 0x0

    :goto_10
    if-eqz v14, :cond_23

    .line 440
    const-string v0, "id"

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_20

    :cond_23
    move-object v11, v2

    goto :goto_e

    .line 442
    :goto_11
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_12

    .line 445
    :cond_24
    new-instance v12, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iGPSPORT\u4e0a\u4f20\u6210\u529f(id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x18

    const/16 v19, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_13

    .line 443
    :cond_25
    :goto_12
    new-instance v8, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string v11, "iGPSPORT\u5df2\u63a5\u6536\uff0c\u5f02\u6b65\u89e3\u6790\u4e2d\uff0c\u7a0d\u540e\u53ef\u5728iGPSPORT\u67e5\u770b"

    iget-object v0, v1, Lcom/jichi/ob/api/UploadEngine;->igpTimeDiag:Ljava/lang/String;

    if-eqz v0, :cond_igpdiag

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_igpdiag
    const/16 v14, 0x1a

    const/4 v15, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_15

    :cond_26
    move-object/from16 v6, p4

    .line 450
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v5, 0x191

    if-eq v2, v5, :cond_28

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v10, 0x193

    if-ne v2, v10, :cond_27

    goto :goto_14

    .line 453
    :cond_27
    new-instance v12, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v11, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iGPSPORT\u4e0a\u4f20\u5931\u8d25: HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1a

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_13
    move-object/from16 v26, v12

    goto :goto_16

    .line 451
    :cond_28
    :goto_14
    new-instance v8, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v32

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x1a

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :goto_15
    move-object/from16 v26, v8

    :goto_16
    const/4 v0, 0x0

    .line 425
    :try_start_1c
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    move-object/from16 v2, p1

    .line 352
    :try_start_1d
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    goto/16 :goto_1f

    :catchall_2
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_1c

    :catchall_3
    move-exception v0

    :goto_17
    move-object/from16 v2, p1

    goto :goto_18

    :catchall_4
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    :goto_18
    move-object v4, v0

    .line 425
    :try_start_1e
    throw v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_1f
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_29
    :goto_19
    move-object/from16 v2, p1

    move-object/from16 v6, p4

    .line 408
    new-instance v8, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xc8

    invoke-static {v4, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iGPSPORT\u4e0a\u4f20\u5931\u8d25: OSS\u4e0a\u4f20HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x1a

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    const/4 v0, 0x0

    :try_start_20
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_3

    return-object v8

    :catchall_6
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    move-object v4, v0

    .line 394
    :try_start_21
    throw v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_22
    invoke-static {v8, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_1a

    :catchall_9
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    :goto_1a
    move-object v4, v0

    .line 379
    :try_start_23
    throw v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    :catchall_a
    move-exception v0

    :try_start_24
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_b
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    goto :goto_1c

    :cond_2a
    move-object v6, v5

    move-object v5, v12

    move-object v0, v8

    .line 356
    :goto_1b
    new-instance v8, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55igp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x1a

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    const/4 v0, 0x0

    :try_start_25
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_3

    return-object v8

    :catchall_c
    move-exception v0

    goto :goto_1c

    :catchall_d
    move-exception v0

    move-object v6, v5

    :goto_1c
    move-object v3, v0

    .line 352
    :goto_1d
    :try_start_26
    throw v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    :catchall_e
    move-exception v0

    :try_start_27
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    :catch_3
    move-exception v0

    goto :goto_1e

    :catch_4
    move-exception v0

    move-object v6, v5

    .line 458
    :goto_1e
    const-string v2, "iGPSPORT upload error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v7, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    new-instance v8, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x1a

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v26, v8

    :goto_1f
    return-object v26
.end method

.method private final uploadToIntervalsIcu(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    const-string v2, "Intervals.icu upload result: "

    instance-of v3, v0, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;

    iget v4, v3, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->label:I

    sub-int/2addr v0, v5

    iput v0, v3, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;

    invoke-direct {v3, v1, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v3

    iget-object v0, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 720
    iget v4, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->label:I

    const-string v10, "UploadEngine"

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v3, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->J$0:J

    iget-object v5, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    iget-object v5, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v5, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$1:Ljava/lang/Object;

    check-cast v5, [B

    iget-object v5, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 725
    :try_start_1
    sget-object v0, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    sget-object v4, Lcom/jichi/ob/model/DataSource;->INTERVALS_ICU:Lcom/jichi/ob/model/DataSource;

    const-string v6, "fit"

    move-object/from16 v7, p3

    invoke-virtual {v0, v4, v7, v6}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-virtual {v7}, Lcom/jichi/ob/model/ActivityRecord;->getSource()Lcom/jichi/ob/model/DataSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 728
    iget-object v4, v1, Lcom/jichi/ob/api/UploadEngine;->intervalsIcuApi:Lcom/jichi/ob/api/IntervalsIcuApi;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$1:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$4:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->L$5:Ljava/lang/Object;

    iput-wide v11, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->J$0:J

    iput v5, v9, Lcom/jichi/ob/api/UploadEngine$uploadToIntervalsIcu$1;->label:I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Lcom/jichi/ob/api/IntervalsIcuApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-wide v3, v11

    .line 720
    :goto_1
    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    if-nez v14, :cond_4

    .line 729
    const-string v0, "ok"

    goto :goto_2

    :cond_4
    move-object v0, v14

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_5

    .line 730
    new-instance v2, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string v5, "Intervals.icu\u4e0a\u4f20\u6210\u529f"

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 731
    :cond_5
    new-instance v11, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v17, 0x1a

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    .line 733
    const-string v2, "Intervals.icu upload error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v10, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    new-instance v11, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Intervals.icu\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x1a

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11
.end method

.method private final uploadToKomoot(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 202
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/UploadEngine$uploadToKomoot$2;-><init>(Lcom/jichi/ob/api/UploadEngine;[BLcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final uploadToLocalFolder(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 171
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/UploadEngine$uploadToLocalFolder$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/UploadEngine$uploadToLocalFolder$2;-><init>(Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final uploadToMagene(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 567
    const-string v3, "UploadEngine"

    .line 0
    const-string/jumbo v4, "\u8fc8\u91d1\u4e0a\u4f20\u6210\u529f(OTM API)"

    const-string/jumbo v5, "\u8fc8\u91d1\u4e0a\u4f20\u5931\u8d25: HTTP "

    const-string v6, "Magene upload HTTP "

    const-string v7, " (\u26a0\ufe0f\u8f6c\u6362\u5931\u8d25: "

    const-string v0, " (GPX\u2192FIT "

    const-string/jumbo v8, "\u8fc8\u91d1 GPX->FIT\u5931\u8d25: "

    const-string/jumbo v9, "\u8fc8\u91d1 GPX\u6e90 "

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 569
    :try_start_0
    move-object v12, v1

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v13, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v16, "\u8fc8\u91d1\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\u8fc8\u91d1"

    const/16 v19, 0x1a

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13

    .line 574
    :cond_0
    sget-object v12, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v12, v2}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v13, ""

    const/4 v15, 0x0

    if-eqz v12, :cond_1

    move-object v0, v13

    :goto_0
    move-object v15, v2

    goto :goto_1

    .line 578
    :cond_1
    :try_start_1
    array-length v12, v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " bytes\uff0c\u8f6cFIT\uff08\u81ea\u7814\u5b8c\u6574\u6d88\u606f\u6d41\uff09..."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 580
    :try_start_2
    sget-object v9, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v12, 0x2

    const/4 v14, 0x0

    invoke-static {v9, v2, v14, v12, v15}, Lcom/jichi/ob/GpxToFitConverter;->convert$default(Lcom/jichi/ob/GpxToFitConverter;[BIILjava/lang/Object;)[B

    move-result-object v9

    .line 581
    array-length v12, v2

    array-length v14, v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, "\u2192"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, "\u5b57\u8282)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v9

    goto :goto_0

    :catch_0
    move-exception v0

    .line 584
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :goto_1
    sget-object v2, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    sget-object v7, Lcom/jichi/ob/model/DataSource;->MAGENE:Lcom/jichi/ob/model/DataSource;

    const-string v8, "fit"

    move-object/from16 v9, p3

    invoke-virtual {v2, v7, v9, v8}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 596
    new-instance v7, Lokhttp3/MultipartBody$Builder;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v7, v9, v8, v9}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 597
    sget-object v9, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v7, v9}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v7

    .line 598
    const-string v9, "jilu0"

    sget-object v14, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v12, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v8, "application/octet-stream"

    invoke-virtual {v12, v8}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v16

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v7, v9, v2, v8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 599
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    .line 600
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 601
    const-string v8, "https://otm.onelap.cn/api/otm/ride_record/upload/fit"

    invoke-virtual {v7, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 602
    const-string v8, "User-Agent"

    const-string v9, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36"

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 603
    const-string v8, "Authorization"

    invoke-virtual {v7, v8, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 604
    const-string v7, "Origin"

    const-string v8, "https://otm.onelap.cn"

    invoke-virtual {v1, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 605
    const-string v7, "Referer"

    const-string v8, "https://otm.onelap.cn/analysis"

    invoke-virtual {v1, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 606
    check-cast v2, Lokhttp3/RequestBody;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v2, p0

    .line 608
    :try_start_4
    iget-object v7, v2, Lcom/jichi/ob/api/UploadEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v7, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    move-object v7, v1

    check-cast v7, Lokhttp3/Response;

    .line 609
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move-object v13, v8

    .line 610
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 611
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v10

    const/16 v11, 0xc8

    invoke-static {v13, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " ("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v6, v11, :cond_6

    .line 614
    :try_start_6
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    const/4 v6, 0x0

    :goto_3
    const/4 v8, -0x1

    if-eqz v6, :cond_4

    .line 615
    :try_start_7
    const-string v9, "code"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    :cond_4
    if-eqz v6, :cond_5

    .line 616
    const-string v9, "data"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string/jumbo v9, "success_count"

    const/4 v14, 0x0

    invoke-virtual {v6, v9, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-ne v8, v11, :cond_6

    const/4 v6, 0x1

    if-lt v14, v6, :cond_6

    .line 618
    new-instance v15, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x1a

    const/16 v22, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v9, 0x0

    :try_start_8
    invoke-static {v1, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    return-object v15

    .line 621
    :cond_6
    :try_start_9
    new-instance v4, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v6, 0x64

    invoke-static {v13, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v9, 0x0

    .line 608
    :try_start_a
    invoke-static {v1, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_c
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v2, p0

    .line 624
    :goto_5
    const-string v1, "Magene upload error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    new-instance v5, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8fc8\u91d1\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x1a

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v5

    :goto_6
    return-object v4
.end method

.method private final uploadToOutbase(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v0, p5

    const-string v8, "Outbase GPX->FIT(\u81ea\u7814\u515c\u5e95, sportType="

    const-string v9, "Outbase \u81ea\u7814\u8f6c\u6362\u4e5f\u5931\u8d25: "

    const-string v2, "Outbase Keep->FIT(\u81ea\u7814, \u81ea\u52a8\u8bc6\u522bsport): "

    const-string v4, "Outbase Keep\u81ea\u7814\u8f6c\u6362\u5931\u8d25: "

    const-string v10, "Outbase GPX->FIT(\u5b98\u65b9gpx2fit): "

    const-string v11, "Outbase \u5b98\u65b9gpx2fit\u8f6c\u6362\u5931\u8d25: "

    instance-of v5, v0, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;

    iget v6, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v0, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->label:I

    sub-int/2addr v0, v7

    iput v0, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;

    invoke-direct {v5, v1, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 253
    iget v6, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->label:I

    const-string v14, " bytes"

    const-string v15, " -> "

    const/4 v7, 0x1

    const-string v13, "UploadEngine"

    if-eqz v6, :cond_4

    if-eq v6, v7, :cond_3

    const/4 v2, 0x2

    if-eq v6, v2, :cond_2

    const/4 v2, 0x3

    if-ne v6, v2, :cond_1

    iget-boolean v2, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->Z$0:Z

    iget-object v3, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$6:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$4:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$1:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move/from16 v24, v2

    move-object/from16 v23, v3

    move/from16 v19, v7

    move-object v5, v13

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x3

    iget-object v3, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$5:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$4:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v6, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v8, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v9, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$1:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v10, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-object v11, v5

    move/from16 v19, v7

    move-object v14, v10

    move-object v7, v12

    move-object v5, v13

    move-object v10, v6

    move-object v12, v8

    move-object v13, v9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_a

    :cond_3
    const/4 v2, 0x3

    iget-object v3, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v6, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$1:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v2, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v19, v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move/from16 v19, v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3

    goto/16 :goto_6

    :cond_4
    const/16 v18, 0x3

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 260
    :try_start_3
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, v3}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object v15, v3

    move/from16 v19, v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto/16 :goto_9

    .line 262
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/model/ActivityRecord;->getSource()Lcom/jichi/ob/model/DataSource;

    move-result-object v0

    sget-object v6, Lcom/jichi/ob/model/DataSource;->KEEP:Lcom/jichi/ob/model/DataSource;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    if-ne v0, v6, :cond_6

    .line 264
    :try_start_4
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    :try_start_5
    invoke-static {v0, v3, v6, v9, v8}, Lcom/jichi/ob/GpxToFitConverter;->convert$default(Lcom/jichi/ob/GpxToFitConverter;[BIILjava/lang/Object;)[B

    move-result-object v0

    .line 265
    array-length v9, v3

    array-length v10, v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 268
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    move-object v0, v3

    :goto_2
    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v15, v0

    move/from16 v16, v6

    move/from16 v19, v7

    move-object/from16 v17, v8

    move-object/from16 v0, p4

    goto/16 :goto_9

    :cond_6
    const/4 v6, 0x0

    const/16 v17, 0x0

    .line 273
    :try_start_7
    invoke-direct {v1}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 274
    invoke-direct {v1}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    iput-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$1:Ljava/lang/Object;

    move-object/from16 v4, p3

    iput-object v4, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$3:Ljava/lang/Object;

    iput v7, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->label:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/4 v4, 0x0

    move/from16 v16, v6

    const/4 v6, 0x2

    move/from16 v19, v7

    const/4 v7, 0x0

    :try_start_8
    invoke-static/range {v2 .. v7}, Lcom/jichi/ob/util/WebBridge;->convertGpxToFit$default(Lcom/jichi/ob/util/WebBridge;[BZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-ne v0, v12, :cond_7

    move-object v7, v12

    goto/16 :goto_b

    :cond_7
    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    .line 253
    :goto_3
    :try_start_9
    check-cast v0, [B

    .line 275
    array-length v7, v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 p1, v2

    :try_start_a
    array-length v2, v0

    move-object/from16 p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v2, p2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 p1, v2

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :cond_8
    move/from16 v16, v6

    move/from16 v19, v7

    move-object/from16 v6, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object/from16 v2, v17

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v28, v2

    move-object v2, v0

    move-object/from16 v0, v28

    goto :goto_7

    :catch_6
    move-exception v0

    move/from16 v16, v6

    move/from16 v19, v7

    :goto_5
    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    .line 279
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v0, v17

    :goto_7
    if-nez v0, :cond_9

    .line 284
    :try_start_c
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v4}, Lcom/jichi/ob/model/ActivityRecord;->getSportType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/jichi/ob/GpxToFitConverter;->convertWithSportType([BLjava/lang/String;)[B

    move-result-object v0

    .line 285
    invoke-virtual {v4}, Lcom/jichi/ob/model/ActivityRecord;->getSportType()Ljava/lang/String;

    move-result-object v7

    array-length v10, v6

    array-length v11, v0

    move-object/from16 p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "): "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-object/from16 v0, p1

    goto :goto_8

    :catch_7
    move-exception v0

    .line 288
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    :cond_9
    :goto_8
    move-object v15, v0

    move-object v0, v3

    move-object v3, v6

    .line 292
    :goto_9
    sget-object v6, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    sget-object v7, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    const-string v8, "fit"

    invoke-virtual {v6, v7, v4, v8}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v12

    .line 293
    iget-object v12, v1, Lcom/jichi/ob/api/UploadEngine;->outbaseApi:Lcom/jichi/ob/api/OutbaseApi;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$2:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$3:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$4:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$5:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v5, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->label:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    const/4 v14, 0x0

    move/from16 v8, v16

    move-object/from16 v16, v6

    move v6, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move-object v13, v2

    move/from16 v2, v18

    :try_start_e
    invoke-virtual/range {v12 .. v17}, Lcom/jichi/ob/api/OutbaseApi;->upload(Ljava/lang/String;Lcom/jichi/ob/util/WebBridge;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v11, v17

    if-ne v10, v7, :cond_a

    goto :goto_b

    :cond_a
    move-object v12, v10

    move-object v10, v0

    move-object v0, v12

    move-object v12, v4

    move-object v14, v13

    move-object v4, v15

    move-object v13, v3

    move-object/from16 v3, v16

    :goto_a
    check-cast v0, Lkotlin/Triple;

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 296
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$0:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$1:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$2:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$3:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$4:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$5:Ljava/lang/Object;

    iput-object v15, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->L$6:Ljava/lang/Object;

    iput-boolean v0, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->Z$0:Z

    iput v2, v11, Lcom/jichi/ob/api/UploadEngine$uploadToOutbase$1;->label:I

    const-wide/16 v2, 0x190

    invoke-static {v2, v3, v11}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_b

    :goto_b
    return-object v7

    :cond_b
    move/from16 v24, v0

    move-object/from16 v23, v15

    .line 299
    :goto_c
    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v2, "\u5f85\u5904\u7406"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v6, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v25

    .line 300
    new-instance v20, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    if-nez v24, :cond_c

    .line 301
    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v2, "\u6210\u529f"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v6, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v25, :cond_c

    move/from16 v21, v19

    goto :goto_d

    :cond_c
    move/from16 v21, v6

    :goto_d
    const/16 v26, 0x2

    const/16 v27, 0x0

    const/16 v22, 0x0

    .line 300
    invoke-direct/range {v20 .. v27}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    move-object v5, v13

    .line 307
    :goto_e
    const-string v2, "Outbase upload error"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    new-instance v6, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Outbase\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x1a

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v20, v6

    :goto_f
    return-object v20
.end method

.method private final uploadToSuunto(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 227
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/UploadEngine$uploadToSuunto$2;-><init>(Lcom/jichi/ob/api/UploadEngine;[BLjava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final uploadToWahoo(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    const-string v1, "Wahoo_"

    instance-of v2, v0, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;

    iget v3, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 899
    iget v5, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v1, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->L$1:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v1, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 905
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    new-instance v1, Lcom/jichi/ob/api/WahooApi;

    invoke-direct {v1}, Lcom/jichi/ob/api/WahooApi;-><init>()V

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->L$2:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->L$3:Ljava/lang/Object;

    iput v6, v2, Lcom/jichi/ob/api/UploadEngine$uploadToWahoo$1;->label:I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual {v1, v5, v6, v0, v2}, Lcom/jichi/ob/api/WahooApi;->uploadFit(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    return-object v4

    :cond_3
    :goto_1
    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    if-nez v5, :cond_4

    .line 908
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "Duplicate workout file detected"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v1, v6, v2, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 909
    new-instance v8, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v11, "\u91cd\u590d\u6587\u4ef6\u5df2\u4e0a\u4f20\u8fc7\uff0c\u81ea\u52a8\u8df3\u8fc7"

    const/16 v14, 0x12

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    .line 911
    :cond_4
    new-instance v4, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 914
    const-string v1, "Wahoo upload error"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v4, "UploadEngine"

    invoke-static {v4, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    new-instance v5, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wahoo\u4e0a\u4f20\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x1a

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method private final uploadToXingzhe(Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p5

    const-string v3, "code"

    const-string/jumbo v4, "\u884c\u8005\u4e0a\u4f20\u6210\u529f(id="

    const-string/jumbo v5, "\u884c\u8005\u4e0a\u4f20\u5931\u8d25: HTTP "

    const-string v6, "Xingzhe upload HTTP "

    const-string v7, "sessionid="

    const-string v8, "; csrftoken="

    const-string/jumbo v9, "\u884c\u8005 GPX\u2192FIT(\u81ea\u7814\u515c\u5e95): "

    const-string/jumbo v10, "\u884c\u8005 \u81ea\u7814\u8f6c\u6362\u4e5f\u5931\u8d25: "

    const-string/jumbo v11, "\u884c\u8005 GPX\u2192FIT(\u5b98\u65b9gpx2fit): "

    const-string/jumbo v12, "\u884c\u8005 \u5b98\u65b9gpx2fit\u8f6c\u6362\u5931\u8d25: "

    instance-of v13, v0, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;

    if-eqz v13, :cond_0

    move-object v13, v0

    check-cast v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;

    iget v14, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->label:I

    const/high16 v15, -0x80000000

    and-int/2addr v14, v15

    if-eqz v14, :cond_0

    iget v0, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->label:I

    sub-int/2addr v0, v15

    iput v0, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;

    invoke-direct {v13, v1, v0}, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    .line 464
    iget v15, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->label:I

    move-object/from16 v16, v5

    const-string v5, " bytes"

    move-object/from16 v17, v4

    const-string v4, " -> "

    move-object/from16 v18, v3

    const-string v3, "UploadEngine"

    move-object/from16 v19, v6

    const-string/jumbo v6, "\u884c\u8005\u4e0a\u4f20\u5931\u8d25: "

    if-eqz v15, :cond_2

    move-object/from16 v20, v6

    const/4 v6, 0x1

    if-ne v15, v6, :cond_1

    iget-wide v14, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->J$0:J

    iget-object v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v6, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/jichi/ob/model/ActivityRecord;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->L$1:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    iget-object v0, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->L$0:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    :try_start_0
    invoke-static/range {v21 .. v21}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v31, v14

    move-object v15, v2

    move-object/from16 v2, v22

    move-wide/from16 v22, v31

    move-object/from16 v0, v21

    move-object/from16 v21, v7

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide/from16 v31, v14

    move-object v15, v2

    move-object/from16 v2, v22

    move-wide/from16 v22, v31

    move-object/from16 v21, v7

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v21, v0

    move-object/from16 v20, v6

    invoke-static/range {v21 .. v21}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v7

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 471
    :try_start_1
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-virtual {v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->isFit([B)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    if-nez v0, :cond_5

    .line 473
    :try_start_2
    invoke-direct {v1}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 474
    invoke-direct {v1}, Lcom/jichi/ob/api/UploadEngine;->getOutbaseBridge()Lcom/jichi/ob/util/WebBridge;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v21, v15

    move-object/from16 v15, p1

    :try_start_3
    iput-object v15, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->L$0:Ljava/lang/Object;

    iput-object v2, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->L$1:Ljava/lang/Object;

    move-object/from16 v15, p3

    iput-object v15, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->L$2:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v15, p4

    :try_start_4
    iput-object v15, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->L$3:Ljava/lang/Object;

    iput-wide v6, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->J$0:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-wide/from16 v22, v6

    const/4 v6, 0x1

    :try_start_5
    iput v6, v13, Lcom/jichi/ob/api/UploadEngine$uploadToXingzhe$1;->label:I

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6, v13}, Lcom/jichi/ob/util/WebBridge;->convertGpxToFit([BZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-ne v0, v14, :cond_3

    return-object v14

    :cond_3
    move-object/from16 v13, p1

    move-object/from16 v6, p3

    .line 464
    :goto_1
    :try_start_6
    check-cast v0, [B

    .line 475
    array-length v7, v2

    array-length v14, v0

    move-object/from16 p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v0, p1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v15, p4

    :goto_2
    move-wide/from16 v22, v6

    goto :goto_3

    :cond_4
    move-wide/from16 v22, v6

    move-object/from16 v21, v15

    move-object/from16 v15, p4

    move-object/from16 v13, p1

    move-object/from16 v6, p3

    goto :goto_5

    :catch_5
    move-exception v0

    move-wide/from16 v22, v6

    move-object/from16 v21, v15

    move-object/from16 v15, p4

    :goto_3
    move-object/from16 v13, p1

    move-object/from16 v6, p3

    .line 479
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_6

    .line 483
    :try_start_8
    sget-object v0, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v2, v11, v7, v12}, Lcom/jichi/ob/GpxToFitConverter;->convert$default(Lcom/jichi/ob/GpxToFitConverter;[BIILjava/lang/Object;)[B

    move-result-object v0

    .line 484
    array-length v7, v2

    array-length v11, v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    .line 487
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    move-wide/from16 v22, v6

    move-object/from16 v21, v15

    move-object/from16 v15, p4

    move-object/from16 v13, p1

    move-object/from16 v6, p3

    :goto_7
    move-object v0, v2

    :cond_6
    :goto_8
    move-wide/from16 v4, v22

    .line 492
    sget-object v2, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    sget-object v7, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    const-string v9, "fit"

    invoke-virtual {v2, v7, v6, v9}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    const-string v6, "csrf"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    const-string v7, ""

    if-nez v6, :cond_7

    move-object v6, v7

    .line 498
    :cond_7
    :try_start_a
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    const-string v10, "digest(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v23, v7

    check-cast v23, Ljava/lang/CharSequence;

    new-instance v28, Lcom/jichi/ob/api/UploadEngine$$ExternalSyntheticLambda0;

    invoke-direct/range {v28 .. v28}, Lcom/jichi/ob/api/UploadEngine$$ExternalSyntheticLambda0;-><init>()V

    const/16 v29, 0x1e

    const/16 v30, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v9

    invoke-static/range {v22 .. v30}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 499
    new-instance v10, Lokhttp3/MultipartBody$Builder;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v10, v12, v11, v12}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 500
    sget-object v11, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v10, v11}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v10

    .line 501
    const-string v11, "fit_file"

    sget-object v22, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v12, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v14, "application/octet-stream"

    invoke-virtual {v12, v14}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v24

    const/16 v27, 0x6

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v28}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v10, v11, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 502
    const-string v2, "md5"

    invoke-virtual {v0, v2, v9}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 505
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 506
    const-string v9, "https://www.imxingzhe.com/api/v1/fit/upload/"

    invoke-virtual {v2, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 507
    const-string v9, "Cookie"

    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_8
    move-object v8, v7

    :goto_9
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v15, v21

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 508
    const-string v8, "User-Agent"

    const-string v9, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    invoke-virtual {v2, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 509
    const-string v8, "Referer"

    const-string v9, "https://www.imxingzhe.com/upload/fit"

    invoke-virtual {v2, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 510
    const-string v8, "Accept"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 511
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_9

    const-string v8, "X-CSRFToken"

    invoke-virtual {v2, v8, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 512
    :cond_9
    check-cast v0, Lokhttp3/RequestBody;

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 514
    iget-object v2, v1, Lcom/jichi/ob/api/UploadEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    :try_start_b
    move-object v0, v2

    check-cast v0, Lokhttp3/Response;

    .line 515
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v6, :cond_a

    :try_start_c
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v6, :cond_b

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v5, v20

    goto/16 :goto_13

    :cond_a
    :goto_a
    move-object v6, v7

    .line 516
    :cond_b
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 517
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x12c

    invoke-static {v6, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v11, v19

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " ("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "ms): "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v5, 0x191

    if-eq v4, v5, :cond_19

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v8, 0x193

    if-eq v4, v8, :cond_19

    .line 521
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    const-string v8, "Authentication credentials"

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v4, v8, v11, v9, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 522
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    const-string v8, "credentials were not provided"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v4, v8, v11, v9, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 523
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    const-string v8, "not provided"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v4, v8, v11, v9, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v4, :cond_19

    const/4 v4, -0x1

    .line 524
    :try_start_e
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v9, v18

    :try_start_f
    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-ne v8, v5, :cond_c

    goto/16 :goto_f

    :catch_7
    move-object/from16 v9, v18

    .line 528
    :catch_8
    :cond_c
    :try_start_10
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/16 v8, 0xc8

    const-string/jumbo v10, "\u6587\u4ef6\u5df2\u4e0a\u4f20"

    const/16 v11, 0x64

    const-string v12, "9006"

    if-ne v5, v8, :cond_16

    .line 529
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_b

    :catch_9
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_d

    .line 530
    :try_start_12
    invoke-virtual {v0, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    :cond_d
    if-eqz v0, :cond_e

    .line 531
    const-string v5, "data"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    const-wide/16 v8, 0x0

    if-eqz v5, :cond_f

    .line 532
    const-string/jumbo v13, "workout_id"

    invoke-virtual {v5, v13, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    goto :goto_d

    :cond_f
    move-wide v13, v8

    :goto_d
    if-eqz v5, :cond_10

    .line 533
    const-string v15, "handle_msg"

    invoke-virtual {v5, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_10
    if-nez v4, :cond_11

    cmp-long v4, v13, v8

    if-lez v4, :cond_11

    .line 536
    new-instance v21, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x18

    const/16 v28, 0x0

    const/16 v22, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v21 .. v28}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v5, v20

    goto/16 :goto_11

    .line 539
    :cond_11
    :try_start_13
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v10, v5, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v4, v12, v5, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_e

    .line 543
    :cond_12
    new-instance v12, Lcom/jichi/ob/api/UploadEngine$UploadResult;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v0, :cond_13

    :try_start_14
    const-string v4, "msg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-nez v0, :cond_14

    :cond_13
    :try_start_15
    invoke-static {v6, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-object/from16 v5, v20

    :try_start_16
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1a

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v21, v12

    goto/16 :goto_11

    :cond_15
    :goto_e
    move-object/from16 v5, v20

    .line 541
    new-instance v6, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v9, "\u91cd\u590d\u6587\u4ef6\u5df2\u4e0a\u4f20\u8fc7\uff0c\u81ea\u52a8\u8df3\u8fc7"

    const/16 v12, 0x12

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_10

    :cond_16
    move-object/from16 v5, v20

    .line 549
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    const/16 v7, 0x190

    if-ne v4, v7, :cond_18

    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v12, v8, v7, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v4, v10, v8, v7, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 551
    :cond_17
    new-instance v6, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v9, "\u91cd\u590d\u6587\u4ef6\u5df2\u4e0a\u4f20\u8fc7\uff0c\u81ea\u52a8\u8df3\u8fc7"

    const/16 v12, 0x12

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_10

    .line 553
    :cond_18
    new-instance v4, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v6, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v8, v16

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x1a

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_10

    :cond_19
    :goto_f
    move-object/from16 v5, v20

    .line 527
    new-instance v6, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    const-string/jumbo v9, "\u884c\u8005\u4e0a\u4f20\u5931\u8d25: \u884c\u8005\u767b\u5f55\u5df2\u8fc7\u671f\u6216\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u884c\u8005"

    const/16 v12, 0x1a

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :goto_10
    move-object/from16 v21, v6

    :goto_11
    const/4 v12, 0x0

    .line 514
    :try_start_17
    invoke-static {v2, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    goto :goto_15

    :catchall_1
    move-exception v0

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object/from16 v5, v20

    :goto_12
    move-object v4, v0

    :goto_13
    :try_start_18
    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_19
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a

    :catch_a
    move-exception v0

    goto :goto_14

    :catch_b
    move-exception v0

    move-object/from16 v5, v20

    .line 559
    :goto_14
    const-string v2, "Xingzhe upload error"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    new-instance v6, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x1a

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/jichi/ob/api/UploadEngine$UploadResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v21, v6

    :goto_15
    return-object v21
.end method

.method private static final uploadToXingzhe$lambda$11(B)Ljava/lang/CharSequence;
    .locals 1

    .line 498
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final upload(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/model/DataSource;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/UploadEngine$UploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/UploadEngine$upload$2;

    const/4 v8, 0x0

    move-object v5, p0

    move-object v2, p1

    move-object v6, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/jichi/ob/api/UploadEngine$upload$2;-><init>(Lcom/jichi/ob/model/DataSource;[BLcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/api/UploadEngine;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static applyIgpTimezoneShift(Landroid/content/Context;[BLcom/jichi/ob/model/ActivityRecord;)[B
    .locals 16

    # 参数移到低寄存器（p0=v16,p1=v17,p2=v18 超出invoke范围）
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    # v0=context, v1=data, v2=record, v12=isSameDay, v13=isFit, v14=setting

    # === 计算 isSameDay (v12) ===
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jichi/ob/model/ActivityRecord;->getStartTimeMs()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_not_same_day

    const/16 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_not_same_day

    const/16 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_not_same_day

    const/4 v12, 0x1

    goto :cond_day_done

    :cond_not_same_day
    const/4 v12, 0x0

    :cond_day_done

    # === 计算 isFit (v13) ===
    array-length v3, v1

    const/16 v4, 0xc

    if-lt v3, v4, :cond_not_fit

    const/16 v3, 0x8

    aget-byte v3, v1, v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_not_fit

    const/16 v3, 0x9

    aget-byte v3, v1, v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_not_fit

    const/16 v3, 0xa

    aget-byte v3, v1, v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_not_fit

    const/4 v13, 0x1

    goto :cond_fit_done

    :cond_not_fit
    const/4 v13, 0x0

    :cond_fit_done

    # === 获取平台名并构建 key ===
    invoke-virtual {v2}, Lcom/jichi/ob/model/ActivityRecord;->getSource()Lcom/jichi/ob/model/DataSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v12, :cond_tz_history

    const-string v4, "_same_day"

    goto :cond_tz_key_done

    :cond_tz_history
    const-string v4, "_history"

    :cond_tz_key_done
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # === 读取设置 (v14) ===
    const-string v3, "jichi_ob_prefs"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    # === setting == 1 → +8h ===
    const/4 v3, 0x1

    if-ne v14, v3, :cond_tz_minus

    if-eqz v13, :cond_tz_gpx_plus

    const-string v3, "UploadEngine"

    const-string v4, "iGP\u65f6\u533a\u4fee\u6b63+8h\uff08\u6309\u5e73\u53f0\u8bbe\u7f6e\uff09"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/jichi/ob/util/FitTimeShift;->INSTANCE:Lcom/jichi/ob/util/FitTimeShift;

    invoke-virtual {v2}, Lcom/jichi/ob/model/ActivityRecord;->getStartTimeMs()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/jichi/ob/util/FitTimeShift;->shiftForIgpsport([BJ)[B

    move-result-object v0

    return-object v0

    :cond_tz_gpx_plus
    sget-object v3, Lcom/jichi/ob/util/GpxTimeFixer;->INSTANCE:Lcom/jichi/ob/util/GpxTimeFixer;

    const/4 v4, -0x8

    invoke-virtual {v3, v1, v4}, Lcom/jichi/ob/util/GpxTimeFixer;->fixGpxTime([BI)[B

    move-result-object v0

    return-object v0

    :cond_tz_minus
    # === setting == 2 → -8h ===
    const/4 v3, 0x2

    if-ne v14, v3, :cond_tz_none

    if-eqz v13, :cond_tz_gpx_minus

    const-string v3, "UploadEngine"

    const-string v4, "iGP\u65f6\u533a\u4fee\u6b63-8h\uff08\u6309\u5e73\u53f0\u8bbe\u7f6e\uff09"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/jichi/ob/util/FitTimeShift;->INSTANCE:Lcom/jichi/ob/util/FitTimeShift;

    invoke-virtual {v2}, Lcom/jichi/ob/model/ActivityRecord;->getStartTimeMs()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/jichi/ob/util/FitTimeShift;->shiftForIgpsportMinus([BJ)[B

    move-result-object v0

    return-object v0

    :cond_tz_gpx_minus
    sget-object v3, Lcom/jichi/ob/util/GpxTimeFixer;->INSTANCE:Lcom/jichi/ob/util/GpxTimeFixer;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Lcom/jichi/ob/util/GpxTimeFixer;->fixGpxTime([BI)[B

    move-result-object v0

    return-object v0

    :cond_tz_none
    return-object v1
.end method
