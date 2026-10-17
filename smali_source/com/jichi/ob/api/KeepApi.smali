.class public final Lcom/jichi/ob/api/KeepApi;
.super Ljava/lang/Object;
.source "KeepApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/KeepApi$Companion;,
        Lcom/jichi/ob/api/KeepApi$LoginResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepApi.kt\ncom/jichi/ob/api/KeepApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,719:1\n1#2:720\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0013\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0006\n\u0002\u0008\u0010\u0018\u0000 J2\u00020\u0001:\u0002JKB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007J \u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0013J\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0016J,\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0002J\u001e\u0010!\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0016\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u00182\u0006\u0010&\u001a\u00020\u0007H\u0002J\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020%0\u00182\u0006\u0010&\u001a\u00020\u0007H\u0002J\u001e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020%0\u00182\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u0007H\u0002J\u0016\u0010+\u001a\u0008\u0012\u0004\u0012\u00020%0\u00182\u0006\u0010,\u001a\u00020\u0007H\u0002J\u0010\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\u0007H\u0002J\"\u0010/\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001b000\u00182\u0006\u0010*\u001a\u00020\u0007H\u0002J*\u00101\u001a\u00020\u001b2\u0018\u00102\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001b000\u00182\u0006\u00103\u001a\u00020 H\u0002J*\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001b000\u00182\u0006\u0010*\u001a\u00020\u00072\u0006\u00105\u001a\u00020 H\u0002J*\u00106\u001a\u00020\u001b2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001b000\u00182\u0006\u00103\u001a\u00020 H\u0002J\u00d8\u0001\u00108\u001a\u00020\"2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020%0\u00182\u0006\u00105\u001a\u00020 2\u0008\u0008\u0002\u0010:\u001a\u00020\u00072\u0008\u0008\u0002\u0010;\u001a\u00020<2\u0008\u0008\u0002\u0010=\u001a\u00020 2\u0008\u0008\u0002\u0010>\u001a\u00020<2\u0008\u0008\u0002\u0010?\u001a\u00020\u001b2\u0008\u0008\u0002\u0010@\u001a\u00020\u001b2\u0008\u0008\u0002\u0010A\u001a\u00020\u00072\u001a\u0008\u0002\u00102\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001b000\u00182\u001a\u0008\u0002\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001b000\u00182\u0008\u0008\u0002\u0010C\u001a\u00020<2\u0008\u0008\u0002\u0010D\u001a\u00020 2\u0008\u0008\u0002\u0010E\u001a\u00020<2\u0008\u0008\u0002\u0010F\u001a\u00020<2\u0008\u0008\u0002\u0010G\u001a\u00020\u001b2\u0008\u0008\u0002\u0010H\u001a\u00020<H\u0002J\u0010\u0010I\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lcom/jichi/ob/api/KeepApi;",
        "",
        "<init>",
        "()V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "lastMobile",
        "",
        "lastPassword",
        "restoreCredentials",
        "",
        "mobile",
        "password",
        "login",
        "Lcom/jichi/ob/api/KeepApi$LoginResult;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "validateToken",
        "",
        "token",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUsername",
        "reLoginIfNeeded",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "skip",
        "",
        "limit",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "formatTime",
        "ms",
        "",
        "downloadGpx",
        "",
        "runId",
        "decodeGeoPoints",
        "",
        "text",
        "decodeRunmap",
        "decodeRunmapZlib",
        "raw",
        "b64",
        "parsePoints",
        "jsonStr",
        "base64Decode",
        "s",
        "decodeHeartRateCurve",
        "Lkotlin/Pair;",
        "findHrAt",
        "hrCurve",
        "relSeconds",
        "decodeStepPoints",
        "startTimeMs",
        "findCadAt",
        "cadCurve",
        "buildGpx",
        "points",
        "sportType",
        "metaDistance",
        "",
        "metaDuration",
        "metaCalorie",
        "metaAvgHr",
        "metaMaxHr",
        "dataType",
        "cadenceCurve",
        "avgStepFreq",
        "metaSteps",
        "metaUplift",
        "metaClimbDist",
        "metaAvgPace",
        "metaAvgSpeed",
        "formatGpxTime",
        "Companion",
        "LoginResult",
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
.field public static final Companion:Lcom/jichi/ob/api/KeepApi$Companion;

