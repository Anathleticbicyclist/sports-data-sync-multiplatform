.class public final Lcom/jichi/ob/api/BlackbirdApi;
.super Ljava/lang/Object;
.source "BlackbirdApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/BlackbirdApi$Companion;,
        Lcom/jichi/ob/api/BlackbirdApi$FitPoint;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlackbirdApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlackbirdApi.kt\ncom/jichi/ob/api/BlackbirdApi\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,831:1\n1563#2:832\n1634#2,3:833\n1#3:836\n*S KotlinDebug\n*F\n+ 1 BlackbirdApi.kt\ncom/jichi/ob/api/BlackbirdApi\n*L\n574#1:832\n574#1:833,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u0000 B2\u00020\u0001:\u0002BCB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0002J$\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u001c\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u001eJ,\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#H\u0086@\u00a2\u0006\u0002\u0010%J(\u0010&\u001a\u00020\'2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010(\u001a\u00020\u00182\u0008\u0008\u0002\u0010)\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010*J(\u0010+\u001a\u00020\'2\u0006\u0010,\u001a\u00020-2\u0006\u0010(\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u0011H\u0002J(\u0010/\u001a\u00020\'2\u0006\u00100\u001a\u00020\u00182\u0006\u0010(\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u0011H\u0002J4\u00101\u001a\u0004\u0018\u00010\'2\u0006\u00100\u001a\u00020\u00182\u0006\u0010(\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u00112\u0008\u0008\u0002\u00102\u001a\u00020\u0005H\u0002J(\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u0005H\u0002J\u0010\u00108\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0002J(\u0010:\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010;\u001a\u00020\'2\u0006\u0010<\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010=J\u0018\u0010>\u001a\u00020\u00182\u0006\u0010?\u001a\u00020\u00182\u0006\u0010@\u001a\u00020#H\u0002J\u0010\u0010A\u001a\u00020\u00182\u0006\u0010?\u001a\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/jichi/ob/api/BlackbirdApi;",
        "",
        "<init>",
        "()V",
        "PI",
        "",
        "A",
        "EE",
        "transformLat",
        "x",
        "y",
        "transformLon",
        "gcj02ToWgs84",
        "Lkotlin/Pair;",
        "gcjLat",
        "gcjLon",
        "outOfChina",
        "",
        "lat",
        "lon",
        "client",
        "Lokhttp3/OkHttpClient;",
        "authHeaders",
        "",
        "",
        "cookie",
        "formatStartTime",
        "ts",
        "",
        "getUsername",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "offset",
        "",
        "limit",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadActivity",
        "",
        "recordId",
        "convertCoord",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "buildGpx",
        "track",
        "Lorg/json/JSONArray;",
        "startTimeSec",
        "buildGpxFromTrackString",
        "trackStr",
        "buildFitFromTrackString",
        "totalDistanceM",
        "haversineDistance",
        "lat1",
        "lon1",
        "lat2",
        "lon2",
        "clampSpeed",
        "speedMs",
        "uploadActivity",
        "fitData",
        "fileName",
        "(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "translateBlackbirdError",
        "bodyStr",
        "httpCode",
        "extractBlackbirdMsg",
        "Companion",
        "FitPoint",
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
.field private static final BASE:Ljava/lang/String; = "https://www.blackbirdsport.com/api"

.field public static final Companion:Lcom/jichi/ob/api/BlackbirdApi$Companion;

.field public static final LOGIN_URL:Ljava/lang/String; = "https://www.blackbirdsport.com/login"

.field private static final PER_PAGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BlackbirdApi"

.field private static volatile lastRawKeys:Ljava/lang/String;

.field private static volatile lastRawTrackSample:Ljava/lang/String;

.field private static volatile lastStartTime:J


# instance fields
.field private final A:D

.field private final EE:D

.field private final PI:D