.field private static final FORM_MEDIA:Ljava/lang/String; = "application/x-www-form-urlencoded;charset=utf-8"

.field private static final KEEP_GEO_IV:[B

.field private static final KEEP_GEO_KEY:[B

.field private static final KEEP_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_API:Ljava/lang/String; = "https://api.gotokeep.com/pd/v3/stats/detail"

.field private static final LOGIN_URL:Ljava/lang/String; = "https://api.gotokeep.com/v1.1/users/login"

.field private static final LOG_API:Ljava/lang/String; = "https://api.gotokeep.com/pd/v3/runninglog"

.field private static final TAG:Ljava/lang/String; = "KeepApi"

.field private static final UA:Ljava/lang/String; = "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private lastMobile:Ljava/lang/String;

.field private lastPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jichi/ob/api/KeepApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/KeepApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/KeepApi;->Companion:Lcom/jichi/ob/api/KeepApi$Companion;

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "running"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cycling"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hiking"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/api/KeepApi;->KEEP_TYPES:Ljava/util/Set;

    .line 46
    const-string v0, "56fe59;82g:d873c"

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/api/KeepApi;->KEEP_GEO_KEY:[B

    .line 47
    const-string v0, "2346892432920300"

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/jichi/ob/api/KeepApi;->KEEP_GEO_IV:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 51
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 52
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 53
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/KeepApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$buildGpx(Lcom/jichi/ob/api/KeepApi;Ljava/util/List;JLjava/lang/String;DJDIILjava/lang/String;Ljava/util/List;Ljava/util/List;DJDDID)[B
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p26}, Lcom/jichi/ob/api/KeepApi;->buildGpx(Ljava/util/List;JLjava/lang/String;DJDIILjava/lang/String;Ljava/util/List;Ljava/util/List;DJDDID)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$decodeGeoPoints(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KeepApi;->decodeGeoPoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$decodeHeartRateCurve(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KeepApi;->decodeHeartRateCurve(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$decodeRunmap(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KeepApi;->decodeRunmap(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$decodeStepPoints(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;J)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/KeepApi;->decodeStepPoints(Ljava/lang/String;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$formatTime(Lcom/jichi/ob/api/KeepApi;J)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/KeepApi;->formatTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/KeepApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jichi/ob/api/KeepApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getKEEP_TYPES$cp()Ljava/util/Set;
    .locals 1

    .line 33
    sget-object v0, Lcom/jichi/ob/api/KeepApi;->KEEP_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getLastMobile$p(Lcom/jichi/ob/api/KeepApi;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jichi/ob/api/KeepApi;->lastMobile:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLastPassword$p(Lcom/jichi/ob/api/KeepApi;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jichi/ob/api/KeepApi;->lastPassword:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setLastMobile$p(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/jichi/ob/api/KeepApi;->lastMobile:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastPassword$p(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/jichi/ob/api/KeepApi;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method private final base64Decode(Ljava/lang/String;)[B
    .locals 1

    .line 527
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 526
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 529
    new-array p1, p1, [B

    return-object p1
.end method

.method private final buildGpx(Ljava/util/List;JLjava/lang/String;DJDIILjava/lang/String;Ljava/util/List;Ljava/util/List;DJDDID)[B
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;J",
            "Ljava/lang/String;",
            "DJDII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;DJDDID)[B"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p15

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<gpx creator=\"jichiOB\" version=\"1.1\" xmlns=\"http://www.topografix.com/GPX/1/1\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\" xmlns:gpxtrkx=\"http://www.garmin.com/xmlschemas/TrackStatsExtension/v1\" xmlns:jichi=\"http://jichi.ob\">\n  <trk><name>from keep - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    move-object/from16 v4, p13

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v4, p4

    :cond_0
    check-cast v4, Ljava/lang/String;

    .line 666
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</name><type>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</type><trkseg>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    const/4 v6, 0x0

    .line 668
    aget-wide v7, v5, v6

    const/4 v9, 0x1

    aget-wide v10, v5, v9

    const/4 v12, 0x2

    aget-wide v12, v5, v12

    double-to-long v12, v12

    const/4 v14, 0x3

    aget-wide v14, v5, v14

    const-wide/16 v16, 0x0

    cmp-long v5, v12, v16

    const/16 v6, 0x3e8

    if-gtz v5, :cond_1

    move-wide/from16 p5, v10

    move-wide/from16 v12, v16

    goto :goto_2

    :cond_1
    const-wide v18, 0x174876e800L

    cmp-long v5, v12, v18

    if-ltz v5, :cond_2

    move-wide/from16 p5, v10

    goto :goto_2

    :cond_2
    const-wide/32 v18, 0x3b9aca00

    cmp-long v5, v12, v18

    if-ltz v5, :cond_3

    move-wide/from16 p5, v10

    int-to-long v9, v6

    mul-long/2addr v12, v9

    goto :goto_2

    :cond_3
    move-wide/from16 p5, v10

    const-wide/32 v9, 0x5f5e100

    cmp-long v5, v12, v9

    if-ltz v5, :cond_4

    goto :goto_1

    :cond_4
    int-to-long v9, v6

    mul-long/2addr v12, v9

    :goto_1
    add-long v12, p2, v12

    :goto_2
    cmp-long v5, v12, v16

    if-lez v5, :cond_5

    .line 684
    invoke-direct {v0, v12, v13}, Lcom/jichi/ob/api/KeepApi;->formatGpxTime(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    const-string v9, ""

    :goto_3
    if-lez v5, :cond_6

    sub-long v12, v12, p2

    int-to-long v5, v6

    .line 686
    div-long/2addr v12, v5

    goto :goto_4

    :cond_6
    move-wide/from16 v12, v16

    .line 687
    :goto_4
    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    cmp-long v5, v12, v16

    if-ltz v5, :cond_7

    invoke-direct {v0, v1, v12, v13}, Lcom/jichi/ob/api/KeepApi;->findHrAt(Ljava/util/List;J)I

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    .line 688
    :goto_5
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    cmp-long v6, v12, v16

    if-ltz v6, :cond_8

    invoke-direct {v0, v2, v12, v13}, Lcom/jichi/ob/api/KeepApi;->findCadAt(Ljava/util/List;J)I

    move-result v6

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    .line 689
    :goto_6
    const-string v10, "    <trkpt lat=\""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%.6f"

    invoke-static {v11, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "format(...)"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 690
    const-string v10, "\" lon=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v8, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    move-object v7, v9

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_9

    const-string v7, "<time>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</time>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_9
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "<ele>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v13, 0x1

    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%.2f"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</ele>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-gtz v5, :cond_b

    if-lez v6, :cond_e

    .line 696
    :cond_b
    const-string v7, "<extensions><gpxtpx:TrackPointExtension>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v5, :cond_c

    .line 697
    const-string v7, "<gpxtpx:hr>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "</gpxtpx:hr>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-lez v6, :cond_d

    .line 698
    const-string v5, "<gpxtpx:cad>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</gpxtpx:cad>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    :cond_d
    const-string v5, "</gpxtpx:TrackPointExtension></extensions>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_e
    const-string v5, "</trkpt>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 703
    :cond_f
    const-string v1, "  </trkseg>\n  </trk>\n</gpx>\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic buildGpx$default(Lcom/jichi/ob/api/KeepApi;Ljava/util/List;JLjava/lang/String;DJDIILjava/lang/String;Ljava/util/List;Ljava/util/List;DJDDIDILjava/lang/Object;)[B
    .locals 29

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 651
    const-string v1, "running"

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const-wide/16 v9, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p7

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const-wide/16 v11, 0x0

    goto :goto_3

    :cond_3
    move-wide/from16 v11, p9

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    move v1, v13

    goto :goto_4

    :cond_4
    move/from16 v1, p11

    :goto_4
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_5

    move v14, v13

    goto :goto_5

    :cond_5
    move/from16 v14, p12

    :goto_5
    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_6

    .line 654
    const-string v15, ""

    goto :goto_6

    :cond_6
    move-object/from16 v15, p13

    :goto_6
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_7

    .line 655
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_7

    :cond_7
    move-object/from16 v2, p14

    :goto_7
    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_8

    .line 656
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_8

    :cond_8
    move-object/from16 v3, p15

    :goto_8
    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_9

    const-wide/16 v18, 0x0

    goto :goto_9

    :cond_9
    move-wide/from16 v18, p16

    :goto_9
    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_a

    const-wide/16 v20, 0x0

    goto :goto_a

    :cond_a
    move-wide/from16 v20, p18

    :goto_a
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_b

    const-wide/16 v22, 0x0

    goto :goto_b

    :cond_b
    move-wide/from16 v22, p20

    :goto_b
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_c

    const-wide/16 v24, 0x0

    goto :goto_c

    :cond_c
    move-wide/from16 v24, p22

    :goto_c
    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_d

    move/from16 v26, v13

    goto :goto_d

    :cond_d
    move/from16 v26, p24

    :goto_d
    const/high16 v4, 0x10000

    and-int/2addr v0, v4

    if-eqz v0, :cond_e

    const-wide/16 v27, 0x0

    goto :goto_e

    :cond_e
    move-wide/from16 v27, p25

    :goto_e
    move-wide/from16 v4, p2

    move v13, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 650
    invoke-direct/range {v2 .. v28}, Lcom/jichi/ob/api/KeepApi;->buildGpx(Ljava/util/List;JLjava/lang/String;DJDIILjava/lang/String;Ljava/util/List;Ljava/util/List;DJDDID)[B

    move-result-object v0

    return-object v0
.end method

.method private final decodeGeoPoints(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    .line 391
    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KeepApi;->base64Decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 392
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 395
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/jichi/ob/api/KeepApi;->KEEP_GEO_KEY:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    .line 396
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/jichi/ob/api/KeepApi;->KEEP_GEO_IV:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v3, 0x2

    .line 393
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 398
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 401
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    const/16 v2, 0x2000

    .line 403
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v3, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v4, v3

    check-cast v4, Ljava/util/zip/GZIPInputStream;

    .line 404
    new-array v5, v2, [B

    .line 405
    :goto_0
    invoke-virtual {v4, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 406
    :cond_0
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    .line 403
    :try_start_3
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 408
    :catch_0
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 409
    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 410
    invoke-virtual {v3, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 411
    new-array p1, v2, [B

    .line 412
    :goto_1
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    invoke-virtual {v3, p1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 415
    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 417
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 419
    :goto_2
    const-string p1, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KeepApi;->parsePoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keep geoPoints AES \u89e3\u7801\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeepApi"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final decodeHeartRateCurve(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 536
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 538
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KeepApi;->base64Decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 539
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/InputStreamReader;

    .line 540
    check-cast v0, Ljava/io/InputStream;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast p1, Ljava/io/Reader;

    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p1, v0

    :goto_0
    check-cast p1, Ljava/io/Reader;

    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    .line 541
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 542
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 543
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 544
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 545
    const-string/jumbo v5, "timestamp"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 546
    const-string v7, "beatsPerMinute"

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    .line 547
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 549
    :cond_3
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 551
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5fc3\u7387\u66f2\u7ebf\u89e3\u7801\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeepApi"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final decodeRunmap(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 428
    const-string/jumbo v2, "toString(...)"

    const-string v3, "UTF-8"

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "\n"

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Iterable;

    const-string v0, ""

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v18, 0x3e

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 430
    invoke-direct {v1, v4}, Lcom/jichi/ob/api/KeepApi;->base64Decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 432
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x2000

    const/4 v7, 0x0

    .line 434
    :try_start_0
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v9, Ljava/io/InputStream;

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v9, v8

    check-cast v9, Ljava/util/zip/GZIPInputStream;

    .line 435
    new-array v11, v6, [B

    .line 437
    :goto_0
    invoke-virtual {v9, v11}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_0

    .line 439
    invoke-virtual {v0, v11, v10, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 441
    :cond_0
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :try_start_2
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 442
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/jichi/ob/api/KeepApi;->parsePoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 443
    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v8, :cond_1

    return-object v0

    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 434
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v8, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 447
    :catch_0
    :cond_1
    invoke-direct {v1, v5, v4}, Lcom/jichi/ob/api/KeepApi;->decodeRunmapZlib([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 448
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    return-object v0

    .line 451
    :cond_2
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 452
    const-string v5, "data"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_5

    .line 454
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jichi/ob/api/KeepApi;->base64Decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 455
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 456
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v9, Ljava/io/InputStream;

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v8, Ljava/io/Closeable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    move-object v0, v8

    check-cast v0, Ljava/util/zip/GZIPInputStream;

    .line 457
    new-array v6, v6, [B

    .line 458
    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v5, v6, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 459
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 456
    :try_start_7
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 460
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/jichi/ob/api/KeepApi;->parsePoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 461
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-nez v2, :cond_5

    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 456
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 464
    :cond_5
    invoke-direct {v1, v4}, Lcom/jichi/ob/api/KeepApi;->parsePoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 465
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    if-nez v2, :cond_6

    return-object v0

    .line 468
    :catch_1
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final decodeRunmapZlib([BLjava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    .line 474
    :try_start_0
    new-instance p2, Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 475
    invoke-virtual {p2, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 476
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x2000

    .line 477
    new-array v0, v0, [B

    .line 478
    :goto_0
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    invoke-virtual {p2, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 481
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->end()V

    .line 484
    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KeepApi;->parsePoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 486
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final decodeStepPoints(Ljava/lang/String;J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 583
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 585
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KeepApi;->base64Decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 586
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/InputStreamReader;

    .line 587
    check-cast v0, Ljava/io/InputStream;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast p1, Ljava/io/Reader;

    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p1, v0

    :goto_0
    check-cast p1, Ljava/io/Reader;

    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    .line 588
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 592
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    const-wide/16 v5, 0x0

    if-ge v4, v2, :cond_4

    .line 594
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 595
    const-string/jumbo v8, "unixTimestamp"

    invoke-virtual {v7, v8, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 596
    const-string v10, "currentTotalSteps"

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    cmp-long v5, v8, v5

    if-lez v5, :cond_3

    if-lez v7, :cond_3

    .line 597
    new-instance v5, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    invoke-direct {v5, v8, v9, v7}, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;-><init>(JI)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 599
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 601
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 602
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_7

    .line 603
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    invoke-virtual {v3}, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->getTs()J

    move-result-wide v3

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    invoke-virtual {v8}, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->getTs()J

    move-result-wide v8

    sub-long/2addr v3, v8

    cmp-long v8, v3, v5

    if-lez v8, :cond_6

    .line 605
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    invoke-virtual {v8}, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->getSteps()I

    move-result v8

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    invoke-virtual {v7}, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->getSteps()I

    move-result v7

    sub-int/2addr v8, v7

    if-lez v8, :cond_6

    int-to-double v7, v8

    const-wide v9, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v7, v9

    long-to-double v3, v3

    div-double/2addr v7, v3

    double-to-int v3, v7

    const/16 v4, 0x1e

    if-gt v4, v3, :cond_6

    const/16 v4, 0xfb

    if-ge v3, v4, :cond_6

    .line 609
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;

    invoke-virtual {v4}, Lcom/jichi/ob/api/KeepApi$decodeStepPoints$Pt;->getTs()J

    move-result-wide v7

    sub-long/2addr v7, p2

    const/16 v4, 0x3e8

    int-to-long v9, v4

    div-long/2addr v7, v9

    .line 610
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 613
    :cond_7
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 615
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u6b65\u9891\u66f2\u7ebf\u89e3\u7801\u5931\u8d25: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeepApi"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final findCadAt(Ljava/util/List;J)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;J)I"
        }
    .end annotation

    .line 622
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    goto/16 :goto_1

    .line 624
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    return v1

    .line 625
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v0, :cond_3

    add-int v2, v1, v0

    .line 627
    div-int/lit8 v2, v2, 0x2

    .line 628
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-gez v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 630
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 632
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    .line 633
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    cmp-long p2, v1, p2

    if-gez p2, :cond_4

    move-object v0, p1

    .line 637
    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method private final findHrAt(Ljava/util/List;J)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;J)I"
        }
    .end annotation

    .line 559
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    goto/16 :goto_1

    .line 561
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    return v1

    .line 563
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v0, :cond_3

    add-int v2, v1, v0

    .line 565
    div-int/lit8 v2, v2, 0x2

    .line 566
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-gez v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 569
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 571
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    .line 572
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    cmp-long p2, v1, p2

    if-gez p2, :cond_4

    move-object v0, p1

    .line 576
    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method private final formatGpxTime(J)Ljava/lang/String;
    .locals 3

    .line 713
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 714
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 715
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 712
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 716
    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private final formatTime(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    .line 199
    const-string v1, ""

    if-gtz v0, :cond_0

    return-object v1

    .line 201
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 202
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private final parsePoints(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 495
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 498
    const-string v0, "points"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 499
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 500
    const-string v0, "runmap"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 501
    const-string/jumbo v0, "tracks"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_1

    .line 503
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :catch_1
    move-object v0, v1

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 504
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 505
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 506
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_a

    .line 507
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_6

    .line 508
    :cond_3
    const-string v6, "lat"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    if-eqz v7, :cond_4

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    goto :goto_3

    .line 509
    :cond_4
    const-string v6, "latitude"

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 510
    :goto_3
    const-string v10, "lon"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v5, v10, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    goto :goto_4

    .line 511
    :cond_5
    const-string v10, "longitude"

    invoke-virtual {v5, v10, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 512
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_6

    .line 514
    :cond_6
    const-string/jumbo v12, "unixTimestamp"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    const-wide/16 v13, 0x0

    .line 515
    invoke-virtual {v5, v12, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    long-to-double v12, v12

    goto :goto_5

    .line 517
    :cond_7
    const-string/jumbo v12, "timestamp"

    const-wide/16 v13, 0x0

    invoke-virtual {v5, v12, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 519
    :goto_5
    const-string v14, "altitude"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v5, v14, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    :cond_8
    const/4 v5, 0x4

    .line 520
    new-array v5, v5, [D

    aput-wide v6, v5, v3

    const/4 v6, 0x1

    aput-wide v10, v5, v6

    const/4 v6, 0x2

    aput-wide v12, v5, v6

    const/4 v6, 0x3

    aput-wide v8, v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_a
    return-object v1
.end method


# virtual methods
.method public final downloadGpx(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 211
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, p0, v2}, Lcom/jichi/ob/api/KeepApi$downloadGpx$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/KeepApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getActivities(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 137
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KeepApi$getActivities$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/KeepApi$getActivities$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/KeepApi;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getUsername(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KeepApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/jichi/ob/api/KeepApi$getUsername$2;-><init>(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/KeepApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KeepApi$login$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jichi/ob/api/KeepApi$login$2;-><init>(Lcom/jichi/ob/api/KeepApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reLoginIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/KeepApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 125
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KeepApi$reLoginIfNeeded$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jichi/ob/api/KeepApi$reLoginIfNeeded$2;-><init>(Lcom/jichi/ob/api/KeepApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final restoreCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/jichi/ob/api/KeepApi;->lastMobile:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/jichi/ob/api/KeepApi;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method public final validateToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KeepApi$validateToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/jichi/ob/api/KeepApi$validateToken$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/KeepApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