.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/BlackbirdApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/BlackbirdApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/BlackbirdApi;->Companion:Lcom/jichi/ob/api/BlackbirdApi$Companion;

    .line 79
    const-string v0, ""

    sput-object v0, Lcom/jichi/ob/api/BlackbirdApi;->lastRawTrackSample:Ljava/lang/String;

    .line 80
    sput-object v0, Lcom/jichi/ob/api/BlackbirdApi;->lastRawKeys:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 29
    iput-wide v0, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    const-wide v0, 0x415854c140000000L    # 6378245.0

    .line 30
    iput-wide v0, p0, Lcom/jichi/ob/api/BlackbirdApi;->A:D

    const-wide v0, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    .line 31
    iput-wide v0, p0, Lcom/jichi/ob/api/BlackbirdApi;->EE:D

    .line 84
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 85
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x78

    .line 86
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/BlackbirdApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$authHeaders(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/BlackbirdApi;->authHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildFitFromTrackString(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;Ljava/lang/String;JZD)[B
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/jichi/ob/api/BlackbirdApi;->buildFitFromTrackString(Ljava/lang/String;Ljava/lang/String;JZD)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildGpx(Lcom/jichi/ob/api/BlackbirdApi;Lorg/json/JSONArray;Ljava/lang/String;JZ)[B
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/BlackbirdApi;->buildGpx(Lorg/json/JSONArray;Ljava/lang/String;JZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildGpxFromTrackString(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;Ljava/lang/String;JZ)[B
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/BlackbirdApi;->buildGpxFromTrackString(Ljava/lang/String;Ljava/lang/String;JZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$formatStartTime(Lcom/jichi/ob/api/BlackbirdApi;J)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/BlackbirdApi;->formatStartTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/BlackbirdApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/jichi/ob/api/BlackbirdApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getLastRawKeys$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/jichi/ob/api/BlackbirdApi;->lastRawKeys:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLastRawTrackSample$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/jichi/ob/api/BlackbirdApi;->lastRawTrackSample:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLastStartTime$cp()J
    .locals 2

    .line 23
    sget-wide v0, Lcom/jichi/ob/api/BlackbirdApi;->lastStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$setLastRawKeys$cp(Ljava/lang/String;)V
    .locals 0

    .line 23
    sput-object p0, Lcom/jichi/ob/api/BlackbirdApi;->lastRawKeys:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastRawTrackSample$cp(Ljava/lang/String;)V
    .locals 0

    .line 23
    sput-object p0, Lcom/jichi/ob/api/BlackbirdApi;->lastRawTrackSample:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastStartTime$cp(J)V
    .locals 0

    .line 23
    sput-wide p0, Lcom/jichi/ob/api/BlackbirdApi;->lastStartTime:J

    return-void
.end method

.method public static final synthetic access$translateBlackbirdError(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/BlackbirdApi;->translateBlackbirdError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final authHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 91
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Cookie"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 92
    const-string p1, "User-Agent"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 93
    const-string p1, "Referer"

    const-string v1, "https://www.blackbirdsport.com/"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 94
    const-string p1, "Accept"

    const-string v1, "application/json, text/plain, */*"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 90
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final buildFitFromTrackString(Ljava/lang/String;Ljava/lang/String;JZD)[B
    .locals 70

    move-object/from16 v1, p0

    .line 443
    const-string v10, "BlackbirdApi"

    .line 444
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 458
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v12, 0x1

    new-array v3, v12, [Ljava/lang/String;

    const-string v4, ";"

    const/4 v13, 0x0

    aput-object v4, v3, v13

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v5, 0x1

    move v7, v13

    const-wide/16 p1, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    const/16 v21, 0x0

    const/4 v11, 0x3

    move/from16 v25, v13

    if-eqz v18, :cond_10

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 459
    move-object/from16 v28, v18

    check-cast v28, Ljava/lang/CharSequence;

    new-array v13, v12, [Ljava/lang/String;

    const-string v29, ","

    aput-object v29, v13, v25

    const/16 v32, 0x6

    const/16 v33, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v29, v13

    invoke-static/range {v28 .. v33}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 460
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    if-lt v12, v11, :cond_e

    move/from16 v12, v25

    .line 461
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    check-cast v29, Ljava/lang/CharSequence;

    invoke-static/range {v29 .. v29}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    move-object/from16 v30, v2

    const/4 v2, 0x1

    .line 462
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    check-cast v31, Ljava/lang/CharSequence;

    invoke-static/range {v31 .. v31}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_f

    move-wide/from16 v31, v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v4, v11, p1

    if-nez v4, :cond_0

    goto/16 :goto_b

    :cond_0
    cmpg-double v4, v2, p1

    if-nez v4, :cond_1

    goto/16 :goto_b

    :cond_1
    const/4 v4, 0x2

    .line 465
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-wide/from16 v36, v8

    goto :goto_1

    :cond_2
    move-wide/from16 v36, p1

    :goto_1
    if-eqz p5, :cond_3

    .line 466
    invoke-direct {v1, v11, v12, v2, v3}, Lcom/jichi/ob/api/BlackbirdApi;->gcj02ToWgs84(DD)Lkotlin/Pair;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-instance v4, Lkotlin/Pair;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v4, v8, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    :goto_2
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v34

    .line 467
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/16 v8, 0x8

    if-lt v2, v8, :cond_4

    const/4 v2, 0x7

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    goto :goto_3

    .line 468
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/16 v28, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_5

    .line 467
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-wide/from16 v43, v8

    goto :goto_4

    :cond_5
    move-wide/from16 v43, p1

    .line 469
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x4

    if-lt v2, v8, :cond_6

    const/4 v2, 0x3

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    goto :goto_5

    :cond_6
    move-wide/from16 v8, p1

    :goto_5
    div-double v8, v8, v19

    const-wide v11, 0x3fe8f5c28f5c28f6L    # 0.78

    mul-double/2addr v8, v11

    .line 471
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    .line 472
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_7

    const/4 v8, 0x4

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    double-to-int v8, v8

    move/from16 v40, v8

    goto :goto_6

    :cond_7
    const/16 v40, 0x0

    .line 473
    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_8

    const/4 v9, 0x5

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    double-to-int v8, v8

    move/from16 v41, v8

    goto :goto_7

    :cond_8
    const/16 v41, 0x0

    .line 474
    :goto_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x7

    if-lt v8, v9, :cond_9

    const/4 v9, 0x6

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    goto :goto_8

    :cond_9
    move-wide/from16 v8, p1

    :goto_8
    cmpl-double v11, v8, p1

    if-lez v11, :cond_a

    const-wide/high16 v11, 0x4042000000000000L    # 36.0

    div-double/2addr v8, v11

    move-wide/from16 v38, v8

    goto :goto_9

    :cond_a
    move-wide/from16 v38, p1

    :goto_9
    if-nez v7, :cond_b

    move-wide v14, v3

    move-wide/from16 v16, v34

    const/4 v7, 0x1

    :cond_b
    cmpg-double v8, v36, v31

    if-gez v8, :cond_c

    move-wide/from16 v8, v36

    goto :goto_a

    :cond_c
    move-wide/from16 v8, v31

    :goto_a
    cmpl-double v11, v36, v5

    if-lez v11, :cond_d

    move-wide/from16 v5, v36

    .line 486
    :cond_d
    new-instance v31, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    move/from16 v42, v2

    move-wide/from16 v32, v3

    invoke-direct/range {v31 .. v44}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;-><init>(DDDDIIID)V

    move-object/from16 v2, v31

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v3, v8

    move-object/from16 v2, v30

    move-wide/from16 v8, v43

    goto :goto_c

    :cond_e
    move-object/from16 v30, v2

    :cond_f
    move-wide/from16 v31, v3

    :goto_b
    move-object/from16 v2, v30

    move-wide/from16 v3, v31

    :goto_c
    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 489
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_16

    .line 490
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    .line 491
    new-array v4, v3, [D

    fill-array-data v4, :array_0

    .line 492
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v3, :cond_13

    const/4 v6, -0x2

    move-wide/from16 v11, p1

    move-wide/from16 v30, v11

    :goto_e
    const/4 v7, 0x3

    if-ge v6, v7, :cond_12

    add-int v7, v5, v6

    if-ltz v7, :cond_11

    .line 496
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_11

    add-int/lit8 v13, v6, 0x2

    .line 497
    aget-wide v32, v4, v13

    .line 498
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    invoke-virtual {v7}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getEle()D

    move-result-wide v34

    mul-double v34, v34, v32

    add-double v11, v11, v34

    add-double v30, v30, v32

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_12
    div-double v11, v11, v30

    .line 501
    aput-wide v11, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_13
    const/16 v25, 0x0

    .line 503
    aget-wide v3, v2, v25

    .line 504
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move-wide/from16 v11, p1

    move-wide/from16 v30, v11

    const/4 v6, 0x1

    :goto_f
    if-ge v6, v5, :cond_17

    .line 505
    aget-wide v32, v2, v6

    const-wide v34, 0x3fd3333333333333L    # 0.3

    add-double v34, v3, v34

    cmpl-double v7, v32, v34

    if-lez v7, :cond_14

    sub-double v3, v32, v3

    add-double/2addr v11, v3

    goto :goto_10

    :cond_14
    const-wide v34, 0x3fd3333333333333L    # 0.3

    sub-double v34, v3, v34

    cmpg-double v7, v32, v34

    if-gez v7, :cond_15

    sub-double v3, v3, v32

    add-double v30, v30, v3

    :cond_15
    :goto_10
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v3, v32

    goto :goto_f

    :cond_16
    move-wide/from16 v11, p1

    move-wide/from16 v30, v11

    .line 514
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v21

    .line 516
    :cond_18
    new-instance v13, Lcom/jichi/ob/api/FitBuilder;

    invoke-direct {v13}, Lcom/jichi/ob/api/FitBuilder;-><init>()V

    .line 517
    sget-object v2, Lcom/jichi/ob/api/FitBuilder;->Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

    move-wide/from16 v3, p3

    invoke-virtual {v2, v3, v4}, Lcom/jichi/ob/api/FitBuilder$Companion;->unixToFitTimestamp(J)J

    move-result-wide v2

    const/4 v4, 0x6

    .line 521
    new-array v5, v4, [Lkotlin/Triple;

    new-instance v4, Lkotlin/Triple;

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v6, v7, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v5, v25

    .line 522
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v32, 0x84

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v28

    .line 523
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v27

    .line 524
    new-instance v1, Lkotlin/Triple;

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x8c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v29

    .line 525
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v33, 0x86

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v18

    .line 526
    new-instance v1, Lkotlin/Triple;

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v26

    .line 520
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v1}, Lcom/jichi/ob/api/FitBuilder;->writeDefinition(ILjava/util/List;)V

    .line 528
    invoke-virtual {v13}, Lcom/jichi/ob/api/FitBuilder;->writeDataHeader()V

    const/4 v1, 0x4

    .line 529
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    const/16 v1, 0x92

    .line 530
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    const/16 v1, 0x10

    .line 531
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    const-wide/16 v4, 0x0

    .line 532
    invoke-virtual {v13, v4, v5}, Lcom/jichi/ob/api/FitBuilder;->writeUint32z(J)V

    .line 533
    invoke-virtual {v13, v2, v3}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    const/4 v4, 0x0

    .line 534
    invoke-virtual {v13, v4}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    const/4 v1, 0x1

    .line 538
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->setLocalMsgNum(I)V

    const/16 v1, 0x9

    .line 540
    new-array v4, v1, [Lkotlin/Triple;

    new-instance v5, Lkotlin/Triple;

    const/16 v34, 0xfd

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, v6, v7, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v25, 0x0

    aput-object v5, v4, v25

    .line 541
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v35, 0x85

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v28, 0x1

    aput-object v1, v4, v28

    .line 542
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v27, 0x2

    aput-object v1, v4, v27

    .line 543
    new-instance v1, Lkotlin/Triple;

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v29, 0x3

    aput-object v1, v4, v29

    .line 544
    new-instance v1, Lkotlin/Triple;

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v18, 0x4

    aput-object v1, v4, v18

    .line 545
    new-instance v1, Lkotlin/Triple;

    const/16 v24, 0x6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v26, 0x5

    aput-object v1, v4, v26

    .line 546
    new-instance v1, Lkotlin/Triple;

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v24, 0x6

    aput-object v1, v4, v24

    .line 547
    new-instance v1, Lkotlin/Triple;

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v23, 0x7

    aput-object v1, v4, v23

    .line 548
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v22, 0x8

    aput-object v1, v4, v22

    .line 539
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v4, 0x14

    invoke-virtual {v13, v4, v1}, Lcom/jichi/ob/api/FitBuilder;->writeDefinition(ILjava/util/List;)V

    cmpl-double v1, p6, p1

    if-lez v1, :cond_19

    cmpl-double v1, v8, p1

    if-lez v1, :cond_19

    const/16 v36, 0x1

    goto :goto_11

    :cond_19
    const/16 v36, 0x0

    .line 566
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    .line 567
    new-instance v4, Lkotlin/collections/ArrayDeque;

    invoke-direct {v4}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 568
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    const/16 v38, 0x0

    :goto_12
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v6, 0xa

    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    if-eqz v5, :cond_20

    add-int/lit8 v41, v38, 0x1

    :try_start_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v42, v5

    check-cast v42, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez v38, :cond_1a

    .line 569
    :try_start_3
    invoke-virtual/range {v42 .. v42}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v43

    add-int/lit8 v5, v38, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    invoke-virtual {v7}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v45

    cmpl-double v7, v43, v45

    if-lez v7, :cond_1a

    invoke-virtual/range {v42 .. v42}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v39

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    invoke-virtual {v5}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v43
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    sub-double v39, v39, v43

    :cond_1a
    if-lez v38, :cond_1b

    add-int/lit8 v5, v38, -0x1

    .line 570
    :try_start_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    invoke-virtual {v7}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLat()D

    move-result-wide v43

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    invoke-virtual {v5}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLon()D

    move-result-wide v45

    move v5, v6

    invoke-virtual/range {v42 .. v42}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLat()D

    move-result-wide v6

    move-wide/from16 v47, v8

    invoke-virtual/range {v42 .. v42}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLon()D

    move-result-wide v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 p3, v1

    move-wide/from16 p4, v2

    move-object/from16 v49, v10

    move-wide/from16 v50, v11

    move-wide/from16 v52, v30

    move-wide/from16 v2, v43

    const/16 v11, 0x9

    move-object/from16 v1, p0

    move-object v12, v4

    move v10, v5

    move-wide/from16 v30, v14

    move-wide/from16 v4, v45

    move-wide/from16 v14, v47

    :try_start_5
    invoke-direct/range {v1 .. v9}, Lcom/jichi/ob/api/BlackbirdApi;->haversineDistance(DDDD)D

    move-result-wide v2

    goto :goto_13

    :cond_1b
    move-object/from16 p3, v1

    move-wide/from16 p4, v2

    move-object/from16 v49, v10

    move-wide/from16 v50, v11

    move-wide/from16 v52, v30

    const/16 v11, 0x9

    move-object v12, v4

    move v10, v6

    move-wide/from16 v30, v14

    move-wide v14, v8

    move-wide/from16 v2, p1

    :goto_13
    cmpl-double v1, v39, p1

    if-lez v1, :cond_1c

    div-double v2, v2, v39

    goto :goto_14

    :cond_1c
    move-wide/from16 v2, p1

    .line 572
    :goto_14
    invoke-virtual/range {v42 .. v42}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v12, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 573
    :goto_15
    move-object v4, v12

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual/range {v42 .. v42}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v1

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1d

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_15

    .line 574
    :cond_1d
    move-object v4, v12

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    move-object v4, v12

    check-cast v4, Ljava/lang/Iterable;

    .line 832
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 833
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 834
    check-cast v3, Lkotlin/Pair;

    .line 574
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 834
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 835
    :cond_1e
    check-cast v1, Ljava/util/List;

    .line 832
    check-cast v1, Ljava/lang/Iterable;

    .line 574
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfDouble(Ljava/lang/Iterable;)D

    move-result-wide v1

    goto :goto_17

    :cond_1f
    move-wide/from16 v1, p1

    :goto_17
    aput-wide v1, p3, v38

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-object v4, v12

    move-wide v8, v14

    move-wide/from16 v14, v30

    move/from16 v38, v41

    move-object/from16 v10, v49

    move-wide/from16 v11, v50

    move-wide/from16 v30, v52

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object/from16 v49, v10

    goto/16 :goto_2a

    :cond_20
    move-object/from16 p3, v1

    move-wide/from16 p4, v2

    move-object/from16 v49, v10

    move-wide/from16 v50, v11

    move-wide/from16 v52, v30

    const/16 v11, 0x9

    move v10, v6

    move-wide/from16 v30, v14

    move-wide v14, v8

    .line 577
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v12, v1, [Z

    .line 578
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-wide v3, p3, v2

    const-wide v5, 0x3fe6666666666666L    # 0.7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_21

    const/4 v3, 0x1

    goto :goto_19

    :cond_21
    const/4 v3, 0x0

    :goto_19
    aput-boolean v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    const/4 v1, 0x1

    .line 580
    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v28, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_27

    .line 581
    aget-boolean v2, v12, v1

    if-nez v2, :cond_26

    add-int/lit8 v2, v1, -0x1

    aget-boolean v2, v12, v2

    if-eqz v2, :cond_26

    move v2, v1

    .line 583
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    aget-boolean v3, v12, v2

    if-nez v3, :cond_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 584
    :cond_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    invoke-virtual {v3}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    invoke-virtual {v5}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v5

    sub-double/2addr v3, v5

    goto :goto_1c

    :cond_24
    const-wide v3, 0x408f380000000000L    # 999.0

    :goto_1c
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_25

    .line 585
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    aget-boolean v3, v12, v2

    if-eqz v3, :cond_25

    :goto_1d
    if-ge v1, v2, :cond_25

    const/16 v28, 0x1

    .line 586
    aput-boolean v28, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 588
    :cond_25
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1e

    :cond_26
    add-int/lit8 v2, v1, 0x1

    .line 589
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :goto_1e
    move v1, v2

    goto :goto_1a

    .line 591
    :cond_27
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    const-wide/16 v1, 0x0

    move-wide/from16 v3, p1

    move-wide v5, v3

    move-wide v7, v5

    move-wide/from16 v42, v7

    move-wide/from16 v44, v42

    move-wide/from16 v54, v44

    move-wide/from16 v46, v39

    const/16 v38, 0x0

    const/16 v41, 0x1

    :goto_1f
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    move/from16 p3, v11

    const/16 v11, 0x64

    if-eqz v9, :cond_34

    add-int/lit8 v48, v38, 0x1

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v56, v9

    check-cast v56, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;

    .line 592
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v57

    cmpl-double v9, v57, v3

    if-lez v9, :cond_28

    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v57
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    sub-double v57, v57, v3

    goto :goto_20

    :cond_28
    move-wide/from16 v57, v39

    :goto_20
    if-nez v41, :cond_29

    move-wide/from16 v66, v7

    move-wide v8, v1

    move-wide v2, v5

    move-wide/from16 v4, v66

    .line 594
    :try_start_6
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLat()D

    move-result-wide v6

    move-wide/from16 v59, v8

    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLon()D

    move-result-wide v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v1, p0

    move-wide/from16 v61, v59

    :try_start_7
    invoke-direct/range {v1 .. v9}, Lcom/jichi/ob/api/BlackbirdApi;->haversineDistance(DDDD)D

    move-result-wide v6

    goto :goto_21

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_2a

    :cond_29
    move-wide/from16 v61, v1

    move-wide v2, v5

    move-wide v4, v7

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    :goto_21
    cmpl-double v8, v57, p1

    if-lez v8, :cond_2a

    div-double v59, v6, v57

    goto :goto_22

    :cond_2a
    move-wide/from16 v59, p1

    :goto_22
    if-nez v41, :cond_2b

    const-wide v63, 0x4051800000000000L    # 70.0

    cmpl-double v9, v59, v63

    if-lez v9, :cond_2b

    const/4 v9, 0x1

    goto :goto_23

    :cond_2b
    const/4 v9, 0x0

    :goto_23
    if-eqz v9, :cond_2c

    move-wide/from16 v6, p1

    :cond_2c
    if-eqz v36, :cond_2d

    .line 600
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v59

    div-double v59, v59, v14

    mul-double v59, v59, p6

    int-to-double v10, v11

    mul-double v10, v10, v59

    double-to-long v10, v10

    move-object/from16 v59, v12

    goto :goto_24

    :cond_2d
    if-nez v41, :cond_2e

    cmpl-double v10, v6, p1

    if-lez v10, :cond_2e

    int-to-double v10, v11

    mul-double/2addr v10, v6

    double-to-long v10, v10

    move-wide/from16 v64, v10

    move-object/from16 v59, v12

    move-wide/from16 v11, v61

    add-long v10, v11, v64

    goto :goto_24

    :cond_2e
    move-object/from16 v59, v12

    move-wide/from16 v11, v61

    move-wide v10, v11

    :goto_24
    if-nez v41, :cond_2f

    if-nez v9, :cond_2f

    .line 606
    aget-boolean v12, v59, v38

    if-eqz v12, :cond_2f

    const-wide/high16 v60, 0x403e000000000000L    # 30.0

    cmpg-double v12, v57, v60

    if-gtz v12, :cond_2f

    add-double v42, v42, v57

    :cond_2f
    if-nez v41, :cond_30

    if-nez v9, :cond_31

    .line 611
    :cond_30
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLat()D

    move-result-wide v2

    .line 612
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLon()D

    move-result-wide v4

    :cond_31
    if-lez v8, :cond_32

    div-double v6, v6, v57

    goto :goto_25

    :cond_32
    move-wide/from16 v6, p1

    :goto_25
    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-double v46, v46, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double v8, v46, v8

    div-double v8, v46, v8

    sub-double v6, v6, v44

    mul-double/2addr v6, v8

    add-double v6, v44, v6

    move-wide/from16 v44, v2

    const/4 v12, 0x1

    int-to-double v2, v12

    sub-double/2addr v2, v8

    mul-double v46, v46, v2

    .line 620
    invoke-direct {v1, v6, v7}, Lcom/jichi/ob/api/BlackbirdApi;->clampSpeed(D)D

    move-result-wide v2

    cmpl-double v8, v2, v54

    if-lez v8, :cond_33

    move-wide/from16 v54, v2

    .line 623
    :cond_33
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v8

    .line 624
    invoke-virtual {v13}, Lcom/jichi/ob/api/FitBuilder;->writeDataHeader()V

    move-wide/from16 v57, v2

    .line 625
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getOffsetSec()D

    move-result-wide v1

    double-to-long v1, v1

    add-long v2, p4, v1

    invoke-virtual {v13, v2, v3}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    .line 626
    sget-object v1, Lcom/jichi/ob/api/FitBuilder;->Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jichi/ob/api/FitBuilder$Companion;->degToSemicircles(D)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeSint32(I)V

    .line 627
    sget-object v1, Lcom/jichi/ob/api/FitBuilder;->Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getLon()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jichi/ob/api/FitBuilder$Companion;->degToSemicircles(D)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeSint32(I)V

    .line 628
    invoke-virtual {v13, v10, v11}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    .line 629
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getEle()D

    move-result-wide v1

    const/16 v3, 0x1f4

    move-wide/from16 v60, v1

    int-to-double v1, v3

    add-double v1, v60, v1

    double-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    const/16 v1, 0x3e8

    int-to-double v1, v1

    mul-double v2, v57, v1

    double-to-int v1, v2

    .line 630
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    .line 631
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getHr()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint8(I)V

    .line 632
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getCad()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint8(I)V

    .line 633
    invoke-virtual/range {v56 .. v56}, Lcom/jichi/ob/api/BlackbirdApi$FitPoint;->getPower()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    move-wide v1, v10

    move/from16 v38, v48

    move-object/from16 v12, v59

    const/16 v10, 0xa

    const/16 v41, 0x0

    move/from16 v11, p3

    move-wide/from16 v66, v6

    move-wide/from16 v68, v8

    move-wide v7, v4

    move-wide/from16 v3, v68

    move-wide/from16 v5, v44

    move-wide/from16 v44, v66

    goto/16 :goto_1f

    :cond_34
    move-wide/from16 v66, v1

    move v1, v11

    move-wide/from16 v11, v66

    const/4 v4, 0x2

    .line 637
    invoke-virtual {v13, v4}, Lcom/jichi/ob/api/FitBuilder;->setLocalMsgNum(I)V

    const/16 v10, 0xa

    .line 639
    new-array v2, v10, [Lkotlin/Triple;

    new-instance v3, Lkotlin/Triple;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v25, 0x0

    aput-object v3, v2, v25

    .line 640
    new-instance v3, Lkotlin/Triple;

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v28, 0x1

    aput-object v3, v2, v28

    .line 641
    new-instance v3, Lkotlin/Triple;

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v27, 0x2

    aput-object v3, v2, v27

    .line 642
    new-instance v3, Lkotlin/Triple;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v29, 0x3

    aput-object v3, v2, v29

    .line 643
    new-instance v3, Lkotlin/Triple;

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v18

    .line 644
    new-instance v3, Lkotlin/Triple;

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v26, 0x5

    aput-object v3, v2, v26

    .line 645
    new-instance v3, Lkotlin/Triple;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v24, 0x6

    aput-object v3, v2, v24

    .line 646
    new-instance v3, Lkotlin/Triple;

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v23, 0x7

    aput-object v3, v2, v23

    .line 647
    new-instance v3, Lkotlin/Triple;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v22, 0x8

    aput-object v3, v2, v22

    .line 648
    new-instance v3, Lkotlin/Triple;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, p3

    .line 638
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v13, v3, v2}, Lcom/jichi/ob/api/FitBuilder;->writeDefinition(ILjava/util/List;)V

    .line 650
    invoke-virtual {v13}, Lcom/jichi/ob/api/FitBuilder;->writeDataHeader()V

    double-to-long v2, v14

    add-long v2, p4, v2

    .line 651
    invoke-virtual {v13, v2, v3}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    move-wide/from16 v4, p4

    .line 652
    invoke-virtual {v13, v4, v5}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    .line 653
    sget-object v6, Lcom/jichi/ob/api/FitBuilder;->Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

    move-wide/from16 v7, v30

    invoke-virtual {v6, v7, v8}, Lcom/jichi/ob/api/FitBuilder$Companion;->degToSemicircles(D)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/jichi/ob/api/FitBuilder;->writeSint32(I)V

    .line 654
    sget-object v6, Lcom/jichi/ob/api/FitBuilder;->Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

    move-wide/from16 v9, v16

    invoke-virtual {v6, v9, v10}, Lcom/jichi/ob/api/FitBuilder$Companion;->degToSemicircles(D)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/jichi/ob/api/FitBuilder;->writeSint32(I)V

    const/16 v6, 0x3e8

    move-wide/from16 p4, v2

    int-to-double v1, v6

    move-wide/from16 v30, v1

    mul-double v1, v14, v30

    double-to-long v1, v1

    .line 655
    invoke-virtual {v13, v1, v2}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    move-wide/from16 v47, v14

    mul-double v14, v42, v30

    double-to-long v14, v14

    .line 656
    invoke-virtual {v13, v14, v15}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    move-wide/from16 v59, v11

    if-eqz v36, :cond_35

    const/16 v3, 0x64

    int-to-double v11, v3

    mul-double v11, v11, p6

    double-to-long v11, v11

    .line 657
    :cond_35
    invoke-virtual {v13, v11, v12}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    const/4 v3, 0x2

    .line 658
    invoke-virtual {v13, v3}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    move/from16 v11, p3

    .line 659
    invoke-virtual {v13, v11}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    const/4 v12, 0x1

    .line 660
    invoke-virtual {v13, v12}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    const/4 v3, 0x3

    .line 663
    invoke-virtual {v13, v3}, Lcom/jichi/ob/api/FitBuilder;->setLocalMsgNum(I)V

    const/16 v3, 0x11

    .line 665
    new-array v3, v3, [Lkotlin/Triple;

    new-instance v6, Lkotlin/Triple;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v17, v3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v6, v11, v12, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v25, 0x0

    aput-object v6, v17, v25

    .line 666
    new-instance v3, Lkotlin/Triple;

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v28, 0x1

    aput-object v3, v17, v28

    .line 667
    new-instance v3, Lkotlin/Triple;

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v27, 0x2

    aput-object v3, v17, v27

    .line 668
    new-instance v3, Lkotlin/Triple;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v29, 0x3

    aput-object v3, v17, v29

    .line 669
    new-instance v3, Lkotlin/Triple;

    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v17, v18

    .line 670
    new-instance v3, Lkotlin/Triple;

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v26, 0x5

    aput-object v3, v17, v26

    .line 671
    new-instance v3, Lkotlin/Triple;

    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v24, 0x6

    aput-object v3, v17, v24

    .line 672
    new-instance v3, Lkotlin/Triple;

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v23, 0x7

    aput-object v3, v17, v23

    .line 673
    new-instance v3, Lkotlin/Triple;

    const/16 v6, 0x1a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v22, 0x8

    aput-object v3, v17, v22

    .line 674
    new-instance v3, Lkotlin/Triple;

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0x9

    aput-object v3, v17, v11

    .line 675
    new-instance v3, Lkotlin/Triple;

    const/16 v24, 0x6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v63, 0xa

    aput-object v3, v17, v63

    .line 676
    new-instance v3, Lkotlin/Triple;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0xb

    aput-object v3, v17, v6

    .line 677
    new-instance v3, Lkotlin/Triple;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0xc

    aput-object v3, v17, v6

    .line 678
    new-instance v3, Lkotlin/Triple;

    const/16 v6, 0x7c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0xd

    aput-object v3, v17, v6

    .line 679
    new-instance v3, Lkotlin/Triple;

    const/16 v6, 0x7d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0xe

    aput-object v3, v17, v6

    .line 680
    new-instance v3, Lkotlin/Triple;

    const/16 v6, 0x16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0xf

    aput-object v3, v17, v6

    .line 681
    new-instance v3, Lkotlin/Triple;

    const/16 v6, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v3, v6, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0x10

    aput-object v3, v17, v6

    .line 664
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v6, 0x12

    invoke-virtual {v13, v6, v3}, Lcom/jichi/ob/api/FitBuilder;->writeDefinition(ILjava/util/List;)V

    .line 683
    invoke-virtual {v13}, Lcom/jichi/ob/api/FitBuilder;->writeDataHeader()V

    move-wide/from16 v11, p4

    .line 684
    invoke-virtual {v13, v11, v12}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    .line 685
    invoke-virtual {v13, v4, v5}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    .line 686
    sget-object v3, Lcom/jichi/ob/api/FitBuilder;->Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

    invoke-virtual {v3, v7, v8}, Lcom/jichi/ob/api/FitBuilder$Companion;->degToSemicircles(D)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/jichi/ob/api/FitBuilder;->writeSint32(I)V

    .line 687
    sget-object v3, Lcom/jichi/ob/api/FitBuilder;->Companion:Lcom/jichi/ob/api/FitBuilder$Companion;

    invoke-virtual {v3, v9, v10}, Lcom/jichi/ob/api/FitBuilder$Companion;->degToSemicircles(D)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/jichi/ob/api/FitBuilder;->writeSint32(I)V

    .line 688
    invoke-virtual {v13, v1, v2}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    .line 689
    invoke-virtual {v13, v14, v15}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    if-eqz v36, :cond_36

    const/16 v1, 0x64

    int-to-double v1, v1

    mul-double v1, v1, p6

    double-to-long v1, v1

    goto :goto_26

    :cond_36
    move-wide/from16 v1, v59

    .line 691
    :goto_26
    invoke-virtual {v13, v1, v2}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    const/4 v4, 0x0

    .line 692
    invoke-virtual {v13, v4}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    const/4 v1, 0x1

    .line 693
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    const/4 v3, 0x2

    .line 694
    invoke-virtual {v13, v3}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    .line 695
    invoke-virtual {v13, v4}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    const/16 v8, 0x8

    .line 696
    invoke-virtual {v13, v8}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    .line 697
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    if-eqz v36, :cond_37

    move-wide/from16 v1, p6

    move-wide/from16 v8, v59

    goto :goto_27

    :cond_37
    move-wide/from16 v8, v59

    long-to-double v1, v8

    div-double v1, v1, v19

    :goto_27
    cmpl-double v3, v42, p1

    if-lez v3, :cond_38

    div-double v1, v1, v42

    goto :goto_28

    :cond_38
    move-wide/from16 v1, p1

    :goto_28
    mul-double v1, v1, v30

    double-to-long v1, v1

    .line 700
    invoke-virtual {v13, v1, v2}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    mul-double v1, v54, v30

    double-to-long v1, v1

    .line 701
    invoke-virtual {v13, v1, v2}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    move-wide/from16 v1, v50

    double-to-int v1, v1

    .line 702
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    move-wide/from16 v1, v52

    double-to-int v1, v1

    .line 703
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    const/4 v1, 0x4

    .line 706
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->setLocalMsgNum(I)V

    const/4 v2, 0x7

    .line 708
    new-array v2, v2, [Lkotlin/Triple;

    new-instance v3, Lkotlin/Triple;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v25, 0x0

    aput-object v3, v2, v25

    .line 709
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v28, 0x1

    aput-object v1, v2, v28

    .line 710
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v2, v27

    .line 711
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v29, 0x3

    aput-object v1, v2, v29

    .line 712
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v18, 0x4

    aput-object v1, v2, v18

    .line 713
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v26, 0x5

    aput-object v1, v2, v26

    .line 714
    new-instance v1, Lkotlin/Triple;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v24, 0x6

    aput-object v1, v2, v24

    .line 707
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v13, v2, v1}, Lcom/jichi/ob/api/FitBuilder;->writeDefinition(ILjava/util/List;)V

    .line 716
    invoke-virtual {v13}, Lcom/jichi/ob/api/FitBuilder;->writeDataHeader()V

    .line 717
    invoke-virtual {v13, v11, v12}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    .line 718
    invoke-virtual {v13, v14, v15}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    const/4 v1, 0x1

    .line 719
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeUint16(I)V

    const/4 v4, 0x0

    .line 720
    invoke-virtual {v13, v4}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    .line 721
    invoke-virtual {v13, v4}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    .line 722
    invoke-virtual {v13, v1}, Lcom/jichi/ob/api/FitBuilder;->writeEnum(I)V

    const/16 v1, 0x7080

    int-to-long v1, v1

    add-long v2, v11, v1

    .line 723
    invoke-virtual {v13, v2, v3}, Lcom/jichi/ob/api/FitBuilder;->writeUint32(J)V

    .line 725
    invoke-virtual {v13}, Lcom/jichi/ob/api/FitBuilder;->build()[B

    move-result-object v1

    .line 726
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-wide/from16 v14, v47

    double-to-int v2, v14

    array-length v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildFit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u70b9, distance=%.2fkm(API=%.2fkm), time="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s, size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v36, :cond_39

    move-wide/from16 v2, p6

    goto :goto_29

    :cond_39
    long-to-double v2, v8

    div-double v2, v2, v19

    :goto_29
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double v3, p6, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v2, v49

    :try_start_8
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    return-object v1

    :catch_2
    move-exception v0

    goto :goto_2b

    :catch_3
    move-exception v0

    :goto_2a
    move-object/from16 v2, v49

    goto :goto_2b

    :catch_4
    move-exception v0

    move-object v2, v10

    goto :goto_2b

    :catch_5
    move-exception v0

    move-object v2, v10

    const/16 v21, 0x0

    .line 729
    :goto_2b
    const-string v1, "buildFitFromTrackString error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v21

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4008000000000000L    # 3.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method static synthetic buildFitFromTrackString$default(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;Ljava/lang/String;JZDILjava/lang/Object;)[B
    .locals 10

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v8, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p6

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    .line 442
    invoke-direct/range {v2 .. v9}, Lcom/jichi/ob/api/BlackbirdApi;->buildFitFromTrackString(Ljava/lang/String;Ljava/lang/String;JZD)[B

    move-result-object p0

    return-object p0
.end method

.method private final buildGpx(Lorg/json/JSONArray;Ljava/lang/String;JZ)[B
    .locals 22

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<gpx version=\"1.1\" creator=\"JichiOB-9.1.7\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v2, ""

    move-object v5, v2

    const/4 v4, 0x0

    :goto_0
    const-string v6, "</time>\n"

    if-ge v4, v1, :cond_c

    move-object/from16 v7, p1

    .line 313
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_0

    move/from16 v16, v1

    move-object/from16 v19, v2

    move v15, v4

    goto/16 :goto_4

    .line 314
    :cond_0
    const-string v9, "latitude"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-string v9, "lat"

    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 315
    const-string v9, "longitude"

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    const-string v9, "lng"

    invoke-virtual {v8, v9, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 316
    const-string v9, "altitude"

    move/from16 v16, v4

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-string v9, "ele"

    invoke-virtual {v8, v9, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    move-object/from16 v9, p0

    if-eqz p5, :cond_1

    .line 318
    invoke-direct {v9, v12, v13, v14, v15}, Lcom/jichi/ob/api/BlackbirdApi;->gcj02ToWgs84(DD)Lkotlin/Pair;

    move-result-object v12

    move-wide/from16 v17, v10

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v10

    new-instance v10, Lkotlin/Pair;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v10

    :goto_1
    invoke-virtual {v12}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v12}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    .line 320
    const-string/jumbo v14, "timestamp"

    invoke-virtual {v8, v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "time"

    invoke-virtual {v8, v15, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 321
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v14

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_2

    move-object/from16 v19, v2

    move/from16 v15, v16

    move/from16 v16, v1

    goto :goto_2

    .line 322
    :cond_2
    const-string/jumbo v14, "time_offset"

    move-object/from16 v19, v2

    move/from16 v15, v16

    move/from16 v16, v1

    int-to-long v1, v15

    invoke-virtual {v8, v14, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v14, "offset"

    invoke-virtual {v8, v14, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v20, 0x0

    cmp-long v14, p3, v20

    if-lez v14, :cond_3

    add-long v1, p3, v1

    .line 324
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v1

    .line 325
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    check-cast v1, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_3
    move-object/from16 v14, v19

    .line 329
    :goto_2
    const-string v1, "heart_rate"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "heartRate"

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hr"

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 330
    const-string/jumbo v2, "watts"

    const/4 v7, 0x0

    invoke-virtual {v8, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v7, "power"

    invoke-virtual {v8, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 331
    const-string v7, "cadence"

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "cad"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "      <trkpt lat=\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" lon=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\">\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpg-double v8, v3, v17

    if-nez v8, :cond_4

    goto :goto_3

    .line 333
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "        <ele>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</ele>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :goto_3
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v14

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 335
    move-object v3, v5

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    move-object v5, v14

    .line 336
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "        <time>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-gtz v1, :cond_7

    if-gtz v2, :cond_7

    if-lez v7, :cond_b

    .line 339
    :cond_7
    const-string v3, "        <extensions>\n          <gpxtpx:TrackPointExtension>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_8

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "            <gpxtpx:hr>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</gpxtpx:hr>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-lez v7, :cond_9

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "            <gpxtpx:cad>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</gpxtpx:cad>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-lez v2, :cond_a

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "            <gpxtpx:power>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</gpxtpx:power>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_a
    const-string v1, "          </gpxtpx:TrackPointExtension>\n        </extensions>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_b
    const-string v1, "      </trkpt>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v4, v15, 0x1

    move/from16 v1, v16

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 347
    :cond_c
    move-object v1, v5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 348
    const-string v2, "<gpx "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<metadata><time>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</time></metadata>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_d
    const-string v2, "    </trkseg>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    <time>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_e
    const-string v1, "  </trk>\n</gpx>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final buildGpxFromTrackString(Ljava/lang/String;Ljava/lang/String;JZ)[B
    .locals 29

    .line 367
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<gpx version=\"1.1\" creator=\"JichiOB-9.1.7\" xmlns:gpxtpx=\"http://www.garmin.com/xmlschemas/TrackPointExtension/v1\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  <trk>\n    <name>\u9ed1\u9e1f\u9a91\u884c "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</name>\n    <trkseg>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, ";"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, ""

    move-object v6, v4

    move v5, v9

    move v7, v5

    move v8, v7

    move v10, v8

    move v11, v10

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const v13, 0xc350

    if-ge v5, v13, :cond_18

    .line 377
    move-object v14, v12

    check-cast v14, Ljava/lang/CharSequence;

    new-array v15, v2, [Ljava/lang/String;

    const-string v12, ","

    aput-object v12, v15, v9

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 378
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :cond_17

    .line 379
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_17

    move/from16 p2, v10

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 380
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_16

    move v15, v2

    move-object/from16 v16, v3

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v13, 0x2

    .line 381
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    const-wide/16 v17, 0x0

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v21, v19

    goto :goto_1

    :cond_0
    move-wide/from16 v21, v17

    :goto_1
    move-object/from16 v13, p0

    if-eqz p5, :cond_1

    .line 383
    invoke-direct {v13, v9, v10, v2, v3}, Lcom/jichi/ob/api/BlackbirdApi;->gcj02ToWgs84(DD)Lkotlin/Pair;

    move-result-object v2

    move/from16 v19, v15

    goto :goto_2

    :cond_1
    move/from16 v19, v15

    new-instance v15, Lkotlin/Pair;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v15, v9, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v15

    :goto_2
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 386
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    const/16 v14, 0x8

    move-object/from16 v23, v4

    const/4 v4, 0x7

    if-lt v15, v14, :cond_2

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    goto :goto_3

    .line 387
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    :goto_3
    if-eqz v14, :cond_3

    .line 386
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_4

    :cond_3
    move-wide/from16 v14, v17

    :goto_4
    const-wide/16 v24, 0x0

    cmp-long v24, p3, v24

    if-lez v24, :cond_4

    const/16 v4, 0x3e8

    move-wide/from16 v25, v14

    int-to-long v13, v4

    mul-long v13, v13, p3

    long-to-double v13, v13

    move-wide/from16 v27, v13

    int-to-double v13, v4

    mul-double v14, v25, v13

    add-double v13, v27, v14

    double-to-long v13, v13

    .line 389
    invoke-static {v13, v14}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_4
    move-object/from16 v4, v23

    .line 390
    :goto_5
    move-object v13, v6

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v4

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_5

    move-object v6, v4

    .line 393
    :cond_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x4

    if-lt v13, v14, :cond_6

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    goto :goto_6

    :cond_6
    move-wide/from16 v25, v17

    :goto_6
    const-wide/high16 v27, 0x4059000000000000L    # 100.0

    div-double v25, v25, v27

    .line 394
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    .line 395
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    const/4 v13, 0x5

    if-lt v15, v13, :cond_7

    const/4 v15, 0x4

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    if-eqz v15, :cond_7

    move/from16 v20, v14

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    double-to-int v13, v13

    goto :goto_7

    :cond_7
    move/from16 v20, v14

    const/4 v13, 0x0

    .line 396
    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x6

    if-lt v14, v15, :cond_8

    const/4 v14, 0x5

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    if-eqz v14, :cond_8

    move-object/from16 v26, v6

    move/from16 v25, v7

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-int v6, v6

    goto :goto_8

    :cond_8
    move-object/from16 v26, v6

    move/from16 v25, v7

    const/4 v6, 0x0

    .line 397
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x7

    if-lt v7, v14, :cond_9

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_9

    :cond_9
    move-wide/from16 v14, v17

    :goto_9
    cmpl-double v7, v14, v17

    if-lez v7, :cond_a

    const-wide/high16 v27, 0x4042000000000000L    # 36.0

    div-double v14, v14, v27

    goto :goto_a

    :cond_a
    move-wide/from16 v14, v17

    :goto_a
    if-lez v13, :cond_b

    add-int/lit8 v7, v25, 0x1

    goto :goto_b

    :cond_b
    move/from16 v7, v25

    :goto_b
    if-lez v20, :cond_c

    add-int/lit8 v8, v8, 0x1

    :cond_c
    cmpl-double v12, v14, v17

    if-lez v12, :cond_d

    add-int/lit8 v17, p2, 0x1

    goto :goto_c

    :cond_d
    move/from16 v17, p2

    :goto_c
    if-lez v6, :cond_e

    add-int/lit8 v11, v11, 0x1

    :cond_e
    move-object/from16 v18, v0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v24, v7

    const-string v7, "      <trkpt lat=\""

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\" lon=\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "        <ele>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v2, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</ele>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "        <time>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</time>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-gtz v13, :cond_10

    if-gtz v20, :cond_10

    if-gtz v6, :cond_10

    if-lez v12, :cond_15

    .line 408
    :cond_10
    const-string v0, "        <extensions>\n          <gpxtpx:TrackPointExtension>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v13, :cond_11

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "            <gpxtpx:hr>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</gpxtpx:hr>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    if-lez v6, :cond_12

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "            <gpxtpx:cad>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</gpxtpx:cad>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-lez v12, :cond_13

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "            <gpxtpx:speed>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</gpxtpx:speed>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-lez v20, :cond_14

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "            <gpxtpx:power>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</gpxtpx:power>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_14
    const-string v0, "          </gpxtpx:TrackPointExtension>\n        </extensions>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_15
    const-string v0, "      </trkpt>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move/from16 v10, v17

    move-object/from16 v0, v18

    move/from16 v2, v19

    move-object/from16 v4, v23

    move/from16 v7, v24

    move-object/from16 v6, v26

    goto :goto_e

    :cond_16
    move-object/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v16, v3

    move-object/from16 v23, v4

    move/from16 v25, v7

    goto :goto_d

    :cond_17
    move-object/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v16, v3

    move-object/from16 v23, v4

    move/from16 v25, v7

    move/from16 p2, v10

    :goto_d
    move/from16 v10, p2

    move-object/from16 v3, v16

    move-object/from16 v0, v18

    move/from16 v2, v19

    move-object/from16 v4, v23

    move/from16 v7, v25

    :goto_e
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_18
    move/from16 v19, v2

    move/from16 v25, v7

    move/from16 p2, v10

    .line 418
    const-string v0, "    </trkseg>\n  </trk>\n</gpx>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 420
    const-string v0, "<gpx "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_19

    .line 421
    const-string v2, ">"

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n  <metadata><time>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</time></metadata>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "buildGpx(\u56fa\u5b9a9\u5b57\u6bb5): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u70b9 | hr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cad="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " power="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " speed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | \u9996\u65f6\u95f4="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BlackbirdApi"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final clampSpeed(D)D
    .locals 3

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method public static synthetic downloadActivity$default(Lcom/jichi/ob/api/BlackbirdApi;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    .line 187
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jichi/ob/api/BlackbirdApi;->downloadActivity(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final extractBlackbirdMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 817
    const-string v0, ""

    const/16 v1, 0x50

    .line 818
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 819
    const-string v3, "errorCode"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 820
    const-string v4, "msg"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 823
    :cond_0
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 824
    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 823
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 827
    :catch_0
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final formatStartTime(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 99
    const-string p1, ""

    return-object p1

    .line 101
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final gcj02ToWgs84(DD)Lkotlin/Pair;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lkotlin/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 51
    invoke-direct/range {p0 .. p4}, Lcom/jichi/ob/api/BlackbirdApi;->outOfChina(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lkotlin/Pair;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v2, p3

    :goto_0
    const/16 v6, 0x64

    if-ge v1, v6, :cond_2

    const-wide v6, 0x405a400000000000L    # 105.0

    sub-double v6, v2, v6

    const-wide v8, 0x4041800000000000L    # 35.0

    sub-double v8, v4, v8

    .line 55
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/jichi/ob/api/BlackbirdApi;->transformLat(DD)D

    move-result-wide v10

    .line 56
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/jichi/ob/api/BlackbirdApi;->transformLon(DD)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v12, v4, v8

    .line 57
    iget-wide v14, v0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v12, v14

    .line 58
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-wide/from16 v16, v8

    const/4 v8, 0x1

    int-to-double v8, v8

    move/from16 v18, v1

    move-wide/from16 v19, v2

    .line 59
    iget-wide v1, v0, Lcom/jichi/ob/api/BlackbirdApi;->EE:D

    mul-double/2addr v1, v14

    mul-double/2addr v1, v14

    sub-double v1, v8, v1

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double v10, v10, v16

    move-wide/from16 v21, v1

    .line 61
    iget-wide v1, v0, Lcom/jichi/ob/api/BlackbirdApi;->A:D

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/jichi/ob/api/BlackbirdApi;->EE:D

    sub-double v1, v8, v1

    mul-double v1, v1, v23

    mul-double v21, v21, v14

    div-double v1, v1, v21

    move-wide/from16 v25, v1

    iget-wide v1, v0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double v1, v1, v25

    div-double v1, v10, v1

    add-double/2addr v1, v4

    mul-double v6, v6, v16

    div-double v16, v23, v14

    .line 62
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v16, v16, v23

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double v16, v16, v1

    div-double v1, v6, v16

    add-double v2, v19, v1

    sub-double v16, v23, p1

    .line 63
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v23, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v1, v16, v23

    if-gez v1, :cond_1

    sub-double v2, v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v23

    if-ltz v1, :cond_3

    .line 64
    :cond_1
    iget-wide v1, v0, Lcom/jichi/ob/api/BlackbirdApi;->A:D

    iget-wide v3, v0, Lcom/jichi/ob/api/BlackbirdApi;->EE:D

    sub-double/2addr v8, v3

    mul-double/2addr v8, v1

    div-double v8, v8, v21

    iget-wide v3, v0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v8, v3

    div-double/2addr v10, v8

    sub-double v4, p1, v10

    div-double/2addr v1, v14

    .line 65
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v1, v8

    iget-wide v8, v0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v1, v8

    div-double/2addr v6, v1

    sub-double v2, p3, v6

    add-int/lit8 v1, v18, 0x1

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v19, v2

    .line 67
    :cond_3
    new-instance v1, Lkotlin/Pair;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final haversineDistance(DDDD)D
    .locals 4

    sub-double v0, p5, p1

    .line 737
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p7, p3

    .line 738
    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    const/4 p7, 0x2

    int-to-double p7, p7

    div-double/2addr v0, p7

    .line 739
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    .line 740
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double/2addr p1, p5

    div-double/2addr p3, p7

    .line 741
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p5

    mul-double/2addr p1, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    add-double/2addr v2, p1

    .line 742
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const/4 p3, 0x1

    int-to-double p3, p3

    sub-double/2addr p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p7, p1

    const-wide p1, 0x41584dae00000000L    # 6371000.0

    mul-double/2addr p7, p1

    return-wide p7
.end method

.method private final outOfChina(DD)Z
    .locals 2

    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double p3, p3, v0

    if-gtz p3, :cond_1

    const-wide p3, 0x3fea89a027525461L    # 0.8293

    cmpg-double p3, p1, p3

    if-ltz p3, :cond_1

    const-wide p3, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double p1, p1, p3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final transformLat(DD)D
    .locals 14

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p1, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p3, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p3, v8

    mul-double v10, v10, p3

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, p1

    mul-double v10, v10, p3

    add-double/2addr v4, v10

    .line 34
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double/2addr v8, p1

    .line 35
    iget-wide v10, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double/2addr v8, v10

    iget-wide v12, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double/2addr v8, v2

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    .line 36
    iget-wide v2, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double v2, v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    div-double v8, p3, v6

    iget-wide v10, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    mul-double/2addr v2, v0

    div-double/2addr v2, v6

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double v2, p3, v2

    .line 37
    iget-wide v8, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    mul-double/2addr v2, v8

    const/16 v8, 0x140

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double v10, v10, p3

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    mul-double/2addr v2, v0

    div-double/2addr v2, v6

    add-double/2addr v4, v2

    return-wide v4
.end method

.method private final transformLon(DD)D
    .locals 14

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p3, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p1, v6

    mul-double v10, v8, p1

    add-double/2addr v2, v10

    mul-double v8, v8, p3

    add-double/2addr v2, v8

    .line 42
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double/2addr v6, p1

    .line 43
    iget-wide v8, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double/2addr v6, v8

    mul-double v10, p1, v4

    iget-wide v12, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    mul-double/2addr v6, v4

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v10

    add-double/2addr v2, v6

    .line 44
    iget-wide v6, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    div-double v8, p1, v10

    iget-wide v12, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    div-double/2addr v6, v10

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v6, p1, v6

    .line 45
    iget-wide v8, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x4062c00000000000L    # 150.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double v8, p1, v8

    iget-wide v12, p0, Lcom/jichi/ob/api/BlackbirdApi;->PI:D

    mul-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    div-double/2addr v6, v10

    add-double/2addr v2, v6

    return-wide v2
.end method

.method private final translateBlackbirdError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0xa0

    .line 802
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u9ed1\u9e1f\u4e0a\u4f20\u5931\u8d25(HTTP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "): "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 804
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "DUPLICATE"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    const-string/jumbo p1, "\u9ed1\u9e1f\u63d0\u793a\u8be5\u8bb0\u5f55\u5df2\u5b58\u5728(\u91cd\u590d\u4e0a\u4f20)\uff1a\u6b64\u6d3b\u52a8\u4e4b\u524d\u5df2\u540c\u6b65\u8fc7\u9ed1\u9e1f\uff0c\u8df3\u8fc7\u5373\u53ef"

    return-object p1

    .line 806
    :cond_0
    const-string v1, "010001"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    const-string/jumbo p1, "\u9ed1\u9e1f\u65e0\u6cd5\u5165\u5e93\u8be5\u6d3b\u52a8(010001)\uff1a\u591a\u4e3a\u8be5FIT\u65e0\u6709\u6548GPS\u8f68\u8ff9\uff08\u59820km\u7a7a\u6d3b\u52a8/\u5ba4\u5185\u9a91\u884c\uff09\u6216\u683c\u5f0f\u9ed1\u9e1f\u4e0d\u8ba4\u3002\u771f\u5b9e\u6237\u5916\u9a91\u884c\u8bb0\u5f55\u53ef\u6b63\u5e38\u4e0a\u4f20"

    return-object p1

    .line 808
    :cond_1
    const-string v1, "errorCode"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"status\":\"error\""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object p2

    .line 809
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/BlackbirdApi;->extractBlackbirdMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u9ed1\u9e1f\u4e0a\u4f20\u88ab\u62d2\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final downloadActivity(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 188
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/BlackbirdApi$downloadActivity$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/BlackbirdApi;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 127
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v5, p1

    move v4, p2

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/BlackbirdApi$getActivities$2;-><init>(ILcom/jichi/ob/api/BlackbirdApi;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    .line 106
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/BlackbirdApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/jichi/ob/api/BlackbirdApi$getUsername$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/BlackbirdApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final uploadActivity(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 762
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/BlackbirdApi$uploadActivity$2;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/jichi/ob/api/BlackbirdApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
